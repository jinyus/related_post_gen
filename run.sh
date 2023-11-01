#!/usr/bin/env bash

# Read the first arg passed to the script
first_arg=$1
outfile=$2

# only truncate file when this is empty, otherwise append
appendToFile=$3

if [ -z "$appendToFile" ]; then
    runs=10
    warmup=3
    slow_lang_runs=10
else
    runs=2
    warmup=1
    slow_lang_runs=1
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

time="$(which gtime 2>/dev/null || which time 2>/dev/null)"
if [[ -z "${time}" && -z "$(which hyperfine 2>/dev/null)" ]]; then
    echo 'time, gtime, or hyperfine must be available in $PATH'
    exit 1
fi

if [[ -n "$(which nproc 2>/dev/null)" ]]; then
    nproc=$(nproc)
else
    nproc=4
fi

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
        go build &&
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
        go build &&
        if [ $HYPER == 1 ]; then
            capture "Go Concurrent" hyperfine -r $runs -w $warmup --show-output "./related_concurrent"
        else
            command ${time} -f '%es %Mk' ./related_concurrent
        fi

    check_output "related_posts_go_con.json"
}

run_cpp() {
    echo "Running C++" &&
        cd ./cpp &&
        if [ -z "$appendToFile" ]; then # only build on 5k run
            g++ -O3 -std=c++20  -I./include main.cpp -o main
        fi &&
        if [ $HYPER == 1 ]; then
            capture "C++" hyperfine -r $runs -w $warmup --show-output "./main"
        else
            command ${time} -f '%es %Mk' ./main
        fi

    check_output "related_posts_cpp.json"
}

run_cpp_con() {
    echo "Running C++ Concurrent" &&
        cd ./cpp &&
        if [ -z "$appendToFile" ]; then # only build on 5k run
            clang++ -std=c++11 -pthread -I./include -O3 main_con.cpp -o main_con
        fi &&
        if [ $HYPER == 1 ]; then
            capture "C++ Concurrent" hyperfine -r $runs -w $warmup --show-output "./main_con"
        else
            command ${time} -f '%es %Mk' ./main_con
        fi

    check_output "related_posts_cpp_con.json"
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
            capture "Python" hyperfine -r $slow_lang_runs -w $warmup --show-output "python3 ./related.py"
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
        if [ -z "$appendToFile" ]; then # only build on 5k run
            zig build-exe -lc -O ReleaseSafe main.zig
        fi &&
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
        julia -e 'using Pkg; Pkg.activate("Related"); Pkg.instantiate()' &&
        if [ $HYPER == 1 ]; then

            capture "Julia" hyperfine -r $runs -w $warmup --show-output "julia --project=Related -e \"using Related; main()\""
        else
            command ${time} -f '%es %Mk' julia --project=Related -e "using Related; main()"

        fi

    check_output "related_posts_julia.json"
}

run_julia_highly_optimized() {
    echo "Running Julia Highly Optimized" &&
        cd ./julia_highly_optimized &&
        julia -e 'using Pkg; Pkg.activate("RelatedHO"); Pkg.instantiate()' &&
        if [ $HYPER == 1 ]; then
            capture "Julia HO" hyperfine -r $runs -w $warmup --show-output "julia --project=RelatedHO -e \"using RelatedHO; main()\""
        else
            command ${time} -f '%es %Mk' julia --project=RelatedHO -e "using RelatedHO; main()"
        fi

    check_output "related_posts_julia_highly_optimized.json"
}

