from timing import lap, finish

lap()
import ujson as json
import numpy as np


def main():
    lap()
    with open("../posts.json") as f:
        posts = json.load(f)
    lap()

    unique_tags = set(tag for post in posts for tag in post["tags"])

    tag_map = np.zeros((len(posts), len(unique_tags)), dtype=np.uint8)

    for i, post in enumerate(posts):
        for j, utag in enumerate(unique_tags):
            tag_map[i, j] = int(utag in post["tags"])

    # This it the linear algebra, because tag_map is arranged as a matrix,
    # a matmul with a vector accomplishes the same thing as the nested for
    # loop and sum operation in one function
    # call using highly optimized BLAS routines.

    relatedness = np.squeeze(np.dot(tag_map[:, None, :], tag_map[:, :, None]))
    np.fill_diagonal(relatedness, 0)
    related_posts = np.flip(
        np.argsort(relatedness, axis=1, kind="stable")[:, -5:], axis=1
    )

    all_related = []
    for i, post in enumerate(posts):
        all_related.append(
            {
                "_id": post["_id"],
                "tags": post["tags"],
                "related": [posts[idx].copy() for idx in related_posts[i, :]],
            }
        )

    lap()
    with open("../related_posts_python_np.json", "w") as f:
        json.dump(all_related, f)
    lap()
    finish()


if __name__ == "__main__":
    main()
