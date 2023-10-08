#!/usr/bin/env bash

# Read the first arg passed to the script
first_arg=$1
outfile=$2

# only truncate file when this is empty, otherwise append
appendToFile=$3

if [ -z "$appendToFile" ]; then
    runs=10
    warmup=3
else
    runs=2
    warmup=1
fi

tab=""
if [[ -n $outfile ]]; then
    tab="\t"

    if [ -f "$outfile" ] && [ -z "$appendToFile" ]; then
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

time="$(which gtime || which time)"

# capture the output of a command and write it to stout or to a file
capture() {
    title=$1
    command=$2

    # remove the first two args
    shift 2

    (

        # use awk to indent the output so it shows up as a codeblock in markdown
        if [ -z "$outfile" ]; then
            # outfile is empty, so write to stdout
            echo -e "$title:\n"
            $command "$@" | awk -v tab="$tab" '{print tab$0}'
        else
            # write to a file and stdout
            echo -e "$title:\n" | tee -a "$outfile"
            $command "$@" | awk -v tab="$tab" '{print tab$0}' | tee -a "$outfile"
        fi
    )
}

run_go() {
    echo "Running Go" &&
        cd ./go &&
        GOEXPERIMENT=arenas go build &&
        if [ $HYPER == 1 ]; then
            capture "Go" hyperfine -r $runs -w $warmup --show-output "./related"
        else
            command ${time} -f '%es %Mk' ./related
        fi

    check_output "related_posts_go.json"

}

run_go_concurrent() {
    echo "Running Go Concurrent" &&
        cd ./go_con &&
        GOEXPERIMENT=arenas go build &&
        if [ $HYPER == 1 ]; then
            capture "Go Concurrent" hyperfine -r $runs -w $warmup --show-output "./related_concurrent"
        else
            command ${time} -f '%es %Mk' ./related_concurrent
        fi

    check_output "related_posts_go_con.json"
}

run_rust() {
    echo "Running Rust" &&
        cd ./rust &&
        cargo build --release &&
        if [ $HYPER == 1 ]; then
            capture "Rust" hyperfine -r $runs -w $warmup --show-output "./target/release/rust"
        else
            command ${time} -f '%es %Mk' ./target/release/rust
        fi

    check_output "related_posts_rust.json"
}

run_cpp() {
    echo "Running C++" &&
        cd ./cpp &&
        g++ -std=c++11 -I./include main.cpp -o main &&
        if [ $HYPER == 1 ]; then
            capture "cpp" hyperfine -r $runs -w $warmup --show-output "./main"
        else
            command ${time} -f '%es %Mk' ./main
        fi

    check_output "related_posts_cpp.json"
}

run_rust_con() {
    echo "Running Rust Rayon" &&
        cd ./rust_con &&
        cargo build --release &&
        if [ $HYPER == 1 ]; then
            capture "Rust Concurrent" hyperfine -r $runs -w $warmup --show-output "./target/release/rust_rayon"
        else
            command ${time} -f '%es %Mk' ./target/release/rust_rayon
        fi

    check_output "related_posts_rust_con.json"

}

run_python() {
    echo "Running Python" &&
        cd ./python &&
        if [ ! -d "venv" ]; then
            python3 -m venv venv
        fi
    source venv/bin/activate &&
        pip freeze | grep orjson || pip install -r requirements.txt &&
        if [ $HYPER == 1 ]; then
            capture "Python" hyperfine -r $runs -w $warmup --show-output "python3 ./related.py"
        else
            command ${time} -f '%es %Mk' python3 ./related.py
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
        (pip freeze | grep scipy && pip freeze | grep orjson) || pip install -r requirements.txt &&
        if [ $HYPER == 1 ]; then
            capture "Numpy" hyperfine -r $runs -w $warmup --show-output "python3 ./related_np.py"
        else
            command ${time} -f '%es %Mk' python3 ./related_np.py
        fi
    deactivate &&
        check_output "related_posts_python_np.json"

}

run_python_numba() {
    echo "Running Numba" &&
        cd ./python &&
        if [ ! -d "venv" ]; then
            python3 -m venv venv
        fi
    source venv/bin/activate &&
        (pip freeze | grep numba && pip freeze | grep orjson) || pip install -r requirements.txt &&
        if [ $HYPER == 1 ]; then
            capture "Numba" hyperfine -r $runs -w $warmup --show-output "python3 ./related_numba.py"
        else
            command time -f '%es %Mk' python3 ./related_numba.py
        fi
    deactivate &&
        check_output "related_posts_python_numba.json"

}

