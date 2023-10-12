Go:

    Benchmark 1: ./related
    Processing time (w/o IO): 24.571273ms
    Processing time (w/o IO): 24.41897ms
    Processing time (w/o IO): 24.792478ms
    Processing time (w/o IO): 24.38887ms
    Processing time (w/o IO): 24.628275ms
    Processing time (w/o IO): 24.598974ms
    Processing time (w/o IO): 25.191986ms
    Processing time (w/o IO): 24.491973ms
    Processing time (w/o IO): 24.36417ms
    Processing time (w/o IO): 24.553373ms
    Processing time (w/o IO): 24.529873ms
    Processing time (w/o IO): 24.492772ms
    Processing time (w/o IO): 24.318269ms
      Time (mean ± σ):      66.8 ms ±   1.8 ms    [User: 64.3 ms, System: 10.4 ms]
      Range (min … max):    64.3 ms …  70.8 ms    10 runs

Go Concurrent:

    Benchmark 1: ./related_concurrent
    Processing time (w/o IO): 15.812405ms
    Processing time (w/o IO): 13.99687ms
    Processing time (w/o IO): 13.810866ms
    Processing time (w/o IO): 13.789866ms
    Processing time (w/o IO): 13.679264ms
    Processing time (w/o IO): 14.090272ms
    Processing time (w/o IO): 14.00377ms
    Processing time (w/o IO): 13.98687ms
    Processing time (w/o IO): 15.406997ms
    Processing time (w/o IO): 14.061571ms
    Processing time (w/o IO): 13.953769ms
    Processing time (w/o IO): 13.804166ms
    Processing time (w/o IO): 13.931168ms
      Time (mean ± σ):      54.5 ms ±   1.2 ms    [User: 81.5 ms, System: 15.5 ms]
      Range (min … max):    52.5 ms …  56.9 ms    10 runs

Rust:

    Benchmark 1: ./target/release/rust
    Processing time (w/o IO): 23.960857ms
    Processing time (w/o IO): 24.005157ms
    Processing time (w/o IO): 23.788754ms
    Processing time (w/o IO): 24.004758ms
    Processing time (w/o IO): 23.721353ms
    Processing time (w/o IO): 23.764653ms
    Processing time (w/o IO): 24.501567ms
    Processing time (w/o IO): 23.733453ms
    Processing time (w/o IO): 23.782254ms
    Processing time (w/o IO): 24.10006ms
    Processing time (w/o IO): 23.858355ms
    Processing time (w/o IO): 23.802154ms
    Processing time (w/o IO): 23.798754ms
      Time (mean ± σ):      40.1 ms ±   0.6 ms    [User: 33.2 ms, System: 6.8 ms]
      Range (min … max):    39.1 ms …  41.4 ms    10 runs

Rust Concurrent:

    Benchmark 1: ./target/release/rust_rayon
    Processing time (w/o IO): 22.100312ms
    Processing time (w/o IO): 20.205276ms
    Processing time (w/o IO): 19.935571ms
    Processing time (w/o IO): 20.41998ms
    Processing time (w/o IO): 20.241277ms
    Processing time (w/o IO): 20.253377ms
    Processing time (w/o IO): 21.49ms
    Processing time (w/o IO): 20.641185ms
    Processing time (w/o IO): 20.081474ms
    Processing time (w/o IO): 20.166276ms
    Processing time (w/o IO): 20.41868ms
    Processing time (w/o IO): 20.365579ms
    Processing time (w/o IO): 20.140375ms
      Time (mean ± σ):      37.1 ms ±   0.4 ms    [User: 43.0 ms, System: 13.1 ms]
      Range (min … max):    36.6 ms …  37.8 ms    10 runs

D:

    Benchmark 1: ./related
    Processing time (w/o IO): 32.433ms
    Processing time (w/o IO): 32.852ms
    Processing time (w/o IO): 32.67ms
    Processing time (w/o IO): 32.927ms
    Processing time (w/o IO): 32.687ms
    Processing time (w/o IO): 32.927ms
    Processing time (w/o IO): 32.729ms
    Processing time (w/o IO): 32.803ms
    Processing time (w/o IO): 32.829ms
    Processing time (w/o IO): 32.649ms
    Processing time (w/o IO): 32.618ms
    Processing time (w/o IO): 32.768ms
    Processing time (w/o IO): 32.625ms
      Time (mean ± σ):     114.3 ms ±   0.8 ms    [User: 105.6 ms, System: 9.9 ms]
      Range (min … max):   112.8 ms … 115.3 ms    10 runs

D Concurrent:

    Benchmark 1: ./related_concurrent
    Processing time (w/o IO): 17.495ms
    Processing time (w/o IO): 18.251ms
    Processing time (w/o IO): 17.995ms
    Processing time (w/o IO): 17.801ms
    Processing time (w/o IO): 18.902ms
    Processing time (w/o IO): 18.059ms
    Processing time (w/o IO): 18.846ms
    Processing time (w/o IO): 18.659ms
    Processing time (w/o IO): 19.207ms
    Processing time (w/o IO): 18.451ms
    Processing time (w/o IO): 18.601ms
    Processing time (w/o IO): 18.829ms
    Processing time (w/o IO): 18.397ms
      Time (mean ± σ):      99.3 ms ±   1.4 ms    [User: 126.5 ms, System: 10.9 ms]
      Range (min … max):    97.6 ms … 102.2 ms    10 runs

Python:

    Benchmark 1: python3 ./related.py
    Processing time (w/o IO): 1.477s
    Processing time (w/o IO): 1.461s
    Processing time (w/o IO): 1.470s
    Processing time (w/o IO): 1.461s
    Processing time (w/o IO): 1.461s
    Processing time (w/o IO): 1.462s
    Processing time (w/o IO): 1.474s
    Processing time (w/o IO): 1.465s
    Processing time (w/o IO): 1.465s
    Processing time (w/o IO): 1.459s
    Processing time (w/o IO): 1.464s
    Processing time (w/o IO): 1.463s
    Processing time (w/o IO): 1.461s
      Time (mean ± σ):      1.530 s ±  0.004 s    [User: 1.514 s, System: 0.016 s]
      Range (min … max):    1.526 s …  1.540 s    10 runs

Numpy:

    Benchmark 1: python3 ./related_np.py
    Processing time (w/o IO): 467.0ms
    Processing time (w/o IO): 351.4ms
    Processing time (w/o IO): 349.7ms
    Processing time (w/o IO): 349.7ms
    Processing time (w/o IO): 349.2ms
    Processing time (w/o IO): 348.8ms
    Processing time (w/o IO): 351.1ms
    Processing time (w/o IO): 349.6ms
    Processing time (w/o IO): 350.2ms
    Processing time (w/o IO): 357.6ms
    Processing time (w/o IO): 353.8ms
    Processing time (w/o IO): 354.2ms
    Processing time (w/o IO): 348.3ms
      Time (mean ± σ):     642.3 ms ±  26.0 ms    [User: 839.7 ms, System: 408.4 ms]
      Range (min … max):   627.1 ms … 706.6 ms    10 runs

