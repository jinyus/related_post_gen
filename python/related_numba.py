from timing import lap, finish

lap()
import numpy as np
import orjson
from numba import njit


@njit
def count_relations(n_posts, related_pp):
    relation_count = np.zeros(n_posts, dtype=np.uint8)
    for p in related_pp:
        relation_count[p] += 1
    return relation_count


def precompile():
    lap()
    # JIT compile by running with the arguments of the correct type
    # 1) measure compile time
    # 2) get correct processing (without compilation) time using the cached machine code
    count_relations(0, np.empty(0, dtype=np.uint16))


def main():
    lap()
    with open("../posts.json", "rb") as f:
        s = f.read()
        posts = orjson.loads(s)
    lap()

    unique_tags = set(tag for post in posts for tag in post["tags"])
    tag_to_t = {t: np.uint8(i) for i, t in enumerate(unique_tags)}
    t_to_pp = [[] for _ in unique_tags]
    for p, post in enumerate(posts):
        for tag in post["tags"]:
            t_to_pp[tag_to_t[tag]].append(p)
    t_to_pp = np.array([np.array(tp, dtype=np.uint16) for tp in t_to_pp], dtype=object)

    all_related_posts = []
    for p, post in enumerate(posts):
        tt = np.array([tag_to_t[tag] for tag in post["tags"]], dtype=np.uint8)
        related_idx = np.concatenate(t_to_pp[tt])
        relation_count = count_relations(len(posts), related_idx)
        relation_count[p] = 0
        top5 = np.flip(np.argsort(relation_count, kind="stable")[-5:])
        all_related_posts.append(
            {
                "_id": post["_id"],
                "tags": post["tags"],
                "related": [posts[i] for i in top5],
            }
        )

    lap()
    with open("../related_posts_python_numba.json", "wb") as f:
        s = orjson.dumps(all_related_posts)
        f.write(s)
    lap()
    finish()


if __name__ == "__main__":
    precompile()
    main()