run_python_numba_con() {
    echo "Running Numba Concurrent" &&
        cd ./python &&
        if [ ! -d "venv" ]; then
            python3 -m venv venv
        fi
    source venv/bin/activate &&
        (pip freeze | grep numba && pip freeze | grep orjson) || pip install -r requirements.txt &&
        if [ $HYPER == 1 ]; then
            capture "Numba Concurrent" hyperfine -r $runs -w $warmup --show-output "python3 ./related_numba_con.py"
        else
            command time -f '%es %Mk' python3 ./related_numba_con.py
        fi
    deactivate &&
        check_output "related_posts_python_numba_con.json"

}

run_crystal() {
    echo "Running Crystal" &&
        cd ./crystal &&
        crystal build --release src/crystal.cr &&
        if [ $HYPER == 1 ]; then
            capture "Crystal" hyperfine -r $runs -w $warmup --show-output "./crystal"
        else
            command ${time} -f '%es %Mk' ./crystal
        fi

    check_output "related_posts_cr.json"

}

run_zig() {
    echo "Running Zig" &&
        cd ./zig &&
        zig build-exe -lc -O ReleaseFast main.zig
    if [ $HYPER == 1 ]; then
        capture "Zig" hyperfine -r $runs -w $warmup --show-output "./main"
    else
        command ${time} -f '%es %Mk' ./main
    fi

    check_output "related_posts_zig.json"
}

run_julia() {
    echo "Running Julia" &&
        cd ./julia &&
        julia -e 'using Pkg; Pkg.add.(["JSON3", "StructTypes", "StaticArrays"])' &&
        if [ $HYPER == 1 ]; then
            capture "Julia" hyperfine -r $runs -w $warmup --show-output "julia related.jl"
        else
            command ${time} -f '%es %Mk' julia related.jl
        fi

    check_output "related_posts_julia.json"
}

run_odin() {
    echo "Running Odin" &&
        cd ./odin &&
        odin build related.odin -file -o:speed &&
        if [ $HYPER == 1 ]; then
            capture "Odin" hyperfine -r $runs -w $warmup --show-output "./related"
        else
            command ${time} -f '%es %Mk' ./related
        fi

    check_output "related_posts_odin.json"
}

run_vlang() {
    echo "Running Vlang" &&
        cd ./v &&
        v -prod -skip-unused related.v &&
        if [ $HYPER == 1 ]; then
            capture "Vlang" hyperfine -r $runs -w $warmup --show-output "./related"
        else
            command ${time} -f '%es %Mk' ./related
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
            command ${time} -f '%es %Mk' jq -c -f ./related.jq ../posts.json >../related_posts_jq.json
        fi
    check_output "related_posts_jq.json"

}

run_dart() {
    echo "Running Dart VM" &&
        cd ./dart &&
        if [ $HYPER == 1 ]; then
            capture "Dart VM" hyperfine -r $runs -w $warmup --show-output "dart related.dart"
        else
            command ${time} -f '%es %Mk' dart related.dart
        fi

    check_output "related_posts_dart.json"
}

run_dart_aot() {
    echo "Running Dart AOT" &&
        cd ./dart &&
        dart compile exe related.dart -o related &&
        if [ $HYPER == 1 ]; then
            capture "Dart AOT" hyperfine -r $runs -w $warmup --show-output "./related"
        else
            command ${time} -f '%es %Mk' ./related
        fi

    check_output "related_posts_dart.json"
}

run_swift() {
    echo "Running Swift" &&
        cd ./swift &&
        swift build -c release &&
        if [ $HYPER == 1 ]; then
            capture "Swift" hyperfine -r $runs -w $warmup --show-output "./.build/release/related"
        else
            command ${time} -f '%es %Mk' "./.build/release/related"
        fi

    check_output "related_posts_swift.json"
}

run_swift_con() {
    echo "Running Swift Concurrent" &&
        cd ./swift_con &&
        swift build -c release &&
        if [ $HYPER == 1 ]; then
            capture "Swift Concurrent" hyperfine -r $runs -w $warmup --show-output "./.build/release/related"
        else
            command ${time} -f '%es %Mk' "./.build/release/related"
        fi

    check_output "related_posts_swift_con.json"
}

