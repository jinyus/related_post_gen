Go:

    Benchmark 1: ./related
    Processing time (w/o IO): 21.69926ms
    Processing time (w/o IO): 21.683359ms
    Processing time (w/o IO): 21.522457ms
    Processing time (w/o IO): 21.613658ms
    Processing time (w/o IO): 22.231371ms
    Processing time (w/o IO): 21.630259ms
    Processing time (w/o IO): 21.587957ms
    Processing time (w/o IO): 22.033167ms
    Processing time (w/o IO): 21.656059ms
    Processing time (w/o IO): 23.635201ms
    Processing time (w/o IO): 22.215771ms
    Processing time (w/o IO): 21.878764ms
    Processing time (w/o IO): 21.605458ms
      Time (mean ± σ):      61.0 ms ±   1.4 ms    [User: 59.4 ms, System: 8.6 ms]
      Range (min … max):    58.0 ms …  62.7 ms    10 runs

Go Concurrent:

    Benchmark 1: ./related_concurrent
    Processing time (w/o IO): 11.08487ms
    Processing time (w/o IO): 12.385202ms
    Processing time (w/o IO): 10.692161ms
    Processing time (w/o IO): 10.65006ms
    Processing time (w/o IO): 11.005468ms
    Processing time (w/o IO): 10.733262ms
    Processing time (w/o IO): 10.573858ms
    Processing time (w/o IO): 10.744562ms
    Processing time (w/o IO): 10.887066ms
    Processing time (w/o IO): 10.704161ms
    Processing time (w/o IO): 10.750162ms
    Processing time (w/o IO): 10.731061ms
    Processing time (w/o IO): 10.704761ms
      Time (mean ± σ):      48.6 ms ±   0.8 ms    [User: 73.9 ms, System: 10.3 ms]
      Range (min … max):    47.2 ms …  50.0 ms    10 runs

Rust:

    Benchmark 1: ./target/release/rust
    Processing time (w/o IO): 23.744046ms
    Processing time (w/o IO): 23.467641ms
    Processing time (w/o IO): 23.570044ms
    Processing time (w/o IO): 23.492642ms
    Processing time (w/o IO): 23.484942ms
    Processing time (w/o IO): 23.451741ms
    Processing time (w/o IO): 23.646845ms
    Processing time (w/o IO): 23.488442ms
    Processing time (w/o IO): 23.475442ms
    Processing time (w/o IO): 23.512442ms
    Processing time (w/o IO): 23.527743ms
    Processing time (w/o IO): 23.677744ms
    Processing time (w/o IO): 24.225553ms
      Time (mean ± σ):      38.6 ms ±   0.4 ms    [User: 29.3 ms, System: 9.2 ms]
      Range (min … max):    38.1 ms …  39.5 ms    10 runs

Rust Concurrent:

    Benchmark 1: ./target/release/rust_rayon
    Processing time (w/o IO): 14.389613ms
    Processing time (w/o IO): 13.624301ms
    Processing time (w/o IO): 12.17398ms
    Processing time (w/o IO): 12.293582ms
    Processing time (w/o IO): 12.114079ms
    Processing time (w/o IO): 12.234081ms
    Processing time (w/o IO): 12.19268ms
    Processing time (w/o IO): 12.262481ms
    Processing time (w/o IO): 12.14418ms
    Processing time (w/o IO): 12.16838ms
    Processing time (w/o IO): 12.16648ms
    Processing time (w/o IO): 12.215681ms
    Processing time (w/o IO): 12.18538ms
      Time (mean ± σ):      28.9 ms ±   0.4 ms    [User: 32.4 ms, System: 8.5 ms]
      Range (min … max):    28.4 ms …  29.8 ms    10 runs

D:

    Benchmark 1: ./related
    Processing time (w/o IO): 25.271ms
    Processing time (w/o IO): 25.487ms
    Processing time (w/o IO): 25.503ms
    Processing time (w/o IO): 25.477ms
    Processing time (w/o IO): 25.101ms
    Processing time (w/o IO): 25.479ms
    Processing time (w/o IO): 25.456ms
    Processing time (w/o IO): 25.455ms
    Processing time (w/o IO): 25.806ms
    Processing time (w/o IO): 25.471ms
    Processing time (w/o IO): 25.567ms
    Processing time (w/o IO): 25.229ms
    Processing time (w/o IO): 25.534ms
      Time (mean ± σ):     103.5 ms ±   0.9 ms    [User: 94.2 ms, System: 10.6 ms]
      Range (min … max):   102.2 ms … 105.1 ms    10 runs

D (v2):

    Benchmark 1: ./related
    Processing time (w/o IO): 21.286ms
    Processing time (w/o IO): 21.535ms
    Processing time (w/o IO): 21.401ms
    Processing time (w/o IO): 21.162ms
    Processing time (w/o IO): 21.285ms
    Processing time (w/o IO): 21.709ms
    Processing time (w/o IO): 21.499ms
    Processing time (w/o IO): 21.562ms
    Processing time (w/o IO): 21.593ms
    Processing time (w/o IO): 21.657ms
    Processing time (w/o IO): 21.35ms
    Processing time (w/o IO): 21.597ms
    Processing time (w/o IO): 21.629ms
      Time (mean ± σ):      97.2 ms ±   0.6 ms    [User: 87.0 ms, System: 11.4 ms]
      Range (min … max):    96.2 ms …  98.1 ms    10 runs

D Concurrent:

    Benchmark 1: ./related_concurrent
    Processing time (w/o IO): 12.127ms
    Processing time (w/o IO): 12.141ms
    Processing time (w/o IO): 12.351ms
    Processing time (w/o IO): 12.05ms
    Processing time (w/o IO): 11.483ms
    Processing time (w/o IO): 11.719ms
    Processing time (w/o IO): 12.238ms
    Processing time (w/o IO): 11.418ms
    Processing time (w/o IO): 11.771ms
    Processing time (w/o IO): 11.718ms
    Processing time (w/o IO): 11.729ms
    Processing time (w/o IO): 11.81ms
    Processing time (w/o IO): 11.699ms
      Time (mean ± σ):      89.5 ms ±   0.8 ms    [User: 106.3 ms, System: 6.2 ms]
      Range (min … max):    88.8 ms …  91.2 ms    10 runs

C++:

    Benchmark 1: ./main
    Processing time (w/o IO): 23 ms
    Processing time (w/o IO): 23 ms
    Processing time (w/o IO): 23 ms
    Processing time (w/o IO): 23 ms
    Processing time (w/o IO): 23 ms
    Processing time (w/o IO): 23 ms
    Processing time (w/o IO): 22 ms
    Processing time (w/o IO): 23 ms
    Processing time (w/o IO): 23 ms
    Processing time (w/o IO): 23 ms
    Processing time (w/o IO): 23 ms
    Processing time (w/o IO): 23 ms
    Processing time (w/o IO): 23 ms
      Time (mean ± σ):     217.7 ms ±   1.5 ms    [User: 183.5 ms, System: 34.0 ms]
      Range (min … max):   215.7 ms … 220.3 ms    10 runs

C++ Concurrent:

    Benchmark 1: ./main_con
    Processing time (w/o IO): 13 ms
    Processing time (w/o IO): 14 ms
    Processing time (w/o IO): 12 ms
    Processing time (w/o IO): 12 ms
    Processing time (w/o IO): 13 ms
    Processing time (w/o IO): 15 ms
    Processing time (w/o IO): 13 ms
    Processing time (w/o IO): 15 ms
    Processing time (w/o IO): 13 ms
    Processing time (w/o IO): 14 ms
    Processing time (w/o IO): 13 ms
    Processing time (w/o IO): 14 ms
    Processing time (w/o IO): 14 ms
      Time (mean ± σ):     228.2 ms ±   4.0 ms    [User: 227.4 ms, System: 35.3 ms]
      Range (min … max):   225.2 ms … 239.0 ms    10 runs

Python:

    Benchmark 1: python3 ./related.py
    Processing time (w/o IO): 1.475s
    Processing time (w/o IO): 1.497s
    Processing time (w/o IO): 1.474s
    Processing time (w/o IO): 1.458s
    Processing time (w/o IO): 1.462s
    Processing time (w/o IO): 1.461s
    Processing time (w/o IO): 1.474s
    Processing time (w/o IO): 1.462s
    Processing time (w/o IO): 1.470s
    Processing time (w/o IO): 1.473s
    Processing time (w/o IO): 1.461s
    Processing time (w/o IO): 1.469s
    Processing time (w/o IO): 1.459s
      Time (mean ± σ):      1.534 s ±  0.006 s    [User: 1.512 s, System: 0.022 s]
      Range (min … max):    1.527 s …  1.544 s    10 runs

Numpy:

    Benchmark 1: python3 ./related_np.py
    Processing time (w/o IO): 348.2ms
    Processing time (w/o IO): 349.2ms
    Processing time (w/o IO): 349.8ms
    Processing time (w/o IO): 349.1ms
    Processing time (w/o IO): 351.2ms
    Processing time (w/o IO): 350.7ms
    Processing time (w/o IO): 350.4ms
    Processing time (w/o IO): 350.0ms
    Processing time (w/o IO): 349.4ms
    Processing time (w/o IO): 350.6ms
    Processing time (w/o IO): 352.2ms
    Processing time (w/o IO): 352.2ms
    Processing time (w/o IO): 349.9ms
      Time (mean ± σ):     644.5 ms ±   7.5 ms    [User: 843.1 ms, System: 411.1 ms]
      Range (min … max):   639.7 ms … 664.3 ms    10 runs

