#!/bin/bash

git clone "$GIT_REPO" &&
    cd "$GIT_REPO_NAME" &&
    if [ "$BRANCH" != "main" ]; then
        git checkout "$BRANCH"
    fi
#
echo "Run Benchmark (5k posts)" &&
    ./run.sh "$TEST_NAME" raw_results.md &&
    #
    echo "Generate 15k posts" &&
    python gen_fake_posts.py 15000 &&
    #
    echo "Run Benchmark (15k posts)" &&
    ./run.sh "$TEST_NAME" raw_results.md append &&
    #
    echo "Generate 30k posts" &&
    python gen_fake_posts.py 30000 &&
    #
    echo "Run Benchmark (30k posts)" &&
    ./run.sh "$TEST_NAME" raw_results.md append &&
    #
    dart extract_results.dart raw_results.md &&
    if [ -n "$GIT_PAT" ]; then

        echo "Creating Pull Request" &&
            git config --global user.email "$GIT_EMAIL" &&
            git config --global user.name "$GIT_USER" &&
            echo "Creating new branch" &&
            git checkout -b results &&
            echo "Adding new files" &&
            git add raw_results.md readme.md &&
            git commit -m "Update results" &&
            echo "Pushing to new branch" &&
            echo "$GIT_PAT" >/app/token.txt && gh auth login --with-token </app/token.txt &&
            git push https://$(echo "$GIT_USER:$GIT_PAT")@github.com/$(git config --get remote.origin.url | cut -d'/' -f4-5) results &&
            gh pr create --title "[SKIP] Update Benchmark Results" --body "Automated PR" --base main --head results &&
            echo "Done"
    fi
