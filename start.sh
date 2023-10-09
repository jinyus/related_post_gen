git https://github.com/jinyus/related_post_gen.git &&
    cd related_post_gen &&
    ./run.sh all raw_results.md &&
    #echo "Running 15k posts" &&
    # python gen_fake_posts.py 15000 &&
    # ./run.sh all raw_results.md append &&
    # echo "Running 30k posts" &&
    # python gen_fake_posts.py 30000 &&
    # ./run.sh all raw_results.md append &&
    echo "Done"
