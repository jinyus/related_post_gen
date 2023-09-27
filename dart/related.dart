import 'dart:convert';
import 'dart:io';

void main() {
  final posts = jsonDecode(File('../posts.json').readAsStringSync()) as List<dynamic>;

  final sw = Stopwatch()..start();

  // takes 3ms
  final (_, tagMap) = posts.fold<(int, Map<String, List<int>>)>(
    (0, {}),
    (state, post) {
      final tags = post['tags'];
      for (final tag in tags) {
        if (state.$2.containsKey(tag)) {
          state.$2[tag]!.add(state.$1);
        } else {
          state.$2[tag] = [state.$1];
        }
      }

      return (state.$1 + 1, state.$2);
    },
  );

  // preallocate and reuse
  final taggedPostCount = List.filled(posts.length, 0);

  final allRelatedPosts = List.generate(posts.length, (i) {
    final post = posts[i];
    taggedPostCount.fillRange(0, posts.length, 0);

    final tags = post['tags'] as List<dynamic>;
    for (final tag in tags) {
      final tagString = tag as String;
      for (var otherPostIdx in tagMap[tagString]!) {
        taggedPostCount[otherPostIdx] += 1;
      }
    }

    taggedPostCount[i] = 0; // don't include self

    final top5 = List.filled(5, (idx: 0, count: 0), growable: true);
    var minTags = 0;

    // priority queue to keep track of top 5
    for (var i = 0; i < taggedPostCount.length; i++) {
      final count = taggedPostCount[i];
      if (count > minTags) {
        var pos = 4;

        while (pos >= 0 && count > top5[pos].count) {
          pos -= 1;
        }

        pos += 1;

        top5.insert(pos, (idx: i, count: count));
        top5.removeLast();

        minTags = top5.last.count;
      }
    }

    return {
      "_id": post['_id'],
      "tags": post['tags'],
      "related": top5.map((v) => posts[v.idx]).toList(),
    };
  });

  print('Processing time (w/o IO): ${sw.elapsedMilliseconds}ms');

  File('../related_posts_dart.json').writeAsStringSync(jsonEncode(allRelatedPosts));
}