Crystal:

    Benchmark 1: ./crystal
    Processing time (w/o IO): 53.736593ms
    Processing time (w/o IO): 53.721692ms
    Processing time (w/o IO): 54.599804ms
    Processing time (w/o IO): 54.252999ms
    Processing time (w/o IO): 53.519589ms
    Processing time (w/o IO): 53.58899ms
    Processing time (w/o IO): 53.591491ms
    Processing time (w/o IO): 53.636691ms
    Processing time (w/o IO): 53.650191ms
    Processing time (w/o IO): 54.071897ms
    Processing time (w/o IO): 53.585491ms
    Processing time (w/o IO): 53.472289ms
    Processing time (w/o IO): 53.907095ms
      Time (mean ± σ):     104.0 ms ±   1.4 ms    [User: 92.6 ms, System: 11.3 ms]
      Range (min … max):   102.1 ms … 106.3 ms    10 runs

Zig:

    Benchmark 1: ./main
    Processing time (w/o IO): 23ms
    Processing time (w/o IO): 23ms
    Processing time (w/o IO): 23ms
    Processing time (w/o IO): 23ms
    Processing time (w/o IO): 23ms
    Processing time (w/o IO): 23ms
    Processing time (w/o IO): 23ms
    Processing time (w/o IO): 23ms
    Processing time (w/o IO): 23ms
    Processing time (w/o IO): 23ms
    Processing time (w/o IO): 23ms
    Processing time (w/o IO): 23ms
    Processing time (w/o IO): 23ms
      Time (mean ± σ):      70.2 ms ±   0.7 ms    [User: 62.3 ms, System: 7.8 ms]
      Range (min … max):    69.6 ms …  71.9 ms    10 runs

Julia:

    Benchmark 1: julia --startup-file=no --project=Related -e "using Related; main()"
    Processing time (w/o IO): 24.108439999999998ms
    Processing time (w/o IO): 24.046739000000002ms
    Processing time (w/o IO): 23.982339ms
    Processing time (w/o IO): 24.10124ms
    Processing time (w/o IO): 24.006338ms
    Processing time (w/o IO): 24.188349000000002ms
    Processing time (w/o IO): 24.007746ms
    Processing time (w/o IO): 24.144148ms
    Processing time (w/o IO): 25.021057ms
    Processing time (w/o IO): 24.427752ms
    Processing time (w/o IO): 23.971946000000003ms
    Processing time (w/o IO): 24.079448ms
    Processing time (w/o IO): 24.162647999999997ms
      Time (mean ± σ):     989.7 ms ±   9.7 ms    [User: 886.5 ms, System: 206.8 ms]
      Range (min … max):   977.9 ms … 1009.5 ms    10 runs

Julia HO:

    Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
    Processing time (w/o IO): 8 milliseconds
    Processing time (w/o IO): 8 milliseconds
    Processing time (w/o IO): 8 milliseconds
    Processing time (w/o IO): 8 milliseconds
    Processing time (w/o IO): 7 milliseconds
    Processing time (w/o IO): 8 milliseconds
    Processing time (w/o IO): 8 milliseconds
    Processing time (w/o IO): 8 milliseconds
    Processing time (w/o IO): 8 milliseconds
    Processing time (w/o IO): 8 milliseconds
    Processing time (w/o IO): 8 milliseconds
    Processing time (w/o IO): 8 milliseconds
    Processing time (w/o IO): 8 milliseconds
      Time (mean ± σ):      1.000 s ±  0.017 s    [User: 0.886 s, System: 0.217 s]
      Range (min … max):    0.977 s …  1.018 s    10 runs

Julia Concurrent:

    Benchmark 1: julia --startup-file=no --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
    Processing time (w/o IO): 12.997308ms
    Processing time (w/o IO): 13.660005ms
    Processing time (w/o IO): 16.598327ms
    Processing time (w/o IO): 12.667097ms
    Processing time (w/o IO): 13.316101999999999ms
    Processing time (w/o IO): 12.926499ms
    Processing time (w/o IO): 12.9965ms
    Processing time (w/o IO): 13.688706ms
    Processing time (w/o IO): 14.054208000000001ms
    Processing time (w/o IO): 14.48549ms
    Processing time (w/o IO): 14.241287ms
    Processing time (w/o IO): 14.997096999999998ms
    Processing time (w/o IO): 12.912469ms
      Time (mean ± σ):     993.1 ms ±  16.9 ms    [User: 912.2 ms, System: 224.4 ms]
      Range (min … max):   966.9 ms … 1015.5 ms    10 runs

Odin:

    Benchmark 1: ./related
    Processing time (w/o IO):  47.793827ms
    Processing time (w/o IO):  47.876728ms
    Processing time (w/o IO):  47.832728ms
    Processing time (w/o IO):  47.754526ms
    Processing time (w/o IO):  47.526208ms
    Processing time (w/o IO):  47.70931ms
    Processing time (w/o IO):  47.68911ms
    Processing time (w/o IO):  47.461307ms
    Processing time (w/o IO):  47.261405ms
    Processing time (w/o IO):  47.63621ms
    Processing time (w/o IO):  47.885112ms
    Processing time (w/o IO):  47.338106ms
    Processing time (w/o IO):  47.938213ms
      Time (mean ± σ):     266.7 ms ±   1.8 ms    [User: 255.5 ms, System: 11.1 ms]
      Range (min … max):   265.2 ms … 271.5 ms    10 runs

Vlang:

    Benchmark 1: ./related
    Processing time (w/o IO): 49.259ms
    Processing time (w/o IO): 48.768ms
    Processing time (w/o IO): 48.391ms
    Processing time (w/o IO): 48.709ms
    Processing time (w/o IO): 49.092ms
    Processing time (w/o IO): 48.424ms
    Processing time (w/o IO): 49.185ms
    Processing time (w/o IO): 48.784ms
    Processing time (w/o IO): 48.970ms
    Processing time (w/o IO): 48.331ms
    Processing time (w/o IO): 48.824ms
    Processing time (w/o IO): 48.678ms
    Processing time (w/o IO): 49.231ms
      Time (mean ± σ):     376.5 ms ±   2.1 ms    [User: 350.6 ms, System: 25.9 ms]
      Range (min … max):   372.1 ms … 378.7 ms    10 runs

Dart VM:

    Benchmark 1: dart related.dart
    Processing time (w/o IO): 168ms
    Processing time (w/o IO): 176ms
    Processing time (w/o IO): 137ms
    Processing time (w/o IO): 169ms
    Processing time (w/o IO): 176ms
    Processing time (w/o IO): 169ms
    Processing time (w/o IO): 131ms
    Processing time (w/o IO): 169ms
    Processing time (w/o IO): 169ms
    Processing time (w/o IO): 169ms
    Processing time (w/o IO): 177ms
    Processing time (w/o IO): 169ms
    Processing time (w/o IO): 176ms
      Time (mean ± σ):     546.9 ms ±  16.4 ms    [User: 647.4 ms, System: 115.3 ms]
      Range (min … max):   511.8 ms … 572.4 ms    10 runs

Dart AOT:

    Benchmark 1: ./related
    Processing time (w/o IO): 130ms
    Processing time (w/o IO): 130ms
    Processing time (w/o IO): 130ms
    Processing time (w/o IO): 130ms
    Processing time (w/o IO): 130ms
    Processing time (w/o IO): 130ms
    Processing time (w/o IO): 130ms
    Processing time (w/o IO): 130ms
    Processing time (w/o IO): 130ms
    Processing time (w/o IO): 130ms
    Processing time (w/o IO): 130ms
    Processing time (w/o IO): 130ms
    Processing time (w/o IO): 129ms
      Time (mean ± σ):     254.6 ms ±   0.8 ms    [User: 236.4 ms, System: 22.7 ms]
      Range (min … max):   252.8 ms … 255.4 ms    10 runs

Swift:

    Benchmark 1: ./.build/release/related
    Processing time (w/o IO): 50.82905292510986ms
    Processing time (w/o IO): 52.651047706604004ms
    Processing time (w/o IO): 50.570011138916016ms
    Processing time (w/o IO): 52.05810070037842ms
    Processing time (w/o IO): 50.60899257659912ms
    Processing time (w/o IO): 51.04506015777588ms
    Processing time (w/o IO): 51.37598514556885ms
    Processing time (w/o IO): 51.22196674346924ms
    Processing time (w/o IO): 51.28908157348633ms
    Processing time (w/o IO): 52.05094814300537ms
    Processing time (w/o IO): 51.54705047607422ms
    Processing time (w/o IO): 50.86994171142578ms
    Processing time (w/o IO): 51.97596549987793ms
      Time (mean ± σ):     414.6 ms ±  10.1 ms    [User: 357.6 ms, System: 35.1 ms]
      Range (min … max):   400.5 ms … 428.8 ms    10 runs

Swift Concurrent:

    Benchmark 1: ./.build/release/related
    Processing time (w/o IO): 31.577591ms
    Processing time (w/o IO): 32.215297ms
    Processing time (w/o IO): 31.366189ms
    Processing time (w/o IO): 31.369689ms
    Processing time (w/o IO): 31.556392ms
    Processing time (w/o IO): 32.214397ms
    Processing time (w/o IO): 31.40569ms
    Processing time (w/o IO): 31.46819ms
    Processing time (w/o IO): 31.103887ms
    Processing time (w/o IO): 32.186197ms
    Processing time (w/o IO): 31.196288ms
    Processing time (w/o IO): 31.807194ms
    Processing time (w/o IO): 31.989795ms
      Time (mean ± σ):     392.7 ms ±  11.7 ms    [User: 419.4 ms, System: 39.2 ms]
      Range (min … max):   383.3 ms … 423.3 ms    10 runs

