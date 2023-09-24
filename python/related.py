import heapq
import json
from typing import Dict


class Post:
    def __init__(self, _id, title, tags):
        self._id = _id
        self.title = title
        self.tags = tags

    def __hash__(self):
        return hash(self._id)

    def __eq__(self, other):
        if isinstance(other, Post):
            return self._id == other._id
        return False

    def to_dict(self):
        return {
            "_id": self._id,
            "title": self.title,
            "tags": self.tags,
        }


class PostWithSharedTags:
    def __init__(self, post, shared_tags):
        self.post = post
        self.shared_tags = shared_tags


def main():
    with open("../posts.json") as f:
        posts = json.load(f)

    tag_map = {}
    for idx, post in enumerate(posts):
        for tag in post["tags"]:
            if tag not in tag_map:
                tag_map[tag] = []
            tag_map[tag].append(idx)

    all_related_posts = []
    for this_post_idx, post in enumerate(posts):
        related_posts_dict: Dict[int, int] = {}
        for tag in post["tags"]:
            for related_post in tag_map[tag]:
                if related_post != this_post_idx:
                    if related_post not in related_posts_dict:
                        related_posts_dict[related_post] = 0
                    related_posts_dict[related_post] += 1

        top_posts = [
            {k: posts[p][k] for k in ("_id", "title", "tags")}
            for p in heapq.nlargest(5, related_posts_dict, key=related_posts_dict.get)
        ]

        all_related_posts.append(
            {
                "_id": post["_id"],
                "tags": post["tags"],
                "related": top_posts,
            }
        )

    with open("../related_posts_python.json", "w") as f:
        json.dump(all_related_posts, f)


if __name__ == "__main__":
    main()
