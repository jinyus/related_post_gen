Go:

    Benchmark 1: ./related
    Processing time (w/o IO): 30.704762ms
    Processing time (w/o IO): 29.970163ms
    Processing time (w/o IO): 30.103863ms
    Processing time (w/o IO): 30.236663ms
    Processing time (w/o IO): 30.183663ms
    Processing time (w/o IO): 30.601562ms
    Processing time (w/o IO): 30.255763ms
    Processing time (w/o IO): 30.167863ms
    Processing time (w/o IO): 30.676462ms
    Processing time (w/o IO): 34.446857ms
    Processing time (w/o IO): 30.166563ms
    Processing time (w/o IO): 30.353562ms
    Processing time (w/o IO): 34.352757ms
      Time (mean ± σ):      59.7 ms ±   3.5 ms    [User: 55.1 ms, System: 8.9 ms]
      Range (min … max):    56.4 ms …  68.3 ms    10 runs

Go Concurrent:

    Benchmark 1: ./related_concurrent
    Processing time (w/o IO): 21.929172ms
    Processing time (w/o IO): 21.768572ms
    Processing time (w/o IO): 21.862572ms
    Processing time (w/o IO): 23.03277ms
    Processing time (w/o IO): 21.804672ms
    Processing time (w/o IO): 21.713771ms
    Processing time (w/o IO): 21.893472ms
    Processing time (w/o IO): 22.119371ms
    Processing time (w/o IO): 22.057872ms
    Processing time (w/o IO): 21.481972ms
    Processing time (w/o IO): 21.511272ms
    Processing time (w/o IO): 21.983071ms
    Processing time (w/o IO): 22.116172ms
      Time (mean ± σ):      49.8 ms ±   0.9 ms    [User: 65.4 ms, System: 12.0 ms]
      Range (min … max):    48.3 ms …  51.9 ms    10 runs

Rust:

    Benchmark 1: ./target/release/rust
    Processing time (w/o IO): 36.366843ms
    Processing time (w/o IO): 35.908643ms
    Processing time (w/o IO): 36.093543ms
    Processing time (w/o IO): 35.932143ms
    Processing time (w/o IO): 35.926343ms
    Processing time (w/o IO): 36.273743ms
    Processing time (w/o IO): 36.189143ms
    Processing time (w/o IO): 36.172443ms
    Processing time (w/o IO): 36.229143ms
    Processing time (w/o IO): 36.082443ms
    Processing time (w/o IO): 36.118343ms
    Processing time (w/o IO): 35.925244ms
    Processing time (w/o IO): 36.134043ms
      Time (mean ± σ):      51.9 ms ±   0.6 ms    [User: 44.9 ms, System: 7.0 ms]
      Range (min … max):    51.0 ms …  52.7 ms    10 runs

Rust Concurrent:

    Benchmark 1: ./target/release/rust_rayon
    Processing time (w/o IO): 15.999683ms
    Processing time (w/o IO): 16.735781ms
    Processing time (w/o IO): 15.603383ms
    Processing time (w/o IO): 15.679583ms
    Processing time (w/o IO): 15.485182ms
    Processing time (w/o IO): 15.508583ms
    Processing time (w/o IO): 15.650483ms
    Processing time (w/o IO): 16.001682ms
    Processing time (w/o IO): 15.450583ms
    Processing time (w/o IO): 15.512583ms
    Processing time (w/o IO): 15.363282ms
    Processing time (w/o IO): 15.441483ms
    Processing time (w/o IO): 15.500683ms
      Time (mean ± σ):      32.1 ms ±   0.6 ms    [User: 38.8 ms, System: 7.2 ms]
      Range (min … max):    30.9 ms …  33.0 ms    10 runs

Python:

    Benchmark 1: python3 ./related.py
    Processing time (w/o IO): 1.671s
    Processing time (w/o IO): 1.689s
    Processing time (w/o IO): 1.683s
    Processing time (w/o IO): 1.702s
    Processing time (w/o IO): 1.678s
    Processing time (w/o IO): 1.684s
    Processing time (w/o IO): 1.704s
    Processing time (w/o IO): 1.691s
    Processing time (w/o IO): 1.675s
    Processing time (w/o IO): 1.681s
    Processing time (w/o IO): 1.679s
    Processing time (w/o IO): 1.678s
    Processing time (w/o IO): 1.690s
      Time (mean ± σ):      1.755 s ±  0.010 s    [User: 1.743 s, System: 0.012 s]
      Range (min … max):    1.743 s …  1.773 s    10 runs

Numpy:

    Benchmark 1: python3 ./related_np.py
    Processing time (w/o IO): 415.9ms
    Processing time (w/o IO): 364.9ms
    Processing time (w/o IO): 361.6ms
    Processing time (w/o IO): 361.6ms
    Processing time (w/o IO): 361.0ms
    Processing time (w/o IO): 364.7ms
    Processing time (w/o IO): 367.6ms
    Processing time (w/o IO): 364.1ms
    Processing time (w/o IO): 361.8ms
    Processing time (w/o IO): 361.3ms
    Processing time (w/o IO): 361.4ms
    Processing time (w/o IO): 362.2ms
    Processing time (w/o IO): 362.3ms
      Time (mean ± σ):     570.5 ms ±   5.6 ms    [User: 609.5 ms, System: 146.3 ms]
      Range (min … max):   564.4 ms … 583.3 ms    10 runs

