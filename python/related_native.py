from collections import defaultdict, Counter
import json


def main():
    with open("../posts.json") as f:
        posts = json.load(f)

    POSTID_POST_MAP = {p["_id"]: p for p in posts}

    TAG_POSTLIST_MAP = defaultdict(list)
    for post in posts:
        tags = post["tags"]
        for tag in tags:
            TAG_POSTLIST_MAP[tag].append(post)

    all_related_posts = []
    for post in posts:
        post_id = post["_id"]
        tags = post["tags"]

        related_posts_dict = defaultdict(int)
        for tag in tags:
            for related_post in TAG_POSTLIST_MAP[tag]:
                related_post_id = related_post["_id"]
                if related_post_id != post_id:
                    related_posts_dict[related_post_id] += 1

        top_posts = [
            POSTID_POST_MAP[_id]
            for _id, _ in Counter(related_posts_dict).most_common(5)
        ]
        all_related_posts.append({"_id": post_id, "tags": tags, "related": top_posts})

    with open("../related_posts_python.json", "w") as f:
        json.dump(all_related_posts, f)

    # print(len(all_related_posts))
    # print(all_related_posts)


if __name__ == "__main__":
    main()