run_js() {
    echo "Running $1" &&
        cd ./js &&
        if [ $HYPER == 1 ]; then

            title=$(echo "$1" | sed 's/\b\(.\)/\u\1/g')

            if [ "$1" = "deno" ]; then
                capture "JS ($title)" hyperfine -r $runs -w $warmup --show-output "deno run --allow-read --allow-write deno.js"
            else
                capture "JS ($title)" hyperfine -r $runs -w $warmup --show-output "$1 $1.js"
            fi

        else
            command ${time} -f '%es %Mk' "$1" "$1.js"
        fi

    check_output "related_posts_$1.json"
}

run_java() {
    VM_OPTIONS="-Xms10m -Xmx10m -XX:+UseSerialGC"
    echo "Running Java (JIT)" &&
        cd ./java &&
        java -version &&
        mvn -q -B -Pjvm clean package &&
        if [ $HYPER == 1 ]; then
            capture "Java (JIT)" hyperfine -r $runs -w $warmup --show-output "java $VM_OPTIONS -jar ./target/main.jar"
        else
            command ${time} -f '%es %Mk' java $VM_OPTIONS -jar ./target/main.jar
        fi

    check_output "related_posts_java.json"

}

run_java_graal() {
    export JAVA_HOME="$GRAALVM_HOME"
    echo "Running Java (GraalVM)" &&
        cd ./java &&
        java -version &&
        mvn -q -B clean package &&
        mvn -q -B -Pnative,pgo package &&
        if [ $HYPER == 1 ]; then
            capture "Java (GraalVM)" hyperfine -r $runs -w $warmup --show-output "./target/related"
        else
            command ${time} -f '%es %Mk' ./target/related
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
            command ${time} -f '%es %Mk' java -jar ./target/benchmark.jar
        fi

    check_output "related_posts_java.json"

}

run_nim() {
    echo "Running Nim" &&
        cd ./nim &&
        nimble install -y &&
        nim compile -d:release --threads:off --passL:"-flto -fprofile-generate" --passC:"-flto -fprofile-generate" src/related.nim &&
        ./src/related &&
        nim compile -d:release --threads:off --passL:"-flto -fprofile-use" --passC:"-flto -fprofile-use" src/related.nim &&
        if [ $HYPER == 1 ]; then
            capture "Nim" hyperfine -r $runs -w $warmup --show-output "./src/related"
        else
            command ${time} -f '%es %Mk' ./src/related
        fi

    check_output "related_posts_nim.json"
}

run_fsharp() {
    echo "Running FSharp" &&
        cd ./fsharp &&
        dotnet restore &&
        dotnet publish -c release &&
        if [ $HYPER == 1 ]; then
            capture "F#" hyperfine -r $runs -w $warmup --show-output "./bin/release/net7.0/fsharp"
        else
            command ${time} -f '%es %Mk' ./bin/release/net7.0/fsharp
        fi

    check_output "related_posts_fsharp.json"
}

run_csharp() {
    echo "Running CSharp" &&
        cd ./csharp &&
        dotnet restore &&
        dotnet publish -c release --self-contained -o "bin/release/net7.0/publish" &&
        if [ $HYPER == 1 ]; then
            capture "C#" hyperfine -r $runs -w $warmup --show-output "./bin/release/net7.0/publish/related"
        else
            command ${time} -f '%es %Mk' ./bin/release/net7.0/publish/related
        fi

    check_output "related_posts_csharp.json"
}

run_fsharp_con() {
    echo "Running FSharp" &&
        cd ./fsharp_con &&
        dotnet restore &&
        dotnet publish -c release &&
        if [ $HYPER == 1 ]; then
            capture "F# Concurrent" hyperfine -r $runs -w $warmup --show-output "./bin/release/net7.0/fsharp_con"
        else
            command ${time} -f '%es %Mk' ./bin/release/net7.0/fsharp_con
        fi

    check_output "related_posts_fsharp_con.json"
}

run_luajit() {
    echo "Running LuaJIT" &&
        cd ./lua &&
        sudo luarocks --lua-version 5.1 install luasocket &&
        if [ $HYPER == 1 ]; then
            capture "LuaJIT" hyperfine -r $runs -w $warmup --show-output "luajit only_lua.lua"
        else
            command ${time} -f '%es %Mk' luajit only_lua.lua
        fi

    check_output "related_posts_lua.json"

}

run_lua() {
    echo "Running Lua" &&
        sudo luarocks install luasocket &&
        cd ./lua &&
        if [ $HYPER == 1 ]; then
            capture "Lua" hyperfine -r $runs -w $warmup --show-output "lua only_lua.lua"
        else
            command ${time} -f '%es %Mk' lua only_lua.lua
        fi

    check_output "related_posts_lua.json"
}