run_julia_con() {
    echo "Running Julia Concurrent" &&
        cd ./julia_con &&
        julia -e 'using Pkg; Pkg.activate("RelatedCon"); Pkg.instantiate()' &&
        if [ $HYPER == 1 ]; then
            capture "Julia Concurrent" hyperfine -r $runs -w $warmup --show-output "julia --threads=auto --project=RelatedCon -e \"using RelatedCon; main()\""
        else
            command ${time} -f '%es %Mk' julia --threads auto --project=RelatedCon -e "using RelatedCon; main()"
        fi

    check_output "related_posts_julia_con.json"
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
        if [ -z "$appendToFile" ]; then # only build on 5k run
            dart compile exe related.dart -o related
        fi &&
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

run_arturo() {
    echo "Running Arturo" &&
        cd ./arturo &&
        # arturo -c related.art &&
        if [ $HYPER == 1 ]; then
            capture "Arturo" hyperfine -r 2 --show-output "arturo related.art"
        else
            command time -f '%es %Mk' "arturo related.art"
        fi

    check_output "related_posts_arturo.json"
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
    VM_OPTIONS="-XX:+UseSerialGC"
    echo "Running Java (JIT)" &&
        cd ./java &&
        if [ -z "$appendToFile" ]; then # only build on 5k run
            java -version &&
                mvn -q -B -Pjvm clean package
        fi &&
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

run_java_graal_con() {
    echo "Running Java (GraalVM) Concurrent" &&
        cd ./java &&
        java -version &&
        mvn -q -B -Pnative,pgo,parallel clean package &&
        if [ $HYPER == 1 ]; then
            capture "Java (GraalVM) Concurrent" hyperfine -r $runs -w $warmup --show-output "./target/related"
        else
            command ${time} -f '%es %Mk' ./target/related
        fi

    check_output "related_posts_java_con.json"

}

run_nim() {
    echo "Running Nim" &&
        cd ./nim &&
        if [ -z "$appendToFile" ]; then # only build on 5k run
            nimble -y install -d &&
                nimble --verbose build -d:release --cc:clang
        fi &&
        if [ $HYPER == 1 ]; then
            capture "Nim" hyperfine -r $runs -w $warmup --show-output "./related"
        else
            command ${time} -f '%es %Mk' ./related
        fi

    check_output "related_posts_nim.json"
}

run_nim_con() {
    echo "Running Nim Concurrent" &&
        cd ./nim_con &&
        if [ -z "$appendToFile" ]; then # only build on 5k run
            nimble -y install -d &&
                ./build.sh clang
        fi &&
        if [ $HYPER == 1 ]; then
            capture "Nim Concurrent" hyperfine -r $runs -w $warmup --show-output "./build/related_con"
        else
            command ${time} -f '%es %Mk' ./build/related_con
        fi

    check_output "related_posts_nim_con.json"
}

run_fsharp() {
    echo "Running FSharp (JIT)" &&
        cd ./fsharp &&
        if [ -z "$appendToFile" ]; then # only build on 5k run
            dotnet restore &&
                dotnet publish -c release
        fi &&
        if [ $HYPER == 1 ]; then
            capture "F# (JIT)" hyperfine -r $runs -w $warmup --show-output "./bin/release/net8.0/fsharp"
        else
            command ${time} -f '%es %Mk' ./bin/release/net8.0/fsharp
        fi

    check_output "related_posts_fsharp.json"
}

run_fsharp_aot() {
    echo "Running FSharp (AOT)" &&
        cd ./fsharp &&
        if [ -z "$appendToFile" ]; then # only build on 5k run
            dotnet restore &&
                dotnet publish -c release --self-contained -p PublishAot=true -o "bin/release/net8.0/aot"
        fi &&
        if [ $HYPER == 1 ]; then
            capture "F# (AOT)" hyperfine -r $runs -w $warmup --show-output "./bin/release/net8.0/aot/fsharp"
        else
            command ${time} -f '%es %Mk' ./bin/release/net8.0/aot/fsharp
        fi

    check_output "related_posts_fsharp.json"
}

run_fsharp_con() {
    echo "Running FSharp Concurrent" &&
        cd ./fsharp_con &&
        if [ -z "$appendToFile" ]; then # only build on 5k run
            dotnet restore &&
                dotnet publish -c release
        fi &&
        if [ $HYPER == 1 ]; then
            capture "F# Concurrent (JIT)" hyperfine -r $runs -w $warmup --show-output "./bin/release/net8.0/fsharp_con"
        else
            command ${time} -f '%es %Mk' ./bin/release/net8.0/fsharp_con
        fi

    check_output "related_posts_fsharp_con.json"
}

run_fsharp_con_aot() {
    echo "Running FSharp Concurrent (AOT)" &&
        cd ./fsharp_con &&
        if [ -z "$appendToFile" ]; then # subsequent runs
            dotnet restore &&
                dotnet publish -c release --self-contained -p PublishAot=true -o "bin/release/net8.0/aot"
        fi &&
        if [ $HYPER == 1 ]; then
            capture "F# Concurrent (AOT)" hyperfine -r $runs -w $warmup --show-output "./bin/release/net8.0/aot/fsharp_con"
        else
            command ${time} -f '%es %Mk' ./bin/release/net8.0/aot/fsharp_con
        fi

    check_output "related_posts_fsharp_con.json"
}

run_csharp() {
    echo "Running CSharp (JIT)" &&
        cd ./csharp &&
        if [ -z "$appendToFile" ]; then # subsequent runs
            dotnet publish -c release --self-contained -o "bin/release/net8.0/jit"
        fi &&
        if [ $HYPER == 1 ]; then
            capture "C# (JIT)" hyperfine -r $runs -w $warmup --show-output "./bin/release/net8.0/jit/related"
        else
            command ${time} -f '%es %Mk' ./bin/release/net8.0/jit/related
        fi

    check_output "related_posts_csharp.json"
}

run_csharp_aot() {
    echo "Running CSharp (AOT)" &&
        cd ./csharp &&
        if [ -z "$appendToFile" ]; then # subsequent runs
            dotnet publish -c release --self-contained -p PublishAot=true -o "bin/release/net8.0/aot"
        fi &&
        if [ $HYPER == 1 ]; then
            capture "C# (AOT)" hyperfine -r $runs -w $warmup --show-output "./bin/release/net8.0/aot/related"
        else
            command ${time} -f '%es %Mk' ./bin/release/net8.0/aot/related
        fi

    check_output "related_posts_csharp.json"
}

run_csharp_con() {
    echo "Running CSharp Concurrent (JIT)" &&
        cd ./csharp_con &&
        if [ -z "$appendToFile" ]; then # subsequent runs
            dotnet publish -c release --self-contained -o "bin/release/net8.0/jit"
        fi &&
        if [ $HYPER == 1 ]; then
            capture "C# Concurrent (JIT)" hyperfine -r $runs -w $warmup --show-output "./bin/release/net8.0/jit/related"
        else
            command ${time} -f '%es %Mk' ./bin/release/net8.0/jit/related
        fi

    check_output "related_posts_csharp_con.json"
}

run_csharp_con_aot() {
    echo "Running CSharp Concurrent (AOT)" &&
        cd ./csharp_con &&
        if [ -z "$appendToFile" ]; then # subsequent runs
            dotnet publish -c release --self-contained -p PublishAot=true -o "bin/release/net8.0/aot"
        fi &&
        if [ $HYPER == 1 ]; then
            capture "C# Concurrent (AOT)" hyperfine -r $runs -w $warmup --show-output "./bin/release/net8.0/aot/related"
        else
            command ${time} -f '%es %Mk' ./bin/release/net8.0/aot/related
        fi

    check_output "related_posts_csharp_con.json"
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
            capture "Lua" hyperfine -r $slow_lang_runs -w $warmup --show-output "lua only_lua.lua"
        else
            command ${time} -f '%es %Mk' lua only_lua.lua
        fi

    check_output "related_posts_lua.json"
}

run_ocaml() {
    echo "Running Ocaml" &&
        cd ./ocaml &&
        if [ -z "$appendToFile" ]; then # only build on 5k run
            opam install . --deps-only -y &&
                opam exec -- dune build
        fi &&
        if [ $HYPER == 1 ]; then
            capture "ocaml" hyperfine -r $runs -w $warmup --show-output "./_build/default/bin/main.exe"
        else
            command time -f '%es %Mk' ./_build/default/bin/main.exe
        fi

    check_output "related_posts_ocaml.json"
}

run_haskell() {
    echo "Running Haskell" &&
        cd ./haskell &&
        ./main.hs &&
        if [ $HYPER == 1 ]; then
            capture "haskell" hyperfine -r $runs -w $warmup --show-output "./main"
        else
            command time -f '%es %Mk' ./main
        fi

    check_output "related_posts_haskell.json"
}

run_d() {
    echo "Running D" &&
        cd ./d &&
        dub build --build=release &&
        if [ $HYPER == 1 ]; then
            capture "D" hyperfine -r $runs -w $warmup --show-output "./related"
        else
            command time -f '%es %Mk' ./related
        fi

    check_output "related_posts_d.json"
}

run_d_con() {
    echo "Running D Concurrent" &&
        cd ./d_con &&
        dub build --build=release &&
        if [ $HYPER == 1 ]; then
            capture "D Concurrent" hyperfine -r $runs -w $warmup --show-output "./related_concurrent"
        else
            command time -f '%es %Mk' ./related_concurrent
        fi

    check_output "related_posts_d_con.json"
}

run_erlang() {
    echo "Running Erlang" &&
        cd ./erlang &&
        rebar3 escriptize
    if [ $HYPER == 1 ]; then
        capture "Erlang" hyperfine -r $runs -w $warmup --show-output "_build/default/bin/related_erl"
    else
        command ${time} -f '%es %Mk' ./_build/default/bin/related_erl
    fi

    check_output "related_posts_erlang.json"
}

run_clojure() {
    echo "Running Clojure" &&
        cd ./clojure &&
        lein uberjar
    if [ $HYPER == 1 ]; then
        capture "Clojure" hyperfine -r $runs -w $warmup --show-output "java $VM_OPTIONS -jar ./target/related.jar"
    else
        command ${time} -f '%es %Mk' java $VM_OPTIONS -jar ./target/related.jar
    fi

    check_output "related_posts_clj.json"
}

run_ruby() {
    echo "Running ruby" &&
        cd ./ruby &&
        if [ $HYPER == 1 ]; then
            capture "Ruby" hyperfine -r $runs -w $warmup --show-output "ruby related.rb"
        else
            command ${time} -f '%es %Mk' ruby related.rb
        fi

    check_output "related_posts_ruby.json"
}

check_output() {
    cd ..

    # only check output if we're not appending to a file. ie: 5k runs
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

elif [ "$first_arg" = "cpp_con" ]; then

    run_cpp_con

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

elif [ "$first_arg" = "julia_highly_optimized" ]; then

    run_julia_highly_optimized

elif [ "$first_arg" = "julia_con" ]; then

    run_julia_con

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

elif [ "$first_arg" = "art" ]; then

    run_arturo

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

elif [ "$first_arg" = "java_graal_con" ]; then

    run_java_graal_con

elif [ "$first_arg" = "nim" ]; then

    run_nim

elif [ "$first_arg" = "nim_con" ]; then

    run_nim_con

elif [ "$first_arg" = "fsharp" ]; then

    run_fsharp

elif [ "$first_arg" = "fsharp_aot" ]; then

    run_fsharp_aot

elif [ "$first_arg" = "csharp" ]; then

    run_csharp

elif [ "$first_arg" = "csharp_aot" ]; then

    run_csharp_aot

elif [ "$first_arg" = "csharp_con" ]; then

    run_csharp_con

elif [ "$first_arg" = "csharp_con_aot" ]; then

    run_csharp_con_aot

elif [ "$first_arg" = "fsharp_con" ]; then

    run_fsharp_con

elif [ "$first_arg" = "fsharp_con_aot" ]; then

    run_fsharp_con_aot

elif [ "$first_arg" = "luajit" ]; then

    run_luajit

elif [ "$first_arg" = "lua" ]; then

    run_lua

elif [ "$first_arg" = "ocaml" ]; then

    run_ocaml

elif [ "$first_arg" = "haskell" ]; then

    run_haskell

elif [ "$first_arg" = "d" ]; then

    run_d

elif [ "$first_arg" = "d_con" ]; then

    run_d_con

elif [ "$first_arg" = "erlang" ]; then

    run_erlang

elif [ "$first_arg" = "clj" ]; then

    run_clojure

elif [ "$first_arg" = "ruby" ]; then

    run_ruby

elif [ "$first_arg" = "all" ]; then

    echo -e "Running all\n" &&
        run_go || echo -e "\n" &&
        run_go_concurrent || echo -e "\n" &&
        run_rust || echo -e "\n" &&
        run_rust_con || echo -e "\n" &&
        run_d || echo -e "\n" &&
        run_d_con || echo -e "\n" &&
        run_cpp || echo -e "\n" &&
        run_cpp_con || echo -e "\n" &&
        run_python || echo -e "\n" &&
        run_python_np || echo -e "\n" &&

        # run_python_numba || echo -e "\n" && break rules but very interesting
        run_crystal || echo -e "\n" &&
        run_zig || echo -e "\n" &&
        run_julia || echo -e "\n" &&
        run_julia_highly_optimized || echo -e "\n" &&
        run_julia_con || echo -e "\n" &&
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
        run_java_graal_con || echo -e "\n" &&
        run_nim || echo -e "\n" &&
        run_nim_con || echo -e "\n" &&
        run_fsharp || echo -e "\n" &&
        run_fsharp_con || echo -e "\n" &&
        run_fsharp_con_aot || echo -e "\n" &&
        run_fsharp_aot || echo -e "\n" &&
        run_csharp || echo -e "\n" &&
        run_csharp_aot || echo -e "\n" &&
        run_csharp_con || echo -e "\n" &&
        run_csharp_con_aot || echo -e "\n" &&
        run_luajit || echo -e "\n" &&
        run_lua || echo -e "\n" &&
        run_ocaml || echo -e "\n" &&
        run_erlang || echo -e "\n" &&
        run_ruby || echo -e "\n" &&
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
        cd d && rm -f related &&
        cd .. &&
        cd d_con && rm -f related &&
        cd .. &&
        cd erlang && rm -rf _build/ rebar.lock &&
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

    echo "Valid args: go | go_con | rust | rust_con | d | d_con | py | numpy | numba | numba_con | cr | zig | odin | jq | julia | julia_highly_optimized | julia_con | v | dart | swift | swift_con | node | bun | deno | java | java_graal | java_graal_con | nim | luajit | lua | fsharp | fsharp_aot | fsharp_con | csharp | csharp_aot | all | clean. Unknown argument: $first_arg"

fi