JS (Node):

    Benchmark 1: node node.js
    Processing time (w/o IO): 218ms
    Processing time (w/o IO): 150ms
    Processing time (w/o IO): 200ms
    Processing time (w/o IO): 154ms
    Processing time (w/o IO): 209ms
    Processing time (w/o IO): 150ms
    Processing time (w/o IO): 151ms
    Processing time (w/o IO): 151ms
    Processing time (w/o IO): 150ms
    Processing time (w/o IO): 153ms
    Processing time (w/o IO): 152ms
    Processing time (w/o IO): 151ms
    Processing time (w/o IO): 163ms
      Time (mean ± σ):     332.1 ms ±  20.0 ms    [User: 330.4 ms, System: 64.7 ms]
      Range (min … max):   322.9 ms … 387.7 ms    10 runs

JS (Bun):

    Benchmark 1: bun bun.js
    Processing time (w/o IO): 131ms
    Processing time (w/o IO): 126ms
    Processing time (w/o IO): 111ms
    Processing time (w/o IO): 112ms
    Processing time (w/o IO): 133ms
    Processing time (w/o IO): 119ms
    Processing time (w/o IO): 123ms
    Processing time (w/o IO): 119ms
    Processing time (w/o IO): 113ms
    Processing time (w/o IO): 125ms
    Processing time (w/o IO): 125ms
    Processing time (w/o IO): 130ms
    Processing time (w/o IO): 125ms
      Time (mean ± σ):     178.1 ms ±   7.2 ms    [User: 201.9 ms, System: 32.6 ms]
      Range (min … max):   167.9 ms … 190.2 ms    10 runs

JS (Deno):

    Benchmark 1: deno run --allow-read --allow-write deno.js
    Processing time (w/o IO): 182ms
    Processing time (w/o IO): 184ms
    Processing time (w/o IO): 165ms
    Processing time (w/o IO): 180ms
    Processing time (w/o IO): 178ms
    Processing time (w/o IO): 169ms
    Processing time (w/o IO): 179ms
    Processing time (w/o IO): 178ms
    Processing time (w/o IO): 182ms
    Processing time (w/o IO): 177ms
    Processing time (w/o IO): 184ms
    Processing time (w/o IO): 167ms
    Processing time (w/o IO): 183ms
      Time (mean ± σ):     246.7 ms ±   5.9 ms    [User: 240.2 ms, System: 32.6 ms]
      Range (min … max):   235.5 ms … 253.4 ms    10 runs

Java (JIT):

    Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
    Processing time (w/o IO): 52 ms
    Processing time (w/o IO): 52 ms
    Processing time (w/o IO): 52 ms
    Processing time (w/o IO): 52 ms
    Processing time (w/o IO): 54 ms
    Processing time (w/o IO): 52 ms
    Processing time (w/o IO): 55 ms
    Processing time (w/o IO): 55 ms
    Processing time (w/o IO): 58 ms
    Processing time (w/o IO): 53 ms
    Processing time (w/o IO): 55 ms
    Processing time (w/o IO): 52 ms
    Processing time (w/o IO): 55 ms
      Time (mean ± σ):     387.5 ms ±  10.0 ms    [User: 688.8 ms, System: 51.9 ms]
      Range (min … max):   376.1 ms … 406.5 ms    10 runs

Java (GraalVM):

    Benchmark 1: ./target/related
    Processing time (w/o IO): 57 ms
    Processing time (w/o IO): 57 ms
    Processing time (w/o IO): 57 ms
    Processing time (w/o IO): 57 ms
    Processing time (w/o IO): 57 ms
    Processing time (w/o IO): 57 ms
    Processing time (w/o IO): 57 ms
    Processing time (w/o IO): 56 ms
    Processing time (w/o IO): 57 ms
    Processing time (w/o IO): 57 ms
    Processing time (w/o IO): 56 ms
    Processing time (w/o IO): 56 ms
    Processing time (w/o IO): 56 ms
      Time (mean ± σ):     142.9 ms ±   0.9 ms    [User: 130.5 ms, System: 12.4 ms]
      Range (min … max):   141.7 ms … 145.0 ms    10 runs

Java (GraalVM) Concurrent:

    Benchmark 1: ./target/related
    Processing time (w/o IO): 39 ms
    Processing time (w/o IO): 39 ms
    Processing time (w/o IO): 39 ms
    Processing time (w/o IO): 49 ms
    Processing time (w/o IO): 40 ms
    Processing time (w/o IO): 39 ms
    Processing time (w/o IO): 39 ms
    Processing time (w/o IO): 39 ms
    Processing time (w/o IO): 39 ms
    Processing time (w/o IO): 40 ms
    Processing time (w/o IO): 39 ms
    Processing time (w/o IO): 38 ms
    Processing time (w/o IO): 39 ms
      Time (mean ± σ):      69.5 ms ±   3.7 ms    [User: 114.2 ms, System: 12.5 ms]
      Range (min … max):    66.2 ms …  79.6 ms    10 runs

Nim:

    Benchmark 1: ./related
    Processing time (w/o IO): 22.251ms
    Processing time (w/o IO): 22.06ms
    Processing time (w/o IO): 22.086ms
    Processing time (w/o IO): 21.946ms
    Processing time (w/o IO): 21.993ms
    Processing time (w/o IO): 22.145ms
    Processing time (w/o IO): 22.031ms
    Processing time (w/o IO): 22.026ms
    Processing time (w/o IO): 22.097ms
    Processing time (w/o IO): 22.008ms
    Processing time (w/o IO): 21.963ms
    Processing time (w/o IO): 22.1ms
    Processing time (w/o IO): 22.023ms
      Time (mean ± σ):      49.9 ms ±   0.4 ms    [User: 41.3 ms, System: 8.5 ms]
      Range (min … max):    49.5 ms …  50.7 ms    10 runs

Nim Concurrent:

    Benchmark 1: ./build/related_con
    Processing time (w/o IO): 12.274ms
    Processing time (w/o IO): 13.079ms
    Processing time (w/o IO): 12.549ms
    Processing time (w/o IO): 13.0ms
    Processing time (w/o IO): 12.643ms
    Processing time (w/o IO): 12.346ms
    Processing time (w/o IO): 12.58ms
    Processing time (w/o IO): 12.475ms
    Processing time (w/o IO): 12.355ms
    Processing time (w/o IO): 13.447ms
    Processing time (w/o IO): 12.828ms
    Processing time (w/o IO): 12.293ms
    Processing time (w/o IO): 12.463ms
      Time (mean ± σ):      38.7 ms ±   1.4 ms    [User: 65.9 ms, System: 6.7 ms]
      Range (min … max):    37.0 ms …  41.9 ms    10 runs

F# (JIT):

    Benchmark 1: ./bin/release/net8.0/fsharp
    Processing time (w/o IO): 44.2469ms
    Processing time (w/o IO): 44.2379ms
    Processing time (w/o IO): 44.2257ms
    Processing time (w/o IO): 44.0886ms
    Processing time (w/o IO): 44.026ms
    Processing time (w/o IO): 44.2627ms
    Processing time (w/o IO): 44.2123ms
    Processing time (w/o IO): 44.2238ms
    Processing time (w/o IO): 44.2057ms
    Processing time (w/o IO): 44.0758ms
    Processing time (w/o IO): 44.1271ms
    Processing time (w/o IO): 44.157ms
    Processing time (w/o IO): 43.884ms
    	Time (mean ± σ):     927.3 ms ±   7.0 ms    [User: 1027.1 ms, System: 106.9 ms]
    	Range (min … max):   916.6 ms … 939.0 ms    10 runs

F# Concurrent (JIT):

    Benchmark 1: ./bin/release/net8.0/fsharp_con
    Processing time (w/o IO): 20ms
    Processing time (w/o IO): 20ms
    Processing time (w/o IO): 20ms
    Processing time (w/o IO): 20ms
    Processing time (w/o IO): 20ms
    Processing time (w/o IO): 20ms
    Processing time (w/o IO): 20ms
    Processing time (w/o IO): 20ms
    Processing time (w/o IO): 20ms
    Processing time (w/o IO): 20ms
    Processing time (w/o IO): 20ms
    Processing time (w/o IO): 20ms
    Processing time (w/o IO): 20ms
      Time (mean ± σ):     926.4 ms ±   8.2 ms    [User: 1097.7 ms, System: 102.9 ms]
      Range (min … max):   915.3 ms … 941.0 ms    10 runs

F# Concurrent (AOT):

    Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
    Processing time (w/o IO): 18ms
    Processing time (w/o IO): 19ms
    Processing time (w/o IO): 18ms
    Processing time (w/o IO): 18ms
    Processing time (w/o IO): 18ms
    Processing time (w/o IO): 19ms
    Processing time (w/o IO): 19ms
    Processing time (w/o IO): 18ms
    Processing time (w/o IO): 18ms
    Processing time (w/o IO): 18ms
    Processing time (w/o IO): 18ms
    Processing time (w/o IO): 18ms
    Processing time (w/o IO): 18ms
      Time (mean ± σ):     723.1 ms ±   2.7 ms    [User: 809.3 ms, System: 89.3 ms]
      Range (min … max):   719.0 ms … 727.6 ms    10 runs

F# (AOT):

    Benchmark 1: ./bin/release/net8.0/aot/fsharp
    Processing time (w/o IO): 26.9377ms
    Processing time (w/o IO): 27.066ms
    Processing time (w/o IO): 26.5473ms
    Processing time (w/o IO): 27.7942ms
    Processing time (w/o IO): 26.7819ms
    Processing time (w/o IO): 26.5473ms
    Processing time (w/o IO): 26.8622ms
    Processing time (w/o IO): 26.5402ms
    Processing time (w/o IO): 31.8782ms
    Processing time (w/o IO): 26.4349ms
    Processing time (w/o IO): 26.5607ms
    Processing time (w/o IO): 26.576ms
    Processing time (w/o IO): 26.5913ms
      Time (mean ± σ):     730.5 ms ±   5.8 ms    [User: 709.3 ms, System: 78.7 ms]
      Range (min … max):   724.7 ms … 741.9 ms    10 runs

