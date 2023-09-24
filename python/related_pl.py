from datetime import datetime

import polars as pl


def main():
    posts = pl.read_json("../posts.json")

    start = datetime.now()

    posts = posts.lazy()
    by_tag = posts.with_row_count().explode("tags").select("tags", "row_nr")
    pairs = by_tag.join(by_tag, on="tags")
    pairs = pairs.filter(pl.col("row_nr") != pl.col("row_nr_right"))

    counts = pairs.group_by(["row_nr", "row_nr_right"]).count()
    top5 = counts.sort("count", descending=True).group_by("row_nr_right", maintain_order=True).head(5).drop("count")

    related = posts.with_row_count().join(top5, on="row_nr")
    related = related.group_by("row_nr_right").agg(related=pl.struct("_id", "title", "tags"))
    related = related.rename({"row_nr_right": "row_nr"})

    result = posts.with_row_count().join(related, on="row_nr").select("_id", "tags", "related")
    result = result.collect()

    end = datetime.now()
    print(f"Processing time (w/o IO): {end - start}")

    result.write_json("../related_posts_python_pl.json", row_oriented=True)


if __name__ == "__main__":
    main()