Crystal:

    Benchmark 1: ./crystal
    Processing time (w/o IO): 38.539198ms
    Processing time (w/o IO): 37.955988ms
    Processing time (w/o IO): 38.304794ms
    Processing time (w/o IO): 37.98559ms
    Processing time (w/o IO): 38.136992ms
    Processing time (w/o IO): 38.911204ms
    Processing time (w/o IO): 38.610099ms
    Processing time (w/o IO): 38.484097ms
    Processing time (w/o IO): 38.109191ms
    Processing time (w/o IO): 38.201193ms
    Processing time (w/o IO): 38.475797ms
    Processing time (w/o IO): 38.325494ms
    Processing time (w/o IO): 38.305695ms
      Time (mean ± σ):      86.6 ms ±   0.9 ms    [User: 77.5 ms, System: 9.0 ms]
      Range (min … max):    85.8 ms …  88.9 ms    10 runs

Zig:

    Benchmark 1: ./main
    Processing time (w/o IO): 29ms
    Processing time (w/o IO): 29ms
    Processing time (w/o IO): 29ms
    Processing time (w/o IO): 29ms
    Processing time (w/o IO): 29ms
    Processing time (w/o IO): 29ms
    Processing time (w/o IO): 29ms
    Processing time (w/o IO): 29ms
    Processing time (w/o IO): 29ms
    Processing time (w/o IO): 29ms
    Processing time (w/o IO): 29ms
    Processing time (w/o IO): 29ms
    Processing time (w/o IO): 29ms
      Time (mean ± σ):      76.4 ms ±   1.1 ms    [User: 70.2 ms, System: 6.0 ms]
      Range (min … max):    75.6 ms …  78.7 ms    10 runs

Julia:

    Benchmark 1: julia related.jl
    Processing time (w/o IO): 30 milliseconds
    Processing time (w/o IO): 30 milliseconds
    Processing time (w/o IO): 30 milliseconds
    Processing time (w/o IO): 38 milliseconds
    Processing time (w/o IO): 38 milliseconds
    Processing time (w/o IO): 38 milliseconds
    Processing time (w/o IO): 30 milliseconds
    Processing time (w/o IO): 38 milliseconds
    Processing time (w/o IO): 30 milliseconds
    Processing time (w/o IO): 30 milliseconds
    Processing time (w/o IO): 38 milliseconds
    Processing time (w/o IO): 31 milliseconds
    Processing time (w/o IO): 31 milliseconds
      Time (mean ± σ):      3.266 s ±  0.014 s    [User: 3.067 s, System: 0.199 s]
      Range (min … max):    3.244 s …  3.291 s    10 runs

Julia Concurrent:

    Benchmark 1: julia --threads auto related.jl
    Processing time (w/o IO): 18 milliseconds
    Processing time (w/o IO): 18 milliseconds
    Processing time (w/o IO): 18 milliseconds
    Processing time (w/o IO): 18 milliseconds
    Processing time (w/o IO): 18 milliseconds
    Processing time (w/o IO): 18 milliseconds
    Processing time (w/o IO): 19 milliseconds
    Processing time (w/o IO): 18 milliseconds
    Processing time (w/o IO): 18 milliseconds
    Processing time (w/o IO): 18 milliseconds
    Processing time (w/o IO): 18 milliseconds
    Processing time (w/o IO): 18 milliseconds
    Processing time (w/o IO): 18 milliseconds
      Time (mean ± σ):      3.396 s ±  0.014 s    [User: 4.539 s, System: 0.195 s]
      Range (min … max):    3.376 s …  3.419 s    10 runs

Odin:

    Benchmark 1: ./related
    Processing time (w/o IO):  48.295195ms
    Processing time (w/o IO):  48.288394ms
    Processing time (w/o IO):  48.076789ms
    Processing time (w/o IO):  48.931309ms
    Processing time (w/o IO):  48.12049ms
    Processing time (w/o IO):  48.646103ms
    Processing time (w/o IO):  47.991688ms
    Processing time (w/o IO):  48.287294ms
    Processing time (w/o IO):  48.08869ms
    Processing time (w/o IO):  47.909673ms
    Processing time (w/o IO):  48.093896ms
    Processing time (w/o IO):  48.137597ms
    Processing time (w/o IO):  47.972495ms
      Time (mean ± σ):     268.5 ms ±   0.6 ms    [User: 257.6 ms, System: 10.8 ms]
      Range (min … max):   267.5 ms … 269.3 ms    10 runs

Vlang:

    Benchmark 1: ./related
    Processing time (w/o IO): 51.680ms
    Processing time (w/o IO): 51.403ms
    Processing time (w/o IO): 51.131ms
    Processing time (w/o IO): 51.526ms
    Processing time (w/o IO): 51.502ms
    Processing time (w/o IO): 51.471ms
    Processing time (w/o IO): 51.546ms
    Processing time (w/o IO): 51.507ms
    Processing time (w/o IO): 51.243ms
    Processing time (w/o IO): 51.606ms
    Processing time (w/o IO): 51.745ms
    Processing time (w/o IO): 51.679ms
    Processing time (w/o IO): 51.571ms
      Time (mean ± σ):     396.7 ms ±   1.8 ms    [User: 370.7 ms, System: 25.9 ms]
      Range (min … max):   393.3 ms … 399.0 ms    10 runs

Dart VM:

    Benchmark 1: dart related.dart
    Processing time (w/o IO): 132ms
    Processing time (w/o IO): 131ms
    Processing time (w/o IO): 147ms
    Processing time (w/o IO): 130ms
    Processing time (w/o IO): 130ms
    Processing time (w/o IO): 130ms
    Processing time (w/o IO): 130ms
    Processing time (w/o IO): 130ms
    Processing time (w/o IO): 131ms
    Processing time (w/o IO): 130ms
    Processing time (w/o IO): 131ms
    Processing time (w/o IO): 130ms
    Processing time (w/o IO): 130ms
      Time (mean ± σ):     506.8 ms ±  10.1 ms    [User: 623.0 ms, System: 102.5 ms]
      Range (min … max):   495.3 ms … 521.9 ms    10 runs