C# (JIT):

    Benchmark 1: ./bin/release/net8.0/jit/related
    Processing time (w/o IO): 27.1878ms
    Processing time (w/o IO): 27.2932ms
    Processing time (w/o IO): 27.2059ms
    Processing time (w/o IO): 28.4661ms
    Processing time (w/o IO): 27.0913ms
    Processing time (w/o IO): 27.4165ms
    Processing time (w/o IO): 26.7837ms
    Processing time (w/o IO): 27.1936ms
    Processing time (w/o IO): 27.3712ms
    Processing time (w/o IO): 27.31ms
    Processing time (w/o IO): 26.9751ms
    Processing time (w/o IO): 27.9085ms
    Processing time (w/o IO): 27.1347ms
      Time (mean ± σ):     213.3 ms ±   5.8 ms    [User: 162.7 ms, System: 44.0 ms]
      Range (min … max):   207.8 ms … 226.0 ms    10 runs

C# (AOT):

    Benchmark 1: ./bin/release/net8.0/aot/related
    Processing time (w/o IO): 26.2624ms
    Processing time (w/o IO): 26.1045ms
    Processing time (w/o IO): 26.2531ms
    Processing time (w/o IO): 25.9838ms
    Processing time (w/o IO): 27.9539ms
    Processing time (w/o IO): 27.1858ms
    Processing time (w/o IO): 26.5029ms
    Processing time (w/o IO): 26.2466ms
    Processing time (w/o IO): 26.976ms
    Processing time (w/o IO): 27.4879ms
    Processing time (w/o IO): 26.2087ms
    Processing time (w/o IO): 26.118ms
    Processing time (w/o IO): 26.422ms
      Time (mean ± σ):     102.4 ms ±   2.2 ms    [User: 97.1 ms, System: 22.9 ms]
      Range (min … max):   100.5 ms … 107.0 ms    10 runs

C# Concurrent (JIT):

    Benchmark 1: ./bin/release/net8.0/jit/related
    Processing time (w/o IO): 13.4397ms
    Processing time (w/o IO): 13.2434ms
    Processing time (w/o IO): 13.6563ms
    Processing time (w/o IO): 14.3671ms
    Processing time (w/o IO): 14.051ms
    Processing time (w/o IO): 13.4978ms
    Processing time (w/o IO): 13.724ms
    Processing time (w/o IO): 13.7192ms
    Processing time (w/o IO): 13.539ms
    Processing time (w/o IO): 14.1931ms
    Processing time (w/o IO): 14.9847ms
    Processing time (w/o IO): 14.3758ms
    Processing time (w/o IO): 13.6697ms
      Time (mean ± σ):     212.8 ms ±  12.4 ms    [User: 216.8 ms, System: 39.5 ms]
      Range (min … max):   195.3 ms … 231.7 ms    10 runs

C# Concurrent (AOT):

    Benchmark 1: ./bin/release/net8.0/aot/related
    Processing time (w/o IO): 10.6591ms
    Processing time (w/o IO): 10.7828ms
    Processing time (w/o IO): 10.8043ms
    Processing time (w/o IO): 10.9051ms
    Processing time (w/o IO): 10.6505ms
    Processing time (w/o IO): 10.8476ms
    Processing time (w/o IO): 10.8814ms
    Processing time (w/o IO): 10.9101ms
    Processing time (w/o IO): 10.8564ms
    Processing time (w/o IO): 10.7059ms
    Processing time (w/o IO): 11.0049ms
    Processing time (w/o IO): 10.9383ms
    Processing time (w/o IO): 10.8879ms
      Time (mean ± σ):      72.4 ms ±   2.0 ms    [User: 129.2 ms, System: 22.6 ms]
      Range (min … max):    69.9 ms …  76.4 ms    10 runs

LuaJIT:

    Benchmark 1: luajit only_lua.lua
    Processing time (w/o IO):	115.69809913635	ms
    Processing time (w/o IO):	87.966918945313	ms
    Processing time (w/o IO):	114.33601379395	ms
    Processing time (w/o IO):	88.228940963745	ms
    Processing time (w/o IO):	114.91298675537	ms
    Processing time (w/o IO):	106.99391365051	ms
    Processing time (w/o IO):	88.324069976807	ms
    Processing time (w/o IO):	112.73503303528	ms
    Processing time (w/o IO):	87.939023971558	ms
    Processing time (w/o IO):	104.93898391724	ms
    Processing time (w/o IO):	114.37010765076	ms
    Processing time (w/o IO):	113.31391334534	ms
    Processing time (w/o IO):	87.384939193726	ms
      Time (mean ± σ):     340.1 ms ±  14.1 ms    [User: 322.2 ms, System: 17.8 ms]
      Range (min … max):   322.7 ms … 361.1 ms    10 runs

LuaJIT (JIT OFF):

    Benchmark 1: luajit -joff only_lua.lua
    Processing time (w/o IO):	671.21696472168	ms
    Processing time (w/o IO):	669.63696479797	ms
    Processing time (w/o IO):	668.02883148193	ms
    Processing time (w/o IO):	668.72596740723	ms
    Processing time (w/o IO):	672.14012145996	ms
    Processing time (w/o IO):	718.90306472778	ms
    Processing time (w/o IO):	669.105052948	ms
    Processing time (w/o IO):	669.5818901062	ms
    Processing time (w/o IO):	670.21703720093	ms
    Processing time (w/o IO):	667.14286804199	ms
    Processing time (w/o IO):	672.0860004425	ms
    Processing time (w/o IO):	669.52300071716	ms
    Processing time (w/o IO):	667.18792915344	ms
      Time (mean ± σ):     992.1 ms ±  18.2 ms    [User: 973.3 ms, System: 17.1 ms]
      Range (min … max):   977.1 ms … 1038.7 ms    10 runs

Lua:

    Benchmark 1: lua only_lua.lua
    Processing time (w/o IO):	1104.189157486	ms
    Processing time (w/o IO):	1090.1749134064	ms
    Processing time (w/o IO):	1092.2160148621	ms
    Processing time (w/o IO):	1090.7311439514	ms
    Processing time (w/o IO):	1090.6548500061	ms
    Processing time (w/o IO):	1096.4779853821	ms
    Processing time (w/o IO):	1092.796087265	ms
    Processing time (w/o IO):	1089.3840789795	ms
    Processing time (w/o IO):	1091.7580127716	ms
    Processing time (w/o IO):	1090.6488895416	ms
    Processing time (w/o IO):	1092.2820568085	ms
    Processing time (w/o IO):	1096.8811511993	ms
    Processing time (w/o IO):	1093.2459831238	ms
      Time (mean ± σ):      1.519 s ±  0.005 s    [User: 1.504 s, System: 0.015 s]
      Range (min … max):    1.511 s …  1.529 s    10 runs

ocaml:

    Benchmark 1: ./_build/default/bin/main.exe
    Processing time (w/o IO): 141ms
    Processing time (w/o IO): 138ms
    Processing time (w/o IO): 138ms
    Processing time (w/o IO): 138ms
    Processing time (w/o IO): 135ms
    Processing time (w/o IO): 141ms
    Processing time (w/o IO): 142ms
    Processing time (w/o IO): 136ms
    Processing time (w/o IO): 140ms
    Processing time (w/o IO): 140ms
    Processing time (w/o IO): 136ms
    Processing time (w/o IO): 138ms
    Processing time (w/o IO): 138ms
      Time (mean ± σ):     221.6 ms ±   3.0 ms    [User: 194.0 ms, System: 27.4 ms]
      Range (min … max):   216.7 ms … 227.2 ms    10 runs

Erlang:

    Benchmark 1: _build/default/bin/related_erl
    Processing time (w/o IO): 0.881899 s
    Processing time (w/o IO): 0.883036 s
    Processing time (w/o IO): 0.883693 s
    Processing time (w/o IO): 0.880870 s
    Processing time (w/o IO): 0.885011 s
    Processing time (w/o IO): 0.878575 s
    Processing time (w/o IO): 0.888584 s
    Processing time (w/o IO): 0.880324 s
    Processing time (w/o IO): 0.887592 s
    Processing time (w/o IO): 0.891608 s
    Processing time (w/o IO): 0.885295 s
    Processing time (w/o IO): 0.903519 s
    Processing time (w/o IO): 0.890364 s
      Time (mean ± σ):      1.242 s ±  0.011 s    [User: 1.177 s, System: 0.101 s]
      Range (min … max):    1.229 s …  1.266 s    10 runs

Racket:

    Benchmark 1: racket related.rkt
    Processing time (w/o IO): 233.83ms
    Processing time (w/o IO): 231.83ms
    Processing time (w/o IO): 233.23ms
    Processing time (w/o IO): 232.88ms
    Processing time (w/o IO): 231.38ms
    Processing time (w/o IO): 235.53ms
    Processing time (w/o IO): 227.38ms
    Processing time (w/o IO): 227.40ms
    Processing time (w/o IO): 235.05ms
    Processing time (w/o IO): 235.31ms
    Processing time (w/o IO): 233.71ms
    Processing time (w/o IO): 239.36ms
    Processing time (w/o IO): 235.41ms
      Time (mean ± σ):     702.5 ms ±   6.1 ms    [User: 622.6 ms, System: 79.3 ms]
      Range (min … max):   694.7 ms … 713.1 ms    10 runs

