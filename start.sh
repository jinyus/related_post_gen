#!/bin/bash

git clone https://github.com/jinyus/related_post_gen.git &&
    cd related_post_gen &&
    python gen_fake_posts.py 500 &&
    ./run.sh all raw_results.md append &&
    echo "Done"
