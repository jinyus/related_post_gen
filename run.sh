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

# Check if the first arg is "go"
if [ "$first_arg" = "go" ]; then

    run_go

elif [ "$first_arg" = "rust" ]; then

    run_rust

elif [ "$first_arg" = "python" ]; then

    run_python

elif [ "$first_arg" = "all" ]; then

    echo "running all" &&
        run_go &&
        cd .. &&
        run_rust &&
        cd .. &&
        run_python

else
    # If the first arg is not "go", "rust", or "all", print an error message
    echo "Valid args: go | rust | python | all. Unknown argument: $first_arg"
fi