Lobster (JIT):

    Benchmark 1: lobster related.lobster
    Processing time (w/o IO): 1.3971s
    Processing time (w/o IO): 1.35293s
    Processing time (w/o IO): 1.358306s
    Processing time (w/o IO): 1.365786s
    Processing time (w/o IO): 1.357828s
    Processing time (w/o IO): 1.350931s
    Processing time (w/o IO): 1.349124s
    Processing time (w/o IO): 1.362852s
    Processing time (w/o IO): 1.356866s
    Processing time (w/o IO): 1.36584s
    Processing time (w/o IO): 1.350561s
    Processing time (w/o IO): 1.36277s
    Processing time (w/o IO): 1.351525s
      Time (mean ± σ):      1.444 s ±  0.007 s    [User: 1.425 s, System: 0.019 s]
      Range (min … max):    1.437 s …  1.456 s    10 runs

Lobster (C++):

    Benchmark 1: compiled_lobster
    Processing time (w/o IO): 0.220243s
    Processing time (w/o IO): 0.18315s
    Processing time (w/o IO): 0.184521s
    Processing time (w/o IO): 0.183723s
    Processing time (w/o IO): 0.185013s
    Processing time (w/o IO): 0.186305s
    Processing time (w/o IO): 0.185165s
    Processing time (w/o IO): 0.185815s
    Processing time (w/o IO): 0.185163s
    Processing time (w/o IO): 0.185912s
    Processing time (w/o IO): 0.185394s
    Processing time (w/o IO): 0.186273s
    Processing time (w/o IO): 0.185121s
      Time (mean ± σ):     271.5 ms ±   1.2 ms    [User: 253.1 ms, System: 18.0 ms]
      Range (min … max):   269.9 ms … 273.3 ms    10 runs

Scala Native:

    Benchmark 1: ./target/scala-3.3.1/scala_native-out
    Processing time (w/o IO): 252ms
    Processing time (w/o IO): 259ms
    Processing time (w/o IO): 242ms
    Processing time (w/o IO): 252ms
    Processing time (w/o IO): 243ms
    Processing time (w/o IO): 243ms
    Processing time (w/o IO): 258ms
    Processing time (w/o IO): 242ms
    Processing time (w/o IO): 260ms
    Processing time (w/o IO): 266ms
    Processing time (w/o IO): 245ms
    Processing time (w/o IO): 269ms
    Processing time (w/o IO): 246ms
      Time (mean ± σ):     329.5 ms ±  12.6 ms    [User: 307.1 ms, System: 77.3 ms]
      Range (min … max):   317.6 ms … 348.9 ms    10 runs

Inko:

    Benchmark 1: ./build/aggressive/main
    Processing time (w/o IO): 9885 ms
    Processing time (w/o IO): 9916 ms
    Processing time (w/o IO): 9921 ms
    Processing time (w/o IO): 9926 ms
    Processing time (w/o IO): 9911 ms
    Processing time (w/o IO): 9934 ms
    Processing time (w/o IO): 9897 ms
    Processing time (w/o IO): 9936 ms
    Processing time (w/o IO): 9958 ms
    Processing time (w/o IO): 9938 ms
    Processing time (w/o IO): 9908 ms
    Processing time (w/o IO): 9900 ms
    Processing time (w/o IO): 9927 ms
      Time (mean ± σ):     11.610 s ±  0.017 s    [User: 11.612 s, System: 0.096 s]
      Range (min … max):   11.583 s … 11.635 s    10 runs

Go:

    Benchmark 1: ./related
    Processing time (w/o IO): 307.217011ms
    Processing time (w/o IO): 310.122574ms
    Processing time (w/o IO): 310.89489ms
      Time (mean ± σ):     451.9 ms ±   3.0 ms    [User: 432.4 ms, System: 41.9 ms]
      Range (min … max):   449.8 ms … 453.9 ms    2 runs

Go Concurrent:

    Benchmark 1: ./related_concurrent
    Processing time (w/o IO): 147.373591ms
    Processing time (w/o IO): 146.311765ms
    Processing time (w/o IO): 146.052959ms
      Time (mean ± σ):     287.4 ms ±   0.2 ms    [User: 708.3 ms, System: 31.6 ms]
      Range (min … max):   287.2 ms … 287.6 ms    2 runs

Rust:

    Benchmark 1: ./target/release/rust
    Processing time (w/o IO): 341.79316ms
    Processing time (w/o IO): 340.341348ms
    Processing time (w/o IO): 341.275559ms
      Time (mean ± σ):     400.6 ms ±   0.6 ms    [User: 377.0 ms, System: 23.5 ms]
      Range (min … max):   400.1 ms … 401.0 ms    2 runs

Rust Concurrent:

    Benchmark 1: ./target/release/rust_rayon
    Processing time (w/o IO): 173.817547ms
    Processing time (w/o IO): 175.698245ms
    Processing time (w/o IO): 173.916547ms
      Time (mean ± σ):     236.1 ms ±   1.7 ms    [User: 383.7 ms, System: 23.5 ms]
      Range (min … max):   235.0 ms … 237.3 ms    2 runs

D:

    Benchmark 1: ./related
    Processing time (w/o IO): 325.635ms
    Processing time (w/o IO): 325.095ms
    Processing time (w/o IO): 324.89ms
      Time (mean ± σ):     619.2 ms ±   0.1 ms    [User: 583.4 ms, System: 39.4 ms]
      Range (min … max):   619.1 ms … 619.3 ms    2 runs

D (v2):

    Benchmark 1: ./related
    Processing time (w/o IO): 255.487ms
    Processing time (w/o IO): 255.368ms
    Processing time (w/o IO): 267.476ms
      Time (mean ± σ):     554.6 ms ±  10.5 ms    [User: 516.8 ms, System: 39.5 ms]
      Range (min … max):   547.2 ms … 562.1 ms    2 runs

D Concurrent:

    Benchmark 1: ./related_concurrent
    Processing time (w/o IO): 113.611ms
    Processing time (w/o IO): 114.553ms
    Processing time (w/o IO): 114.632ms
      Time (mean ± σ):     407.5 ms ±   0.1 ms    [User: 676.4 ms, System: 23.2 ms]
      Range (min … max):   407.5 ms … 407.6 ms    2 runs

C++:

    Benchmark 1: ./main
    Processing time (w/o IO): 321 ms
    Processing time (w/o IO): 317 ms
    Processing time (w/o IO): 319 ms
      Time (mean ± σ):      1.093 s ±  0.001 s    [User: 0.988 s, System: 0.105 s]
      Range (min … max):    1.093 s …  1.094 s    2 runs

C++ Concurrent:

    Benchmark 1: ./main_con
    Processing time (w/o IO): 165 ms
    Processing time (w/o IO): 169 ms
    Processing time (w/o IO): 164 ms
      Time (mean ± σ):      1.026 s ±  0.007 s    [User: 1.405 s, System: 0.102 s]
      Range (min … max):    1.021 s …  1.031 s    2 runs

Python:

    Benchmark 1: python3 ./related.py
    Processing time (w/o IO): 23.807s
    Processing time (w/o IO): 23.587s
      Time (abs ≡):        23.751 s               [User: 23.667 s, System: 0.075 s]

Numpy:

    Benchmark 1: python3 ./related_np.py
    Processing time (w/o IO): 6.312s
    Processing time (w/o IO): 6.479s
    Processing time (w/o IO): 6.585s
      Time (mean ± σ):      7.022 s ±  0.073 s    [User: 4.953 s, System: 2.685 s]
      Range (min … max):    6.970 s …  7.073 s    2 runs

Crystal:

    Benchmark 1: ./crystal
    Processing time (w/o IO): 813.68942ms
    Processing time (w/o IO): 815.882538ms
    Processing time (w/o IO): 813.462519ms
      Time (mean ± σ):      1.029 s ±  0.015 s    [User: 0.975 s, System: 0.045 s]
      Range (min … max):    1.018 s …  1.039 s    2 runs

Zig:

    Benchmark 1: ./main
    Processing time (w/o IO): 339ms
    Processing time (w/o IO): 339ms
    Processing time (w/o IO): 340ms
      Time (mean ± σ):     529.5 ms ±   0.0 ms    [User: 507.9 ms, System: 21.5 ms]
      Range (min … max):   529.5 ms … 529.5 ms    2 runs

Julia:

    Benchmark 1: julia --startup-file=no --project=Related -e "using Related; main()"
    Processing time (w/o IO): 366.015277ms
    Processing time (w/o IO): 366.675882ms
    Processing time (w/o IO): 365.262171ms
      Time (mean ± σ):      1.501 s ±  0.004 s    [User: 1.333 s, System: 0.272 s]
      Range (min … max):    1.499 s …  1.504 s    2 runs

Julia HO:

    Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
    Processing time (w/o IO): 52 milliseconds
    Processing time (w/o IO): 65 milliseconds
    Processing time (w/o IO): 51 milliseconds
      Time (mean ± σ):      1.151 s ±  0.008 s    [User: 0.980 s, System: 0.274 s]
      Range (min … max):    1.145 s …  1.157 s    2 runs

Julia Concurrent:

    Benchmark 1: julia --startup-file=no --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
    Processing time (w/o IO): 182.057974ms
    Processing time (w/o IO): 170.649989ms
    Processing time (w/o IO): 171.818416ms
      Time (mean ± σ):      1.283 s ±  0.024 s    [User: 1.623 s, System: 0.260 s]
      Range (min … max):    1.266 s …  1.300 s    2 runs

Odin:

    Benchmark 1: ./related
    Processing time (w/o IO):  576.106815ms
    Processing time (w/o IO):  572.499788ms
    Processing time (w/o IO):  574.990981ms
      Time (mean ± σ):      1.366 s ±  0.002 s    [User: 1.342 s, System: 0.021 s]
      Range (min … max):    1.364 s …  1.367 s    2 runs

