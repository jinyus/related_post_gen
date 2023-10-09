import 'dart:io';

// script to extract benchmark results and update readme.md

final langRegex = RegExp(r'^[a-zA-Z]');
final colonOrNewLineRegex = RegExp(r'[:\n]');
final pTimeRegex = RegExp(r'Processing time[^0-9]*([\d.]+)\s?(ms|s|milliseconds)');
final tTimeRegex = RegExp(r'Time[^0-9]*([\d.]+ (ms|s))');

const multiCoreHeading = '''
### Multicore Results

| Language       | Processing Time (5k posts) | 25k posts | 50k posts |
| -------------- | -------------------------- | --------- | --------- |
''';

void main(List<String> args) {
  final filename = args.firstOrNull;

  if (filename == null) return print('Usage: extract <filename>');

  final file = File(filename);

  if (!file.existsSync()) return print('File "$filename" not found');

  final lines = file.readAsLinesSync();

  final scores = <String, List<Score>>{};

  Score? currentScore;
  String? currentLang;

  for (final line in lines) {
    if (langRegex.hasMatch(line)) {
      final name = line.trim().replaceAll(colonOrNewLineRegex, '');

      if (scores.containsKey(name)) {
        if (currentLang != name) {
          final newScore = Score(name: name);
          scores[name]!.add(newScore);
          currentScore = newScore;
          currentLang = name;
          continue;
        } else {
          currentScore = scores[name]!.last;
          continue;
        }
      }

      final newScore = Score(name: name);
      scores[name] = [newScore];
      currentScore = newScore;
      currentLang = name;
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
  }

  final sortedScores = scores.values.toList()
    ..sort((a, b) {
      final aSum = a.fold(0.0, (total, sc) => sc.avgTime() + total);
      final bSum = b.fold(0.0, (total, sc) => sc.avgTime() + total);
      return aSum.compareTo(bSum);
    });

  final multiCoreScores = sortedScores.where((s) => s.first.name.contains('Concurrent')).toList();

  sortedScores..removeWhere((s) => s.first.name.contains('Concurrent'));

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

        final sCoreLines = sortedScores.map((e) => e.toRowString()).join('\n') + '\n\n';
        final mCoreLines = multiCoreScores.map((e) => e.toRowString()).join('\n') + '\n\n';

        // add back the line with detail opening tag
        return sCoreLines + multiCoreHeading + mCoreLines + line;
      })
      .whereType<String>()
      .join('\n');

  readmeFile.writeAsStringSync(newReadmeContent);
}

typedef Time = ({double time, String unit});

class Score {
  final String name;
  final List<Time> processingTimes = [];

  Score({
    required this.name,
  });

  double avgTime() {
    if (processingTimes.isEmpty) throw Exception('No processing time found for $name');

    return processingTimes.fold(0.0, (total, el) => el.millis + total) / processingTimes.length;
  }

  String avgTimeString() {
    final avg = avgTime();

    if (avg < 1000) return avgTime().toStringAsFixed(2) + ' ms';

    return (avg / 1000).toStringAsFixed(2) + ' s';
  }

  void addTime(double time, String unit) {
    processingTimes.add((time: time, unit: unit));
  }

  @override
  String toString() {
    return '| $name | ${avgTimeString()}  |';
  }
}

extension on List<Score> {
  String toRowString() {
    return '| ${first.name} | ${first.avgTimeString()} | ${this[1].avgTimeString()} | ${this[2].avgTimeString()} |';
  }
}

extension on Time {
  double get millis => unit == 'ms' ? time : time * 1000;
}
