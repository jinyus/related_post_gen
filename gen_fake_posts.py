import json
import random
import string
import sys
from typing import Dict, List

from faker import Faker
from nanoid import generate

fake = Faker()


tags = [
    "docker",
    "python",
    "javascript",
    "golang",
    "rust",
    "java",
    "kafka",
    "redis",
    "postgres",
    "mongodb",
    "mysql",
    "cassandra",
    "react",
    "vue",
    "angular",
    "svelte",
    "flask",
    "django",
    "asp.net",
    "spring",
    "express",
    "flutter",
    "unreal",
    "godot",
    "wasm",
    "tutorial",
    "course",
    "game",
]


def gen_posts(count: int):
    posts = map(
        lambda x: {
            "_id": generate_random_string(8),
            "title": fake.sentence(),
            "tags": sorted(random.sample(tags, random.randint(4, 5))),
        },
        range(count),
    )

    json_to_file("posts.json", list(posts))


def json_to_file(filepath: str, data: List | Dict):
    with open(filepath, "w") as myfile:
        myfile.write(json.dumps(data))


def generate_random_string(length: int) -> str:
    return generate(string.ascii_lowercase + string.digits, size=length)


if __name__ == "__main__":
    num = sys.argv[-1]

    if num.isdigit():
        gen_posts(int(num))
    else:
        sys.exit("Please enter a number")
