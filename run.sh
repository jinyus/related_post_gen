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
        if [ $HYPER == 1 ]; then
            command hyperfine -r 10 -w 3 --show-output "./related"
        else
            command time -f '%es %Mk' ./related
        fi
}

run_go_concurrent() {
    echo "Running Go with concurrency" &&
        cd ./go_con &&
        go build &&
        if [ $HYPER == 1 ]; then
            command hyperfine -r 10 -w 3 --show-output "./related_concurrent"
        else
            command time -f '%es %Mk' ./related_concurrent
        fi
}

run_rust() {
    echo "Running Rust" &&
        cd ./rust &&
        cargo build --release &&
        if [ $HYPER == 1 ]; then
            command hyperfine -r 10 -w 3 --show-output "./target/release/rust"
        else
            command time -f '%es %Mk' ./target/release/rust
        fi
}

run_rust_max() {
    echo "Running Rust Max Optimized" &&
        cd ./rust_max &&
        cargo build --release &&
        if [ $HYPER == 1 ]; then
            command hyperfine -r 10 -w 3 --show-output "./target/release/rust_max"
        else
            command time -f '%es %Mk' ./target/release/rust_max
        fi
}

run_rust_rayon() {
    echo "Running Rust w/ Rayon" &&
        cd ./rust_rayon &&
        cargo build --release &&
        if [ $HYPER == 1 ]; then
            command hyperfine -r 10 -w 3 --show-output "./target/release/rust_rayon"
        else
            command time -f '%es %Mk' ./target/release/rust_rayon
        fi
}

run_python_np() {
    echo "Running Python with Numpy" &&
        cd ./python &&
        if [ ! -d "venv" ]; then
            python3 -m venv venv
        fi
    source venv/bin/activate &&
        pip freeze | grep numpy || pip install numpy &&
        if [ $HYPER == 1 ]; then
            command hyperfine -r 5 --show-output "python3 ./related_np.py"
        else
            command time -f '%es %Mk' python3 ./related_np.py
        fi
    deactivate
}

run_python() {
    echo "Running Python" &&
        cd ./python &&
        if [ $HYPER == 1 ]; then
            command hyperfine -r 5 --show-output "python3 ./related.py"
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
        check_output "related_posts_go_con.json"

elif [ "$first_arg" = "rust" ]; then

    run_rust &&
        check_output "related_posts_rust.json"

elif [ "$first_arg" = "rust_max" ]; then

    run_rust_max &&
        check_output "related_posts_rust_max.json"

elif [ "$first_arg" = "rust_ray" ]; then

    run_rust_rayon &&
        check_output "related_posts_rust_rayon.json"

elif [ "$first_arg" = "py" ]; then

    run_python &&
        check_output "related_posts_python.json"

elif [ "$first_arg" = "numpy" ]; then

    run_python_np &&
        check_output "related_posts_python_np.json"

elif [ "$first_arg" = "all" ]; then

    echo "running all" &&
        run_go &&
        cd .. &&
        run_rust &&
        cd .. &&
        run_rust_rayon &&
        cd .. &&
        run_python

elif [ "$first_arg" = "clean" ]; then

    echo "cleaning" &&
        cd go && rm -f related &&
        cd .. &&
        cd rust && cargo clean &&
        cd .. &&
        cd rust_rayon && cargo clean

else
    echo "Valid args: go | rust | py | numpy | all | clean. Unknown argument: $first_arg"
fi
