import json
from collections import Counter, defaultdict
from datetime import datetime


def main():
    with open("../posts.json") as f:
        posts = json.load(f)

    start = datetime.now()

    tag_map = defaultdict(list)
    for idx, post in enumerate(posts):
        for tag in post["tags"]:
            tag_map[tag].append(idx)

    all_related_posts = []
    for this_post_idx, post in enumerate(posts):
        relation_count = Counter((p for tag in post["tags"] for p in tag_map[tag]))
        relation_count[this_post_idx] = 0
        all_related_posts.append(
            {
                "_id": post["_id"],
                "tags": post["tags"],
                "related": [posts[p] for p, _ in relation_count.most_common(5)],
            }
        )

    end = datetime.now()
    print(f"Processing time (w/o IO): {end - start}")

    with open("../related_posts_python.json", "w") as f:
        json.dump(all_related_posts, f)


if __name__ == "__main__":
    main()