Crystal:

    Benchmark 1: ./crystal
    Processing time (w/o IO): 58.07001ms
    Processing time (w/o IO): 58.720709ms
    Processing time (w/o IO): 59.041909ms
    Processing time (w/o IO): 58.30961ms
    Processing time (w/o IO): 58.02831ms
    Processing time (w/o IO): 58.26331ms
    Processing time (w/o IO): 58.11091ms
    Processing time (w/o IO): 58.998809ms
    Processing time (w/o IO): 58.14491ms
    Processing time (w/o IO): 59.177208ms
    Processing time (w/o IO): 58.408309ms
    Processing time (w/o IO): 58.01591ms
    Processing time (w/o IO): 58.238309ms
      Time (mean ± σ):     105.5 ms ±   1.1 ms    [User: 95.6 ms, System: 9.8 ms]
      Range (min … max):   104.4 ms … 108.0 ms    10 runs

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
      Time (mean ± σ):      56.4 ms ±   0.3 ms    [User: 51.3 ms, System: 5.2 ms]
      Range (min … max):    56.0 ms …  56.9 ms    10 runs

Julia:

    Benchmark 1: julia related.jl
    Processing time (w/o IO): 33 milliseconds
    Processing time (w/o IO): 33 milliseconds
    Processing time (w/o IO): 33 milliseconds
    Processing time (w/o IO): 33 milliseconds
    Processing time (w/o IO): 32 milliseconds
    Processing time (w/o IO): 32 milliseconds
    Processing time (w/o IO): 33 milliseconds
    Processing time (w/o IO): 32 milliseconds
    Processing time (w/o IO): 33 milliseconds
    Processing time (w/o IO): 33 milliseconds
    Processing time (w/o IO): 33 milliseconds
    Processing time (w/o IO): 33 milliseconds
    Processing time (w/o IO): 33 milliseconds
      Time (mean ± σ):      3.194 s ±  0.014 s    [User: 3.047 s, System: 0.146 s]
      Range (min … max):    3.177 s …  3.217 s    10 runs

Odin:

    Benchmark 1: ./related
    Processing time (w/o IO):  44.755535ms
    Processing time (w/o IO):  44.847735ms
    Processing time (w/o IO):  45.218035ms
    Processing time (w/o IO):  45.571834ms
    Processing time (w/o IO):  44.649636ms
    Processing time (w/o IO):  45.15693ms
    Processing time (w/o IO):  45.23513ms
    Processing time (w/o IO):  45.26213ms
    Processing time (w/o IO):  44.874931ms
    Processing time (w/o IO):  44.85913ms
    Processing time (w/o IO):  44.561131ms
    Processing time (w/o IO):  44.72333ms
    Processing time (w/o IO):  44.89153ms
      Time (mean ± σ):     326.8 ms ±   1.0 ms    [User: 316.9 ms, System: 9.8 ms]
      Range (min … max):   325.4 ms … 328.4 ms    10 runs

Vlang:

    Benchmark 1: ./related
    Processing time (w/o IO): 45.937ms
    Processing time (w/o IO): 45.727ms
    Processing time (w/o IO): 45.802ms
    Processing time (w/o IO): 45.870ms
    Processing time (w/o IO): 45.782ms
    Processing time (w/o IO): 46.009ms
    Processing time (w/o IO): 46.064ms
    Processing time (w/o IO): 45.812ms
    Processing time (w/o IO): 46.114ms
    Processing time (w/o IO): 46.003ms
    Processing time (w/o IO): 46.159ms
    Processing time (w/o IO): 46.061ms
    Processing time (w/o IO): 45.583ms
      Time (mean ± σ):     338.3 ms ±   3.8 ms    [User: 315.7 ms, System: 22.1 ms]
      Range (min … max):   329.5 ms … 342.4 ms    10 runs

Dart VM:

    Benchmark 1: dart related.dart
    Processing time (w/o IO): 77ms
    Processing time (w/o IO): 88ms
    Processing time (w/o IO): 76ms
    Processing time (w/o IO): 77ms
    Processing time (w/o IO): 77ms
    Processing time (w/o IO): 80ms
    Processing time (w/o IO): 78ms
    Processing time (w/o IO): 78ms
    Processing time (w/o IO): 76ms
    Processing time (w/o IO): 75ms
    Processing time (w/o IO): 76ms
    Processing time (w/o IO): 80ms
    Processing time (w/o IO): 89ms
      Time (mean ± σ):     506.4 ms ±   7.0 ms    [User: 571.5 ms, System: 137.7 ms]
      Range (min … max):   497.0 ms … 521.2 ms    10 runs

Dart AOT:

    Benchmark 1: ./related
    Processing time (w/o IO): 115ms
    Processing time (w/o IO): 116ms
    Processing time (w/o IO): 115ms
    Processing time (w/o IO): 115ms
    Processing time (w/o IO): 116ms
    Processing time (w/o IO): 116ms
    Processing time (w/o IO): 117ms
    Processing time (w/o IO): 116ms
    Processing time (w/o IO): 115ms
    Processing time (w/o IO): 116ms
    Processing time (w/o IO): 115ms
    Processing time (w/o IO): 121ms
    Processing time (w/o IO): 116ms
      Time (mean ± σ):     242.0 ms ±   2.4 ms    [User: 224.3 ms, System: 21.2 ms]
      Range (min … max):   240.1 ms … 248.1 ms    10 runs