Vlang:

    Benchmark 1: ./related
    Processing time (w/o IO): 740.569ms
    Processing time (w/o IO): 750.616ms
    Processing time (w/o IO): 740.595ms
      Time (mean ± σ):     10.287 s ±  0.012 s    [User: 10.145 s, System: 0.141 s]
      Range (min … max):   10.279 s … 10.296 s    2 runs

Dart VM:

    Benchmark 1: dart related.dart
    Processing time (w/o IO): 2245ms
    Processing time (w/o IO): 2219ms
    Processing time (w/o IO): 2239ms
      Time (mean ± σ):      2.905 s ±  0.033 s    [User: 3.095 s, System: 0.163 s]
      Range (min … max):    2.882 s …  2.929 s    2 runs

Dart AOT:

    Benchmark 1: ./related
    Processing time (w/o IO): 2021ms
    Processing time (w/o IO): 2001ms
    Processing time (w/o IO): 2020ms
      Time (mean ± σ):      2.497 s ±  0.011 s    [User: 2.455 s, System: 0.069 s]
      Range (min … max):    2.489 s …  2.505 s    2 runs

Swift:

    Benchmark 1: ./.build/release/related
    Processing time (w/o IO): 715.8310413360596ms
    Processing time (w/o IO): 720.0120687484741ms
    Processing time (w/o IO): 714.5029306411743ms
      Time (mean ± σ):      2.108 s ±  0.010 s    [User: 1.923 s, System: 0.145 s]
      Range (min … max):    2.100 s …  2.115 s    2 runs

Swift Concurrent:

    Benchmark 1: ./.build/release/related
    Processing time (w/o IO): 394.444676ms
    Processing time (w/o IO): 398.979087ms
    Processing time (w/o IO): 393.056242ms
      Time (mean ± σ):      1.842 s ±  0.042 s    [User: 2.776 s, System: 0.173 s]
      Range (min … max):    1.813 s …  1.872 s    2 runs

JS (Node):

    Benchmark 1: node node.js
    Processing time (w/o IO): 1942ms
    Processing time (w/o IO): 1960ms
    Processing time (w/o IO): 2017ms
      Time (mean ± σ):      2.305 s ±  0.044 s    [User: 2.272 s, System: 0.132 s]
      Range (min … max):    2.274 s …  2.336 s    2 runs

JS (Bun):

    Benchmark 1: bun bun.js
    Processing time (w/o IO): 1769ms
    Processing time (w/o IO): 1525ms
    Processing time (w/o IO): 1412ms
      Time (mean ± σ):      1.621 s ±  0.077 s    [User: 1.623 s, System: 0.069 s]
      Range (min … max):    1.566 s …  1.675 s    2 runs

JS (Deno):

    Benchmark 1: deno run --allow-read --allow-write deno.js
    Processing time (w/o IO): 2294ms
    Processing time (w/o IO): 2486ms
    Processing time (w/o IO): 2283ms
      Time (mean ± σ):      3.004 s ±  0.089 s    [User: 2.515 s, System: 0.077 s]
      Range (min … max):    2.941 s …  3.068 s    2 runs

Java (JIT):

    Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
    Processing time (w/o IO): 789 ms
    Processing time (w/o IO): 749 ms
    Processing time (w/o IO): 748 ms
      Time (mean ± σ):      1.872 s ±  0.014 s    [User: 2.453 s, System: 0.064 s]
      Range (min … max):    1.863 s …  1.882 s    2 runs

Java (GraalVM):

    Benchmark 1: ./target/related
    Processing time (w/o IO): 635 ms
    Processing time (w/o IO): 635 ms
    Processing time (w/o IO): 635 ms
      Time (mean ± σ):      1.374 s ±  0.006 s    [User: 1.322 s, System: 0.051 s]
      Range (min … max):    1.370 s …  1.378 s    2 runs

Java (GraalVM) Concurrent:

    Benchmark 1: ./target/related
    Processing time (w/o IO): 615 ms
    Processing time (w/o IO): 617 ms
    Processing time (w/o IO): 621 ms
      Time (mean ± σ):     737.2 ms ±   2.8 ms    [User: 1730.4 ms, System: 27.3 ms]
      Range (min … max):   735.3 ms … 739.2 ms    2 runs

Nim:

    Benchmark 1: ./related
    Processing time (w/o IO): 318.585ms
    Processing time (w/o IO): 318.556ms
    Processing time (w/o IO): 317.893ms
      Time (mean ± σ):     460.5 ms ±   3.7 ms    [User: 425.3 ms, System: 35.1 ms]
      Range (min … max):   457.8 ms … 463.1 ms    2 runs

Nim Concurrent:

    Benchmark 1: ./build/related_con
    Processing time (w/o IO): 177.832ms
    Processing time (w/o IO): 181.847ms
    Processing time (w/o IO): 179.324ms
      Time (mean ± σ):     316.4 ms ±   1.7 ms    [User: 796.2 ms, System: 44.7 ms]
      Range (min … max):   315.2 ms … 317.7 ms    2 runs

F# (JIT):

    Benchmark 1: ./bin/release/net8.0/fsharp
    Processing time (w/o IO): 647.0812ms
    Processing time (w/o IO): 647.0424ms
    Processing time (w/o IO): 647.474ms
    	Time (mean ± σ):      3.429 s ±  0.033 s    [User: 3.450 s, System: 0.250 s]
    	Range (min … max):    3.406 s …  3.452 s    2 runs

F# Concurrent (JIT):

    Benchmark 1: ./bin/release/net8.0/fsharp_con
    Processing time (w/o IO): 282ms
    Processing time (w/o IO): 283ms
    Processing time (w/o IO): 300ms
      Time (mean ± σ):      2.859 s ±  0.026 s    [User: 4.543 s, System: 0.338 s]
      Range (min … max):    2.841 s …  2.877 s    2 runs

F# Concurrent (AOT):

    Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
    Processing time (w/o IO): 284ms
    Processing time (w/o IO): 284ms
    Processing time (w/o IO): 283ms
      Time (mean ± σ):      3.339 s ±  0.023 s    [User: 4.980 s, System: 0.297 s]
      Range (min … max):    3.323 s …  3.355 s    2 runs

F# (AOT):

    Benchmark 1: ./bin/release/net8.0/aot/fsharp
    Processing time (w/o IO): 373.37ms
    Processing time (w/o IO): 371.9226ms
    Processing time (w/o IO): 372.8516ms
      Time (mean ± σ):      3.511 s ±  0.005 s    [User: 3.444 s, System: 0.305 s]
      Range (min … max):    3.507 s …  3.515 s    2 runs

C# (JIT):

    Benchmark 1: ./bin/release/net8.0/jit/related
    Processing time (w/o IO): 373.7673ms
    Processing time (w/o IO): 374.9734ms
    Processing time (w/o IO): 376.6479ms
      Time (mean ± σ):      1.090 s ±  0.003 s    [User: 1.037 s, System: 0.071 s]
      Range (min … max):    1.087 s …  1.092 s    2 runs

C# (AOT):

    Benchmark 1: ./bin/release/net8.0/aot/related
    Processing time (w/o IO): 371.6543ms
    Processing time (w/o IO): 371.2635ms
    Processing time (w/o IO): 370.8201ms
      Time (mean ± σ):     915.2 ms ±   2.5 ms    [User: 884.1 ms, System: 65.2 ms]
      Range (min … max):   913.4 ms … 916.9 ms    2 runs

C# Concurrent (JIT):

    Benchmark 1: ./bin/release/net8.0/jit/related
    Processing time (w/o IO): 124.6198ms
    Processing time (w/o IO): 124.7987ms
    Processing time (w/o IO): 123.4451ms
      Time (mean ± σ):     598.9 ms ±   4.0 ms    [User: 1224.5 ms, System: 67.2 ms]
      Range (min … max):   596.1 ms … 601.7 ms    2 runs

C# Concurrent (AOT):

    Benchmark 1: ./bin/release/net8.0/aot/related
    Processing time (w/o IO): 136.3991ms
    Processing time (w/o IO): 136.7284ms
    Processing time (w/o IO): 136.0508ms
      Time (mean ± σ):     446.5 ms ±   0.4 ms    [User: 1174.6 ms, System: 82.7 ms]
      Range (min … max):   446.2 ms … 446.8 ms    2 runs

LuaJIT:

    Benchmark 1: luajit only_lua.lua
    Processing time (w/o IO):	1472.1779823303	ms
    Processing time (w/o IO):	1473.0439186096	ms
    Processing time (w/o IO):	1541.1970615387	ms
      Time (mean ± σ):      2.916 s ±  0.086 s    [User: 2.850 s, System: 0.066 s]
      Range (min … max):    2.855 s …  2.977 s    2 runs

LuaJIT (JIT OFF):

    Benchmark 1: luajit -joff only_lua.lua
    Processing time (w/o IO):	10258.552074432	ms
    Processing time (w/o IO):	10267.910003662	ms
    Processing time (w/o IO):	10278.28001976	ms
      Time (mean ± σ):     11.890 s ±  0.003 s    [User: 11.811 s, System: 0.073 s]
      Range (min … max):   11.888 s … 11.892 s    2 runs

Lua:

    Benchmark 1: lua only_lua.lua
    Processing time (w/o IO):	16794.637918472	ms
    Processing time (w/o IO):	16723.675012589	ms
      Time (abs ≡):        18.763 s               [User: 18.704 s, System: 0.055 s]

ocaml:

    Benchmark 1: ./_build/default/bin/main.exe
    Processing time (w/o IO): 3069ms
    Processing time (w/o IO): 2878ms
    Processing time (w/o IO): 2967ms
      Time (mean ± σ):      3.365 s ±  0.046 s    [User: 3.215 s, System: 0.147 s]
      Range (min … max):    3.333 s …  3.398 s    2 runs

