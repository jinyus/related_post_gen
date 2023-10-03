#!/bin/bash

# Read the first arg passed to the script
first_arg=$1
outfile=${2:-/dev/stdout}

tab=""
if [[ $outfile != "/dev/stdout" ]]; then
    tab="\t"
    if [ -f "$outfile" ]; then
        truncate -s 0 "$outfile"
    fi

    # this will be used in langauge directories
    # so we need to go up one level
    outfile="../$outfile"
fi

HYPER=0
if command -v hyperfine &>/dev/null; then
    HYPER=1
fi

capture() {
    title=$1
    command=$2

    # remove the first two args
    shift 2

    (
        echo -e "$title:\n"

        # use awk to intent the output so it shows up as a codeblock in markdown
        $command "$@" | awk -v tab="$tab" '{print tab$0}'
    ) >>"$outfile"
}

run_go() {
    echo "Running Go" &&
        cd ./go &&
        go build &&
        if [ $HYPER == 1 ]; then
            capture "Go" hyperfine -r 10 -w 3 --show-output "./related"
        else
            command time -f '%es %Mk' ./related
        fi

    check_output "related_posts_go.json"

}

run_go_concurrent() {
    echo "Running Go Concurrent" &&
        cd ./go_con &&
        GOEXPERIMENT=arenas go build &&
        if [ $HYPER == 1 ]; then
            capture "Go Concurrent" hyperfine -r 10 -w 3 --show-output "./related_concurrent"
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
            capture "Rust" hyperfine -r 10 -w 3 --show-output "./target/release/rust"
        else
            command time -f '%es %Mk' ./target/release/rust
        fi

    check_output "related_posts_rust.json"

}

run_rust_rayon() {
    echo "Running Rust Rayon" &&
        cd ./rust_rayon &&
        cargo build --release &&
        if [ $HYPER == 1 ]; then
            capture "Rust Rayon" hyperfine -r 10 -w 3 --show-output "./target/release/rust_rayon"
        else
            command time -f '%es %Mk' ./target/release/rust_rayon
        fi

    check_output "related_posts_rust_rayon.json"

}

run_python() {
    echo "Running Python" &&
        cd ./python &&
        if [ ! -d "venv" ]; then
            python3 -m venv venv
        fi
    source venv/bin/activate &&
        pip freeze | grep ujson || pip install -r requirements.txt &&
        if [ $HYPER == 1 ]; then
            capture "Python" hyperfine -r 5 --show-output "python3 ./related.py"
        else
            command time -f '%es %Mk' python3 ./related.py
        fi
    deactivate
    check_output "related_posts_python.json"

}

run_python_np() {
    echo "Running Numpy" &&
        cd ./python &&
        if [ ! -d "venv" ]; then
            python3 -m venv venv
        fi
    source venv/bin/activate &&
        (pip freeze | grep numpy && pip freeze | grep ujson) || pip install -r requirements.txt &&
        if [ $HYPER == 1 ]; then
            capture "Numpy" hyperfine -r 5 --show-output "python3 ./related_np.py"
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
            capture "Crystal" hyperfine -r 10 --show-output "./crystal"
        else
            command time -f '%es %Mk' ./crystal
        fi

    check_output "related_posts_cr.json"

}

run_zig() {
    echo "Running Zig" &&
        cd ./zig &&
        zig build-exe -lc -O ReleaseFast main.zig
    if [ $HYPER == 1 ]; then
        capture "Zig" hyperfine -r 10 -w 3 --show-output "./main"
    else
        command time -f '%es %Mk' ./main
    fi

    check_output "related_posts_zig.json"
}

run_julia_v1() {
    echo "Running Julia v1" &&
        cd ./julia &&
        julia -e 'using Pkg; Pkg.add.(["JSON3", "StatsBase", "StructTypes", "LinearAlgebra"])' &&
        if [ $HYPER == 1 ]; then
            capture "Julia v1" hyperfine -r 5 --warmup 1 --show-output "julia related.jl"
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
            capture "Julia v2" hyperfine -r 5 --warmup 1 --show-output "julia related_v2.jl"
        else
            command time -f '%es %Mk' julia related_v2.jl
        fi

    check_output "related_posts_julia_v2.json"
}

