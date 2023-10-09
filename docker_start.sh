#!/bin/bash

git clone https://github.com/jinyus/related_post_gen.git &&
    cd related_post_gen &&
    #
    echo "Run Benchmark (5k posts)" &&
    ./run.sh all raw_results.md &&
    #
    echo "Generate 15k posts" &&
    python gen_fake_posts.py 15000 &&
    #
    echo "Run Benchmark (15k posts)" &&
    ./run.sh all raw_results.md append &&
    #
    echo "Generate 30k posts" &&
    python gen_fake_posts.py 30000 &&
    #
    echo "Run Benchmark (30k posts)" &&
    ./run.sh all raw_results.md append &&
    #
    echo "Done"