run_ocaml() {
    echo "Running Ocaml" &&
        cd ./ocaml &&
        opam install . --deps-only -y &&
        opam exec -- dune build &&
        if [ $HYPER == 1 ]; then
            capture "ocaml" hyperfine -r $runs -w $warmup --show-output "./_build/default/bin/main.exe"
        else
            command time -f '%es %Mk' ./_build/default/bin/main.exe
        fi

    check_output "related_posts_ocaml.json"
}

check_output() {
    cd ..
    if [ -z "$appendToFile" ]; then
        echo "Checking output" &&
            python3 verify.py "$1"
    fi
}

#check_output() {
#    cd .. &&
#        echo "Checking output" &&
#        ./verify.sh "$1"
#}

if [ "$first_arg" = "go" ]; then

    run_go

elif [ "$first_arg" = "go_con" ]; then

    run_go_concurrent

elif [ "$first_arg" = "cpp" ]; then

    run_cpp

elif [ "$first_arg" = "rust" ]; then

    run_rust

elif [ "$first_arg" = "rust_con" ]; then

    run_rust_con

elif [ "$first_arg" = "py" ]; then

    run_python

elif [ "$first_arg" = "numpy" ]; then

    run_python_np

elif [ "$first_arg" = "numba" ]; then

    run_python_numba

elif [ "$first_arg" = "numba_con" ]; then

    run_python_numba_con

elif [ "$first_arg" = "cr" ]; then

    run_crystal

elif [ "$first_arg" = "zig" ]; then

    run_zig

elif [ "$first_arg" = "julia" ]; then

    run_julia

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

elif [ "$first_arg" = "swift_con" ]; then

    run_swift_con

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

elif [ "$first_arg" = "csharp" ]; then

    run_csharp

elif [ "$first_arg" = "fsharp_con" ]; then

    run_fsharp_con

elif [ "$first_arg" = "luajit" ]; then

    run_luajit

elif [ "$first_arg" = "lua" ]; then

    run_lua

elif [ "$first_arg" = "ocaml" ]; then

    run_ocaml

elif [ "$first_arg" = "all" ]; then

    echo -e "Running all\n" &&
        run_go || echo -e "\n" &&
        run_go_concurrent || echo -e "\n" &&
        run_rust || echo -e "\n" &&
        run_rust_con || echo -e "\n" &&
        run_python || echo -e "\n" &&
        run_python_np || echo -e "\n" &&

        # run_python_numba || echo -e "\n" && break rules but very interesting
        run_crystal || echo -e "\n" &&
        run_zig || echo -e "\n" &&
        run_julia || echo -e "\n" &&
        run_odin || echo -e "\n" &&
        run_vlang || echo -e "\n" &&
        run_dart || echo -e "\n" &&
        run_dart_aot || echo -e "\n" &&
        run_swift || echo -e "\n" &&
        run_swift_con || echo -e "\n" &&
        run_js "node" || echo -e "\n" &&
        run_js "bun" || echo -e "\n" &&
        run_js "deno" || echo -e "\n" &&
        run_java || echo -e "\n" &&
        run_java_graal || echo -e "\n" &&
        run_nim || echo -e "\n" &&
        run_fsharp || echo -e "\n" &&
        run_fsharp_con || echo -e "\n" &&
        run_csharp || echo -e "\n" &&
        run_luajit || echo -e "\n" &&
        run_lua || echo -e "\n" &&
        run_ocaml || echo -e "\n" &&
        echo -e "Finished running all\n"

elif [ "$first_arg" = "clean" ]; then

    echo "cleaning" &&
        cd go && rm -f related &&
        cd .. &&
        cd go_con && rm -f related_concurrent &&
        cd .. &&
        cd rust && cargo clean &&
        cd .. &&
        cd rust_con && cargo clean &&
        cd .. &&
        cd python && rm -rf venv/ &&
        cd .. &&
        cd swift && swift package reset &&
        cd .. &&
        cd swift_con && swift package reset &&
        cd .. &&
        cd zig && rm -f main main.o &&
        cd ..
    cd java && mvn -q -B clean &&
        cd ..
    rm -f related_*.json

else

    echo "Valid args: go | go_con | rust | rust_con | py | numpy | numba | numba_con | cr | zig | odin | jq | julia | v | dart | swift | swift_con | node | bun | deno | java | java_graal | nim | luajit | lua | all | clean. Unknown argument: $first_arg"

fi
