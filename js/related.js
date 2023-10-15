export function genRelatedPosts(posts) {
  const postsCount = posts.length;
  // build a map of tags to post indices. tag -> [idx1, idx2, ...]
  const tagMap = {};
  for (let i = 0; i < postsCount; i++) {
    const post = posts[i];
    const tagsCount = post.tags.length;
    for (let j = 0; j < tagsCount; j++) {
      const tag = post.tags[j];
      if (tagMap[tag]) {
        tagMap[tag].push(i);
      } else {
        tagMap[tag] = [i];
      }
    }
  }

  const taggedPostCount = new Array(postsCount);
  const allRelated = new Array(postsCount);

  for (let i = 0; i < postsCount; i++) {
    // fill array with 0s manually. Array.fill() is slow in bun
    for (let j = 0; j < postsCount; j++) {
      taggedPostCount[j] = 0;
    }

    const post = posts[i];
    const tagsCount = post.tags.length;

    for (let j = 0; j < tagsCount; j++) {
      const other = tagMap[post.tags[j]];
      const otherCount = other.length;
      for (let k = 0; k < otherCount; k++) {
        taggedPostCount[other[k]]++;
      }
    }

    taggedPostCount[i] = 0; // exclude self

    const top5 = new Array(5);
    for (let j = 0; j < 5; j++) {
      top5[j] = { post: null, count: 0 };
    }

    let minTags = 0;

    // custom priority queue to find top 5
    for (let j = 0; j < postsCount; j++) {
      const count = taggedPostCount[j];

      if (count > minTags) {
        let pos = 4;

        while (pos >= 0 && count > top5[pos].count) {
          pos--;
        }

        pos++;
        top5.splice(pos, 0, { post: posts[j], count });
        top5.pop();
        minTags = top5[4].count;
      }
    }

    allRelated[i] = {
      _id: post._id,
      title: post.title,
      tags: post.tags,
      related: top5.map(p => p.post)
    };
  }

  return allRelated;
}