Erlang:

    Benchmark 1: _build/default/bin/related_erl
    Processing time (w/o IO): 15.142830 s
    Processing time (w/o IO): 15.020754 s
    Processing time (w/o IO): 15.060350 s
      Time (mean ± σ):     16.136 s ±  0.072 s    [User: 15.926 s, System: 0.268 s]
      Range (min … max):   16.085 s … 16.187 s    2 runs

Racket:

    Benchmark 1: racket related.rkt
    Processing time (w/o IO): 3925.67ms
    Processing time (w/o IO): 3806.15ms
    Processing time (w/o IO): 3879.51ms
      Time (mean ± σ):      4.992 s ±  0.026 s    [User: 4.852 s, System: 0.139 s]
      Range (min … max):    4.974 s …  5.010 s    2 runs

Lobster (JIT):

    Benchmark 1: lobster related.lobster
    Processing time (w/o IO): 21.175031s
    Processing time (w/o IO): 21.314872s
      Time (abs ≡):        21.663 s               [User: 21.592 s, System: 0.067 s]

Lobster (C++):

    Benchmark 1: compiled_lobster
    Processing time (w/o IO): 2.877117s
    Processing time (w/o IO): 2.874652s
      Time (abs ≡):         3.214 s               [User: 3.151 s, System: 0.059 s]

Scala Native:

    Benchmark 1: ./target/scala-3.3.1/scala_native-out
    Processing time (w/o IO): 3533ms
    Processing time (w/o IO): 3482ms
      Time (abs ≡):         3.844 s               [User: 4.117 s, System: 0.424 s]

Inko:

    Benchmark 1: ./build/aggressive/main
    Processing time (w/o IO): 154493 ms
    Processing time (w/o IO): 155092 ms
      Time (abs ≡):        161.676 s               [User: 161.436 s, System: 0.227 s]

Go:

    Benchmark 1: ./related
    Processing time (w/o IO): 2.718751456s
    Processing time (w/o IO): 2.707466583s
    Processing time (w/o IO): 2.721011872s
      Time (mean ± σ):      3.194 s ±  0.019 s    [User: 3.215 s, System: 0.104 s]
      Range (min … max):    3.180 s …  3.207 s    2 runs

Go Concurrent:

    Benchmark 1: ./related_concurrent
    Processing time (w/o IO): 1.275699608s
    Processing time (w/o IO): 1.285831829s
    Processing time (w/o IO): 1.268917915s
      Time (mean ± σ):      1.744 s ±  0.012 s    [User: 5.525 s, System: 0.093 s]
      Range (min … max):    1.735 s …  1.752 s    2 runs

Rust:

    Benchmark 1: ./target/release/rust
    Processing time (w/o IO): 3.038923426s
    Processing time (w/o IO): 3.039064379s
    Processing time (w/o IO): 3.058780359s
      Time (mean ± σ):      3.259 s ±  0.013 s    [User: 3.177 s, System: 0.073 s]
      Range (min … max):    3.249 s …  3.268 s    2 runs

Rust Concurrent:

    Benchmark 1: ./target/release/rust_rayon
    Processing time (w/o IO): 1.519454234s
    Processing time (w/o IO): 1.518990629s
    Processing time (w/o IO): 1.522719909s
      Time (mean ± σ):      1.723 s ±  0.001 s    [User: 3.148 s, System: 0.081 s]
      Range (min … max):    1.723 s …  1.724 s    2 runs

D:

    Benchmark 1: ./related
    Processing time (w/o IO): 2794.05ms
    Processing time (w/o IO): 2792.74ms
    Processing time (w/o IO): 2795.48ms
      Time (mean ± σ):      3.758 s ±  0.001 s    [User: 3.644 s, System: 0.117 s]
      Range (min … max):    3.758 s …  3.759 s    2 runs

D (v2):

    Benchmark 1: ./related
    Processing time (w/o IO): 2124.44ms
    Processing time (w/o IO): 2127.61ms
    Processing time (w/o IO): 2143.12ms
      Time (mean ± σ):      3.068 s ±  0.019 s    [User: 2.968 s, System: 0.105 s]
      Range (min … max):    3.055 s …  3.081 s    2 runs

D Concurrent:

    Benchmark 1: ./related_concurrent
    Processing time (w/o IO): 884.966ms
    Processing time (w/o IO): 884.76ms
    Processing time (w/o IO): 886.948ms
      Time (mean ± σ):      1.849 s ±  0.015 s    [User: 4.251 s, System: 0.115 s]
      Range (min … max):    1.839 s …  1.860 s    2 runs

C++:

    Benchmark 1: ./main
    Processing time (w/o IO): 2781 ms
    Processing time (w/o IO): 2777 ms
    Processing time (w/o IO): 2773 ms
      Time (mean ± σ):      5.237 s ±  0.024 s    [User: 4.822 s, System: 0.297 s]
      Range (min … max):    5.220 s …  5.254 s    2 runs

C++ Concurrent:

    Benchmark 1: ./main_con
    Processing time (w/o IO): 1406 ms
    Processing time (w/o IO): 1409 ms
    Processing time (w/o IO): 1424 ms
      Time (mean ± σ):      4.135 s ±  0.111 s    [User: 7.843 s, System: 0.337 s]
      Range (min … max):    4.056 s …  4.213 s    2 runs

Python:

    Benchmark 1: python3 ./related.py
    Processing time (w/o IO): 215.198s
    Processing time (w/o IO): 214.973s
      Time (abs ≡):        215.445 s               [User: 215.247 s, System: 0.171 s]

Numpy:

    Benchmark 1: python3 ./related_np.py

Crystal:

    Benchmark 1: ./crystal
    Processing time (w/o IO): 7165.61051ms
    Processing time (w/o IO): 7146.18031ms
    Processing time (w/o IO): 7172.089201ms
      Time (mean ± σ):      7.858 s ±  0.032 s    [User: 7.770 s, System: 0.079 s]
      Range (min … max):    7.835 s …  7.880 s    2 runs

Zig:

    Benchmark 1: ./main
    Processing time (w/o IO): 2989ms
    Processing time (w/o IO): 2994ms
    Processing time (w/o IO): 2993ms
      Time (mean ± σ):      3.594 s ±  0.009 s    [User: 3.520 s, System: 0.067 s]
      Range (min … max):    3.588 s …  3.601 s    2 runs

Julia:

    Benchmark 1: julia --startup-file=no --project=Related -e "using Related; main()"
    Processing time (w/o IO): 3166.4918599999996ms
    Processing time (w/o IO): 3168.6749729999997ms
    Processing time (w/o IO): 3171.250509ms
      Time (mean ± σ):      4.630 s ±  0.025 s    [User: 4.419 s, System: 0.305 s]
      Range (min … max):    4.612 s …  4.647 s    2 runs

Julia HO:

    Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
    Processing time (w/o IO): 148 milliseconds
    Processing time (w/o IO): 139 milliseconds
    Processing time (w/o IO): 137 milliseconds
      Time (mean ± σ):      1.564 s ±  0.020 s    [User: 1.363 s, System: 0.305 s]
      Range (min … max):    1.550 s …  1.579 s    2 runs

Julia Concurrent:

    Benchmark 1: julia --startup-file=no --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
    Processing time (w/o IO): 1473.0794119999998ms
    Processing time (w/o IO): 1472.493468ms
    Processing time (w/o IO): 1489.6276ms
      Time (mean ± σ):      2.886 s ±  0.009 s    [User: 7.003 s, System: 0.332 s]
      Range (min … max):    2.880 s …  2.893 s    2 runs

Odin:

    Benchmark 1: ./related
    Processing time (w/o IO):  5.946571549s
    Processing time (w/o IO):  5.965717269s
    Processing time (w/o IO):  5.994893265s
      Time (mean ± σ):      8.374 s ±  0.020 s    [User: 8.298 s, System: 0.071 s]
      Range (min … max):    8.360 s …  8.388 s    2 runs

Vlang:

    Benchmark 1: ./related
    Processing time (w/o IO): 6.596s
    Processing time (w/o IO): 6.598s
    Processing time (w/o IO): 6.597s
      Time (mean ± σ):     76.314 s ±  0.075 s    [User: 75.918 s, System: 0.381 s]
      Range (min … max):   76.261 s … 76.367 s    2 runs

Dart VM:

    Benchmark 1: dart related.dart
    Processing time (w/o IO): 19704ms
    Processing time (w/o IO): 19689ms
    Processing time (w/o IO): 18129ms
      Time (mean ± σ):     20.430 s ±  1.113 s    [User: 20.653 s, System: 0.252 s]
      Range (min … max):   19.642 s … 21.217 s    2 runs

Dart AOT:

    Benchmark 1: ./related
    Processing time (w/o IO): 17907ms
    Processing time (w/o IO): 17839ms
    Processing time (w/o IO): 17830ms
      Time (mean ± σ):     19.334 s ±  0.002 s    [User: 19.328 s, System: 0.139 s]
      Range (min … max):   19.332 s … 19.335 s    2 runs

Swift:

    Benchmark 1: ./.build/release/related
    Processing time (w/o IO): 6214.701056480408ms
    Processing time (w/o IO): 6205.048084259033ms
    Processing time (w/o IO): 6213.144898414612ms
      Time (mean ± σ):     10.530 s ±  0.031 s    [User: 9.958 s, System: 0.369 s]
      Range (min … max):   10.508 s … 10.553 s    2 runs

Swift Concurrent:

    Benchmark 1: ./.build/release/related
    Processing time (w/o IO): 3479.114931ms
    Processing time (w/o IO): 3442.108852ms
    Processing time (w/o IO): 3439.61181ms
      Time (mean ± σ):      7.766 s ±  0.034 s    [User: 17.437 s, System: 0.357 s]
      Range (min … max):    7.742 s …  7.790 s    2 runs

