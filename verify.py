import json
import sys
from typing import Dict, List


def generate_correct_related_posts():
    with open("./related_posts_python.json") as f:
        python_related: List[Dict] = json.load(f)

    correct_payload: Dict[str, int] = {}

    for i in range(len(python_related)):
        correct_post = python_related[i]
        # target_post = target_related[i]

        tag_set = set(correct_post["tags"])
        shared_tag_count = 0

        for related_post in correct_post["related"]:
            shared_tag_count += len(set(related_post["tags"]) & tag_set)

        correct_payload[correct_post["_id"]] = shared_tag_count

    with open("./correct_related.json", "w") as f:
        json.dump(correct_payload, f)


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python verify.py <path_to_posts.json>")
        sys.exit(1)

    filepath = sys.argv[1]

    if not filepath.endswith(".json"):
        print("Generating correct file...")
        generate_correct_related_posts()
        sys.exit(0)

    with open(filepath) as f:
        target_file: List[Dict] = json.load(f)

    with open("correct_related.json") as f:
        correct_file: Dict[str, int] = json.load(f)

    for post in target_file:
        if "_id" not in post:
            print(f"Invalid post! _id not found: \n{post}")
            sys.exit(1)
        elif "tags" not in post:
            print(f"Invalid post! tags not found: \n{post}")
            sys.exit(1)
        elif "related" not in post:
            print(f"Invalid post! related not found: \n{post}")
            sys.exit(1)

        tag_set = set(post["tags"])
        shared_tag_count = 0

        for related_post in post["related"]:
            shared_tag_count += len(set(related_post["tags"]) & tag_set)

        post_id = post["_id"]

        if post_id not in correct_file:
            print(f"Post {post_id} not found in correct file!\n{post}")
            sys.exit(1)

        correct_count = correct_file[post_id]

        if shared_tag_count != correct_count:
            print(
                f"Post {post_id} is invalid!\nexpected: {correct_count} shared tag count\nactual: {shared_tag_count}"
            )
            sys.exit(1)

    print(f"Output file: {filepath} is valid!")
    sys.exit(0)