Dart AOT:

    Benchmark 1: ./related
    Processing time (w/o IO): 185ms
    Processing time (w/o IO): 186ms
    Processing time (w/o IO): 185ms
    Processing time (w/o IO): 185ms
    Processing time (w/o IO): 187ms
    Processing time (w/o IO): 185ms
    Processing time (w/o IO): 187ms
    Processing time (w/o IO): 185ms
    Processing time (w/o IO): 185ms
    Processing time (w/o IO): 187ms
    Processing time (w/o IO): 185ms
    Processing time (w/o IO): 186ms
    Processing time (w/o IO): 185ms
      Time (mean ± σ):     313.0 ms ±   1.3 ms    [User: 297.2 ms, System: 19.9 ms]
      Range (min … max):   311.0 ms … 314.8 ms    10 runs

Swift:

    Benchmark 1: ./.build/release/related
    Processing time (w/o IO): 50.25506019592285ms
    Processing time (w/o IO): 50.55999755859375ms
    Processing time (w/o IO): 50.91989040374756ms
    Processing time (w/o IO): 50.05204677581787ms
    Processing time (w/o IO): 50.462961196899414ms
    Processing time (w/o IO): 50.80592632293701ms
    Processing time (w/o IO): 50.720930099487305ms
    Processing time (w/o IO): 50.25589466094971ms
    Processing time (w/o IO): 50.642967224121094ms
    Processing time (w/o IO): 50.60100555419922ms
    Processing time (w/o IO): 50.36008358001709ms
    Processing time (w/o IO): 50.67801475524902ms
    Processing time (w/o IO): 50.744056701660156ms
      Time (mean ± σ):     405.6 ms ±   5.6 ms    [User: 344.3 ms, System: 37.7 ms]
      Range (min … max):   397.1 ms … 413.6 ms    10 runs

Swift Concurrent:

    Benchmark 1: ./.build/release/related
    Processing time (w/o IO): 31.144672ms
    Processing time (w/o IO): 31.65098ms
    Processing time (w/o IO): 31.417876ms
    Processing time (w/o IO): 30.743466ms
    Processing time (w/o IO): 31.393076ms
    Processing time (w/o IO): 31.516974ms
    Processing time (w/o IO): 31.32686ms
    Processing time (w/o IO): 30.778253ms
    Processing time (w/o IO): 31.217259ms
    Processing time (w/o IO): 31.409962ms
    Processing time (w/o IO): 31.307161ms
    Processing time (w/o IO): 31.556465ms
    Processing time (w/o IO): 31.084957ms
      Time (mean ± σ):     407.1 ms ±   4.1 ms    [User: 433.0 ms, System: 38.6 ms]
      Range (min … max):   401.5 ms … 412.5 ms    10 runs

JS (Node):

    Benchmark 1: node node.js
    Processing time (w/o IO): 180ms
    Processing time (w/o IO): 182ms
    Processing time (w/o IO): 178ms
    Processing time (w/o IO): 179ms
    Processing time (w/o IO): 179ms
    Processing time (w/o IO): 179ms
    Processing time (w/o IO): 184ms
    Processing time (w/o IO): 178ms
    Processing time (w/o IO): 186ms
    Processing time (w/o IO): 184ms
    Processing time (w/o IO): 179ms
    Processing time (w/o IO): 182ms
    Processing time (w/o IO): 185ms
      Time (mean ± σ):     357.3 ms ±   4.2 ms    [User: 359.3 ms, System: 66.5 ms]
      Range (min … max):   350.0 ms … 364.3 ms    10 runs

JS (Bun):

    Benchmark 1: bun bun.js
    Processing time (w/o IO): 664ms
    Processing time (w/o IO): 621ms
    Processing time (w/o IO): 608ms
    Processing time (w/o IO): 609ms
    Processing time (w/o IO): 631ms
    Processing time (w/o IO): 619ms
    Processing time (w/o IO): 601ms
    Processing time (w/o IO): 602ms
    Processing time (w/o IO): 619ms
    Processing time (w/o IO): 613ms
    Processing time (w/o IO): 617ms
    Processing time (w/o IO): 620ms
    Processing time (w/o IO): 619ms
      Time (mean ± σ):     678.4 ms ±  15.6 ms    [User: 687.2 ms, System: 46.1 ms]
      Range (min … max):   660.8 ms … 717.8 ms    10 runs

JS (Deno):

    Benchmark 1: deno run --allow-read --allow-write deno.js
    Processing time (w/o IO): 205ms
    Processing time (w/o IO): 191ms
    Processing time (w/o IO): 198ms
    Processing time (w/o IO): 197ms
    Processing time (w/o IO): 197ms
    Processing time (w/o IO): 192ms
    Processing time (w/o IO): 191ms
    Processing time (w/o IO): 191ms
    Processing time (w/o IO): 191ms
    Processing time (w/o IO): 191ms
    Processing time (w/o IO): 191ms
    Processing time (w/o IO): 192ms
    Processing time (w/o IO): 192ms
      Time (mean ± σ):     259.7 ms ±   2.6 ms    [User: 252.5 ms, System: 30.0 ms]
      Range (min … max):   257.5 ms … 265.1 ms    10 runs

Java (JIT):

    Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
    Processing time (w/o IO): 122 ms
    Processing time (w/o IO): 101 ms
    Processing time (w/o IO): 110 ms
    Processing time (w/o IO): 111 ms
    Processing time (w/o IO): 112 ms
    Processing time (w/o IO): 101 ms
    Processing time (w/o IO): 111 ms
    Processing time (w/o IO): 98 ms
    Processing time (w/o IO): 100 ms
    Processing time (w/o IO): 113 ms
    Processing time (w/o IO): 112 ms
    Processing time (w/o IO): 112 ms
    Processing time (w/o IO): 111 ms
      Time (mean ± σ):     334.4 ms ±   6.9 ms    [User: 630.5 ms, System: 43.8 ms]
      Range (min … max):   322.9 ms … 340.2 ms    10 runs

Java (GraalVM):

    Benchmark 1: ./target/related
    Processing time (w/o IO): 37 ms
    Processing time (w/o IO): 36 ms
    Processing time (w/o IO): 36 ms
    Processing time (w/o IO): 37 ms
    Processing time (w/o IO): 37 ms
    Processing time (w/o IO): 37 ms
    Processing time (w/o IO): 37 ms
    Processing time (w/o IO): 37 ms
    Processing time (w/o IO): 37 ms
    Processing time (w/o IO): 37 ms
    Processing time (w/o IO): 37 ms
    Processing time (w/o IO): 37 ms
    Processing time (w/o IO): 37 ms
      Time (mean ± σ):      66.4 ms ±   1.6 ms    [User: 55.9 ms, System: 10.6 ms]
      Range (min … max):    64.3 ms …  70.4 ms    10 runs

