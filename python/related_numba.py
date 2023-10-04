from timing import lap, finish

lap()
import numpy as np
import orjson
from numba import njit, typed


@njit
def count_relations(n_posts, t_to_pp, tt, current_p):
    relation_count = np.zeros(n_posts, dtype=np.uint8)
    for t in tt:
        for p in t_to_pp[t]:
            relation_count[p] += 1
    relation_count[current_p] = 0
    return relation_count


@njit
def get_top5(relation_count):
    max_i = np.zeros(5, dtype=np.uint16)
    max_r = np.zeros(5, dtype=np.uint8)
    for i, r in enumerate(relation_count):
        for j in range(4, -1, -1):
            if r > max_r[j]:
                max_r[:j] = max_r[1:j + 1]
                max_i[:j] = max_i[1:j + 1]
                max_r[j] = r
                max_i[j] = i
                break
    return max_i


def precompile():
    lap()
    # JIT compile by running with the arguments of the correct type
    # 1) measure compile time
    # 2) get correct processing (without compilation) time using the cached machine code
    count_relations(1, typed.List([np.empty(0, dtype=np.uint16)]), np.empty(0, dtype=np.uint8), 0)
    get_top5(np.empty(0, dtype=np.uint8))


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
    t_to_pp = typed.List(np.array(tp, dtype=np.uint16) for tp in t_to_pp)

    all_related_posts = []
    for p, post in enumerate(posts):
        tt = np.array([tag_to_t[tag] for tag in post["tags"]], dtype=np.uint8)
        relation_count = count_relations(len(posts), t_to_pp, tt, p)
        top5 = get_top5(relation_count)
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