Swift:

    Benchmark 1: ./.build/release/related
    Processing time (w/o IO): 49.29697513580322ms
    Processing time (w/o IO): 48.97499084472656ms
    Processing time (w/o IO): 49.23892021179199ms
    Processing time (w/o IO): 48.840999603271484ms
    Processing time (w/o IO): 48.93302917480469ms
    Processing time (w/o IO): 49.08311367034912ms
    Processing time (w/o IO): 48.71499538421631ms
    Processing time (w/o IO): 48.96700382232666ms
    Processing time (w/o IO): 48.931002616882324ms
    Processing time (w/o IO): 48.82705211639404ms
    Processing time (w/o IO): 48.82204532623291ms
    Processing time (w/o IO): 49.394965171813965ms
    Processing time (w/o IO): 49.08895492553711ms
      Time (mean ± σ):     404.9 ms ±   2.8 ms    [User: 371.6 ms, System: 29.9 ms]
      Range (min … max):   402.3 ms … 411.3 ms    10 runs

Swift Concurrent:

    Benchmark 1: ./.build/release/related
    Processing time (w/o IO): 30.016758ms
    Processing time (w/o IO): 30.214459ms
    Processing time (w/o IO): 30.411758ms
    Processing time (w/o IO): 30.005659ms
    Processing time (w/o IO): 30.221258ms
    Processing time (w/o IO): 30.077158ms
    Processing time (w/o IO): 30.341458ms
    Processing time (w/o IO): 30.203959ms
    Processing time (w/o IO): 30.522658ms
    Processing time (w/o IO): 30.344358ms
    Processing time (w/o IO): 30.031459ms
    Processing time (w/o IO): 30.196658ms
    Processing time (w/o IO): 30.052859ms
      Time (mean ± σ):     394.1 ms ±   4.6 ms    [User: 377.7 ms, System: 39.8 ms]
      Range (min … max):   389.1 ms … 405.1 ms    10 runs

JS (Node):

    Warning: Statistical outliers were detected. Consider re-running this benchmark on a quiet system without any interferences from other programs. It might help to use the '--warmup' or '--prepare' options.
    Benchmark 1: node node.js
    Processing time (w/o IO): 154ms
    Processing time (w/o IO): 170ms
    Processing time (w/o IO): 154ms
    Processing time (w/o IO): 153ms
    Processing time (w/o IO): 153ms
    Processing time (w/o IO): 150ms
    Processing time (w/o IO): 152ms
    Processing time (w/o IO): 152ms
    Processing time (w/o IO): 153ms
    Processing time (w/o IO): 151ms
    Processing time (w/o IO): 153ms
    Processing time (w/o IO): 155ms
    Processing time (w/o IO): 154ms
    Time (mean ± σ): 243.0 ms ± 5.1 ms [User: 226.8 ms, System: 58.7 ms]
    Range (min … max): 233.6 ms … 246.5 ms 10 runs

JS (Bun):

    Benchmark 1: bun bun.js
    Processing time (w/o IO): 559ms
    Processing time (w/o IO): 694ms
    Processing time (w/o IO): 547ms
    Processing time (w/o IO): 534ms
    Processing time (w/o IO): 533ms
    Processing time (w/o IO): 550ms
    Processing time (w/o IO): 535ms
    Processing time (w/o IO): 545ms
    Processing time (w/o IO): 544ms
    Processing time (w/o IO): 551ms
    Processing time (w/o IO): 695ms
    Processing time (w/o IO): 687ms
    Processing time (w/o IO): 691ms
      Time (mean ± σ):     638.0 ms ±  72.4 ms    [User: 657.1 ms, System: 29.1 ms]
      Range (min … max):   584.9 ms … 745.9 ms    10 runs

JS (Deno):

    Warning: Statistical outliers were detected. Consider re-running this benchmark on a quiet system without any interferences from other programs. It might help to use the '--warmup' or '--prepare' options.
    Benchmark 1: deno run --allow-read --allow-write deno.js
    Processing time (w/o IO): 178ms
    Processing time (w/o IO): 168ms
    Processing time (w/o IO): 167ms
    Processing time (w/o IO): 167ms
    Processing time (w/o IO): 168ms
    Processing time (w/o IO): 167ms
    Processing time (w/o IO): 171ms
    Processing time (w/o IO): 168ms
    Processing time (w/o IO): 170ms
    Processing time (w/o IO): 166ms
    Processing time (w/o IO): 168ms
    Processing time (w/o IO): 168ms
    Processing time (w/o IO): 168ms
    Time (mean ± σ): 237.3 ms ± 1.7 ms [User: 232.5 ms, System: 24.4 ms]
    Range (min … max): 235.6 ms … 240.8 ms 10 runs

Java (JIT):

    Benchmark 1: java -Xms10m -Xmx10m -XX:+UseSerialGC -jar ./target/main.jar
    Processing time (w/o IO): 259 ms
    Processing time (w/o IO): 228 ms
    Processing time (w/o IO): 234 ms
    Processing time (w/o IO): 233 ms
    Processing time (w/o IO): 215 ms
    Processing time (w/o IO): 223 ms
    Processing time (w/o IO): 232 ms
    Processing time (w/o IO): 229 ms
    Processing time (w/o IO): 224 ms
    Processing time (w/o IO): 229 ms
    Processing time (w/o IO): 241 ms
    Processing time (w/o IO): 251 ms
    Processing time (w/o IO): 244 ms
      Time (mean ± σ):     504.5 ms ±  17.6 ms    [User: 856.3 ms, System: 51.4 ms]
      Range (min … max):   478.2 ms … 537.9 ms    10 runs

