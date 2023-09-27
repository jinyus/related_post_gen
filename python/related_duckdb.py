import duckdb
from datetime import datetime


PREP = [
    """CREATE TABLE posts AS (SELECT * FROM '../posts.json');""",
    """CREATE TABLE tags AS (SELECT _id AS post_id, UNNEST(tags) AS tag FROM posts);""",
    """CREATE TABLE tag_related AS (
            SELECT
                a.post_id AS source_post,
                b.post_id AS related_post
                FROM tags a
                INNER JOIN tags b ON a.tag = b.tag
                WHERE a.post_id <> b.post_id);""",
    """CREATE TABLE related_counts AS (
            SELECT
                source_post,
                related_post,
                COUNT(*) as relation_count
            FROM tag_related
            GROUP BY source_post, related_post);""",
]


def main():
    for q in PREP:
        duckdb.execute(q)

    start = datetime.now()
    duckdb.execute(
        """COPY (
            SELECT
                p._id,
                p.tags,
                ARRAY(
                    SELECT
                        JSON_OBJECT('_id', rp._id, 'title', rp.title, 'tags', rp.tags)
                    FROM related_counts rc
                    JOIN posts rp ON rp._id = rc.related_post
                    WHERE rc.source_post = p._id
                    ORDER BY rc.relation_count DESC
                    LIMIT 5
                ) AS related
            FROM posts p
        ) TO '../related_posts_duckdb.jsonl';"""
    )

    end = datetime.now()

    print(f"Processing time (w/o IO): {end - start}")


if __name__ == "__main__":
    main()
