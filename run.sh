#!/bin/bash

# Read the first arg passed to the script
first_arg=$1

HYPER=0
if command -v hyperfine &>/dev/null; then
    HYPER=1
fi

run_go() {
    echo "Running Go" &&
        cd ./go &&
        go build &&
        #command time -f '%es %Mk' ./related
        if [ $HYPER == 1 ]; then
            command hyperfine -r 5 "./related"
        else
            command ./related
        fi
}

run_go_concurrent() {
    echo "Running Go with concurrency" &&
        cd ./go_con &&
        go build &&
        #command time -f '%es %Mk' ./related_concurrent
        if [ $HYPER == 1 ]; then
            command hyperfine -r 5 "./related_concurrent"
        else
            command ./related_concurrent
        fi
}

run_rust() {
    echo "Running Rust" &&
        cd ./rust &&
        cargo build --release &&
        if [ $HYPER == 1 ]; then
            command hyperfine -w 3 "./target/release/rust"
        else
            command ./target/release/rust
        fi
}

run_rust_rayon() {
    echo "Running Rust w/ Rayon" &&
        cd ./rust_rayon &&
        cargo build --release &&
        if [ $HYPER == 1 ]; then
            command hyperfine -w 3 "./target/release/rust_rayon"
        else
            command time -f '%es %Mk' ./target/release/rust_rayon
        fi
}

run_python() {
    echo "Running Python" &&
        cd ./python &&
        if [ $HYPER == 1 ]; then
            command hyperfine -r 1 "python3 ./related.py"
        else
            command time -f '%es %Mk' python3 ./related.py
        fi
}

check_output() {
    cd .. &&
        echo "Checking output" &&
        python3 verify.py "$1"
}

if [ "$first_arg" = "go" ]; then

    run_go &&
        check_output "related_posts_go.json"

elif [ "$first_arg" = "go_con" ]; then

    run_go_concurrent &&
        check_output "related_posts_rust.json"

elif [ "$first_arg" = "rust" ]; then

    run_rust &&
        check_output "related_posts_rust.json"

elif [ "$first_arg" = "rust_ray" ]; then

    run_rust_rayon &&
        check_output "related_posts_rust_rayon.json"

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