JS (Node):

    Benchmark 1: node node.js
    Processing time (w/o IO): 17590ms
    Processing time (w/o IO): 24217ms
    Processing time (w/o IO): 17583ms
      Time (mean ± σ):     21.631 s ±  4.669 s    [User: 21.603 s, System: 0.169 s]
      Range (min … max):   18.330 s … 24.932 s    2 runs

JS (Bun):

    Benchmark 1: bun bun.js
    Processing time (w/o IO): 12978ms
    Processing time (w/o IO): 12969ms
    Processing time (w/o IO): 15437ms
      Time (mean ± σ):     14.642 s ±  1.744 s    [User: 14.651 s, System: 0.139 s]
      Range (min … max):   13.408 s … 15.875 s    2 runs

JS (Deno):

    Benchmark 1: deno run --allow-read --allow-write deno.js
    Processing time (w/o IO): 22012ms
    Processing time (w/o IO): 22040ms
    Processing time (w/o IO): 20235ms
      Time (mean ± σ):     21.861 s ±  1.474 s    [User: 21.624 s, System: 0.170 s]
      Range (min … max):   20.818 s … 22.903 s    2 runs

Java (JIT):

    Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
    Processing time (w/o IO): 6492 ms
    Processing time (w/o IO): 6492 ms
    Processing time (w/o IO): 6503 ms
      Time (mean ± σ):     13.693 s ±  0.015 s    [User: 14.413 s, System: 0.149 s]
      Range (min … max):   13.682 s … 13.704 s    2 runs

Java (GraalVM):

    Benchmark 1: ./target/related
    Processing time (w/o IO): 7518 ms
    Processing time (w/o IO): 7513 ms
    Processing time (w/o IO): 7520 ms
      Time (mean ± σ):     15.498 s ±  0.002 s    [User: 15.384 s, System: 0.103 s]
      Range (min … max):   15.496 s … 15.499 s    2 runs

Java (GraalVM) Concurrent:

    Benchmark 1: ./target/related
    Processing time (w/o IO): 5355 ms
    Processing time (w/o IO): 5780 ms
    Processing time (w/o IO): 5351 ms
      Time (mean ± σ):      5.934 s ±  0.306 s    [User: 14.697 s, System: 0.125 s]
      Range (min … max):    5.718 s …  6.151 s    2 runs

Nim:

    Benchmark 1: ./related
    Processing time (w/o IO): 2848.979ms
    Processing time (w/o IO): 2844.567ms
    Processing time (w/o IO): 2838.903ms
      Time (mean ± σ):      3.228 s ±  0.005 s    [User: 3.133 s, System: 0.091 s]
      Range (min … max):    3.224 s …  3.231 s    2 runs

Nim Concurrent:

    Benchmark 1: ./build/related_con
    Processing time (w/o IO): 1479.931ms
    Processing time (w/o IO): 1477.166ms
    Processing time (w/o IO): 1495.436ms
      Time (mean ± σ):      1.857 s ±  0.002 s    [User: 6.152 s, System: 0.091 s]
      Range (min … max):    1.856 s …  1.859 s    2 runs

F# (JIT):

    Benchmark 1: ./bin/release/net8.0/fsharp
    Processing time (w/o IO): 5673.3064ms
    Processing time (w/o IO): 5676.1413ms
    Processing time (w/o IO): 5724.2469ms
    	Time (mean ± σ):     16.844 s ±  0.016 s    [User: 17.858 s, System: 0.600 s]
    	Range (min … max):   16.833 s … 16.855 s    2 runs

F# Concurrent (JIT):

    Benchmark 1: ./bin/release/net8.0/fsharp_con
    Processing time (w/o IO): 2404ms
    Processing time (w/o IO): 2399ms
    Processing time (w/o IO): 2402ms
      Time (mean ± σ):     10.215 s ±  0.031 s    [User: 25.492 s, System: 0.687 s]
      Range (min … max):   10.193 s … 10.237 s    2 runs

F# Concurrent (AOT):

    Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
    Processing time (w/o IO): 2458ms
    Processing time (w/o IO): 2483ms
    Processing time (w/o IO): 2467ms
      Time (mean ± σ):     13.166 s ±  0.101 s    [User: 29.185 s, System: 0.676 s]
      Range (min … max):   13.095 s … 13.237 s    2 runs

F# (AOT):

    Benchmark 1: ./bin/release/net8.0/aot/fsharp
    Processing time (w/o IO): 3227.2846ms
    Processing time (w/o IO): 3227.5057ms
    Processing time (w/o IO): 3225.3985ms
      Time (mean ± σ):     14.808 s ±  0.014 s    [User: 16.406 s, System: 0.606 s]
      Range (min … max):   14.798 s … 14.818 s    2 runs

C# (JIT):

    Benchmark 1: ./bin/release/net8.0/jit/related
    Processing time (w/o IO): 3265.3425ms
    Processing time (w/o IO): 3248.8538ms
    Processing time (w/o IO): 3261.1402ms
      Time (mean ± σ):      7.398 s ±  0.013 s    [User: 7.324 s, System: 0.195 s]
      Range (min … max):    7.389 s …  7.407 s    2 runs

C# (AOT):

    Benchmark 1: ./bin/release/net8.0/aot/related
    Processing time (w/o IO): 3254.5235ms
    Processing time (w/o IO): 3252.5155ms
    Processing time (w/o IO): 3264.0303ms
      Time (mean ± σ):      7.025 s ±  0.006 s    [User: 6.968 s, System: 0.173 s]
      Range (min … max):    7.021 s …  7.030 s    2 runs

C# Concurrent (JIT):

    Benchmark 1: ./bin/release/net8.0/jit/related
    Processing time (w/o IO): 1015.5905ms
    Processing time (w/o IO): 1019.2766ms
    Processing time (w/o IO): 1013.5828ms
      Time (mean ± σ):      2.920 s ±  0.011 s    [User: 8.686 s, System: 0.173 s]
      Range (min … max):    2.912 s …  2.927 s    2 runs

C# Concurrent (AOT):

    Benchmark 1: ./bin/release/net8.0/aot/related
    Processing time (w/o IO): 1136.7873ms
    Processing time (w/o IO): 1143.7941ms
    Processing time (w/o IO): 1141.1323ms
      Time (mean ± σ):      2.788 s ±  0.004 s    [User: 9.335 s, System: 0.179 s]
      Range (min … max):    2.785 s …  2.791 s    2 runs

LuaJIT:

    Benchmark 1: luajit only_lua.lua
    Processing time (w/o IO):	12090.243816376	ms
    Processing time (w/o IO):	13148.406982422	ms
    Processing time (w/o IO):	12049.587011337	ms
      Time (mean ± σ):     16.860 s ±  0.703 s    [User: 16.665 s, System: 0.187 s]
      Range (min … max):   16.363 s … 17.358 s    2 runs

LuaJIT (JIT OFF):

    Benchmark 1: luajit -joff only_lua.lua
    Processing time (w/o IO):	91035.919904709	ms
    Processing time (w/o IO):	91094.640016556	ms
    Processing time (w/o IO):	91284.62100029	ms
      Time (mean ± σ):     96.361 s ±  0.008 s    [User: 96.150 s, System: 0.197 s]
      Range (min … max):   96.355 s … 96.366 s    2 runs

Lua:

    Benchmark 1: lua only_lua.lua
    Processing time (w/o IO):	155252.00200081	ms
    Processing time (w/o IO):	150190.66691399	ms
      Time (abs ≡):        156.861 s               [User: 156.633 s, System: 0.216 s]

ocaml:

    Benchmark 1: ./_build/default/bin/main.exe
    Processing time (w/o IO): 34487ms
    Processing time (w/o IO): 34530ms
    Processing time (w/o IO): 34285ms
      Time (mean ± σ):     35.911 s ±  0.179 s    [User: 35.094 s, System: 0.805 s]
      Range (min … max):   35.785 s … 36.038 s    2 runs

Erlang:

    Benchmark 1: _build/default/bin/related_erl
    Processing time (w/o IO): 130.961062 s
    Processing time (w/o IO): 130.669166 s
    Processing time (w/o IO): 131.250780 s
      Time (mean ± σ):     133.977 s ±  0.432 s    [User: 133.292 s, System: 0.735 s]
      Range (min … max):   133.672 s … 134.283 s    2 runs

Racket:

    Benchmark 1: racket related.rkt
    Processing time (w/o IO): 33598.95ms
    Processing time (w/o IO): 33876.68ms
    Processing time (w/o IO): 34487.03ms
      Time (mean ± σ):     37.424 s ±  0.421 s    [User: 37.071 s, System: 0.349 s]
      Range (min … max):   37.126 s … 37.722 s    2 runs

Lobster (JIT):

    Benchmark 1: lobster related.lobster
    Processing time (w/o IO): 188.747566s
    Processing time (w/o IO): 189.001534s
      Time (abs ≡):        190.037 s               [User: 189.862 s, System: 0.148 s]

Lobster (C++):

    Benchmark 1: compiled_lobster
    Processing time (w/o IO): 26.125017s
    Processing time (w/o IO): 25.749385s
      Time (abs ≡):        26.817 s               [User: 26.625 s, System: 0.179 s]

Scala Native:

    Benchmark 1: ./target/scala-3.3.1/scala_native-out
    Processing time (w/o IO): 30273ms
    Processing time (w/o IO): 30286ms
      Time (abs ≡):        31.485 s               [User: 35.966 s, System: 1.428 s]

Inko:

    Benchmark 1: ./build/aggressive/main
    Processing time (w/o IO): 1388709 ms
    Processing time (w/o IO): 1390024 ms
      Time (abs ≡):        1409.362 s               [User: 1408.538 s, System: 0.711 s]