Java (GraalVM):

    Benchmark 1: ./target/related
    Processing time (w/o IO): 36 ms
    Processing time (w/o IO): 36 ms
    Processing time (w/o IO): 36 ms
    Processing time (w/o IO): 36 ms
    Processing time (w/o IO): 36 ms
    Processing time (w/o IO): 36 ms
    Processing time (w/o IO): 36 ms
    Processing time (w/o IO): 36 ms
    Processing time (w/o IO): 36 ms
    Processing time (w/o IO): 36 ms
    Processing time (w/o IO): 36 ms
    Processing time (w/o IO): 36 ms
    Processing time (w/o IO): 36 ms
      Time (mean ± σ):      62.8 ms ±   0.2 ms    [User: 53.2 ms, System: 9.7 ms]
      Range (min … max):    62.6 ms …  63.1 ms    10 runs

Nim:

    Benchmark 1: ./src/related
    Processing time (w/o IO): 32ms
    Processing time (w/o IO): 32ms
    Processing time (w/o IO): 32ms
    Processing time (w/o IO): 32ms
    Processing time (w/o IO): 32ms
    Processing time (w/o IO): 32ms
    Processing time (w/o IO): 33ms
    Processing time (w/o IO): 32ms
    Processing time (w/o IO): 32ms
    Processing time (w/o IO): 32ms
    Processing time (w/o IO): 32ms
    Processing time (w/o IO): 32ms
    Processing time (w/o IO): 32ms
      Time (mean ± σ):      57.3 ms ±   0.6 ms    [User: 47.2 ms, System: 9.9 ms]
      Range (min … max):    56.5 ms …  58.1 ms    10 runs

F#:

    Benchmark 1: ./bin/release/net7.0/fsharp
    Processing time (w/o IO): 56ms
    Processing time (w/o IO): 56ms
    Processing time (w/o IO): 56ms
    Processing time (w/o IO): 56ms
    Processing time (w/o IO): 56ms
    Processing time (w/o IO): 56ms
    Processing time (w/o IO): 57ms
    Processing time (w/o IO): 56ms
    Processing time (w/o IO): 56ms
    Processing time (w/o IO): 56ms
    Processing time (w/o IO): 56ms
    Processing time (w/o IO): 56ms
    Processing time (w/o IO): 56ms
      Time (mean ± σ):     300.4 ms ±   5.3 ms    [User: 245.7 ms, System: 39.0 ms]
      Range (min … max):   289.5 ms … 308.3 ms    10 runs

F# Concurrent:

    Benchmark 1: ./bin/release/net7.0/fsharp_con
    Processing time (w/o IO): 39ms
    Processing time (w/o IO): 40ms
    Processing time (w/o IO): 39ms
    Processing time (w/o IO): 40ms
    Processing time (w/o IO): 39ms
    Processing time (w/o IO): 39ms
    Processing time (w/o IO): 42ms
    Processing time (w/o IO): 39ms
    Processing time (w/o IO): 40ms
    Processing time (w/o IO): 39ms
    Processing time (w/o IO): 40ms
    Processing time (w/o IO): 40ms
    Processing time (w/o IO): 39ms
      Time (mean ± σ):     793.0 ms ±   6.1 ms    [User: 742.2 ms, System: 68.8 ms]
      Range (min … max):   781.3 ms … 801.5 ms    10 runs

C#:

    Benchmark 1: ./bin/release/net7.0/publish/related
    Processing time (w/o IO): 55.9398ms
    Processing time (w/o IO): 56.2068ms
    Processing time (w/o IO): 55.7576ms
    Processing time (w/o IO): 56.6432ms
    Processing time (w/o IO): 56.0559ms
    Processing time (w/o IO): 55.628ms
    Processing time (w/o IO): 57.4533ms
    Processing time (w/o IO): 55.9655ms
    Processing time (w/o IO): 55.8375ms
    Processing time (w/o IO): 56.2048ms
    Processing time (w/o IO): 55.7968ms
    Processing time (w/o IO): 55.9525ms
    Processing time (w/o IO): 55.8767ms
      Time (mean ± σ):     110.8 ms ±   1.5 ms    [User: 101.5 ms, System: 19.2 ms]
      Range (min … max):   109.4 ms … 113.6 ms    10 runs

LuaJIT:

    Benchmark 1: luajit only_lua.lua
    Processing time (w/o IO):	102.34880447388	ms
    Processing time (w/o IO):	102.04195976257	ms
    Processing time (w/o IO):	102.39291191101	ms
    Processing time (w/o IO):	102.12302207947	ms
    Processing time (w/o IO):	101.68194770813	ms
    Processing time (w/o IO):	102.24795341492	ms
    Processing time (w/o IO):	102.31304168701	ms
    Processing time (w/o IO):	102.12802886963	ms
    Processing time (w/o IO):	103.45482826233	ms
    Processing time (w/o IO):	101.99999809265	ms
    Processing time (w/o IO):	102.83493995667	ms
    Processing time (w/o IO):	102.94103622437	ms
    Processing time (w/o IO):	102.2629737854	ms
      Time (mean ± σ):     354.0 ms ±   1.6 ms    [User: 332.8 ms, System: 21.1 ms]
      Range (min … max):   351.9 ms … 357.1 ms    10 runs

Lua:

    Benchmark 1: lua only_lua.lua
    Processing time (w/o IO):	1945.5101490021	ms
    Processing time (w/o IO):	1939.8391246796	ms
    Processing time (w/o IO):	1958.037853241	ms
    Processing time (w/o IO):	1936.6340637207	ms
    Processing time (w/o IO):	1935.9130859375	ms
    Processing time (w/o IO):	1939.7969245911	ms
    Processing time (w/o IO):	1933.4540367126	ms
    Processing time (w/o IO):	1959.0139389038	ms
    Processing time (w/o IO):	1953.0141353607	ms
    Processing time (w/o IO):	1942.4459934235	ms
    Processing time (w/o IO):	1941.7090415955	ms
    Processing time (w/o IO):	1945.7359313965	ms
    Processing time (w/o IO):	1942.262172699	ms
      Time (mean ± σ):      2.534 s ±  0.010 s    [User: 2.505 s, System: 0.027 s]
      Range (min … max):    2.521 s …  2.556 s    10 runs

