Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 24.707528ms
	Processing time (w/o IO): 24.681428ms
	Processing time (w/o IO): 24.147914ms
	Processing time (w/o IO): 24.202316ms
	Processing time (w/o IO): 24.064513ms
	Processing time (w/o IO): 24.257918ms
	Processing time (w/o IO): 24.092313ms
	Processing time (w/o IO): 24.194516ms
	Processing time (w/o IO): 24.792531ms
	Processing time (w/o IO): 24.601326ms
	Processing time (w/o IO): 24.109814ms
	Processing time (w/o IO): 24.205216ms
	Processing time (w/o IO): 24.931035ms
	  Time (mean ± σ):      64.2 ms ±   1.4 ms    [User: 62.9 ms, System: 7.7 ms]
	  Range (min … max):    62.3 ms …  66.9 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 13.306539ms
	Processing time (w/o IO): 13.307539ms
	Processing time (w/o IO): 12.731624ms
	Processing time (w/o IO): 12.767425ms
	Processing time (w/o IO): 12.99383ms
	Processing time (w/o IO): 13.538545ms
	Processing time (w/o IO): 12.434617ms
	Processing time (w/o IO): 12.942429ms
	Processing time (w/o IO): 12.623122ms
	Processing time (w/o IO): 13.424542ms
	Processing time (w/o IO): 13.545945ms
	Processing time (w/o IO): 13.153834ms
	Processing time (w/o IO): 14.218062ms
	  Time (mean ± σ):      51.1 ms ±   1.2 ms    [User: 80.5 ms, System: 10.5 ms]
	  Range (min … max):    49.2 ms …  53.2 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 23.723118ms
	Processing time (w/o IO): 23.429712ms
	Processing time (w/o IO): 23.430211ms
	Processing time (w/o IO): 23.452312ms
	Processing time (w/o IO): 23.405611ms
	Processing time (w/o IO): 23.397511ms
	Processing time (w/o IO): 23.474113ms
	Processing time (w/o IO): 23.408611ms
	Processing time (w/o IO): 23.456212ms
	Processing time (w/o IO): 23.428612ms
	Processing time (w/o IO): 24.178928ms
	Processing time (w/o IO): 23.524913ms
	Processing time (w/o IO): 23.465812ms
	  Time (mean ± σ):      39.8 ms ±   1.2 ms    [User: 33.4 ms, System: 6.5 ms]
	  Range (min … max):    38.7 ms …  42.4 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 12.374459ms
	Processing time (w/o IO): 12.237956ms
	Processing time (w/o IO): 12.309557ms
	Processing time (w/o IO): 12.346858ms
	Processing time (w/o IO): 12.159854ms
	Processing time (w/o IO): 12.251856ms
	Processing time (w/o IO): 12.248156ms
	Processing time (w/o IO): 12.248557ms
	Processing time (w/o IO): 12.134853ms
	Processing time (w/o IO): 12.093653ms
	Processing time (w/o IO): 12.166254ms
	Processing time (w/o IO): 12.255956ms
	Processing time (w/o IO): 12.201355ms
	  Time (mean ± σ):      29.9 ms ±   0.5 ms    [User: 33.0 ms, System: 9.0 ms]
	  Range (min … max):    29.0 ms …  30.6 ms    10 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 24.659ms
	Processing time (w/o IO): 24.771ms
	Processing time (w/o IO): 24.608ms
	Processing time (w/o IO): 24.941ms
	Processing time (w/o IO): 24.334ms
	Processing time (w/o IO): 24.344ms
	Processing time (w/o IO): 24.578ms
	Processing time (w/o IO): 24.296ms
	Processing time (w/o IO): 25.009ms
	Processing time (w/o IO): 24.993ms
	Processing time (w/o IO): 25.952ms
	Processing time (w/o IO): 27.742ms
	Processing time (w/o IO): 25.188ms
	  Time (mean ± σ):     105.7 ms ±   2.1 ms    [User: 92.2 ms, System: 15.0 ms]
	  Range (min … max):   103.6 ms … 109.6 ms    10 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 16.89ms
	Processing time (w/o IO): 18.279ms
	Processing time (w/o IO): 17.594ms
	Processing time (w/o IO): 17.827ms
	Processing time (w/o IO): 17.834ms
	Processing time (w/o IO): 15.163ms
	Processing time (w/o IO): 15.936ms
	Processing time (w/o IO): 18.011ms
	Processing time (w/o IO): 17.602ms
	Processing time (w/o IO): 17.817ms
	Processing time (w/o IO): 18.514ms
	Processing time (w/o IO): 15.394ms
	Processing time (w/o IO): 16.737ms
	  Time (mean ± σ):      97.3 ms ±   1.3 ms    [User: 117.2 ms, System: 13.6 ms]
	  Range (min … max):    95.4 ms …  98.6 ms    10 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 37 ms
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
	  Time (mean ± σ):     238.9 ms ±   2.0 ms    [User: 203.8 ms, System: 35.0 ms]
	  Range (min … max):   236.3 ms … 241.8 ms    10 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 19 ms
	Processing time (w/o IO): 19 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 15 ms
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 18 ms
	  Time (mean ± σ):     232.1 ms ±   1.1 ms    [User: 235.8 ms, System: 37.3 ms]
	  Range (min … max):   230.2 ms … 234.1 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 1.474s
	Processing time (w/o IO): 1.541s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.474s
	Processing time (w/o IO): 1.459s
	Processing time (w/o IO): 1.461s
	Processing time (w/o IO): 1.459s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.477s
	Processing time (w/o IO): 1.461s
	Processing time (w/o IO): 1.493s
	Processing time (w/o IO): 1.464s
	  Time (mean ± σ):      1.534 s ±  0.011 s    [User: 1.519 s, System: 0.015 s]
	  Range (min … max):    1.526 s …  1.560 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 352.8ms
	Processing time (w/o IO): 351.9ms
	Processing time (w/o IO): 353.5ms
	Processing time (w/o IO): 351.3ms
	Processing time (w/o IO): 350.5ms
	Processing time (w/o IO): 351.4ms
	Processing time (w/o IO): 352.4ms
	Processing time (w/o IO): 353.1ms
	Processing time (w/o IO): 352.4ms
	Processing time (w/o IO): 351.8ms
	Processing time (w/o IO): 337.2ms
	Processing time (w/o IO): 350.5ms
	Processing time (w/o IO): 350.5ms
	  Time (mean ± σ):     670.2 ms ±  97.0 ms    [User: 849.1 ms, System: 401.4 ms]
	  Range (min … max):   631.1 ms … 944.6 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 61.151138ms
	Processing time (w/o IO): 60.134223ms
	Processing time (w/o IO): 60.103922ms
	Processing time (w/o IO): 60.654231ms
	Processing time (w/o IO): 60.346926ms
	Processing time (w/o IO): 61.424843ms
	Processing time (w/o IO): 60.399127ms
	Processing time (w/o IO): 60.332126ms
	Processing time (w/o IO): 60.477028ms
	Processing time (w/o IO): 60.480128ms
	Processing time (w/o IO): 60.313326ms
	Processing time (w/o IO): 60.307925ms
	Processing time (w/o IO): 60.526028ms
	  Time (mean ± σ):     111.2 ms ±   1.6 ms    [User: 102.0 ms, System: 9.1 ms]
	  Range (min … max):   108.5 ms … 114.3 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	  Time (mean ± σ):      76.1 ms ±   0.7 ms    [User: 69.7 ms, System: 6.4 ms]
	  Range (min … max):    75.5 ms …  77.7 ms    10 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	  Time (mean ± σ):     478.7 ms ±  15.1 ms    [User: 373.6 ms, System: 208.7 ms]
	  Range (min … max):   457.8 ms … 497.8 ms    10 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	  Time (mean ± σ):      1.017 s ±  0.020 s    [User: 0.883 s, System: 0.237 s]
	  Range (min … max):    0.989 s …  1.041 s    10 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 18 milliseconds
	  Time (mean ± σ):     473.4 ms ±  14.8 ms    [User: 404.8 ms, System: 219.7 ms]
	  Range (min … max):   454.8 ms … 495.4 ms    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  41.455952ms
	Processing time (w/o IO):  41.178849ms
	Processing time (w/o IO):  40.853945ms
	Processing time (w/o IO):  41.284151ms
	Processing time (w/o IO):  41.071848ms
	Processing time (w/o IO):  41.23525ms
	Processing time (w/o IO):  41.188349ms
	Processing time (w/o IO):  41.666655ms
	Processing time (w/o IO):  41.27495ms
	Processing time (w/o IO):  40.850445ms
	Processing time (w/o IO):  41.24915ms
	Processing time (w/o IO):  40.993347ms
	Processing time (w/o IO):  40.729143ms
	  Time (mean ± σ):     259.0 ms ±   0.5 ms    [User: 250.0 ms, System: 9.0 ms]
	  Range (min … max):   258.4 ms … 259.7 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 49.505ms
	Processing time (w/o IO): 48.962ms
	Processing time (w/o IO): 48.562ms
	Processing time (w/o IO): 49.160ms
	Processing time (w/o IO): 49.256ms
	Processing time (w/o IO): 49.210ms
	Processing time (w/o IO): 49.129ms
	Processing time (w/o IO): 49.663ms
	Processing time (w/o IO): 48.974ms
	Processing time (w/o IO): 48.576ms
	Processing time (w/o IO): 48.736ms
	Processing time (w/o IO): 49.130ms
	Processing time (w/o IO): 49.288ms
	  Time (mean ± σ):     373.6 ms ±   2.0 ms    [User: 348.7 ms, System: 24.8 ms]
	  Range (min … max):   370.8 ms … 377.2 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 134ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 154ms
	Processing time (w/o IO): 133ms
	Processing time (w/o IO): 133ms
	Processing time (w/o IO): 133ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 155ms
	Processing time (w/o IO): 130ms
	  Time (mean ± σ):     525.1 ms ±  15.6 ms    [User: 636.5 ms, System: 113.8 ms]
	  Range (min … max):   502.5 ms … 551.2 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 186ms
	  Time (mean ± σ):     313.9 ms ±   1.3 ms    [User: 298.5 ms, System: 19.1 ms]
	  Range (min … max):   312.2 ms … 316.2 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 51.460981369018555ms
	Processing time (w/o IO): 51.7730712890625ms
	Processing time (w/o IO): 52.024006843566895ms
	Processing time (w/o IO): 50.823092460632324ms
	Processing time (w/o IO): 51.17011070251465ms
	Processing time (w/o IO): 51.2310266494751ms
	Processing time (w/o IO): 50.99797248840332ms
	Processing time (w/o IO): 51.7430305480957ms
	Processing time (w/o IO): 51.01907253265381ms
	Processing time (w/o IO): 51.37300491333008ms
	Processing time (w/o IO): 51.02109909057617ms
	Processing time (w/o IO): 50.95100402832031ms
	Processing time (w/o IO): 50.8730411529541ms
	  Time (mean ± σ):     423.3 ms ±  15.0 ms    [User: 352.1 ms, System: 37.9 ms]
	  Range (min … max):   405.7 ms … 458.3 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 32.681399ms
	Processing time (w/o IO): 32.289194ms
	Processing time (w/o IO): 32.083892ms
	Processing time (w/o IO): 32.942702ms
	Processing time (w/o IO): 32.216394ms
	Processing time (w/o IO): 31.623761ms
	Processing time (w/o IO): 32.728873ms
	Processing time (w/o IO): 33.104377ms
	Processing time (w/o IO): 31.57346ms
	Processing time (w/o IO): 31.925264ms
	Processing time (w/o IO): 32.636772ms
	Processing time (w/o IO): 32.104166ms
	Processing time (w/o IO): 33.570283ms
	  Time (mean ± σ):     453.1 ms ±  81.8 ms    [User: 439.3 ms, System: 34.8 ms]
	  Range (min … max):   397.5 ms … 646.3 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 184ms
	Processing time (w/o IO): 128ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 189ms
	Processing time (w/o IO): 128ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 184ms
	Processing time (w/o IO): 133ms
	Processing time (w/o IO): 132ms
	  Time (mean ± σ):     322.6 ms ±  23.9 ms    [User: 313.5 ms, System: 65.5 ms]
	  Range (min … max):   304.3 ms … 367.2 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 120ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 105ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 125ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 121ms
	Processing time (w/o IO): 120ms
	Processing time (w/o IO): 119ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 121ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 126ms
	  Time (mean ± σ):     182.4 ms ±   3.9 ms    [User: 202.6 ms, System: 36.9 ms]
	  Range (min … max):   177.2 ms … 190.1 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 200ms
	Processing time (w/o IO): 197ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 200ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 201ms
	Processing time (w/o IO): 199ms
	Processing time (w/o IO): 136ms
	Processing time (w/o IO): 139ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 136ms
	  Time (mean ± σ):     232.4 ms ±  32.8 ms    [User: 221.3 ms, System: 34.7 ms]
	  Range (min … max):   205.6 ms … 271.8 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 56 ms
	  Time (mean ± σ):     394.4 ms ±   6.1 ms    [User: 709.1 ms, System: 48.8 ms]
	  Range (min … max):   380.8 ms … 404.0 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	  Time (mean ± σ):     144.1 ms ±   0.7 ms    [User: 128.7 ms, System: 15.5 ms]
	  Range (min … max):   143.4 ms … 145.6 ms    10 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 38 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 38 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 38 ms
	  Time (mean ± σ):      68.2 ms ±   1.0 ms    [User: 112.9 ms, System: 13.1 ms]
	  Range (min … max):    66.5 ms …  69.3 ms    10 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 30.321ms
	Processing time (w/o IO): 29.929ms
	Processing time (w/o IO): 29.917ms
	Processing time (w/o IO): 29.891ms
	Processing time (w/o IO): 30.074ms
	Processing time (w/o IO): 29.97ms
	Processing time (w/o IO): 30.074ms
	Processing time (w/o IO): 30.236ms
	Processing time (w/o IO): 30.197ms
	Processing time (w/o IO): 30.07ms
	Processing time (w/o IO): 30.096ms
	Processing time (w/o IO): 30.18ms
	Processing time (w/o IO): 29.937ms
	  Time (mean ± σ):      55.3 ms ±   0.7 ms    [User: 42.0 ms, System: 13.2 ms]
	  Range (min … max):    54.3 ms …  56.4 ms    10 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 81ms
	Processing time (w/o IO): 81ms
	Processing time (w/o IO): 81ms
	Processing time (w/o IO): 81ms
	Processing time (w/o IO): 81ms
	Processing time (w/o IO): 81ms
	Processing time (w/o IO): 80ms
	Processing time (w/o IO): 81ms
	Processing time (w/o IO): 81ms
	Processing time (w/o IO): 82ms
	Processing time (w/o IO): 81ms
	Processing time (w/o IO): 81ms
	Processing time (w/o IO): 82ms
	  Time (mean ± σ):      1.028 s ±  0.008 s    [User: 1.132 s, System: 0.102 s]
	  Range (min … max):    1.016 s …  1.040 s    10 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	  Time (mean ± σ):     933.0 ms ±  28.0 ms    [User: 1101.3 ms, System: 95.4 ms]
	  Range (min … max):   880.3 ms … 994.7 ms    10 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	  Time (mean ± σ):     719.5 ms ±   3.3 ms    [User: 809.7 ms, System: 87.4 ms]
	  Range (min … max):   713.1 ms … 724.5 ms    10 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 30ms
	Processing time (w/o IO): 30ms
	Processing time (w/o IO): 30ms
	Processing time (w/o IO): 30ms
	Processing time (w/o IO): 30ms
	Processing time (w/o IO): 30ms
	Processing time (w/o IO): 30ms
	Processing time (w/o IO): 30ms
	Processing time (w/o IO): 30ms
	Processing time (w/o IO): 30ms
	Processing time (w/o IO): 30ms
	Processing time (w/o IO): 30ms
	Processing time (w/o IO): 30ms
	  Time (mean ± σ):     754.9 ms ±   7.6 ms    [User: 732.8 ms, System: 81.2 ms]
	  Range (min … max):   750.1 ms … 776.0 ms    10 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 27.4446ms
	Processing time (w/o IO): 27.1504ms
	Processing time (w/o IO): 27.9201ms
	Processing time (w/o IO): 27.4149ms
	Processing time (w/o IO): 27.2353ms
	Processing time (w/o IO): 27.1751ms
	Processing time (w/o IO): 26.9942ms
	Processing time (w/o IO): 27.0879ms
	Processing time (w/o IO): 27.2691ms
	Processing time (w/o IO): 27.0977ms
	Processing time (w/o IO): 26.8951ms
	Processing time (w/o IO): 27.3016ms
	Processing time (w/o IO): 27.2123ms
	  Time (mean ± σ):     213.4 ms ±   4.9 ms    [User: 174.7 ms, System: 28.2 ms]
	  Range (min … max):   206.1 ms … 223.4 ms    10 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 26.2055ms
	Processing time (w/o IO): 26.4639ms
	Processing time (w/o IO): 27.2898ms
	Processing time (w/o IO): 26.1407ms
	Processing time (w/o IO): 26.2798ms
	Processing time (w/o IO): 28.0079ms
	Processing time (w/o IO): 26.167ms
	Processing time (w/o IO): 26.6683ms
	Processing time (w/o IO): 26.428ms
	Processing time (w/o IO): 27.097ms
	Processing time (w/o IO): 26.4731ms
	Processing time (w/o IO): 28.2952ms
	Processing time (w/o IO): 26.2544ms
	  Time (mean ± σ):     102.7 ms ±   1.6 ms    [User: 101.6 ms, System: 18.4 ms]
	  Range (min … max):   100.4 ms … 105.7 ms    10 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 26.5169ms
	Processing time (w/o IO): 20.2748ms
	Processing time (w/o IO): 24.2265ms
	Processing time (w/o IO): 25.3358ms
	Processing time (w/o IO): 24.0862ms
	Processing time (w/o IO): 22.2864ms
	Processing time (w/o IO): 22.1756ms
	Processing time (w/o IO): 27.2577ms
	Processing time (w/o IO): 23.1084ms
	Processing time (w/o IO): 25.3994ms
	Processing time (w/o IO): 20.6505ms
	Processing time (w/o IO): 18.9423ms
	Processing time (w/o IO): 24.2288ms
	  Time (mean ± σ):     242.8 ms ±  15.1 ms    [User: 219.0 ms, System: 65.3 ms]
	  Range (min … max):   228.4 ms … 280.8 ms    10 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 16.9975ms
	Processing time (w/o IO): 13.0616ms
	Processing time (w/o IO): 19.3634ms
	Processing time (w/o IO): 15.5004ms
	Processing time (w/o IO): 19.2159ms
	Processing time (w/o IO): 19.6073ms
	Processing time (w/o IO): 14.7657ms
	Processing time (w/o IO): 15.768ms
	Processing time (w/o IO): 17.0118ms
	Processing time (w/o IO): 15.3515ms
	Processing time (w/o IO): 18.4923ms
	Processing time (w/o IO): 14.1688ms
	Processing time (w/o IO): 18.6753ms
	  Time (mean ± σ):      90.9 ms ±   2.8 ms    [User: 138.7 ms, System: 49.4 ms]
	  Range (min … max):    85.7 ms …  94.2 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	112.35809326172	ms
	Processing time (w/o IO):	111.60898208618	ms
	Processing time (w/o IO):	88.315963745117	ms
	Processing time (w/o IO):	114.85004425049	ms
	Processing time (w/o IO):	106.2479019165	ms
	Processing time (w/o IO):	118.29400062561	ms
	Processing time (w/o IO):	108.33811759949	ms
	Processing time (w/o IO):	104.5298576355	ms
	Processing time (w/o IO):	88.218927383423	ms
	Processing time (w/o IO):	111.47785186768	ms
	Processing time (w/o IO):	110.81290245056	ms
	Processing time (w/o IO):	87.564945220947	ms
	Processing time (w/o IO):	107.99908638	ms
	  Time (mean ± σ):     350.1 ms ±  18.4 ms    [User: 329.6 ms, System: 20.5 ms]
	  Range (min … max):   319.9 ms … 377.5 ms    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1090.4500484467	ms
	Processing time (w/o IO):	1090.7089710236	ms
	Processing time (w/o IO):	1108.9358329773	ms
	Processing time (w/o IO):	1094.6981906891	ms
	Processing time (w/o IO):	1091.7479991913	ms
	Processing time (w/o IO):	1090.4400348663	ms
	Processing time (w/o IO):	1092.0960903168	ms
	Processing time (w/o IO):	1091.4709568024	ms
	Processing time (w/o IO):	1090.6519889832	ms
	Processing time (w/o IO):	1091.6731357574	ms
	Processing time (w/o IO):	1090.4839038849	ms
	Processing time (w/o IO):	1090.6760692596	ms
	Processing time (w/o IO):	1093.1830406189	ms
	  Time (mean ± σ):      1.518 s ±  0.008 s    [User: 1.502 s, System: 0.015 s]
	  Range (min … max):    1.512 s …  1.539 s    10 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 139ms
	Processing time (w/o IO): 143ms
	Processing time (w/o IO): 142ms
	Processing time (w/o IO): 139ms
	Processing time (w/o IO): 139ms
	Processing time (w/o IO): 145ms
	Processing time (w/o IO): 142ms
	Processing time (w/o IO): 146ms
	Processing time (w/o IO): 143ms
	Processing time (w/o IO): 142ms
	Processing time (w/o IO): 142ms
	  Time (mean ± σ):     239.4 ms ±  37.6 ms    [User: 201.6 ms, System: 25.9 ms]
	  Range (min … max):   220.8 ms … 345.8 ms    10 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 1.517217 s
	Processing time (w/o IO): 1.517901 s
	Processing time (w/o IO): 1.523116 s
	Processing time (w/o IO): 1.512567 s
	Processing time (w/o IO): 1.515951 s
	Processing time (w/o IO): 1.515588 s
	Processing time (w/o IO): 1.514324 s
	Processing time (w/o IO): 1.516790 s
	Processing time (w/o IO): 1.519095 s
	Processing time (w/o IO): 1.518075 s
	Processing time (w/o IO): 1.518979 s
	Processing time (w/o IO): 1.513369 s
	Processing time (w/o IO): 1.519152 s
	  Time (mean ± σ):      1.862 s ±  0.009 s    [User: 1.865 s, System: 0.111 s]
	  Range (min … max):    1.850 s …  1.875 s    10 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 381.157294ms
	Processing time (w/o IO): 373.346358ms
	Processing time (w/o IO): 385.468624ms
	  Time (mean ± σ):     525.7 ms ±  14.6 ms    [User: 515.2 ms, System: 41.4 ms]
	  Range (min … max):   515.4 ms … 536.0 ms    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 165.823836ms
	Processing time (w/o IO): 168.455294ms
	Processing time (w/o IO): 168.345192ms
	  Time (mean ± σ):     313.2 ms ±   0.5 ms    [User: 788.2 ms, System: 39.8 ms]
	  Range (min … max):   312.9 ms … 313.5 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 339.917354ms
	Processing time (w/o IO): 339.874853ms
	Processing time (w/o IO): 340.603169ms
	  Time (mean ± σ):     404.6 ms ±   1.6 ms    [User: 365.2 ms, System: 39.3 ms]
	  Range (min … max):   403.5 ms … 405.7 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 174.678131ms
	Processing time (w/o IO): 173.981215ms
	Processing time (w/o IO): 174.403224ms
	  Time (mean ± σ):     237.3 ms ±   0.5 ms    [User: 374.9 ms, System: 33.6 ms]
	  Range (min … max):   236.9 ms … 237.7 ms    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 322.038ms
	Processing time (w/o IO): 311.786ms
	Processing time (w/o IO): 313.91ms
	  Time (mean ± σ):     609.6 ms ±   1.4 ms    [User: 576.2 ms, System: 37.4 ms]
	  Range (min … max):   608.6 ms … 610.6 ms    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 171.914ms
	Processing time (w/o IO): 172.241ms
	Processing time (w/o IO): 172.344ms
	  Time (mean ± σ):     466.8 ms ±   0.0 ms    [User: 894.5 ms, System: 31.4 ms]
	  Range (min … max):   466.8 ms … 466.8 ms    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 522 ms
	Processing time (w/o IO): 520 ms
	Processing time (w/o IO): 519 ms
	  Time (mean ± σ):      1.332 s ±  0.003 s    [User: 1.214 s, System: 0.117 s]
	  Range (min … max):    1.329 s …  1.334 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 205 ms
	Processing time (w/o IO): 204 ms
	Processing time (w/o IO): 206 ms
	  Time (mean ± σ):      1.053 s ±  0.004 s    [User: 1.506 s, System: 0.134 s]
	  Range (min … max):    1.050 s …  1.056 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 23.482s
	Processing time (w/o IO): 23.623s
	  Time (abs ≡):        23.786 s               [User: 23.746 s, System: 0.035 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 6.447s
	Processing time (w/o IO): 7.355s
	Processing time (w/o IO): 7.762s
	  Time (mean ± σ):      8.088 s ±  0.281 s    [User: 5.144 s, System: 3.533 s]
	  Range (min … max):    7.889 s …  8.287 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 911.761552ms
	Processing time (w/o IO): 910.521435ms
	Processing time (w/o IO): 907.58571ms
	  Time (mean ± σ):      1.129 s ±  0.007 s    [User: 1.087 s, System: 0.033 s]
	  Range (min … max):    1.124 s …  1.134 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 429ms
	Processing time (w/o IO): 430ms
	Processing time (w/o IO): 428ms
	  Time (mean ± σ):     619.2 ms ±   2.2 ms    [User: 583.6 ms, System: 35.5 ms]
	  Range (min … max):   617.6 ms … 620.8 ms    2 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 480 milliseconds
	Processing time (w/o IO): 478 milliseconds
	Processing time (w/o IO): 482 milliseconds
	  Time (mean ± σ):      1.149 s ±  0.012 s    [User: 1.022 s, System: 0.230 s]
	  Range (min … max):    1.141 s …  1.158 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 55 milliseconds
	Processing time (w/o IO): 56 milliseconds
	Processing time (w/o IO): 59 milliseconds
	  Time (mean ± σ):      1.191 s ±  0.023 s    [User: 1.026 s, System: 0.269 s]
	  Range (min … max):    1.175 s …  1.208 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 223 milliseconds
	Processing time (w/o IO): 221 milliseconds
	Processing time (w/o IO): 222 milliseconds
	  Time (mean ± σ):     892.8 ms ±  18.3 ms    [User: 1410.3 ms, System: 238.3 ms]
	  Range (min … max):   879.9 ms … 905.8 ms    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  686.839108ms
	Processing time (w/o IO):  684.276224ms
	Processing time (w/o IO):  688.638626ms
	  Time (mean ± σ):      1.478 s ±  0.002 s    [User: 1.451 s, System: 0.026 s]
	  Range (min … max):    1.477 s …  1.479 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 741.649ms
	Processing time (w/o IO): 741.432ms
	Processing time (w/o IO): 741.048ms
	  Time (mean ± σ):      9.593 s ±  0.196 s    [User: 9.475 s, System: 0.115 s]
	  Range (min … max):    9.454 s …  9.731 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 2366ms
	Processing time (w/o IO): 2511ms
	Processing time (w/o IO): 2372ms
	  Time (mean ± σ):      3.110 s ±  0.083 s    [User: 3.306 s, System: 0.149 s]
	  Range (min … max):    3.051 s …  3.169 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 2884ms
	Processing time (w/o IO): 2889ms
	Processing time (w/o IO): 2886ms
	  Time (mean ± σ):      3.384 s ±  0.007 s    [User: 3.343 s, System: 0.059 s]
	  Range (min … max):    3.379 s …  3.389 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 712.4409675598145ms
	Processing time (w/o IO): 711.8109464645386ms
	Processing time (w/o IO): 711.6900682449341ms
	  Time (mean ± σ):      2.140 s ±  0.002 s    [User: 1.964 s, System: 0.111 s]
	  Range (min … max):    2.139 s …  2.142 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 392.623188ms
	Processing time (w/o IO): 391.755073ms
	Processing time (w/o IO): 394.809626ms
	  Time (mean ± σ):      1.810 s ±  0.009 s    [User: 2.795 s, System: 0.127 s]
	  Range (min … max):    1.804 s …  1.817 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 2010ms
	Processing time (w/o IO): 2475ms
	Processing time (w/o IO): 1644ms
	  Time (mean ± σ):      2.388 s ±  0.592 s    [User: 2.391 s, System: 0.106 s]
	  Range (min … max):    1.970 s …  2.807 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 1537ms
	Processing time (w/o IO): 1175ms
	Processing time (w/o IO): 1417ms
	  Time (mean ± σ):      1.450 s ±  0.171 s    [User: 1.459 s, System: 0.064 s]
	  Range (min … max):    1.329 s …  1.571 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 2033ms
	Processing time (w/o IO): 1811ms
	Processing time (w/o IO): 2032ms
	  Time (mean ± σ):      2.516 s ±  0.058 s    [User: 2.065 s, System: 0.066 s]
	  Range (min … max):    2.475 s …  2.557 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 851 ms
	Processing time (w/o IO): 851 ms
	Processing time (w/o IO): 851 ms
	  Time (mean ± σ):      1.803 s ±  0.003 s    [User: 1.759 s, System: 0.043 s]
	  Range (min … max):    1.801 s …  1.806 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 650 ms
	Processing time (w/o IO): 596 ms
	Processing time (w/o IO): 595 ms
	  Time (mean ± σ):     693.6 ms ±   1.0 ms    [User: 1649.5 ms, System: 25.5 ms]
	  Range (min … max):   692.9 ms … 694.3 ms    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 434.096ms
	Processing time (w/o IO): 432.17ms
	Processing time (w/o IO): 432.861ms
	  Time (mean ± σ):     530.8 ms ±   1.7 ms    [User: 491.3 ms, System: 39.4 ms]
	  Range (min … max):   529.6 ms … 532.0 ms    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 615ms
	Processing time (w/o IO): 612ms
	Processing time (w/o IO): 612ms
	  Time (mean ± σ):      3.346 s ±  0.027 s    [User: 3.339 s, System: 0.274 s]
	  Range (min … max):    3.327 s …  3.365 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 277ms
	Processing time (w/o IO): 276ms
	Processing time (w/o IO): 276ms
	  Time (mean ± σ):      2.664 s ±  0.039 s    [User: 4.297 s, System: 0.245 s]
	  Range (min … max):    2.636 s …  2.692 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 278ms
	Processing time (w/o IO): 278ms
	Processing time (w/o IO): 278ms
	  Time (mean ± σ):      3.159 s ±  0.008 s    [User: 4.739 s, System: 0.294 s]
	  Range (min … max):    3.154 s …  3.165 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 430ms
	Processing time (w/o IO): 428ms
	Processing time (w/o IO): 428ms
	  Time (mean ± σ):      3.552 s ±  0.032 s    [User: 3.478 s, System: 0.282 s]
	  Range (min … max):    3.529 s …  3.575 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 370.4966ms
	Processing time (w/o IO): 372.8344ms
	Processing time (w/o IO): 375.2107ms
	  Time (mean ± σ):      1.070 s ±  0.001 s    [User: 1.036 s, System: 0.053 s]
	  Range (min … max):    1.070 s …  1.071 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 371.8086ms
	Processing time (w/o IO): 368.8429ms
	Processing time (w/o IO): 370.7357ms
	  Time (mean ± σ):     904.5 ms ±   3.0 ms    [User: 886.8 ms, System: 49.8 ms]
	  Range (min … max):   902.3 ms … 906.6 ms    2 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 153.5757ms
	Processing time (w/o IO): 164.9641ms
	Processing time (w/o IO): 154.1867ms
	  Time (mean ± σ):     769.9 ms ±   8.7 ms    [User: 1524.3 ms, System: 327.2 ms]
	  Range (min … max):   763.8 ms … 776.1 ms    2 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 168.2759ms
	Processing time (w/o IO): 167.8456ms
	Processing time (w/o IO): 168.4699ms
	  Time (mean ± σ):     630.5 ms ±  10.7 ms    [User: 1411.2 ms, System: 351.7 ms]
	  Range (min … max):   622.9 ms … 638.0 ms    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	1480.8700084686	ms
	Processing time (w/o IO):	1151.7751216888	ms
	Processing time (w/o IO):	1421.3750362396	ms
	  Time (mean ± σ):      2.563 s ±  0.158 s    [User: 2.498 s, System: 0.063 s]
	  Range (min … max):    2.451 s …  2.675 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	16727.677822113	ms
	Processing time (w/o IO):	16704.236984253	ms
	  Time (abs ≡):        18.449 s               [User: 18.402 s, System: 0.043 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 2675ms
	Processing time (w/o IO): 2635ms
	Processing time (w/o IO): 2589ms
	  Time (mean ± σ):      3.027 s ±  0.019 s    [User: 2.882 s, System: 0.143 s]
	  Range (min … max):    3.013 s …  3.041 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 24.581881 s
	Processing time (w/o IO): 24.524281 s
	Processing time (w/o IO): 24.476333 s
	  Time (mean ± σ):     25.497 s ±  0.004 s    [User: 25.393 s, System: 0.252 s]
	  Range (min … max):   25.494 s … 25.500 s    2 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 3.282621451s
	Processing time (w/o IO): 3.272966356s
	Processing time (w/o IO): 3.275534572s
	  Time (mean ± σ):      3.753 s ±  0.000 s    [User: 3.757 s, System: 0.134 s]
	  Range (min … max):    3.753 s …  3.753 s    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1.418008892s
	Processing time (w/o IO): 1.421551029s
	Processing time (w/o IO): 1.423125519s
	  Time (mean ± σ):      1.893 s ±  0.002 s    [User: 6.111 s, System: 0.116 s]
	  Range (min … max):    1.892 s …  1.895 s    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 3.040016255s
	Processing time (w/o IO): 3.038776342s
	Processing time (w/o IO): 3.036167841s
	  Time (mean ± σ):      3.245 s ±  0.002 s    [User: 3.167 s, System: 0.074 s]
	  Range (min … max):    3.243 s …  3.246 s    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 1.520913788s
	Processing time (w/o IO): 1.519029369s
	Processing time (w/o IO): 1.518834238s
	  Time (mean ± σ):      1.724 s ±  0.008 s    [User: 3.150 s, System: 0.078 s]
	  Range (min … max):    1.718 s …  1.729 s    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 2719.14ms
	Processing time (w/o IO): 2711.86ms
	Processing time (w/o IO): 2711.97ms
	  Time (mean ± σ):      3.654 s ±  0.000 s    [User: 3.565 s, System: 0.092 s]
	  Range (min … max):    3.654 s …  3.654 s    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1400.19ms
	Processing time (w/o IO): 1412.88ms
	Processing time (w/o IO): 1398.47ms
	  Time (mean ± σ):      2.350 s ±  0.020 s    [User: 6.259 s, System: 0.108 s]
	  Range (min … max):    2.336 s …  2.364 s    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 4572 ms
	Processing time (w/o IO): 4576 ms
	Processing time (w/o IO): 4575 ms
	  Time (mean ± σ):      7.227 s ±  0.041 s    [User: 6.699 s, System: 0.348 s]
	  Range (min … max):    7.197 s …  7.256 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 1754 ms
	Processing time (w/o IO): 1751 ms
	Processing time (w/o IO): 1757 ms
	  Time (mean ± σ):      4.547 s ±  0.057 s    [User: 9.240 s, System: 0.315 s]
	  Range (min … max):    4.507 s …  4.587 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 215.479s
	Processing time (w/o IO): 216.210s
	  Time (abs ≡):        216.649 s               [User: 216.454 s, System: 0.167 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 8051.024087ms
	Processing time (w/o IO): 8018.564682ms
	Processing time (w/o IO): 8024.81665ms
	  Time (mean ± σ):      8.820 s ±  0.026 s    [User: 8.725 s, System: 0.089 s]
	  Range (min … max):    8.802 s …  8.838 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 3829ms
	Processing time (w/o IO): 3814ms
	Processing time (w/o IO): 3830ms
	  Time (mean ± σ):      4.420 s ±  0.005 s    [User: 4.357 s, System: 0.059 s]
	  Range (min … max):    4.417 s …  4.423 s    2 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 4218 milliseconds
	Processing time (w/o IO): 4223 milliseconds
	Processing time (w/o IO): 4216 milliseconds
	  Time (mean ± σ):      5.244 s ±  0.014 s    [User: 5.025 s, System: 0.313 s]
	  Range (min … max):    5.233 s …  5.254 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 145 milliseconds
	Processing time (w/o IO): 139 milliseconds
	Processing time (w/o IO): 144 milliseconds
	  Time (mean ± σ):      1.607 s ±  0.019 s    [User: 1.383 s, System: 0.325 s]
	  Range (min … max):    1.594 s …  1.621 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 1939 milliseconds
	Processing time (w/o IO): 1943 milliseconds
	Processing time (w/o IO): 1954 milliseconds
	  Time (mean ± σ):      2.951 s ±  0.006 s    [User: 8.504 s, System: 0.311 s]
	  Range (min … max):    2.947 s …  2.955 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  5.963346521s
	Processing time (w/o IO):  5.978531999s
	Processing time (w/o IO):  6.083736455s
	  Time (mean ± σ):      8.443 s ±  0.072 s    [User: 8.357 s, System: 0.079 s]
	  Range (min … max):    8.392 s …  8.494 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 6.598s
	Processing time (w/o IO): 6.601s
	Processing time (w/o IO): 6.603s
	  Time (mean ± σ):     82.316 s ±  2.886 s    [User: 81.871 s, System: 0.430 s]
	  Range (min … max):   80.276 s … 84.357 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 21199ms
	Processing time (w/o IO): 20982ms
	Processing time (w/o IO): 21074ms
	  Time (mean ± σ):     22.540 s ±  0.068 s    [User: 22.738 s, System: 0.273 s]
	  Range (min … max):   22.491 s … 22.588 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 25781ms
	Processing time (w/o IO): 25797ms
	Processing time (w/o IO): 25812ms
	  Time (mean ± σ):     27.363 s ±  0.045 s    [User: 27.316 s, System: 0.158 s]
	  Range (min … max):   27.331 s … 27.395 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 6231.356978416443ms
	Processing time (w/o IO): 6207.946062088013ms
	Processing time (w/o IO): 6196.054935455322ms
	  Time (mean ± σ):     10.589 s ±  0.023 s    [User: 9.940 s, System: 0.386 s]
	  Range (min … max):   10.573 s … 10.606 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 3478.160725ms
	Processing time (w/o IO): 3490.308491ms
	Processing time (w/o IO): 3486.757812ms
	  Time (mean ± σ):      7.995 s ±  0.029 s    [User: 17.744 s, System: 0.315 s]
	  Range (min … max):    7.974 s …  8.015 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 18663ms
	Processing time (w/o IO): 22929ms
	Processing time (w/o IO): 14310ms
	  Time (mean ± σ):     19.428 s ±  6.094 s    [User: 19.418 s, System: 0.207 s]
	  Range (min … max):   15.119 s … 23.737 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 15406ms
	Processing time (w/o IO): 12980ms
	Processing time (w/o IO): 13297ms
	  Time (mean ± σ):     13.612 s ±  0.221 s    [User: 13.574 s, System: 0.175 s]
	  Range (min … max):   13.455 s … 13.769 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 17920ms
	Processing time (w/o IO): 15879ms
	Processing time (w/o IO): 17987ms
	  Time (mean ± σ):     17.408 s ±  1.490 s    [User: 17.401 s, System: 0.193 s]
	  Range (min … max):   16.354 s … 18.462 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 7516 ms
	Processing time (w/o IO): 7518 ms
	Processing time (w/o IO): 7513 ms
	  Time (mean ± σ):     15.485 s ±  0.001 s    [User: 15.361 s, System: 0.111 s]
	  Range (min … max):   15.485 s … 15.485 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 4121 ms
	Processing time (w/o IO): 4118 ms
	Processing time (w/o IO): 4125 ms
	  Time (mean ± σ):      4.469 s ±  0.003 s    [User: 11.026 s, System: 0.117 s]
	  Range (min … max):    4.467 s …  4.471 s    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 3822.178ms
	Processing time (w/o IO): 3832.837ms
	Processing time (w/o IO): 3827.591ms
	  Time (mean ± σ):      4.166 s ±  0.002 s    [User: 4.046 s, System: 0.111 s]
	  Range (min … max):    4.164 s …  4.167 s    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 5108ms
	Processing time (w/o IO): 5103ms
	Processing time (w/o IO): 5101ms
	  Time (mean ± σ):     15.540 s ±  0.032 s    [User: 16.575 s, System: 0.530 s]
	  Range (min … max):   15.517 s … 15.563 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 2492ms
	Processing time (w/o IO): 2492ms
	Processing time (w/o IO): 2400ms
	  Time (mean ± σ):     10.141 s ±  0.115 s    [User: 25.727 s, System: 0.553 s]
	  Range (min … max):   10.060 s … 10.223 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 2458ms
	Processing time (w/o IO): 2458ms
	Processing time (w/o IO): 2460ms
	  Time (mean ± σ):     12.961 s ±  0.037 s    [User: 28.863 s, System: 0.610 s]
	  Range (min … max):   12.934 s … 12.987 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 3697ms
	Processing time (w/o IO): 3713ms
	Processing time (w/o IO): 3700ms
	  Time (mean ± σ):     15.692 s ±  0.054 s    [User: 16.874 s, System: 0.626 s]
	  Range (min … max):   15.653 s … 15.730 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 3263.9928ms
	Processing time (w/o IO): 3258.0263ms
	Processing time (w/o IO): 3257.3258ms
	  Time (mean ± σ):      7.386 s ±  0.002 s    [User: 7.329 s, System: 0.183 s]
	  Range (min … max):    7.385 s …  7.387 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 3255.2799ms
	Processing time (w/o IO): 3246.7504ms
	Processing time (w/o IO): 3243.6616ms
	  Time (mean ± σ):      7.052 s ±  0.028 s    [User: 7.015 s, System: 0.172 s]
	  Range (min … max):    7.033 s …  7.072 s    2 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 1284.508ms
	Processing time (w/o IO): 1279.0718ms
	Processing time (w/o IO): 1277.1798ms
	  Time (mean ± σ):      3.764 s ±  0.047 s    [User: 10.555 s, System: 1.026 s]
	  Range (min … max):    3.731 s …  3.797 s    2 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 1406.1015ms
	Processing time (w/o IO): 1435.1868ms
	Processing time (w/o IO): 1406.9286ms
	  Time (mean ± σ):      3.590 s ±  0.009 s    [User: 11.097 s, System: 0.885 s]
	  Range (min … max):    3.583 s …  3.596 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	13270.905017853	ms
	Processing time (w/o IO):	13254.017829895	ms
	Processing time (w/o IO):	12051.759958267	ms
	  Time (mean ± σ):     16.876 s ±  0.865 s    [User: 16.684 s, System: 0.184 s]
	  Range (min … max):   16.265 s … 17.488 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	149969.91705894	ms
	Processing time (w/o IO):	149943.05706024	ms
	  Time (abs ≡):        156.177 s               [User: 155.975 s, System: 0.183 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 35368ms
	Processing time (w/o IO): 34394ms
	Processing time (w/o IO): 33450ms
	  Time (mean ± σ):     35.403 s ±  0.682 s    [User: 34.996 s, System: 0.394 s]
	  Range (min … max):   34.921 s … 35.885 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 225.841958 s
	Processing time (w/o IO): 221.375587 s
	Processing time (w/o IO): 221.516058 s
	  Time (mean ± σ):     224.597 s ±  0.154 s    [User: 224.196 s, System: 0.590 s]
	  Range (min … max):   224.488 s … 224.705 s    2 runs
	 