Java (GraalVM) Concurrent:

    Benchmark 1: ./target/related
    Processing time (w/o IO): 37 ms
    Processing time (w/o IO): 39 ms
    Processing time (w/o IO): 40 ms
    Processing time (w/o IO): 37 ms
    Processing time (w/o IO): 39 ms
    Processing time (w/o IO): 39 ms
    Processing time (w/o IO): 40 ms
    Processing time (w/o IO): 39 ms
    Processing time (w/o IO): 40 ms
    Processing time (w/o IO): 38 ms
    Processing time (w/o IO): 40 ms
    Processing time (w/o IO): 39 ms
    Processing time (w/o IO): 39 ms
      Time (mean ± σ):      67.9 ms ±   1.5 ms    [User: 115.1 ms, System: 10.8 ms]
      Range (min … max):    64.3 ms …  69.8 ms    10 runs

Nim:

    Benchmark 1: ./src/related
    Processing time (w/o IO): 32ms
    Processing time (w/o IO): 31ms
    Processing time (w/o IO): 31ms
    Processing time (w/o IO): 32ms
    Processing time (w/o IO): 31ms
    Processing time (w/o IO): 31ms
    Processing time (w/o IO): 31ms
    Processing time (w/o IO): 32ms
    Processing time (w/o IO): 31ms
    Processing time (w/o IO): 31ms
    Processing time (w/o IO): 32ms
    Processing time (w/o IO): 31ms
    Processing time (w/o IO): 31ms
      Time (mean ± σ):      58.5 ms ±   0.8 ms    [User: 46.2 ms, System: 12.3 ms]
      Range (min … max):    57.4 ms …  60.0 ms    10 runs

F#:

    Benchmark 1: ./bin/release/net8.0/fsharp
    Processing time (w/o IO): 48ms
    Processing time (w/o IO): 48ms
    Processing time (w/o IO): 48ms
    Processing time (w/o IO): 48ms
    Processing time (w/o IO): 48ms
    Processing time (w/o IO): 48ms
    Processing time (w/o IO): 48ms
    Processing time (w/o IO): 49ms
    Processing time (w/o IO): 48ms
    Processing time (w/o IO): 48ms
    Processing time (w/o IO): 48ms
    Processing time (w/o IO): 49ms
    Processing time (w/o IO): 48ms
      Time (mean ± σ):     879.1 ms ±  23.1 ms    [User: 954.9 ms, System: 93.2 ms]
      Range (min … max):   834.8 ms … 909.4 ms    10 runs

F# Concurrent:

    Benchmark 1: ./bin/release/net8.0/fsharp_con
    Processing time (w/o IO): 44ms
    Processing time (w/o IO): 43ms
    Processing time (w/o IO): 43ms
    Processing time (w/o IO): 43ms
    Processing time (w/o IO): 43ms
    Processing time (w/o IO): 44ms
    Processing time (w/o IO): 43ms
    Processing time (w/o IO): 42ms
    Processing time (w/o IO): 43ms
    Processing time (w/o IO): 44ms
    Processing time (w/o IO): 43ms
    Processing time (w/o IO): 43ms
    Processing time (w/o IO): 43ms
      Time (mean ± σ):     891.7 ms ±  14.2 ms    [User: 1026.2 ms, System: 88.0 ms]
      Range (min … max):   853.7 ms … 903.5 ms    10 runs

F# (AOT):

    Benchmark 1: ./bin/release/net8.0/aot/fsharp
    Processing time (w/o IO): 41ms
    Processing time (w/o IO): 40ms
    Processing time (w/o IO): 41ms
    Processing time (w/o IO): 41ms
    Processing time (w/o IO): 40ms
    Processing time (w/o IO): 41ms
    Processing time (w/o IO): 40ms
    Processing time (w/o IO): 40ms
    Processing time (w/o IO): 41ms
    Processing time (w/o IO): 40ms
    Processing time (w/o IO): 41ms
    Processing time (w/o IO): 40ms
    Processing time (w/o IO): 41ms
      Time (mean ± σ):     738.2 ms ±   1.8 ms    [User: 697.0 ms, System: 83.7 ms]
      Range (min … max):   735.0 ms … 741.4 ms    10 runs

C# (JIT):

    Benchmark 1: ./bin/release/net8.0/jit/related
    Processing time (w/o IO): 60.1611ms
    Processing time (w/o IO): 59.5047ms
    Processing time (w/o IO): 59.6085ms
    Processing time (w/o IO): 59.9774ms
    Processing time (w/o IO): 59.5323ms
    Processing time (w/o IO): 59.6305ms
    Processing time (w/o IO): 59.833ms
    Processing time (w/o IO): 59.5223ms
    Processing time (w/o IO): 59.2589ms
    Processing time (w/o IO): 60.0061ms
    Processing time (w/o IO): 59.7876ms
    Processing time (w/o IO): 59.7797ms
    Processing time (w/o IO): 59.3658ms
      Time (mean ± σ):     208.4 ms ±   6.6 ms    [User: 163.0 ms, System: 27.4 ms]
      Range (min … max):   201.1 ms … 223.1 ms    10 runs

C# (AOT):

    Benchmark 1: ./bin/release/net8.0/aot/related
    Processing time (w/o IO): 55.3533ms
    Processing time (w/o IO): 55.4863ms
    Processing time (w/o IO): 55.4638ms
    Processing time (w/o IO): 55.2636ms
    Processing time (w/o IO): 55.3487ms
    Processing time (w/o IO): 55.4332ms
    Processing time (w/o IO): 55.5166ms
    Processing time (w/o IO): 55.5928ms
    Processing time (w/o IO): 55.49ms
    Processing time (w/o IO): 55.4073ms
    Processing time (w/o IO): 55.4851ms
    Processing time (w/o IO): 55.3065ms
    Processing time (w/o IO): 55.5322ms
      Time (mean ± σ):     100.4 ms ±   0.9 ms    [User: 90.7 ms, System: 19.9 ms]
      Range (min … max):    98.9 ms … 101.8 ms    10 runs

LuaJIT:

    Benchmark 1: luajit only_lua.lua
    Processing time (w/o IO):	111.22989654541	ms
    Processing time (w/o IO):	91.546058654785	ms
    Processing time (w/o IO):	88.469982147217	ms
    Processing time (w/o IO):	115.38410186768	ms
    Processing time (w/o IO):	112.2088432312	ms
    Processing time (w/o IO):	88.130950927734	ms
    Processing time (w/o IO):	112.69402503967	ms
    Processing time (w/o IO):	111.07087135315	ms
    Processing time (w/o IO):	104.60782051086	ms
    Processing time (w/o IO):	112.54501342773	ms
    Processing time (w/o IO):	104.05588150024	ms
    Processing time (w/o IO):	111.62996292114	ms
    Processing time (w/o IO):	87.19801902771	ms
      Time (mean ± σ):     347.3 ms ±  11.8 ms    [User: 325.2 ms, System: 22.0 ms]
      Range (min … max):   320.0 ms … 358.4 ms    10 runs

