import 'dart:convert';
import 'dart:io';

import 'models.dart';

void main() {
  final postsJson = jsonDecode(File('../posts.json').readAsStringSync()) as List<dynamic>;

  final posts = postsJson.map(Post.fromJson).toList();

  final sw = Stopwatch()..start();

  final tagMap = <String, List<int>>{};

  for (var i = 0; i < posts.length; i++) {
    posts[i].tags.forEach((tag) {
      tagMap.update(
        tag,
        (list) => list..add(i),
        ifAbsent: () => [i],
      );
    });
  }

  // preallocate and reuse
  final taggedPostCount = List.filled(posts.length, 0);

  final allRelatedPosts = List.generate(posts.length, (i) {
    final post = posts[i];
    taggedPostCount.fillRange(0, posts.length, 0);

    // faster than for in
    post.tags.forEach((tag) {
      tagMap[tag]!.forEach((otherPostIdx) {
        taggedPostCount[otherPostIdx] += 1;
      });
    });

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
      "_id": post.iD,
      "tags": post.tags,
      "related": top5.map((v) => posts[v.idx]).toList(),
    };
  });

  print('Processing time (w/o IO): ${sw.elapsedMilliseconds}ms');

  File('../related_posts_dart.json').writeAsStringSync(jsonEncode(allRelatedPosts));
}
