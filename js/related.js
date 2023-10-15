export function genRelatedPosts(posts) {
  // build a map of tags to post indices. tag -> [idx1, idx2, ...]
  const tagMap = {};
  posts.forEach((post, i) => {
    for (const tag of post.tags) {
      if (tagMap[tag]) {
        tagMap[tag].push(i);
      } else {
        tagMap[tag] = [i];
      }
    }
  });

  const postsCount = posts.length;
  const taggedPostCount = Array(postsCount);
  const allRelated = Array(postsCount);

  for (let i = 0; i < postsCount; i++) {

    let record = {}

    for (let j = 0; j < postsCount; j++) {
      taggedPostCount[j] = 0;
    }

    let post = posts[i];

    for (const tag of post.tags) {
      for (const otherIdx of tagMap[tag]) {
        taggedPostCount[otherIdx]++;
      }
    }

    taggedPostCount[i] = 0; // exclude self

    let top5 = Array(5);

    for (let j = 0; j < 5; j++) {
      top5[j] = { idx: -1, count: 0 };
    }

    let minTags = 0;

    // custom priority queue to find top 5
    taggedPostCount.forEach((count, i2) => {

      if (count > minTags) {
        let pos = 4;

        while (pos >= 0 && count > top5[pos].count) {
          pos--;
        }

        pos++;
        top5.splice(pos, 0, { idx: i2, count });
        top5.pop();
        minTags = top5[4].count;
      }

    });

    record._id = post._id;
    record.title = post.title;
    record.tags = post.tags;
    record.related = top5.map((p) => posts[p.idx]);

    allRelated[i] = record;

  }

  return allRelated;
}
