#!/bin/bash

# Read the first arg passed to the script
first_arg=$1

run_go() {
    echo "Running Go" &&
        cd ./go &&
        go build &&
        command time -f '%es %Mk' ./related
}

run_rust() {
    echo "Running Rust" &&
        cd ./rust &&
        cargo build --release &&
        command time -f '%es %Mk' ./target/release/rust
}

run_python() {
    echo "Running Python" &&
        cd ./python &&
        command time -f '%es %Mk' python3 ./related.py
}

check_output() {
    cd .. &&
        echo "Checking output" &&
        python3 verify.py "$1"
}

if [ "$first_arg" = "go" ]; then

    run_go &&
        check_output "related_posts_go.json"

elif [ "$first_arg" = "rust" ]; then

    run_rust &&
        check_output "related_posts_rust.json"

elif [ "$first_arg" = "python" ]; then

    run_python &&
        check_output "related_posts_python.json"

elif [ "$first_arg" = "all" ]; then

    echo "running all" &&
        run_go &&
        cd .. &&
        run_rust &&
        cd .. &&
        run_python

else
    echo "Valid args: go | rust | python | all. Unknown argument: $first_arg"
fi