Lua:

    Benchmark 1: lua only_lua.lua
    Processing time (w/o IO):	1094.1159725189	ms
    Processing time (w/o IO):	1092.5788879395	ms
    Processing time (w/o IO):	1091.9349193573	ms
    Processing time (w/o IO):	1095.0200557709	ms
    Processing time (w/o IO):	1094.6788787842	ms
    Processing time (w/o IO):	1093.1370258331	ms
    Processing time (w/o IO):	1093.9919948578	ms
    Processing time (w/o IO):	1093.327999115	ms
    Processing time (w/o IO):	1100.6059646606	ms
    Processing time (w/o IO):	1092.7200317383	ms
    Processing time (w/o IO):	1093.0488109589	ms
    Processing time (w/o IO):	1089.0130996704	ms
    Processing time (w/o IO):	1091.9411182404	ms
      Time (mean ± σ):      1.524 s ±  0.012 s    [User: 1.506 s, System: 0.017 s]
      Range (min … max):    1.514 s …  1.549 s    10 runs

ocaml:

    Benchmark 1: ./_build/default/bin/main.exe
    Processing time (w/o IO): 142ms
    Processing time (w/o IO): 148ms
    Processing time (w/o IO): 146ms
    Processing time (w/o IO): 146ms
    Processing time (w/o IO): 144ms
    Processing time (w/o IO): 148ms
    Processing time (w/o IO): 145ms
    Processing time (w/o IO): 140ms
    Processing time (w/o IO): 142ms
    Processing time (w/o IO): 143ms
    Processing time (w/o IO): 142ms
    Processing time (w/o IO): 147ms
    Processing time (w/o IO): 144ms
      Time (mean ± σ):     230.8 ms ±   3.2 ms    [User: 202.1 ms, System: 28.6 ms]
      Range (min … max):   226.0 ms … 235.7 ms    10 runs

Go:

    Benchmark 1: ./related
    Processing time (w/o IO): 371.049087ms
    Processing time (w/o IO): 372.920626ms
    Processing time (w/o IO): 371.032987ms
      Time (mean ± σ):     519.8 ms ±   3.6 ms    [User: 508.7 ms, System: 48.1 ms]
      Range (min … max):   517.2 ms … 522.4 ms    2 runs

Go Concurrent:

    Benchmark 1: ./related_concurrent
    Processing time (w/o IO): 167.150618ms
    Processing time (w/o IO): 166.75081ms
    Processing time (w/o IO): 168.544746ms
      Time (mean ± σ):     312.9 ms ±   1.4 ms    [User: 787.1 ms, System: 37.7 ms]
      Range (min … max):   311.9 ms … 313.9 ms    2 runs

Rust:

    Benchmark 1: ./target/release/rust
    Processing time (w/o IO): 387.455429ms
    Processing time (w/o IO): 387.866435ms
    Processing time (w/o IO): 388.784148ms
      Time (mean ± σ):     457.7 ms ±   0.3 ms    [User: 430.1 ms, System: 27.4 ms]
      Range (min … max):   457.5 ms … 457.9 ms    2 runs

Rust Concurrent:

    Benchmark 1: ./target/release/rust_rayon
    Processing time (w/o IO): 305.242356ms
    Processing time (w/o IO): 305.56466ms
    Processing time (w/o IO): 304.063938ms
      Time (mean ± σ):     373.5 ms ±   0.7 ms    [User: 647.4 ms, System: 27.3 ms]
      Range (min … max):   373.0 ms … 374.1 ms    2 runs

D:

    Benchmark 1: ./related
    Processing time (w/o IO): 447.78ms
    Processing time (w/o IO): 447.094ms
    Processing time (w/o IO): 447.051ms
      Time (mean ± σ):     756.3 ms ±   3.3 ms    [User: 731.5 ms, System: 27.7 ms]
      Range (min … max):   754.0 ms … 758.7 ms    2 runs

D Concurrent:

    Benchmark 1: ./related_concurrent
    Processing time (w/o IO): 200.34ms
    Processing time (w/o IO): 201.779ms
    Processing time (w/o IO): 200.419ms
      Time (mean ± σ):     503.8 ms ±   4.7 ms    [User: 1006.2 ms, System: 33.7 ms]
      Range (min … max):   500.5 ms … 507.2 ms    2 runs

Python:

    Benchmark 1: python3 ./related.py
    Processing time (w/o IO): 23.291s
    Processing time (w/o IO): 23.541s
      Time (abs ≡):        23.695 s               [User: 23.639 s, System: 0.047 s]

Numpy:

    Benchmark 1: python3 ./related_np.py
    Processing time (w/o IO): 6.202s
    Processing time (w/o IO): 6.361s
    Processing time (w/o IO): 6.179s
      Time (mean ± σ):      6.748 s ±  0.138 s    [User: 4.953 s, System: 2.398 s]
      Range (min … max):    6.650 s …  6.845 s    2 runs

Crystal:

    Benchmark 1: ./crystal
    Processing time (w/o IO): 550.587885ms
    Processing time (w/o IO): 553.623045ms
    Processing time (w/o IO): 552.222517ms
      Time (mean ± σ):     762.5 ms ±   1.7 ms    [User: 733.0 ms, System: 29.5 ms]
      Range (min … max):   761.3 ms … 763.7 ms    2 runs

Zig:

    Benchmark 1: ./main
    Processing time (w/o IO): 429ms
    Processing time (w/o IO): 429ms
    Processing time (w/o IO): 430ms
      Time (mean ± σ):     627.4 ms ±   3.0 ms    [User: 601.5 ms, System: 23.3 ms]
      Range (min … max):   625.3 ms … 629.5 ms    2 runs

Julia:

    Benchmark 1: julia related.jl
    Processing time (w/o IO): 574 milliseconds
    Processing time (w/o IO): 575 milliseconds
    Processing time (w/o IO): 575 milliseconds
      Time (mean ± σ):      4.476 s ±  0.018 s    [User: 4.262 s, System: 0.212 s]
      Range (min … max):    4.464 s …  4.489 s    2 runs

Julia Concurrent:

    Benchmark 1: julia --threads auto related.jl
    Processing time (w/o IO): 249 milliseconds
    Processing time (w/o IO): 252 milliseconds
    Processing time (w/o IO): 250 milliseconds
      Time (mean ± σ):      3.986 s ±  0.018 s    [User: 6.400 s, System: 0.270 s]
      Range (min … max):    3.973 s …  3.999 s    2 runs

Odin:

    Benchmark 1: ./related
    Processing time (w/o IO):  677.821816ms
    Processing time (w/o IO):  677.721779ms
    Processing time (w/o IO):  678.708896ms
      Time (mean ± σ):      1.473 s ±  0.004 s    [User: 1.434 s, System: 0.038 s]
      Range (min … max):    1.470 s …  1.476 s    2 runs

