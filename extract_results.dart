import 'dart:io';

// script to extract benchmark results and update readme.md

final langRegex = RegExp(r'^[a-zA-Z]');
final colonOrNewLineRegex = RegExp(r'[:\n]');
final pTimeRegex = RegExp(r'Processing time[^0-9]*([\d.]+)\s?(ms|s|milliseconds)');
final tTimeRegex = RegExp(r'Time[^0-9]*([\d.]+ (ms|s))');

const multiCoreHeading = '''
### Multicore Results

| Language       | Processing Time | Total (PT + I/O) |
| -------------- | --------------- | ---------------- |
''';

void main(List<String> args) {
  final filename = args.firstOrNull;

  if (filename == null) return print('Usage: extract <filename>');

  final file = File(filename);

  if (!file.existsSync()) return print('File "$filename" not found');

  final lines = file.readAsLinesSync();

  final scores = <String, Score>{};

  Score? currentScore;

  for (final line in lines) {
    if (langRegex.hasMatch(line)) {
      final name = line.trim().replaceAll(colonOrNewLineRegex, '');
      currentScore = (scores[name] ??= Score(name: name));
      continue;
    }

    if (currentScore == null) {
      continue;
    }

    final processTimeMatch = pTimeRegex.firstMatch(line);

    if (processTimeMatch != null) {
      final unit = processTimeMatch.group(2)!.replaceFirst('milliseconds', 'ms');
      final time = double.parse(processTimeMatch.group(1)!.trim());
      currentScore.addTime(time, unit);
      continue;
    }

    final totalTimeMatch = tTimeRegex.firstMatch(line);

    if (totalTimeMatch != null) {
      currentScore.totalTime = totalTimeMatch.group(1)!.trim();
    }
  }

  final sortedScores = scores.values.toList()..sort((a, b) => a.avgTime().compareTo(b.avgTime()));

  final multiCoreScores = sortedScores.where((s) => s.name.contains('Concurrent')).toList();

  sortedScores..removeWhere((s) => s.name.contains('Concurrent'));

  sortedScores.forEach(print);

  final readmePathList = file.absolute.path.split(Platform.pathSeparator)
    ..removeLast()
    ..add('readme.md');

  final readmeFile = File(readmePathList.join('/'));

  if (!readmeFile.existsSync()) return print('$readmeFile not found');

  final readmeLines = readmeFile.readAsLinesSync();

  var shouldReplace = false;
  var replaced = false;

  final newReadmeContent = readmeLines
      .map((line) {
        if (line.startsWith('| -----') && !replaced && !shouldReplace) {
          shouldReplace = true;
          return line;
        }

        if (!shouldReplace) return line;

        // removes every line between the table heading and details open tag
        if (!line.trim().contains('<details>')) return null;

        shouldReplace = false;
        replaced = true;

        final sCoreLines = sortedScores.map((e) => e.toString()).join('\n') + '\n\n';
        final mCoreLines = multiCoreScores.map((e) => e.toString()).join('\n') + '\n\n';

        // add back the line with detail opening tag
        return sCoreLines + multiCoreHeading + mCoreLines + line;
      })
      .whereType<String>()
      .join('\n');

  readmeFile.writeAsStringSync(newReadmeContent);
}

class Score {
  final String name;
  final List<double> processingTimes = [];
  String unit = "";
  String totalTime = "";

  Score({
    required this.name,
  });

  double _avgAbsoluteTime() {
    if (processingTimes.isEmpty) throw Exception('No processing time found for $name');
    return processingTimes.reduce((a, b) => a + b) / processingTimes.length;
  }

  double avgTime() {
    return _avgAbsoluteTime() * (unit == 's' ? 1000 : 1);
  }

  String avgTimeString() {
    return _avgAbsoluteTime().toStringAsFixed(2) + ' $unit';
  }

  void addTime(double time, String unit) {
    processingTimes.add(time);
    this.unit = unit;
  }

  @override
  String toString() {
    return '| $name | ${avgTimeString()} | $totalTime |';
  }
}