ocaml:

    Benchmark 1: ./_build/default/bin/main.exe
    Processing time (w/o IO): 171ms
    Processing time (w/o IO): 172ms
    Processing time (w/o IO): 174ms
    Processing time (w/o IO): 173ms
    Processing time (w/o IO): 172ms
    Processing time (w/o IO): 171ms
    Processing time (w/o IO): 170ms
    Processing time (w/o IO): 174ms
    Processing time (w/o IO): 176ms
    Processing time (w/o IO): 189ms
    Processing time (w/o IO): 171ms
    Processing time (w/o IO): 174ms
    Processing time (w/o IO): 174ms
      Time (mean ± σ):     269.4 ms ±   8.6 ms    [User: 243.4 ms, System: 24.8 ms]
      Range (min … max):   262.3 ms … 288.7 ms    10 runs

Go:

    Benchmark 1: ./related
    Processing time (w/o IO): 256.08724ms
    Processing time (w/o IO): 258.629736ms
    Processing time (w/o IO): 256.21694ms
      Time (mean ± σ):     343.1 ms ±   4.2 ms    [User: 351.0 ms, System: 25.0 ms]
      Range (min … max):   340.1 ms … 346.1 ms    2 runs

Go Concurrent:

    Benchmark 1: ./related_concurrent
    Processing time (w/o IO): 178.34705ms
    Processing time (w/o IO): 180.873446ms
    Processing time (w/o IO): 182.219244ms
      Time (mean ± σ):     261.5 ms ±   5.2 ms    [User: 425.6 ms, System: 31.0 ms]
      Range (min … max):   257.8 ms … 265.1 ms    2 runs

Rust:

    Benchmark 1: ./target/release/rust
    Processing time (w/o IO): 307.959367ms
    Processing time (w/o IO): 307.625168ms
    Processing time (w/o IO): 308.300767ms
      Time (mean ± σ):     356.4 ms ±   0.2 ms    [User: 341.9 ms, System: 14.5 ms]
      Range (min … max):   356.3 ms … 356.6 ms    2 runs

Rust Concurrent:

    Benchmark 1: ./target/release/rust_rayon
    Processing time (w/o IO): 142.2019ms
    Processing time (w/o IO): 148.707791ms
    Processing time (w/o IO): 141.432601ms
      Time (mean ± σ):     194.8 ms ±   5.7 ms    [User: 308.2 ms, System: 21.1 ms]
      Range (min … max):   190.8 ms … 198.8 ms    2 runs

Python:

    Benchmark 1: python3 ./related.py
    Processing time (w/o IO): 14.953s
    Processing time (w/o IO): 15.022s
    Processing time (w/o IO): 15.073s
      Time (mean ± σ):     15.176 s ±  0.034 s    [User: 15.146 s, System: 0.026 s]
      Range (min … max):   15.152 s … 15.200 s    2 runs

Numpy:

    Benchmark 1: python3 ./related_np.py
    Processing time (w/o IO): 3.353s
    Processing time (w/o IO): 3.161s
    Processing time (w/o IO): 3.150s
      Time (mean ± σ):      3.426 s ±  0.010 s    [User: 3.270 s, System: 0.344 s]
      Range (min … max):    3.419 s …  3.433 s    2 runs

Crystal:

    Benchmark 1: ./crystal
    Processing time (w/o IO): 510.466248ms
    Processing time (w/o IO): 514.576839ms
    Processing time (w/o IO): 511.558146ms
      Time (mean ± σ):     667.6 ms ±   2.1 ms    [User: 643.4 ms, System: 21.6 ms]
      Range (min … max):   666.1 ms … 669.1 ms    2 runs

Zig:

    Benchmark 1: ./main
    Processing time (w/o IO): 331ms
    Processing time (w/o IO): 332ms
    Processing time (w/o IO): 331ms
      Time (mean ± σ):     413.9 ms ±   1.4 ms    [User: 394.3 ms, System: 19.4 ms]
      Range (min … max):   412.9 ms … 414.9 ms    2 runs

Julia:

    Benchmark 1: julia related.jl
    Processing time (w/o IO): 303 milliseconds
    Processing time (w/o IO): 303 milliseconds
    Processing time (w/o IO): 302 milliseconds
      Time (mean ± σ):      3.579 s ±  0.016 s    [User: 3.423 s, System: 0.152 s]
      Range (min … max):    3.568 s …  3.591 s    2 runs

Odin:

    Benchmark 1: ./related
    Processing time (w/o IO):  418.281767ms
    Processing time (w/o IO):  419.326866ms
    Processing time (w/o IO):  418.618967ms
      Time (mean ± σ):      1.141 s ±  0.001 s    [User: 1.121 s, System: 0.019 s]
      Range (min … max):    1.140 s …  1.142 s    2 runs

Vlang:

    Benchmark 1: ./related
    Processing time (w/o IO): 379.677ms
    Processing time (w/o IO): 378.940ms
    Processing time (w/o IO): 380.401ms
      Time (mean ± σ):      2.880 s ±  0.023 s    [User: 2.808 s, System: 0.066 s]
      Range (min … max):    2.864 s …  2.896 s    2 runs