run_odin() {
    echo "Running Odin" &&
        cd ./odin &&
        odin build related.odin -file -o:speed &&
        if [ $HYPER == 1 ]; then
            capture "Odin" hyperfine -r 10 --show-output "./related"
        else
            command time -f '%es %Mk' ./related
        fi

    check_output "related_posts_odin.json"
}

run_vlang() {
    echo "Running Vlang" &&
        cd ./v &&
        v -prod -skip-unused related.v &&
        if [ $HYPER == 1 ]; then
            capture "Vlang" hyperfine -r 5 --show-output "./related"
        else
            command time -f '%es %Mk' ./related
        fi

    check_output "related_posts_v.json"
}

run_jq() {
    echo "Running jq" &&
        cd ./jq &&
        if [ $HYPER == 1 ]; then
            # run once as it's very slow. ~50s
            capture "JQ" hyperfine -r 1 "jq -c -f ./related.jq ../posts.json > ../related_posts_jq.json"
        else
            command time -f '%es %Mk' jq -c -f ./related.jq ../posts.json >../related_posts_jq.json
        fi
    check_output "related_posts_jq.json"

}

run_dart() {
    echo "Running Dart VM" &&
        cd ./dart &&
        if [ $HYPER == 1 ]; then
            capture "Dart VM" hyperfine -r 5 --warmup 3 --show-output "dart related.dart"
        else
            command time -f '%es %Mk' dart related.dart
        fi

    check_output "related_posts_dart.json"
}

run_dart_aot() {
    echo "Running Dart AOT" &&
        cd ./dart &&
        dart compile exe related.dart -o related &&
        if [ $HYPER == 1 ]; then
            capture "Dart AOT" hyperfine -r 5 --warmup 3 --show-output "./related"
        else
            command time -f '%es %Mk' ./related
        fi

    check_output "related_posts_dart.json"
}

run_swift() {
    echo "Running Swift" &&
        cd ./swift &&
        swift build -c release &&
        if [ $HYPER == 1 ]; then
            capture "Swift" hyperfine -r 10 --show-output "./.build/release/related"
        else
            command time -f '%es %Mk' ./related
        fi

    check_output "related_posts_swift.json"
}

run_js() {
    echo "Running $1" &&
        cd ./js &&
        if [ $HYPER == 1 ]; then

            title=$(echo "$1" | sed 's/\b\(.\)/\u\1/g')

            if [ "$1" = "deno" ]; then
                capture "JS ($title)" hyperfine -r 5 --show-output "deno run --allow-read --allow-write deno.js"
            else
                capture "JS ($title)" hyperfine -r 5 --show-output "$1 $1.js"
            fi

        else
            command time -f '%es %Mk' "$1 $1.js"
        fi

    check_output "related_posts_$1.json"
}

run_java() {
    echo "Running Java (JIT)" &&
        cd ./java &&
        mvn -q -B -Pjvm clean package &&
        if [ $HYPER == 1 ]; then
            capture "Java (JIT)" hyperfine -r 10 -w 3 --show-output "java -jar ./target/main.jar"
        else
            command time -f '%es %Mk' java -jar ./target/main.jar
        fi

    check_output "related_posts_java.json"

}

run_java_graal() {
    echo "Running Java (GraalVM)" &&
        cd ./java &&
        mvn clean package &&
        mvn -Pnative -Dagent exec:exec@java-agent &&
        mvn -Pnative -Dagent package &&
        if [ $HYPER == 1 ]; then
            capture "Java (GraalVM)" hyperfine -r 10 -w 3 --show-output "./target/related"
        else
            command time -f '%es %Mk' ./target/related
        fi

    check_output "related_posts_java.json"

}