Vlang:

    Benchmark 1: ./related
    Processing time (w/o IO): 755.015ms
    Processing time (w/o IO): 756.605ms
    Processing time (w/o IO): 762.374ms
      Time (mean ± σ):      9.037 s ±  0.386 s    [User: 8.907 s, System: 0.128 s]
      Range (min … max):    8.764 s …  9.310 s    2 runs

Dart VM:

    Benchmark 1: dart related.dart
    Processing time (w/o IO): 2390ms
    Processing time (w/o IO): 2505ms
    Processing time (w/o IO): 2477ms
      Time (mean ± σ):      3.153 s ±  0.028 s    [User: 3.356 s, System: 0.138 s]
      Range (min … max):    3.133 s …  3.172 s    2 runs

Dart AOT:

    Benchmark 1: ./related
    Processing time (w/o IO): 2888ms
    Processing time (w/o IO): 2893ms
    Processing time (w/o IO): 2893ms
      Time (mean ± σ):      3.381 s ±  0.003 s    [User: 3.339 s, System: 0.058 s]
      Range (min … max):    3.379 s …  3.383 s    2 runs

Swift:

    Benchmark 1: ./.build/release/related
    Processing time (w/o IO): 709.4159126281738ms
    Processing time (w/o IO): 711.1039161682129ms
    Processing time (w/o IO): 711.9159698486328ms
      Time (mean ± σ):      2.102 s ±  0.012 s    [User: 1.946 s, System: 0.119 s]
      Range (min … max):    2.094 s …  2.111 s    2 runs

Swift Concurrent:

    Benchmark 1: ./.build/release/related
    Processing time (w/o IO): 392.451296ms
    Processing time (w/o IO): 393.265911ms
    Processing time (w/o IO): 392.794502ms
      Time (mean ± σ):      1.821 s ±  0.026 s    [User: 2.807 s, System: 0.118 s]
      Range (min … max):    1.803 s …  1.839 s    2 runs

JS (Node):

    Benchmark 1: node node.js
    Processing time (w/o IO): 2427ms
    Processing time (w/o IO): 2424ms
    Processing time (w/o IO): 2429ms
      Time (mean ± σ):      2.748 s ±  0.002 s    [User: 2.765 s, System: 0.087 s]
      Range (min … max):    2.747 s …  2.750 s    2 runs

JS (Bun):

    Benchmark 1: bun bun.js
    Processing time (w/o IO): 11910ms
    Processing time (w/o IO): 12133ms
    Processing time (w/o IO): 12153ms
      Time (mean ± σ):     12.301 s ±  0.015 s    [User: 12.320 s, System: 0.080 s]
      Range (min … max):   12.291 s … 12.312 s    2 runs

JS (Deno):

    Benchmark 1: deno run --allow-read --allow-write deno.js
    Processing time (w/o IO): 2261ms
    Processing time (w/o IO): 2263ms
    Processing time (w/o IO): 2258ms
      Time (mean ± σ):      2.436 s ±  0.002 s    [User: 2.438 s, System: 0.080 s]
      Range (min … max):    2.435 s …  2.438 s    2 runs

Java (JIT):

    Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
    Processing time (w/o IO): 843 ms
    Processing time (w/o IO): 831 ms
    Processing time (w/o IO): 841 ms
      Time (mean ± σ):      1.136 s ±  0.006 s    [User: 1.687 s, System: 0.078 s]
      Range (min … max):    1.132 s …  1.140 s    2 runs

Java (GraalVM):

    Benchmark 1: ./target/related
    Processing time (w/o IO): 542 ms
    Processing time (w/o IO): 541 ms
    Processing time (w/o IO): 542 ms
      Time (mean ± σ):     637.9 ms ±   0.7 ms    [User: 608.5 ms, System: 29.6 ms]
      Range (min … max):   637.4 ms … 638.4 ms    2 runs

Java (GraalVM) Concurrent:

    Benchmark 1: ./target/related
    Processing time (w/o IO): 596 ms
    Processing time (w/o IO): 600 ms
    Processing time (w/o IO): 601 ms
      Time (mean ± σ):     699.0 ms ±   0.0 ms    [User: 1652.7 ms, System: 31.4 ms]
      Range (min … max):   699.0 ms … 699.1 ms    2 runs

Nim:

    Benchmark 1: ./src/related
    Processing time (w/o IO): 779ms
    Processing time (w/o IO): 775ms
    Processing time (w/o IO): 777ms
      Time (mean ± σ):     879.0 ms ±   5.8 ms    [User: 845.3 ms, System: 33.6 ms]
      Range (min … max):   874.8 ms … 883.1 ms    2 runs

F#:

    Benchmark 1: ./bin/release/net8.0/fsharp
    Processing time (w/o IO): 604ms
    Processing time (w/o IO): 603ms
    Processing time (w/o IO): 603ms
      Time (mean ± σ):      2.736 s ±  0.044 s    [User: 2.652 s, System: 0.262 s]
      Range (min … max):    2.705 s …  2.767 s    2 runs

F# Concurrent:

    Benchmark 1: ./bin/release/net8.0/fsharp_con
    Processing time (w/o IO): 426ms
    Processing time (w/o IO): 396ms
    Processing time (w/o IO): 431ms
      Time (mean ± σ):      2.591 s ±  0.009 s    [User: 3.634 s, System: 0.277 s]
      Range (min … max):    2.584 s …  2.597 s    2 runs

F# (AOT):

    Benchmark 1: ./bin/release/net8.0/aot/fsharp
    Processing time (w/o IO): 604ms
    Processing time (w/o IO): 603ms
    Processing time (w/o IO): 601ms
      Time (mean ± σ):      3.707 s ±  0.028 s    [User: 3.903 s, System: 0.438 s]
      Range (min … max):    3.687 s …  3.726 s    2 runs

C# (JIT):

    Benchmark 1: ./bin/release/net8.0/jit/related
    Processing time (w/o IO): 878.0366ms
    Processing time (w/o IO): 875.0755ms
    Processing time (w/o IO): 873.0967ms
      Time (mean ± σ):      1.213 s ±  0.008 s    [User: 1.138 s, System: 0.103 s]
      Range (min … max):    1.207 s …  1.219 s    2 runs

C# (AOT):

    Benchmark 1: ./bin/release/net8.0/aot/related
    Processing time (w/o IO): 818.9399ms
    Processing time (w/o IO): 820.4103ms
    Processing time (w/o IO): 818.7558ms
      Time (mean ± σ):     997.6 ms ±   0.5 ms    [User: 982.1 ms, System: 67.2 ms]
      Range (min … max):   997.2 ms … 997.9 ms    2 runs