Dart VM:

    Benchmark 1: dart related.dart
    Processing time (w/o IO): 770ms
    Processing time (w/o IO): 830ms
    Processing time (w/o IO): 835ms
      Time (mean ± σ):      1.449 s ±  0.004 s    [User: 1.516 s, System: 0.150 s]
      Range (min … max):    1.447 s …  1.452 s    2 runs

Dart AOT:

    Benchmark 1: ./related
    Processing time (w/o IO): 1013ms
    Processing time (w/o IO): 1009ms
    Processing time (w/o IO): 1013ms
      Time (mean ± σ):      1.371 s ±  0.001 s    [User: 1.334 s, System: 0.046 s]
      Range (min … max):    1.370 s …  1.372 s    2 runs

Swift:

    Benchmark 1: ./.build/release/related
    Processing time (w/o IO): 417.9120063781738ms
    Processing time (w/o IO): 418.4749126434326ms
    Processing time (w/o IO): 420.9311008453369ms
      Time (mean ± σ):      1.484 s ±  0.005 s    [User: 1.383 s, System: 0.092 s]
      Range (min … max):    1.480 s …  1.488 s    2 runs

Swift Concurrent:

    Benchmark 1: ./.build/release/related
    Processing time (w/o IO): 228.258662ms
    Processing time (w/o IO): 227.887462ms
    Processing time (w/o IO): 228.437896ms
      Time (mean ± σ):      1.313 s ±  0.003 s    [User: 1.441 s, System: 0.081 s]
      Range (min … max):    1.311 s …  1.315 s    2 runs

JS (Node):

    Benchmark 1: node node.js
    Processing time (w/o IO): 1208ms
    Processing time (w/o IO): 1391ms
    Processing time (w/o IO): 1209ms
      Time (mean ± σ):      1.489 s ±  0.123 s    [User: 1.451 s, System: 0.085 s]
      Range (min … max):    1.402 s …  1.576 s    2 runs

JS (Bun):

    Benchmark 1: bun bun.js
    Processing time (w/o IO): 4662ms
    Processing time (w/o IO): 6002ms
    Processing time (w/o IO): 4779ms
      Time (mean ± σ):      5.503 s ±  0.867 s    [User: 5.520 s, System: 0.028 s]
      Range (min … max):    4.890 s …  6.116 s    2 runs

JS (Deno):

    Benchmark 1: deno run --allow-read --allow-write deno.js
    Processing time (w/o IO): 1400ms
    Processing time (w/o IO): 1397ms
    Processing time (w/o IO): 1388ms
      Time (mean ± σ):      1.531 s ±  0.005 s    [User: 1.523 s, System: 0.045 s]
      Range (min … max):    1.527 s …  1.534 s    2 runs

Java (JIT):

    ##[error]Exception in thread "main" java.lang.OutOfMemoryError: Java heap space

    at java.base/java.util.ArrayList.<init>(ArrayList.java:156)
    at related_post_gen.App.mainFunc(App.java:105)
    at related_post_gen.App.main(App.java:38)

Java (GraalVM):

    Benchmark 1: ./target/related
    Processing time (w/o IO): 298 ms
    Processing time (w/o IO): 299 ms
    Processing time (w/o IO): 299 ms
      Time (mean ± σ):     368.0 ms ±   0.3 ms    [User: 346.6 ms, System: 21.5 ms]
      Range (min … max):   367.8 ms … 368.3 ms    2 runs

Nim:

    Benchmark 1: ./src/related
    Processing time (w/o IO): 394ms
    Processing time (w/o IO): 395ms
    Processing time (w/o IO): 393ms
      Time (mean ± σ):     461.2 ms ±   1.4 ms    [User: 433.2 ms, System: 27.4 ms]
      Range (min … max):   460.2 ms … 462.1 ms    2 runs

F#:

    Benchmark 1: ./bin/release/net7.0/fsharp
    Processing time (w/o IO): 363ms
    Processing time (w/o IO): 365ms
    Processing time (w/o IO): 364ms
      Time (mean ± σ):     763.6 ms ±   1.4 ms    [User: 697.9 ms, System: 66.6 ms]
      Range (min … max):   762.6 ms … 764.7 ms    2 runs

F# Concurrent:

    Benchmark 1: ./bin/release/net7.0/fsharp_con
    Processing time (w/o IO): 222ms
    Processing time (w/o IO): 267ms
    Processing time (w/o IO): 221ms
      Time (mean ± σ):      2.080 s ±  0.028 s    [User: 2.289 s, System: 0.133 s]
      Range (min … max):    2.061 s …  2.100 s    2 runs

C#:

    Benchmark 1: ./bin/release/net7.0/publish/related
    Processing time (w/o IO): 476.8515ms
    Processing time (w/o IO): 480.3898ms
    Processing time (w/o IO): 477.4964ms
      Time (mean ± σ):     591.1 ms ±   2.0 ms    [User: 572.2 ms, System: 37.6 ms]
      Range (min … max):   589.6 ms … 592.5 ms    2 runs

LuaJIT:

    Benchmark 1: luajit only_lua.lua
    Processing time (w/o IO):	784.03687477112	ms
    Processing time (w/o IO):	785.92014312744	ms
    Processing time (w/o IO):	783.74600410461	ms
      Time (mean ± σ):      1.619 s ±  0.022 s    [User: 1.576 s, System: 0.042 s]
      Range (min … max):    1.604 s …  1.634 s    2 runs

