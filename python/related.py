from timing import finish, lap

TOPN = 5

lap()
from collections import defaultdict

import ujson as json


def main():
    lap()
    with open("../posts.json") as f:
        posts = json.load(f)
    lap()

    tag_map = defaultdict(list)
    for idx, post in enumerate(posts):
        for tag in post["tags"]:
            tag_map[tag].append(idx)

    all_related_posts = [None] * len(posts)
    tagged_post_count = [0] * len(posts)

    for this_post_idx, post in enumerate(posts):
        tagged_post_count = [0] * len(posts)

        for tag in post["tags"]:
            for other_idx in tag_map[tag]:
                tagged_post_count[other_idx] += 1

        tagged_post_count[this_post_idx] = 0

        top5 = [0] * TOPN * 2  # flattened list of (count, id)
        min_tags = 0

        for j, count in enumerate(tagged_post_count):
            if count > min_tags:
                upper_bound = (TOPN - 2) * 2

                while upper_bound >= 0 and count > top5[upper_bound]:
                    top5[upper_bound + 2] = top5[upper_bound]
                    top5[upper_bound + 3] = top5[upper_bound + 1]
                    upper_bound -= 2

                insert_pos = upper_bound + 2
                top5[insert_pos] = count
                top5[insert_pos + 1] = j

                min_tags = top5[TOPN * 2 - 2]

        # faster than list comprehension
        top_posts = [None] * TOPN

        for i in range(1, 10, 2):
            top_posts[i // 2] = posts[top5[i]]

        all_related_posts[this_post_idx] = {
            "_id": post["_id"],
            "tags": post["tags"],
            "related": top_posts,
        }

    lap()
    with open("../related_posts_python.json", "w") as f:
        json.dump(all_related_posts, f)
    lap()
    finish()


if __name__ == "__main__":
    main()