LuaJIT:

    Benchmark 1: luajit only_lua.lua
    Processing time (w/o IO):	1420.49908638	ms
    Processing time (w/o IO):	1416.3780212402	ms
    Processing time (w/o IO):	1174.6320724487	ms
      Time (mean ± σ):      2.513 s ±  0.162 s    [User: 2.450 s, System: 0.062 s]
      Range (min … max):    2.399 s …  2.627 s    2 runs

Lua:

    Benchmark 1: lua only_lua.lua
    Processing time (w/o IO):	16757.906913757	ms
    Processing time (w/o IO):	17047.304868698	ms
      Time (abs ≡):        18.902 s               [User: 18.844 s, System: 0.051 s]

ocaml:

    Benchmark 1: ./_build/default/bin/main.exe
    Processing time (w/o IO): 2684ms
    Processing time (w/o IO): 2722ms
    Processing time (w/o IO): 2768ms
      Time (mean ± σ):      3.172 s ±  0.042 s    [User: 2.988 s, System: 0.179 s]
      Range (min … max):    3.142 s …  3.202 s    2 runs

Go:

    Benchmark 1: ./related
    Processing time (w/o IO): 3.289803517s
    Processing time (w/o IO): 3.29622374s
    Processing time (w/o IO): 3.281001177s
      Time (mean ± σ):      3.774 s ±  0.014 s    [User: 3.787 s, System: 0.102 s]
      Range (min … max):    3.764 s …  3.784 s    2 runs

Go Concurrent:

    Benchmark 1: ./related_concurrent
    Processing time (w/o IO): 1.420841462s
    Processing time (w/o IO): 1.419258137s
    Processing time (w/o IO): 1.430623123s
      Time (mean ± σ):      1.899 s ±  0.006 s    [User: 6.125 s, System: 0.104 s]
      Range (min … max):    1.895 s …  1.903 s    2 runs

Rust:

    Benchmark 1: ./target/release/rust
    Processing time (w/o IO): 3.448013984s
    Processing time (w/o IO): 3.451312616s
    Processing time (w/o IO): 3.449607968s
      Time (mean ± σ):      3.698 s ±  0.001 s    [User: 3.620 s, System: 0.069 s]
      Range (min … max):    3.697 s …  3.699 s    2 runs

Rust Concurrent:

    Benchmark 1: ./target/release/rust_rayon
    Processing time (w/o IO): 2.752679148s
    Processing time (w/o IO): 2.724663701s
    Processing time (w/o IO): 2.724778863s
      Time (mean ± σ):      2.964 s ±  0.002 s    [User: 5.587 s, System: 0.087 s]
      Range (min … max):    2.962 s …  2.965 s    2 runs

D:

    Benchmark 1: ./related
    Processing time (w/o IO): 3887.4ms
    Processing time (w/o IO): 3899.1ms
    Processing time (w/o IO): 3882.73ms
      Time (mean ± σ):      4.855 s ±  0.014 s    [User: 4.748 s, System: 0.109 s]
      Range (min … max):    4.844 s …  4.865 s    2 runs

D Concurrent:

    Benchmark 1: ./related_concurrent
    Processing time (w/o IO): 1650.46ms
    Processing time (w/o IO): 1647.17ms
    Processing time (w/o IO): 1660.97ms
      Time (mean ± σ):      2.623 s ±  0.003 s    [User: 7.272 s, System: 0.130 s]
      Range (min … max):    2.622 s …  2.625 s    2 runs

Python:

    Benchmark 1: python3 ./related.py
    Processing time (w/o IO): 214.987s
    Processing time (w/o IO): 215.398s
      Time (abs ≡):        215.870 s               [User: 215.657 s, System: 0.171 s]

Numpy:

    Benchmark 1: python3 ./related_np.py

Crystal:

    Benchmark 1: ./crystal
    Processing time (w/o IO): 4864.269971ms
    Processing time (w/o IO): 4856.594613ms
    Processing time (w/o IO): 4862.984551ms
      Time (mean ± σ):      5.558 s ±  0.019 s    [User: 5.454 s, System: 0.092 s]
      Range (min … max):    5.544 s …  5.571 s    2 runs

Zig:

    Benchmark 1: ./main
    Processing time (w/o IO): 3846ms
    Processing time (w/o IO): 3840ms
    Processing time (w/o IO): 3842ms
      Time (mean ± σ):      4.431 s ±  0.007 s    [User: 4.359 s, System: 0.067 s]
      Range (min … max):    4.426 s …  4.436 s    2 runs

Julia:

    Benchmark 1: julia related.jl
    Processing time (w/o IO): 3978 milliseconds
    Processing time (w/o IO): 5048 milliseconds
    Processing time (w/o IO): 3980 milliseconds
      Time (mean ± σ):     12.721 s ±  1.510 s    [User: 12.430 s, System: 0.283 s]
      Range (min … max):   11.653 s … 13.788 s    2 runs

Julia Concurrent:

    Benchmark 1: julia --threads auto related.jl
    Processing time (w/o IO): 2186 milliseconds
    Processing time (w/o IO): 2207 milliseconds
    Processing time (w/o IO): 2205 milliseconds
      Time (mean ± σ):      8.226 s ±  0.003 s    [User: 22.067 s, System: 0.313 s]
      Range (min … max):    8.224 s …  8.228 s    2 runs

Odin:

    Benchmark 1: ./related
    Processing time (w/o IO):  6.034221721s
    Processing time (w/o IO):  5.984572989s
    Processing time (w/o IO):  5.996243887s
      Time (mean ± σ):      8.344 s ±  0.006 s    [User: 8.266 s, System: 0.073 s]
      Range (min … max):    8.340 s …  8.349 s    2 runs

Vlang:

    Benchmark 1: ./related
    Processing time (w/o IO): 6.650s
    Processing time (w/o IO): 6.650s
    Processing time (w/o IO): 6.651s
      Time (mean ± σ):     78.382 s ±  0.802 s    [User: 77.948 s, System: 0.407 s]
      Range (min … max):   77.815 s … 78.950 s    2 runs

Dart VM:

    Benchmark 1: dart related.dart
    Processing time (w/o IO): 21064ms
    Processing time (w/o IO): 21122ms
    Processing time (w/o IO): 21127ms
      Time (mean ± σ):     22.605 s ±  0.020 s    [User: 22.804 s, System: 0.262 s]
      Range (min … max):   22.591 s … 22.619 s    2 runs

Dart AOT:

    Benchmark 1: ./related
    Processing time (w/o IO): 25825ms
    Processing time (w/o IO): 25774ms
    Processing time (w/o IO): 25789ms
      Time (mean ± σ):     27.275 s ±  0.002 s    [User: 27.209 s, System: 0.168 s]
      Range (min … max):   27.273 s … 27.277 s    2 runs

