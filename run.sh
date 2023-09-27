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

    check_output "related_posts_go.json"

}

run_go_concurrent() {
    echo "Running Go with concurrency" &&
        cd ./go_con &&
        GOEXPERIMENT=arenas go build &&
        if [ $HYPER == 1 ]; then
            command hyperfine -r 10 -w 3 --show-output "./related_concurrent"
        else
            command time -f '%es %Mk' ./related_concurrent
        fi

    check_output "related_posts_go_con.json"
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

    check_output "related_posts_rust.json"

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

    check_output "related_posts_rust_rayon.json"

}

run_python() {
    echo "Running Python" &&
        cd ./python &&
        if [ $HYPER == 1 ]; then
            command hyperfine -r 5 --show-output "python3 ./related.py"
        else
            command time -f '%es %Mk' python3 ./related.py
        fi

    check_output "related_posts_python.json"

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
    deactivate &&
        check_output "related_posts_python_np.json"

}

run_crystal() {
    echo "Running Crystal" &&
        cd ./crystal &&
        crystal build --release src/crystal.cr &&
        if [ $HYPER == 1 ]; then
            command hyperfine -r 10 --show-output "./crystal"
        else
            command time -f '%es %Mk' ./crystal
        fi

    check_output "related_posts_cr.json"

}


run_julia_v1() {
    echo "Running Julia v1" &&
        cd ./julia &&
        julia -e 'using Pkg; Pkg.add.(["JSON3", "StatsBase", "StructTypes", "LinearAlgebra"])' &&
        if [ $HYPER == 1 ]; then
            command hyperfine -r 5 --warmup 1  --show-output "julia related.jl"
        else
            command time -f '%es %Mk' julia related.jl
        fi

    check_output "related_posts_julia_v1.json"
}


run_julia_v2() {
    echo "Running Julia v2" &&
        cd ./julia &&
        julia -e 'using Pkg; Pkg.add.(["JSON3", "StatsBase", "StructTypes", "LinearAlgebra"])' &&
        if [ $HYPER == 1 ]; then
            command hyperfine -r 5 --warmup 1 --show-output "julia related_v2.jl"
        else
            command time -f '%es %Mk' julia related_v2.jl
        fi

    check_output "related_posts_julia_v2.json"

run_odin() {
    echo "Running Odin" &&
        cd ./odin &&
        odin build related.odin -file -no-bounds-check &&
        if [ $HYPER == 1 ]; then
            command hyperfine -r 10 --show-output "./related"
        else
            command time -f '%es %Mk' ./related
        fi

    check_output "related_posts_odin.json"
}

run_jq() {
    echo "Running jq" &&
        cd ./jq &&
        if [ $HYPER == 1 ]; then
            # run once as it's very slow. ~50s
            command hyperfine -r 1 "jq -c -f ./related.jq ../posts.json > ../related_posts_jq.json"
        else
            command time -f '%es %Mk' jq -c -f ./related.jq ../posts.json > ../related_posts_jq.json
        fi
    check_output "related_posts_jq.json"

}

check_output() {
    cd .. &&
        echo "Checking output" &&
        python3 verify.py "$1"
}

if [ "$first_arg" = "go" ]; then

    run_go

elif [ "$first_arg" = "go_con" ]; then

    run_go_concurrent

elif [ "$first_arg" = "rust" ]; then

    run_rust

elif [ "$first_arg" = "rust_ray" ]; then

    run_rust_rayon

elif [ "$first_arg" = "py" ]; then

    run_python

elif [ "$first_arg" = "numpy" ]; then

    run_python_np

elif [ "$first_arg" = "cr" ]; then

    run_crystal


elif [ "$first_arg" = "ju_v1" ]; then

    run_julia_v1

elif [ "$first_arg" = "ju_v2" ]; then

    run_julia_v2

elif [ "$first_arg" = "odin" ]; then

    run_odin

elif [ "$first_arg" = "jq" ]; then

    run_jq

elif [ "$first_arg" = "all" ]; then

    echo "running all" &&
        run_go &&
        run_go_concurrent &&
        run_rust &&
        run_rust_rayon &&
        run_python &&
        run_python_np &&
        run_crystal &&
        run_julia_v1 &&
        run_julia_v2

elif [ "$first_arg" = "clean" ]; then

    echo "cleaning" &&
        cd go && rm -f related &&
        cd .. &&
        cd go_con && rm -f related_concurrent &&
        cd .. &&
        cd rust && cargo clean &&
        cd .. &&
        cd rust_rayon && cargo clean &&
        cd .. &&
        rm -f related_*.json

else

    echo "Valid args: go | go_con | rust | rust_ray | py | numpy | cr | odin | jq | ju_v1 | ju_v2 | all | clean. Unknown argument: $first_arg"
    
fi