run_java_with_jmh() {
    echo "Running Java JMH" &&
        cd ./java &&
        mvn -q -B -PJMH clean package &&
        if [ $HYPER == 1 ]; then
            java -jar ./target/benchmark.jar >./benchmark_result.txt
            score=$(cat ./benchmark_result.txt | grep -E "BenchmarkRunner.init.*avgt" | awk -F ' +' '{print $3}' | sed -e "s/,/./")
            echo "Time $score s" >>./benchmark_result.txt
            capture "Java JMH" cat ./benchmark_result.txt
            # rm ./benchmark_result.txt
        else
            command time -f '%es %Mk' java -jar ./target/benchmark.jar
        fi

    check_output "related_posts_java.json"

}

run_nim() {
    echo "Running Nim" &&
        cd ./nim &&
        nimble install jsony &&
        nim compile -d:release --threads:off src/related.nim &&
        if [ $HYPER == 1 ]; then
            capture "Nim" hyperfine -r 10 -w 2 --show-output "./src/related"
        else
            command time -f '%es %Mk' ./src/related
        fi

    check_output "related_posts_nim.json"
}

run_fsharp() {
    echo "Running FSharp" &&
        cd ./fsharp &&
        dotnet add package FSharp.Json &&
        dotnet publish -c release &&
        if [ $HYPER == 1 ]; then
            capture "Fsharp" hyperfine -r 5 -w 2 --show-output "./bin/release/net7.0/fsharp"
        else
            command time -f '%es %Mk' ./bin/release/net7.0/fsharp
        fi

    check_output "related_posts_fsharp.json"
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

elif [ "$first_arg" = "zig" ]; then

    run_zig

elif [ "$first_arg" = "jul1" ]; then

    run_julia_v1

elif [ "$first_arg" = "jul2" ]; then

    run_julia_v2

elif [ "$first_arg" = "odin" ]; then

    run_odin

elif [ "$first_arg" = "jq" ]; then

    run_jq

elif [ "$first_arg" = "v" ]; then

    run_vlang

elif [ "$first_arg" = "dart" ]; then

    run_dart

elif [ "$first_arg" = "dart_aot" ]; then

    run_dart_aot

elif [ "$first_arg" = "swift" ]; then

    run_swift

elif [ "$first_arg" = "node" ]; then

    run_js "node"

elif [ "$first_arg" = "bun" ]; then

    run_js "bun"

elif [ "$first_arg" = "deno" ]; then

    run_js "deno"

elif [ "$first_arg" = "java" ]; then

    run_java

elif [ "$first_arg" = "java_graal" ]; then

    run_java_graal

elif [ "$first_arg" = "nim" ]; then

    run_nim

elif [ "$first_arg" = "fsharp" ]; then

    run_fsharp

elif [ "$first_arg" = "all" ]; then

    echo -e "Running all\n" &&
        run_go || echo -e "\n" &&
        run_go_concurrent || echo -e "\n" &&
        run_rust || echo -e "\n" &&
        run_rust_rayon || echo -e "\n" &&
        run_python || echo -e "\n" &&
        run_python_np || echo -e "\n" &&
        run_crystal || echo -e "\n" &&
        run_zig || echo -e "\n" &&
        # run_julia_v1 || echo -e "\n" &&
        run_julia_v2 || echo -e "\n" &&
        run_odin || echo -e "\n" &&
        run_vlang || echo -e "\n" &&
        run_dart || echo -e "\n" &&
        run_dart_aot || echo -e "\n" &&
        run_swift || echo -e "\n" &&
        run_js "node" || echo -e "\n" &&
        run_js "bun" || echo -e "\n" &&
        run_js "deno" || echo -e "\n" &&
        run_java || echo -e "\n" &&
        run_java_graal || echo -e "\n" &&
        run_nim || echo -e "\n" &&
        echo -e "Finished running all\n"

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
        cd python && rm -rf venv/ &&
        cd .. &&
        cd zig && rm -f main main.o &&
        cd ..
    cd java && mvn -q -B clean &&
        cd ..
    rm -f related_*.json

else

    echo "Valid args: go | go_con | rust | rust_ray | py | numpy | cr | zig | odin | jq | jul1 | jul2 | v | dart | swift | node | bun | deno | java | java_graal | nim | all | clean. Unknown argument: $first_arg"

fi