Swift:

    Benchmark 1: ./.build/release/related
    Processing time (w/o IO): 6210.594058036804ms
    Processing time (w/o IO): 6208.587050437927ms
    Processing time (w/o IO): 6195.813059806824ms
      Time (mean ± σ):     10.499 s ±  0.007 s    [User: 9.968 s, System: 0.375 s]
      Range (min … max):   10.495 s … 10.504 s    2 runs

Swift Concurrent:

    Benchmark 1: ./.build/release/related
    Processing time (w/o IO): 3434.606322ms
    Processing time (w/o IO): 3437.707507ms
    Processing time (w/o IO): 3443.724158ms
      Time (mean ± σ):      7.797 s ±  0.065 s    [User: 17.446 s, System: 0.391 s]
      Range (min … max):    7.750 s …  7.843 s    2 runs

JS (Node):

    Benchmark 1: node node.js
    Processing time (w/o IO): 21901ms
    Processing time (w/o IO): 21796ms
    Processing time (w/o IO): 21331ms
      Time (mean ± σ):     22.396 s ±  0.304 s    [User: 22.426 s, System: 0.193 s]
      Range (min … max):   22.181 s … 22.611 s    2 runs

JS (Bun):

    Benchmark 1: bun bun.js
    Processing time (w/o IO): 110121ms
    Processing time (w/o IO): 107077ms
    Processing time (w/o IO): 111141ms
      Time (mean ± σ):     109.547 s ±  2.885 s    [User: 109.576 s, System: 0.138 s]
      Range (min … max):   107.507 s … 111.588 s    2 runs

JS (Deno):

    Benchmark 1: deno run --allow-read --allow-write deno.js
    Processing time (w/o IO): 20478ms
    Processing time (w/o IO): 41172ms
    Processing time (w/o IO): 20439ms
      Time (mean ± σ):     31.568 s ± 14.555 s    [User: 31.284 s, System: 0.171 s]
      Range (min … max):   21.276 s … 41.860 s    2 runs

Java (JIT):

    Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
    Processing time (w/o IO): 6905 ms
    Processing time (w/o IO): 6597 ms
    Processing time (w/o IO): 6650 ms
      Time (mean ± σ):      7.157 s ±  0.041 s    [User: 7.863 s, System: 0.136 s]
      Range (min … max):    7.128 s …  7.186 s    2 runs

Java (GraalVM):

    Benchmark 1: ./target/related
    Processing time (w/o IO): 4758 ms
    Processing time (w/o IO): 4765 ms
    Processing time (w/o IO): 4773 ms
      Time (mean ± σ):      5.116 s ±  0.016 s    [User: 5.021 s, System: 0.086 s]
      Range (min … max):    5.105 s …  5.127 s    2 runs

Java (GraalVM) Concurrent:

    Benchmark 1: ./target/related
    Processing time (w/o IO): 4119 ms
    Processing time (w/o IO): 4122 ms
    Processing time (w/o IO): 4127 ms
      Time (mean ± σ):      4.491 s ±  0.014 s    [User: 11.066 s, System: 0.103 s]
      Range (min … max):    4.481 s …  4.501 s    2 runs

Nim:

    Benchmark 1: ./src/related
    Processing time (w/o IO): 7302ms
    Processing time (w/o IO): 7308ms
    Processing time (w/o IO): 7300ms
      Time (mean ± σ):      7.659 s ±  0.010 s    [User: 7.547 s, System: 0.101 s]
      Range (min … max):    7.651 s …  7.666 s    2 runs

F#:

    Benchmark 1: ./bin/release/net8.0/fsharp
    Processing time (w/o IO): 5265ms
    Processing time (w/o IO): 5255ms
    Processing time (w/o IO): 5255ms
      Time (mean ± σ):     10.751 s ±  0.009 s    [User: 11.426 s, System: 0.647 s]
      Range (min … max):   10.745 s … 10.758 s    2 runs

F# Concurrent:

    Benchmark 1: ./bin/release/net8.0/fsharp_con
    Processing time (w/o IO): 3521ms
    Processing time (w/o IO): 3517ms
    Processing time (w/o IO): 3279ms
      Time (mean ± σ):      8.837 s ±  0.170 s    [User: 19.607 s, System: 0.639 s]
      Range (min … max):    8.717 s …  8.957 s    2 runs

F# (AOT):

    Benchmark 1: ./bin/release/net8.0/aot/fsharp
    Processing time (w/o IO): 5207ms
    Processing time (w/o IO): 5195ms
    Processing time (w/o IO): 5201ms
      Time (mean ± σ):     13.569 s ±  0.068 s    [User: 14.842 s, System: 0.604 s]
      Range (min … max):   13.521 s … 13.616 s    2 runs

C# (JIT):

    Benchmark 1: ./bin/release/net8.0/jit/related
    Processing time (w/o IO): 7767.5153ms
    Processing time (w/o IO): 7798.4202ms
    Processing time (w/o IO): 7815.8152ms
      Time (mean ± σ):      8.712 s ±  0.004 s    [User: 8.757 s, System: 0.193 s]
      Range (min … max):    8.709 s …  8.714 s    2 runs

C# (AOT):

    Benchmark 1: ./bin/release/net8.0/aot/related
    Processing time (w/o IO): 7257.7913ms
    Processing time (w/o IO): 7250.0125ms
    Processing time (w/o IO): 7241.442ms
      Time (mean ± σ):      7.791 s ±  0.006 s    [User: 7.827 s, System: 0.147 s]
      Range (min … max):    7.787 s …  7.796 s    2 runs

LuaJIT:

    Benchmark 1: luajit only_lua.lua
    Processing time (w/o IO):	12098.350048065	ms
    Processing time (w/o IO):	12071.364879608	ms
    Processing time (w/o IO):	12137.314081192	ms
      Time (mean ± σ):     16.379 s ±  0.056 s    [User: 16.172 s, System: 0.197 s]
      Range (min … max):   16.339 s … 16.418 s    2 runs

Lua:

    Benchmark 1: lua only_lua.lua
    Processing time (w/o IO):	150221.33398056	ms
    Processing time (w/o IO):	150287.1119976	ms
      Time (abs ≡):        156.854 s               [User: 156.645 s, System: 0.175 s]

ocaml:

    Benchmark 1: ./_build/default/bin/main.exe
    Processing time (w/o IO): 34436ms
    Processing time (w/o IO): 34316ms
    Processing time (w/o IO): 33049ms
      Time (mean ± σ):     35.145 s ±  0.882 s    [User: 34.336 s, System: 0.793 s]
      Range (min … max):   34.521 s … 35.769 s    2 runs
