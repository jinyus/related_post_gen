
export function genRelatedPosts(posts) {

  const tagMap = posts.reduce(
    (acc, post) => {
      post.tags.forEach((tag) => {
        if (acc.map[tag]) {
          acc.map[tag].push(acc.i);
        } else {
          acc.map[tag] = [acc.i];
        }
      });
      acc.i++;
      return acc;
    },
    { i: 0, map: {} }
  );

  const taggedPostCount = Array(posts.length);

  return Array(posts.length)
    .fill({})
    .map((record, i) => {

      taggedPostCount.fill(0);
      let post = posts[i];

      post.tags.forEach((tag) => {

        tagMap.map[tag].forEach((otherIdx) => {

          taggedPostCount[otherIdx]++;

        });

      });

      taggedPostCount[i] = 0;

      let top5 = Array(5).fill({
        idx: 0,
        count: 0,
      });

      let minTags = 0;

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

      return record;
    });
}

