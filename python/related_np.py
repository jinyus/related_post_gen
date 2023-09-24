import numpy as np
import json
import time


def main():
    with open("../posts.json") as f:
        posts = json.load(f)
    tags = []
    for post in posts:
        tags.extend(post['tags'])
    tags = np.asarray(tags)
    unique_tags = np.unique(tags)

    tag_map = np.zeros((len(posts),len(unique_tags)), dtype=np.uint16)

    for i, post in enumerate(posts):
        for j, utag in enumerate(unique_tags):
            tag_map[i,j] = int(utag in post['tags'])

    related_posts = np.empty((len(posts),5), dtype=np.uint16)
    for i in range(len(posts)):
        relatedness = tag_map @ tag_map[i,:]
        relatedness[i] = 0
        related_posts[i,:] = np.argsort(relatedness, )[-5:][::-1]
    # related_posts = calc_related_posts(tag_map, len(posts))

    all_related = []
    for i, post in enumerate(posts):
        all_related.append(
            {
                "_id": post["_id"],
                "tags": post["tags"],
                "related": [posts[idx].copy() for idx in related_posts[i,:]],
            })
    
    with open("../related_posts_python_np.json", "w") as f:
        json.dump(all_related, f)

if __name__ == "__main__":
#    t0 = time.monotonic()
    main()
#    print(f'Took: {time.monotonic()-t0:.3f}sec')