Lua:

    Benchmark 1: lua only_lua.lua
    Processing time (w/o IO):	17196.323871613	ms
    Processing time (w/o IO):	16923.197031021	ms
    Processing time (w/o IO):	17180.755138397	ms
      Time (mean ± σ):     18.794 s ±  0.178 s    [User: 18.722 s, System: 0.066 s]
      Range (min … max):   18.668 s … 18.920 s    2 runs

ocaml:

    Benchmark 1: ./_build/default/bin/main.exe
    Processing time (w/o IO): 1540ms
    Processing time (w/o IO): 1538ms
    Processing time (w/o IO): 1518ms
      Time (mean ± σ):      1.819 s ±  0.015 s    [User: 1.752 s, System: 0.064 s]
      Range (min … max):    1.809 s …  1.829 s    2 runs

Go:

    Benchmark 1: ./related
    Processing time (w/o IO): 996.994386ms
    Processing time (w/o IO): 998.103081ms
    Processing time (w/o IO): 1.000532825s
      Time (mean ± σ):      1.174 s ±  0.003 s    [User: 1.158 s, System: 0.087 s]
      Range (min … max):    1.172 s …  1.176 s    2 runs

Go Concurrent:

    Benchmark 1: ./related_concurrent
    Processing time (w/o IO): 695.761601ms
    Processing time (w/o IO): 696.751898ms
    Processing time (w/o IO): 691.770107ms
      Time (mean ± σ):     856.0 ms ±   4.6 ms    [User: 1527.9 ms, System: 54.3 ms]
      Range (min … max):   852.7 ms … 859.3 ms    2 runs

Rust:

    Benchmark 1: ./target/release/rust
    Processing time (w/o IO): 1.2755339s
    Processing time (w/o IO): 1.274650781s
    Processing time (w/o IO): 1.273225282s
      Time (mean ± σ):      1.372 s ±  0.000 s    [User: 1.343 s, System: 0.028 s]
      Range (min … max):    1.372 s …  1.372 s    2 runs

Rust Concurrent:

    Benchmark 1: ./target/release/rust_rayon
    Processing time (w/o IO): 553.789335ms
    Processing time (w/o IO): 551.31804ms
    Processing time (w/o IO): 550.308841ms
      Time (mean ± σ):     650.7 ms ±   0.6 ms    [User: 1150.5 ms, System: 43.4 ms]
      Range (min … max):   650.3 ms … 651.1 ms    2 runs

Python:

    Benchmark 1: python3 ./related.py
    Processing time (w/o IO): 60.349s
    Processing time (w/o IO): 60.219s
    Processing time (w/o IO): 60.556s
      Time (mean ± σ):     60.608 s ±  0.238 s    [User: 60.523 s, System: 0.066 s]
      Range (min … max):   60.440 s … 60.777 s    2 runs

Numpy:

    Benchmark 1: python3 ./related_np.py
    Processing time (w/o IO): 14.644s
    Processing time (w/o IO): 12.752s
    Processing time (w/o IO): 12.640s
      Time (mean ± σ):     13.114 s ±  0.101 s    [User: 11.950 s, System: 1.327 s]
      Range (min … max):   13.042 s … 13.185 s    2 runs

Crystal:

    Benchmark 1: ./crystal
    Processing time (w/o IO): 2015.30172ms
    Processing time (w/o IO): 2017.837907ms
    Processing time (w/o IO): 2014.720812ms
      Time (mean ± σ):      2.324 s ±  0.008 s    [User: 2.272 s, System: 0.043 s]
      Range (min … max):    2.319 s …  2.330 s    2 runs

Zig:

    Benchmark 1: ./main
    Processing time (w/o IO): 1298ms
    Processing time (w/o IO): 1300ms
    Processing time (w/o IO): 1300ms
      Time (mean ± σ):      1.468 s ±  0.005 s    [User: 1.422 s, System: 0.038 s]
      Range (min … max):    1.465 s …  1.472 s    2 runs

Julia:

    Benchmark 1: julia related.jl
    Processing time (w/o IO): 1185 milliseconds
    Processing time (w/o IO): 1184 milliseconds
    Processing time (w/o IO): 1179 milliseconds
      Time (mean ± σ):      4.543 s ±  0.017 s    [User: 4.349 s, System: 0.181 s]
      Range (min … max):    4.532 s …  4.555 s    2 runs

Odin:

    Benchmark 1: ./related
    Processing time (w/o IO):  1.996642431s
    Processing time (w/o IO):  1.982498509s
    Processing time (w/o IO):  1.976828662s
      Time (mean ± σ):      3.438 s ±  0.008 s    [User: 3.379 s, System: 0.045 s]
      Range (min … max):    3.433 s …  3.444 s    2 runs

Vlang:

    Benchmark 1: ./related
    Processing time (w/o IO): 1.452s
    Processing time (w/o IO): 1.453s
    Processing time (w/o IO): 1.452s
      Time (mean ± σ):     15.804 s ±  0.047 s    [User: 15.653 s, System: 0.140 s]
      Range (min … max):   15.771 s … 15.837 s    2 runs

Dart VM:

    Benchmark 1: dart related.dart
    Processing time (w/o IO): 2745ms
    Processing time (w/o IO): 2754ms
    Processing time (w/o IO): 2731ms
      Time (mean ± σ):      3.706 s ±  0.108 s    [User: 3.709 s, System: 0.152 s]
      Range (min … max):    3.629 s …  3.782 s    2 runs

Dart AOT:

    Benchmark 1: ./related
    Processing time (w/o IO): 3962ms
    Processing time (w/o IO): 3976ms
    Processing time (w/o IO): 3965ms
      Time (mean ± σ):      4.678 s ±  0.004 s    [User: 4.621 s, System: 0.092 s]
      Range (min … max):    4.676 s …  4.681 s    2 runs

