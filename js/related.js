
const topN = 5;

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

  const taggedPostCount = Array(posts.length);

  return Array(posts.length)
    .fill({})
    .map((record, i) => {

      taggedPostCount.fill(0);
      let post = posts[i];

      for (const tag of post.tags) {
        for (const otherIdx of tagMap[tag]) {
          taggedPostCount[otherIdx]++;
        }
      }

      taggedPostCount[i] = 0; // exclude self

      let top5 = Array(topN * 2).fill(0);  // flattened list of (count, id)
      let minTags = 0;

      for (let j in taggedPostCount) {
        let count = taggedPostCount[j];
        if (count > minTags) {

          let upperBound = (topN - 2) * 2;

          while (upperBound >= 0 && count > top5[upperBound]) {
            top5[upperBound + 2] = top5[upperBound];
            top5[upperBound + 3] = top5[upperBound + 1];
            upperBound -= 2;
          }

          let insertPos = upperBound + 2;
          top5[insertPos] = count;
          top5[insertPos + 1] = j;

          minTags = top5[topN * 2 - 2];
        }
      }

      let topPosts = Array(topN).fill(null);

      // Convert indexes back to Post pointers
      for (let i = 1; i < 10; i += 2) {
        topPosts[Math.floor(i / 2)] = posts[top5[i]];
      }

      record._id = post._id;
      record.title = post.title;
      record.tags = post.tags;
      record.related = topPosts;

      return record;
    });
}

