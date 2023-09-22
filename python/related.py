import json


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
    for post in posts:
        for tag in post["tags"]:
            if tag not in tag_map:
                tag_map[tag] = []
            tag_map[tag].append(Post(post["_id"], post["title"], post["tags"]))

    all_related_posts = []
    for post in posts:
        related_posts = {}
        for tag in post["tags"]:
            for related_post in tag_map[tag]:
                if related_post._id != post["_id"]:
                    if related_post not in related_posts:
                        related_posts[related_post] = 0
                    related_posts[related_post] += 1

        related_posts_slice = [
            PostWithSharedTags(p, c) for p, c in related_posts.items()
        ]
        related_posts_slice.sort(key=lambda x: x.shared_tags, reverse=True)

        num = min(5, len(related_posts_slice))
        top_posts = [p.post.to_dict() for p in related_posts_slice[:num]]

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
