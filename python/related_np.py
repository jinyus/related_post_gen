from timing import lap, finish

lap()
import ujson as json
import numpy as np
from scipy.sparse import coo_array


def main():
    lap()
    with open("../posts.json") as f:
        posts = json.load(f)
    lap()

    unique_tags = set(tag for post in posts for tag in post["tags"])
    tag_dict = {tag: i for i, tag in enumerate(unique_tags)}

    ij = []
    for i, post in enumerate(posts):
        for tag in post["tags"]:
            j = tag_dict[tag]
            ij.append((i, j))
    tag_map = coo_array((np.ones(len(ij), dtype=np.uint8), zip(*ij)),
                        shape=(len(posts), len(unique_tags)),
                        dtype=np.uint8)

    tag_map = tag_map.tocsr()

    # This it the linear algebra, because tag_map is arranged as a matrix,
    # a matmul with a vector accomplishes the same thing as the nested for
    # loop and sum operation in one function

    relatedness = tag_map @ tag_map.T
    relatedness.setdiag(0)

    all_related = []
    for i, post in enumerate(posts):
        data = relatedness.data[relatedness.indptr[i]: relatedness.indptr[i + 1]]
        top5_among_nonzeros = np.flip(np.argsort(data, kind="stable")[-5:])
        top5 = relatedness.indices[relatedness.indptr[i]: relatedness.indptr[i + 1]][top5_among_nonzeros]

        all_related.append(
            {
                "_id": post["_id"],
                "tags": post["tags"],
                "related": [posts[idx].copy() for idx in top5],
            }
        )

    lap()
    with open("../related_posts_python_np.json", "w") as f:
        json.dump(all_related, f)
    lap()
    finish()


if __name__ == "__main__":
    main()
