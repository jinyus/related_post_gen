from datetime import datetime

import pandas as pd


def main():
    posts = pd.read_json("../posts.json")

    start = datetime.now()

    by_tag = posts.tags.map(list).explode().reset_index()
    pairs = pd.merge(by_tag, by_tag, on="tags")
    pairs = pairs.where(pairs.index_x != pairs.index_y)

    counts = pairs.groupby(["index_x", "index_y"], sort=False).count()
    top5 = counts.sort_values("tags").groupby(level=0, group_keys=False, sort=False).head(5).drop(columns="tags")

    related = posts.join(top5.reset_index(level=0))
    related = related.groupby("index_x").apply(lambda g: g.drop(columns="index_x").to_dict("records"))

    result = posts[["_id", "tags"]]
    result["related"] = related

    end = datetime.now()
    print(f"Processing time (w/o IO): {end - start}")

    result.to_json("../related_posts_python_pd.json", "records")


if __name__ == "__main__":
    main()