Swift:

    Benchmark 1: ./.build/release/related
    Processing time (w/o IO): 1655.1549434661865ms
    Processing time (w/o IO): 1624.0999698638916ms
    Processing time (w/o IO): 1615.6389713287354ms
      Time (mean ± σ):      3.767 s ±  0.004 s    [User: 3.564 s, System: 0.179 s]
      Range (min … max):    3.764 s …  3.770 s    2 runs

Swift Concurrent:

    Benchmark 1: ./.build/release/related
    Processing time (w/o IO): 838.8092ms
    Processing time (w/o IO): 859.222569ms
    Processing time (w/o IO): 847.897898ms
      Time (mean ± σ):      3.011 s ±  0.010 s    [User: 3.616 s, System: 0.187 s]
      Range (min … max):    3.004 s …  3.018 s    2 runs

JS (Node):

    Benchmark 1: node node.js
    Processing time (w/o IO): 4700ms
    Processing time (w/o IO): 4714ms
    Processing time (w/o IO): 4697ms
      Time (mean ± σ):      5.026 s ±  0.023 s    [User: 4.939 s, System: 0.127 s]
      Range (min … max):    5.010 s …  5.043 s    2 runs

JS (Bun):

    Benchmark 1: bun bun.js
    Processing time (w/o IO): 23874ms
    Processing time (w/o IO): 24052ms
    Processing time (w/o IO): 24059ms
      Time (mean ± σ):     24.282 s ±  0.005 s    [User: 24.265 s, System: 0.070 s]
      Range (min … max):   24.278 s … 24.285 s    2 runs

JS (Deno):

    Benchmark 1: deno run --allow-read --allow-write deno.js
    Processing time (w/o IO): 4395ms
    Processing time (w/o IO): 4375ms
    Processing time (w/o IO): 4428ms
      Time (mean ± σ):      4.650 s ±  0.031 s    [User: 4.588 s, System: 0.082 s]
      Range (min … max):    4.628 s …  4.672 s    2 runs

Java (JIT):

    ##[error]Exception in thread "main" java.lang.OutOfMemoryError: Java heap space

    at java.base/java.util.ArrayList.<init>(ArrayList.java:156)
    at related_post_gen.App.mainFunc(App.java:105)
    at related_post_gen.App.main(App.java:38)

Java (GraalVM):

    Benchmark 1: ./target/related
    Processing time (w/o IO): 1164 ms
    Processing time (w/o IO): 1163 ms
    Processing time (w/o IO): 1164 ms
      Time (mean ± σ):      1.309 s ±  0.007 s    [User: 1.245 s, System: 0.053 s]
      Range (min … max):    1.303 s …  1.314 s    2 runs

Nim:

    Benchmark 1: ./src/related
    Processing time (w/o IO): 2094ms
    Processing time (w/o IO): 2087ms
    Processing time (w/o IO): 2092ms
      Time (mean ± σ):      2.228 s ±  0.008 s    [User: 2.177 s, System: 0.043 s]
      Range (min … max):    2.222 s …  2.233 s    2 runs

F#:

    Benchmark 1: ./bin/release/net7.0/fsharp
    Processing time (w/o IO): 1394ms
    Processing time (w/o IO): 1395ms
    Processing time (w/o IO): 1394ms
      Time (mean ± σ):      2.013 s ±  0.006 s    [User: 1.946 s, System: 0.091 s]
      Range (min … max):    2.009 s …  2.017 s    2 runs

F# Concurrent:

    Benchmark 1: ./bin/release/net7.0/fsharp_con
    Processing time (w/o IO): 980ms
    Processing time (w/o IO): 815ms
    Processing time (w/o IO): 981ms
      Time (mean ± σ):      4.160 s ±  0.141 s    [User: 4.950 s, System: 0.242 s]
      Range (min … max):    4.061 s …  4.260 s    2 runs

C#:

    Benchmark 1: ./bin/release/net7.0/publish/related
    Processing time (w/o IO): 1825.783ms
    Processing time (w/o IO): 1806.71ms
    Processing time (w/o IO): 1831.2088ms
      Time (mean ± σ):      2.031 s ±  0.012 s    [User: 1.997 s, System: 0.063 s]
      Range (min … max):    2.022 s …  2.039 s    2 runs

LuaJIT:

    Benchmark 1: luajit only_lua.lua
    Processing time (w/o IO):	2915.7390594482	ms
    Processing time (w/o IO):	2912.5311374664	ms
    Processing time (w/o IO):	2911.7159843445	ms
      Time (mean ± σ):      4.578 s ±  0.006 s    [User: 4.476 s, System: 0.097 s]
      Range (min … max):    4.574 s …  4.582 s    2 runs

Lua:

    Benchmark 1: lua only_lua.lua
    Processing time (w/o IO):	68785.354852676	ms
    Processing time (w/o IO):	71467.200040817	ms
    Processing time (w/o IO):	68326.045036316	ms
      Time (mean ± σ):     73.503 s ±  2.205 s    [User: 73.313 s, System: 0.160 s]
      Range (min … max):   71.944 s … 75.062 s    2 runs

ocaml:

    Benchmark 1: ./_build/default/bin/main.exe
    Processing time (w/o IO): 6075ms
    Processing time (w/o IO): 6094ms
    Processing time (w/o IO): 6101ms
      Time (mean ± σ):      6.680 s ±  0.008 s    [User: 6.523 s, System: 0.141 s]
      Range (min … max):    6.675 s …  6.686 s    2 runs
