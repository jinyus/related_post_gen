Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 24.323943ms
	Processing time (w/o IO): 24.328943ms
	Processing time (w/o IO): 24.334544ms
	Processing time (w/o IO): 24.376244ms
	Processing time (w/o IO): 24.355241ms
	Processing time (w/o IO): 24.412442ms
	Processing time (w/o IO): 24.202038ms
	Processing time (w/o IO): 24.388142ms
	Processing time (w/o IO): 26.614482ms
	Processing time (w/o IO): 24.27334ms
	Processing time (w/o IO): 24.053736ms
	Processing time (w/o IO): 24.345441ms
	Processing time (w/o IO): 24.29354ms
	  Time (mean ± σ):      64.5 ms ±   1.4 ms    [User: 63.0 ms, System: 9.1 ms]
	  Range (min … max):    62.1 ms …  66.5 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 11.921316ms
	Processing time (w/o IO): 11.674111ms
	Processing time (w/o IO): 11.548009ms
	Processing time (w/o IO): 11.755013ms
	Processing time (w/o IO): 11.57011ms
	Processing time (w/o IO): 11.711212ms
	Processing time (w/o IO): 13.172639ms
	Processing time (w/o IO): 11.675112ms
	Processing time (w/o IO): 14.109755ms
	Processing time (w/o IO): 11.681011ms
	Processing time (w/o IO): 13.976553ms
	Processing time (w/o IO): 11.719412ms
	Processing time (w/o IO): 11.750313ms
	  Time (mean ± σ):      52.1 ms ±   1.9 ms    [User: 79.2 ms, System: 12.5 ms]
	  Range (min … max):    49.3 ms …  54.9 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 23.547939ms
	Processing time (w/o IO): 23.434337ms
	Processing time (w/o IO): 23.488437ms
	Processing time (w/o IO): 23.509238ms
	Processing time (w/o IO): 23.418536ms
	Processing time (w/o IO): 23.486537ms
	Processing time (w/o IO): 23.507938ms
	Processing time (w/o IO): 23.468537ms
	Processing time (w/o IO): 23.470137ms
	Processing time (w/o IO): 23.429936ms
	Processing time (w/o IO): 23.404336ms
	Processing time (w/o IO): 23.436736ms
	Processing time (w/o IO): 23.466937ms
	  Time (mean ± σ):      39.0 ms ±   0.4 ms    [User: 34.0 ms, System: 5.1 ms]
	  Range (min … max):    38.5 ms …  39.7 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 12.314621ms
	Processing time (w/o IO): 12.323321ms
	Processing time (w/o IO): 12.650426ms
	Processing time (w/o IO): 12.506924ms
	Processing time (w/o IO): 12.501124ms
	Processing time (w/o IO): 12.351621ms
	Processing time (w/o IO): 12.237919ms
	Processing time (w/o IO): 12.27932ms
	Processing time (w/o IO): 12.248219ms
	Processing time (w/o IO): 12.25422ms
	Processing time (w/o IO): 12.450022ms
	Processing time (w/o IO): 12.30112ms
	Processing time (w/o IO): 12.171718ms
	  Time (mean ± σ):      30.5 ms ±   0.5 ms    [User: 33.8 ms, System: 8.8 ms]
	  Range (min … max):    29.6 ms …  31.1 ms    10 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 25.732ms
	Processing time (w/o IO): 24.794ms
	Processing time (w/o IO): 24.854ms
	Processing time (w/o IO): 25.133ms
	Processing time (w/o IO): 24.65ms
	Processing time (w/o IO): 24.78ms
	Processing time (w/o IO): 25.12ms
	Processing time (w/o IO): 25.376ms
	Processing time (w/o IO): 24.756ms
	Processing time (w/o IO): 24.844ms
	Processing time (w/o IO): 25.026ms
	Processing time (w/o IO): 24.587ms
	Processing time (w/o IO): 25.548ms
	  Time (mean ± σ):     105.6 ms ±   1.2 ms    [User: 97.5 ms, System: 9.3 ms]
	  Range (min … max):   104.4 ms … 108.4 ms    10 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 13.769ms
	Processing time (w/o IO): 13.921ms
	Processing time (w/o IO): 13.364ms
	Processing time (w/o IO): 13.178ms
	Processing time (w/o IO): 13.485ms
	Processing time (w/o IO): 12.957ms
	Processing time (w/o IO): 13.363ms
	Processing time (w/o IO): 12.83ms
	Processing time (w/o IO): 13.393ms
	Processing time (w/o IO): 13.738ms
	Processing time (w/o IO): 13.39ms
	Processing time (w/o IO): 13.779ms
	Processing time (w/o IO): 13.211ms
	  Time (mean ± σ):      91.7 ms ±   0.5 ms    [User: 108.7 ms, System: 7.5 ms]
	  Range (min … max):    91.2 ms …  92.7 ms    10 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	  Time (mean ± σ):     231.1 ms ±   1.0 ms    [User: 201.2 ms, System: 29.8 ms]
	  Range (min … max):   229.6 ms … 232.5 ms    10 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 14 ms
	  Time (mean ± σ):     232.0 ms ±   1.2 ms    [User: 231.9 ms, System: 34.4 ms]
	  Range (min … max):   229.8 ms … 233.5 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 1.458s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.464s
	Processing time (w/o IO): 1.465s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.461s
	Processing time (w/o IO): 1.463s
	Processing time (w/o IO): 1.474s
	Processing time (w/o IO): 1.461s
	Processing time (w/o IO): 1.464s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.467s
	Processing time (w/o IO): 1.461s
	  Time (mean ± σ):      1.531 s ±  0.004 s    [User: 1.510 s, System: 0.021 s]
	  Range (min … max):    1.527 s …  1.541 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 351.8ms
	Processing time (w/o IO): 352.5ms
	Processing time (w/o IO): 354.9ms
	Processing time (w/o IO): 356.7ms
	Processing time (w/o IO): 352.2ms
	Processing time (w/o IO): 352.9ms
	Processing time (w/o IO): 351.6ms
	Processing time (w/o IO): 352.6ms
	Processing time (w/o IO): 351.0ms
	Processing time (w/o IO): 353.6ms
	Processing time (w/o IO): 352.6ms
	Processing time (w/o IO): 357.6ms
	Processing time (w/o IO): 351.3ms
	  Time (mean ± σ):     649.6 ms ±  28.8 ms    [User: 849.2 ms, System: 407.6 ms]
	  Range (min … max):   633.1 ms … 723.3 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 61.14624ms
	Processing time (w/o IO): 60.251125ms
	Processing time (w/o IO): 60.489829ms
	Processing time (w/o IO): 60.428528ms
	Processing time (w/o IO): 60.831135ms
	Processing time (w/o IO): 60.345026ms
	Processing time (w/o IO): 62.705567ms
	Processing time (w/o IO): 62.784068ms
	Processing time (w/o IO): 60.284625ms
	Processing time (w/o IO): 60.405828ms
	Processing time (w/o IO): 60.57583ms
	Processing time (w/o IO): 60.690833ms
	Processing time (w/o IO): 60.295126ms
	  Time (mean ± σ):     111.8 ms ±   2.6 ms    [User: 100.7 ms, System: 10.9 ms]
	  Range (min … max):   109.5 ms … 116.1 ms    10 runs
	 
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
	  Time (mean ± σ):      71.1 ms ±   1.0 ms    [User: 66.3 ms, System: 4.8 ms]
	  Range (min … max):    70.3 ms …  73.2 ms    10 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 23 milliseconds
	Processing time (w/o IO): 29 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 23 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 23 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	  Time (mean ± σ):      3.353 s ±  0.026 s    [User: 3.205 s, System: 0.251 s]
	  Range (min … max):    3.307 s …  3.384 s    10 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	  Time (mean ± σ):      1.010 s ±  0.019 s    [User: 0.886 s, System: 0.227 s]
	  Range (min … max):    0.988 s …  1.033 s    10 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 15 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 16 milliseconds
	  Time (mean ± σ):     468.9 ms ±  13.3 ms    [User: 413.3 ms, System: 206.0 ms]
	  Range (min … max):   447.5 ms … 482.7 ms    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  50.476068ms
	Processing time (w/o IO):  47.766421ms
	Processing time (w/o IO):  48.081827ms
	Processing time (w/o IO):  48.129928ms
	Processing time (w/o IO):  48.241729ms
	Processing time (w/o IO):  48.400432ms
	Processing time (w/o IO):  47.938825ms
	Processing time (w/o IO):  48.314931ms
	Processing time (w/o IO):  47.902623ms
	Processing time (w/o IO):  48.103427ms
	Processing time (w/o IO):  48.320231ms
	Processing time (w/o IO):  48.454133ms
	Processing time (w/o IO):  48.115727ms
	  Time (mean ± σ):     267.5 ms ±   1.2 ms    [User: 257.6 ms, System: 9.8 ms]
	  Range (min … max):   265.9 ms … 269.0 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 49.050ms
	Processing time (w/o IO): 48.754ms
	Processing time (w/o IO): 48.722ms
	Processing time (w/o IO): 49.154ms
	Processing time (w/o IO): 49.062ms
	Processing time (w/o IO): 49.017ms
	Processing time (w/o IO): 49.211ms
	Processing time (w/o IO): 48.664ms
	Processing time (w/o IO): 49.052ms
	Processing time (w/o IO): 49.089ms
	Processing time (w/o IO): 48.765ms
	Processing time (w/o IO): 48.760ms
	Processing time (w/o IO): 48.930ms
	  Time (mean ± σ):     382.2 ms ±   2.2 ms    [User: 347.0 ms, System: 35.1 ms]
	  Range (min … max):   378.4 ms … 386.3 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 168ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 176ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 164ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 170ms
	  Time (mean ± σ):     548.3 ms ±  10.8 ms    [User: 651.9 ms, System: 114.7 ms]
	  Range (min … max):   540.4 ms … 570.3 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 129ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	  Time (mean ± σ):     256.9 ms ±   1.9 ms    [User: 239.4 ms, System: 21.9 ms]
	  Range (min … max):   253.7 ms … 259.7 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 51.32091045379639ms
	Processing time (w/o IO): 52.062034606933594ms
	Processing time (w/o IO): 51.29706859588623ms
	Processing time (w/o IO): 51.49102210998535ms
	Processing time (w/o IO): 53.58898639678955ms
	Processing time (w/o IO): 51.499009132385254ms
	Processing time (w/o IO): 51.33497714996338ms
	Processing time (w/o IO): 51.72300338745117ms
	Processing time (w/o IO): 53.17997932434082ms
	Processing time (w/o IO): 51.10800266265869ms
	Processing time (w/o IO): 50.80103874206543ms
	Processing time (w/o IO): 50.649046897888184ms
	Processing time (w/o IO): 50.8960485458374ms
	  Time (mean ± σ):     407.9 ms ±   7.8 ms    [User: 353.7 ms, System: 37.2 ms]
	  Range (min … max):   399.7 ms … 425.3 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 31.27684ms
	Processing time (w/o IO): 31.240439ms
	Processing time (w/o IO): 31.483643ms
	Processing time (w/o IO): 31.027335ms
	Processing time (w/o IO): 31.434642ms
	Processing time (w/o IO): 31.441342ms
	Processing time (w/o IO): 31.173738ms
	Processing time (w/o IO): 31.290739ms
	Processing time (w/o IO): 32.171355ms
	Processing time (w/o IO): 31.483843ms
	Processing time (w/o IO): 30.969934ms
	Processing time (w/o IO): 31.413142ms
	Processing time (w/o IO): 32.544361ms
	  Time (mean ± σ):     392.3 ms ±   6.2 ms    [User: 423.9 ms, System: 39.0 ms]
	  Range (min … max):   384.5 ms … 403.6 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 133ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 123ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 133ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 125ms
	  Time (mean ± σ):     309.2 ms ±  21.0 ms    [User: 298.8 ms, System: 65.2 ms]
	  Range (min … max):   294.4 ms … 367.7 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 125ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 120ms
	Processing time (w/o IO): 121ms
	Processing time (w/o IO): 125ms
	Processing time (w/o IO): 113ms
	Processing time (w/o IO): 120ms
	Processing time (w/o IO): 120ms
	Processing time (w/o IO): 125ms
	Processing time (w/o IO): 118ms
	Processing time (w/o IO): 120ms
	Processing time (w/o IO): 124ms
	Processing time (w/o IO): 124ms
	  Time (mean ± σ):     177.4 ms ±   3.2 ms    [User: 205.1 ms, System: 28.1 ms]
	  Range (min … max):   172.0 ms … 181.8 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 207ms
	Processing time (w/o IO): 153ms
	Processing time (w/o IO): 195ms
	Processing time (w/o IO): 197ms
	Processing time (w/o IO): 198ms
	Processing time (w/o IO): 198ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 133ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 135ms
	Processing time (w/o IO): 194ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 138ms
	  Time (mean ± σ):     229.1 ms ±  30.9 ms    [User: 224.4 ms, System: 30.1 ms]
	  Range (min … max):   201.1 ms … 266.7 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 55 ms
	  Time (mean ± σ):     390.8 ms ±   7.0 ms    [User: 702.5 ms, System: 44.6 ms]
	  Range (min … max):   379.8 ms … 400.2 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	  Time (mean ± σ):     142.4 ms ±   0.9 ms    [User: 135.8 ms, System: 6.8 ms]
	  Range (min … max):   140.8 ms … 143.8 ms    10 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 38 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 38 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 36 ms
	  Time (mean ± σ):      68.6 ms ±   1.6 ms    [User: 117.0 ms, System: 9.1 ms]
	  Range (min … max):    65.8 ms …  70.7 ms    10 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 25.508ms
	Processing time (w/o IO): 25.017ms
	Processing time (w/o IO): 25.047ms
	Processing time (w/o IO): 24.992ms
	Processing time (w/o IO): 25.013ms
	Processing time (w/o IO): 25.004ms
	Processing time (w/o IO): 24.962ms
	Processing time (w/o IO): 24.993ms
	Processing time (w/o IO): 24.994ms
	Processing time (w/o IO): 25.02ms
	Processing time (w/o IO): 24.954ms
	Processing time (w/o IO): 24.887ms
	Processing time (w/o IO): 24.813ms
	  Time (mean ± σ):      51.6 ms ±   0.7 ms    [User: 40.9 ms, System: 10.8 ms]
	  Range (min … max):    50.9 ms …  53.0 ms    10 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 12.433ms
	Processing time (w/o IO): 13.45ms
	Processing time (w/o IO): 12.228ms
	Processing time (w/o IO): 12.078ms
	Processing time (w/o IO): 12.207ms
	Processing time (w/o IO): 12.27ms
	Processing time (w/o IO): 12.501ms
	Processing time (w/o IO): 12.117ms
	Processing time (w/o IO): 12.17ms
	Processing time (w/o IO): 12.167ms
	Processing time (w/o IO): 13.387ms
	Processing time (w/o IO): 13.143ms
	Processing time (w/o IO): 13.011ms
	  Time (mean ± σ):      38.9 ms ±   1.0 ms    [User: 61.7 ms, System: 10.9 ms]
	  Range (min … max):    37.7 ms …  40.8 ms    10 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 93ms
	Processing time (w/o IO): 92ms
	  Time (mean ± σ):      1.034 s ±  0.006 s    [User: 1.139 s, System: 0.104 s]
	  Range (min … max):    1.025 s …  1.043 s    10 runs
	 
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
	  Time (mean ± σ):     924.2 ms ±  17.5 ms    [User: 1070.2 ms, System: 107.7 ms]
	  Range (min … max):   879.6 ms … 940.8 ms    10 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	  Time (mean ± σ):     719.4 ms ±   3.2 ms    [User: 807.2 ms, System: 91.0 ms]
	  Range (min … max):   714.2 ms … 726.1 ms    10 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	  Time (mean ± σ):     751.3 ms ±   7.6 ms    [User: 727.6 ms, System: 84.4 ms]
	  Range (min … max):   744.5 ms … 770.8 ms    10 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 27.0462ms
	Processing time (w/o IO): 27.9485ms
	Processing time (w/o IO): 27.1546ms
	Processing time (w/o IO): 27.5753ms
	Processing time (w/o IO): 27.1774ms
	Processing time (w/o IO): 27.2434ms
	Processing time (w/o IO): 27.2079ms
	Processing time (w/o IO): 27.1332ms
	Processing time (w/o IO): 27.4307ms
	Processing time (w/o IO): 27.2177ms
	Processing time (w/o IO): 27.2009ms
	Processing time (w/o IO): 27.2196ms
	Processing time (w/o IO): 27.2733ms
	  Time (mean ± σ):     216.2 ms ±   5.2 ms    [User: 170.5 ms, System: 36.9 ms]
	  Range (min … max):   210.0 ms … 224.7 ms    10 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 26.3482ms
	Processing time (w/o IO): 28.7639ms
	Processing time (w/o IO): 27.763ms
	Processing time (w/o IO): 26.2686ms
	Processing time (w/o IO): 26.5786ms
	Processing time (w/o IO): 26.2596ms
	Processing time (w/o IO): 26.224ms
	Processing time (w/o IO): 26.1755ms
	Processing time (w/o IO): 26.5331ms
	Processing time (w/o IO): 26.2575ms
	Processing time (w/o IO): 26.7191ms
	Processing time (w/o IO): 27.9425ms
	Processing time (w/o IO): 26.2964ms
	  Time (mean ± σ):     103.0 ms ±   2.0 ms    [User: 96.2 ms, System: 24.2 ms]
	  Range (min … max):    99.9 ms … 107.5 ms    10 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 13.6281ms
	Processing time (w/o IO): 13.3701ms
	Processing time (w/o IO): 13.8104ms
	Processing time (w/o IO): 13.7528ms
	Processing time (w/o IO): 14.5525ms
	Processing time (w/o IO): 14.2366ms
	Processing time (w/o IO): 13.1632ms
	Processing time (w/o IO): 13.7065ms
	Processing time (w/o IO): 16.0559ms
	Processing time (w/o IO): 17.1189ms
	Processing time (w/o IO): 13.7392ms
	Processing time (w/o IO): 14.4927ms
	Processing time (w/o IO): 13.7029ms
	  Time (mean ± σ):     204.3 ms ±   9.2 ms    [User: 203.3 ms, System: 42.1 ms]
	  Range (min … max):   195.1 ms … 220.1 ms    10 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 11.0287ms
	Processing time (w/o IO): 11.4814ms
	Processing time (w/o IO): 11.1142ms
	Processing time (w/o IO): 11.0074ms
	Processing time (w/o IO): 11.649ms
	Processing time (w/o IO): 11.1296ms
	Processing time (w/o IO): 11.0329ms
	Processing time (w/o IO): 10.9311ms
	Processing time (w/o IO): 11.0275ms
	Processing time (w/o IO): 11.393ms
	Processing time (w/o IO): 10.9208ms
	Processing time (w/o IO): 10.862ms
	Processing time (w/o IO): 11.0045ms
	  Time (mean ± σ):      73.5 ms ±   1.7 ms    [User: 122.1 ms, System: 29.6 ms]
	  Range (min … max):    71.1 ms …  76.7 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	112.380027771	ms
	Processing time (w/o IO):	90.145111083984	ms
	Processing time (w/o IO):	114.43400382996	ms
	Processing time (w/o IO):	94.818115234375	ms
	Processing time (w/o IO):	88.807106018066	ms
	Processing time (w/o IO):	90.364933013916	ms
	Processing time (w/o IO):	115.20409584045	ms
	Processing time (w/o IO):	116.75190925598	ms
	Processing time (w/o IO):	89.476108551025	ms
	Processing time (w/o IO):	88.318824768066	ms
	Processing time (w/o IO):	107.19990730286	ms
	Processing time (w/o IO):	112.23697662354	ms
	Processing time (w/o IO):	87.432861328125	ms
	  Time (mean ± σ):     344.5 ms ±  14.2 ms    [User: 325.0 ms, System: 19.4 ms]
	  Range (min … max):   325.8 ms … 367.3 ms    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1091.9859409332	ms
	Processing time (w/o IO):	1097.482919693	ms
	Processing time (w/o IO):	1095.2930450439	ms
	Processing time (w/o IO):	1110.3610992432	ms
	Processing time (w/o IO):	1091.080904007	ms
	Processing time (w/o IO):	1093.416929245	ms
	Processing time (w/o IO):	1094.0041542053	ms
	Processing time (w/o IO):	1089.1008377075	ms
	Processing time (w/o IO):	1090.4569625854	ms
	Processing time (w/o IO):	1091.9570922852	ms
	Processing time (w/o IO):	1097.4500179291	ms
	Processing time (w/o IO):	1092.766046524	ms
	Processing time (w/o IO):	1094.1071510315	ms
	  Time (mean ± σ):      1.522 s ±  0.011 s    [User: 1.507 s, System: 0.013 s]
	  Range (min … max):    1.508 s …  1.545 s    10 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 144ms
	Processing time (w/o IO): 139ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 145ms
	Processing time (w/o IO): 144ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 143ms
	Processing time (w/o IO): 145ms
	Processing time (w/o IO): 146ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 145ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 142ms
	  Time (mean ± σ):     230.0 ms ±   5.4 ms    [User: 205.9 ms, System: 23.1 ms]
	  Range (min … max):   223.4 ms … 243.1 ms    10 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 0.888344 s
	Processing time (w/o IO): 0.898289 s
	Processing time (w/o IO): 0.884473 s
	Processing time (w/o IO): 0.884260 s
	Processing time (w/o IO): 0.887088 s
	Processing time (w/o IO): 0.886384 s
	Processing time (w/o IO): 0.885663 s
	Processing time (w/o IO): 0.886916 s
	Processing time (w/o IO): 0.880213 s
	Processing time (w/o IO): 0.883390 s
	Processing time (w/o IO): 0.885578 s
	Processing time (w/o IO): 0.890252 s
	Processing time (w/o IO): 0.884935 s
	  Time (mean ± σ):      1.240 s ±  0.005 s    [User: 1.179 s, System: 0.096 s]
	  Range (min … max):    1.233 s …  1.250 s    10 runs
	 
Ruby:

	Benchmark 1: ruby related.rb
	Processing time (w/o IO): 3105ms
	Processing time (w/o IO): 3056ms
	Processing time (w/o IO): 3008ms
	Processing time (w/o IO): 3123ms
	Processing time (w/o IO): 3097ms
	Processing time (w/o IO): 3016ms
	Processing time (w/o IO): 3003ms
	Processing time (w/o IO): 3013ms
	Processing time (w/o IO): 3026ms
	Processing time (w/o IO): 3026ms
	Processing time (w/o IO): 3051ms
	Processing time (w/o IO): 3014ms
	Processing time (w/o IO): 3004ms
	  Time (mean ± σ):      3.154 s ±  0.041 s    [User: 3.128 s, System: 0.025 s]
	  Range (min … max):    3.120 s …  3.240 s    10 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 370.144616ms
	Processing time (w/o IO): 371.614943ms
	Processing time (w/o IO): 372.528259ms
	  Time (mean ± σ):     524.7 ms ±   8.8 ms    [User: 510.5 ms, System: 37.6 ms]
	  Range (min … max):   518.4 ms … 530.9 ms    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 174.979875ms
	Processing time (w/o IO): 165.3257ms
	Processing time (w/o IO): 162.712853ms
	  Time (mean ± σ):     315.8 ms ±  16.3 ms    [User: 784.4 ms, System: 37.5 ms]
	  Range (min … max):   304.3 ms … 327.4 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 340.068067ms
	Processing time (w/o IO): 339.883164ms
	Processing time (w/o IO): 341.696397ms
	  Time (mean ± σ):     400.5 ms ±   1.2 ms    [User: 379.2 ms, System: 21.3 ms]
	  Range (min … max):   399.6 ms … 401.3 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 177.336616ms
	Processing time (w/o IO): 173.480546ms
	Processing time (w/o IO): 173.708551ms
	  Time (mean ± σ):     238.6 ms ±   3.3 ms    [User: 380.9 ms, System: 27.2 ms]
	  Range (min … max):   236.3 ms … 240.9 ms    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 315.547ms
	Processing time (w/o IO): 313.384ms
	Processing time (w/o IO): 312.867ms
	  Time (mean ± σ):     608.2 ms ±   0.6 ms    [User: 588.6 ms, System: 23.6 ms]
	  Range (min … max):   607.8 ms … 608.7 ms    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 122.492ms
	Processing time (w/o IO): 123.43ms
	Processing time (w/o IO): 121.899ms
	  Time (mean ± σ):     425.8 ms ±   3.1 ms    [User: 709.6 ms, System: 35.5 ms]
	  Range (min … max):   423.6 ms … 428.0 ms    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 336 ms
	Processing time (w/o IO): 339 ms
	Processing time (w/o IO): 337 ms
	  Time (mean ± σ):      1.157 s ±  0.006 s    [User: 1.042 s, System: 0.115 s]
	  Range (min … max):    1.153 s …  1.161 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 165 ms
	Processing time (w/o IO): 165 ms
	Processing time (w/o IO): 165 ms
	  Time (mean ± σ):      1.031 s ±  0.006 s    [User: 1.407 s, System: 0.102 s]
	  Range (min … max):    1.027 s …  1.035 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 23.533s
	Processing time (w/o IO): 23.575s
	  Time (abs ≡):        23.738 s               [User: 23.689 s, System: 0.044 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 6.041s
	Processing time (w/o IO): 7.073s
	Processing time (w/o IO): 7.518s
	  Time (mean ± σ):      7.809 s ±  0.309 s    [User: 5.197 s, System: 3.210 s]
	  Range (min … max):    7.590 s …  8.027 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 909.235689ms
	Processing time (w/o IO): 902.244556ms
	Processing time (w/o IO): 909.339872ms
	  Time (mean ± σ):      1.115 s ±  0.008 s    [User: 1.077 s, System: 0.035 s]
	  Range (min … max):    1.110 s …  1.121 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 337ms
	Processing time (w/o IO): 338ms
	Processing time (w/o IO): 336ms
	  Time (mean ± σ):     527.2 ms ±   1.9 ms    [User: 493.7 ms, System: 33.4 ms]
	  Range (min … max):   525.8 ms … 528.6 ms    2 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 337 milliseconds
	Processing time (w/o IO): 337 milliseconds
	Processing time (w/o IO): 337 milliseconds
	  Time (mean ± σ):      5.062 s ±  0.009 s    [User: 4.863 s, System: 0.301 s]
	  Range (min … max):    5.055 s …  5.068 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 57 milliseconds
	Processing time (w/o IO): 54 milliseconds
	Processing time (w/o IO): 57 milliseconds
	  Time (mean ± σ):      1.177 s ±  0.014 s    [User: 1.011 s, System: 0.269 s]
	  Range (min … max):    1.167 s …  1.187 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 222 milliseconds
	Processing time (w/o IO): 224 milliseconds
	Processing time (w/o IO): 223 milliseconds
	  Time (mean ± σ):     904.2 ms ±  27.6 ms    [User: 1417.7 ms, System: 245.4 ms]
	  Range (min … max):   884.7 ms … 923.8 ms    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  687.136436ms
	Processing time (w/o IO):  690.561199ms
	Processing time (w/o IO):  687.100836ms
	  Time (mean ± σ):      1.484 s ±  0.018 s    [User: 1.448 s, System: 0.023 s]
	  Range (min … max):    1.472 s …  1.497 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 742.294ms
	Processing time (w/o IO): 740.572ms
	Processing time (w/o IO): 741.030ms
	  Time (mean ± σ):     10.563 s ±  0.038 s    [User: 10.425 s, System: 0.134 s]
	  Range (min … max):   10.536 s … 10.590 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 2389ms
	Processing time (w/o IO): 2240ms
	Processing time (w/o IO): 2072ms
	  Time (mean ± σ):      2.839 s ±  0.116 s    [User: 3.033 s, System: 0.152 s]
	  Range (min … max):    2.756 s …  2.921 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 2004ms
	Processing time (w/o IO): 2002ms
	Processing time (w/o IO): 2003ms
	  Time (mean ± σ):      2.493 s ±  0.001 s    [User: 2.439 s, System: 0.075 s]
	  Range (min … max):    2.492 s …  2.494 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 717.8759574890137ms
	Processing time (w/o IO): 718.3550596237183ms
	Processing time (w/o IO): 715.6379222869873ms
	  Time (mean ± σ):      2.153 s ±  0.013 s    [User: 1.999 s, System: 0.115 s]
	  Range (min … max):    2.144 s …  2.162 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 392.902732ms
	Processing time (w/o IO): 394.786122ms
	Processing time (w/o IO): 392.044773ms
	  Time (mean ± σ):      1.840 s ±  0.031 s    [User: 2.787 s, System: 0.141 s]
	  Range (min … max):    1.819 s …  1.862 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 1639ms
	Processing time (w/o IO): 2508ms
	Processing time (w/o IO): 2611ms
	  Time (mean ± σ):      2.891 s ±  0.074 s    [User: 2.916 s, System: 0.091 s]
	  Range (min … max):    2.839 s …  2.944 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 1413ms
	Processing time (w/o IO): 1530ms
	Processing time (w/o IO): 1524ms
	  Time (mean ± σ):      1.684 s ±  0.000 s    [User: 1.694 s, System: 0.059 s]
	  Range (min … max):    1.684 s …  1.684 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 2027ms
	Processing time (w/o IO): 1806ms
	Processing time (w/o IO): 1803ms
	  Time (mean ± σ):      2.046 s ±  0.087 s    [User: 1.958 s, System: 0.062 s]
	  Range (min … max):    1.985 s …  2.108 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 852 ms
	Processing time (w/o IO): 852 ms
	Processing time (w/o IO): 853 ms
	  Time (mean ± σ):      1.806 s ±  0.002 s    [User: 1.762 s, System: 0.042 s]
	  Range (min … max):    1.805 s …  1.808 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 463 ms
	Processing time (w/o IO): 463 ms
	Processing time (w/o IO): 463 ms
	  Time (mean ± σ):     565.0 ms ±   1.7 ms    [User: 1298.0 ms, System: 29.5 ms]
	  Range (min … max):   563.8 ms … 566.2 ms    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 349.0ms
	Processing time (w/o IO): 349.382ms
	Processing time (w/o IO): 348.72ms
	  Time (mean ± σ):     453.7 ms ±   0.0 ms    [User: 416.2 ms, System: 37.4 ms]
	  Range (min … max):   453.7 ms … 453.7 ms    2 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 171.598ms
	Processing time (w/o IO): 171.754ms
	Processing time (w/o IO): 172.129ms
	  Time (mean ± σ):     281.8 ms ±   0.2 ms    [User: 750.9 ms, System: 31.1 ms]
	  Range (min … max):   281.7 ms … 282.0 ms    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 529ms
	Processing time (w/o IO): 531ms
	Processing time (w/o IO): 528ms
	  Time (mean ± σ):      3.315 s ±  0.001 s    [User: 3.329 s, System: 0.263 s]
	  Range (min … max):    3.314 s …  3.315 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 278ms
	Processing time (w/o IO): 277ms
	Processing time (w/o IO): 283ms
	  Time (mean ± σ):      2.694 s ±  0.008 s    [User: 4.344 s, System: 0.246 s]
	  Range (min … max):    2.688 s …  2.700 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 282ms
	Processing time (w/o IO): 279ms
	Processing time (w/o IO): 279ms
	  Time (mean ± σ):      3.203 s ±  0.018 s    [User: 4.822 s, System: 0.260 s]
	  Range (min … max):    3.190 s …  3.216 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 391ms
	Processing time (w/o IO): 392ms
	Processing time (w/o IO): 391ms
	  Time (mean ± σ):      3.481 s ±  0.012 s    [User: 3.415 s, System: 0.279 s]
	  Range (min … max):    3.473 s …  3.489 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 372.6293ms
	Processing time (w/o IO): 375.7344ms
	Processing time (w/o IO): 372.6541ms
	  Time (mean ± σ):      1.075 s ±  0.001 s    [User: 1.033 s, System: 0.064 s]
	  Range (min … max):    1.075 s …  1.076 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 383.4584ms
	Processing time (w/o IO): 371.6838ms
	Processing time (w/o IO): 373.2438ms
	  Time (mean ± σ):     912.3 ms ±   0.6 ms    [User: 882.5 ms, System: 62.6 ms]
	  Range (min … max):   911.9 ms … 912.7 ms    2 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 124.1296ms
	Processing time (w/o IO): 122.5444ms
	Processing time (w/o IO): 124.6758ms
	  Time (mean ± σ):     592.6 ms ±   1.0 ms    [User: 1220.2 ms, System: 69.3 ms]
	  Range (min … max):   591.9 ms … 593.3 ms    2 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 137.1917ms
	Processing time (w/o IO): 137.1701ms
	Processing time (w/o IO): 137.5472ms
	  Time (mean ± σ):     445.6 ms ±   1.4 ms    [User: 1196.4 ms, System: 55.3 ms]
	  Range (min … max):   444.6 ms … 446.5 ms    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	1180.9711456299	ms
	Processing time (w/o IO):	1169.2650318146	ms
	Processing time (w/o IO):	1426.1560440063	ms
	  Time (mean ± σ):      2.592 s ±  0.185 s    [User: 2.532 s, System: 0.057 s]
	  Range (min … max):    2.461 s …  2.723 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	16731.281042099	ms
	Processing time (w/o IO):	16722.245931625	ms
	  Time (abs ≡):        18.530 s               [User: 18.461 s, System: 0.068 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 2730ms
	Processing time (w/o IO): 2820ms
	Processing time (w/o IO): 2786ms
	  Time (mean ± σ):      3.213 s ±  0.020 s    [User: 3.009 s, System: 0.202 s]
	  Range (min … max):    3.199 s …  3.228 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 14.584364 s
	Processing time (w/o IO): 14.593423 s
	Processing time (w/o IO): 14.759546 s
	  Time (mean ± σ):     15.722 s ±  0.134 s    [User: 15.529 s, System: 0.247 s]
	  Range (min … max):   15.627 s … 15.817 s    2 runs
	 
Ruby:

	Benchmark 1: ruby related.rb
	Processing time (w/o IO): 47810ms
	Processing time (w/o IO): 47399ms
	Processing time (w/o IO): 47589ms
	  Time (mean ± σ):     47.800 s ±  0.129 s    [User: 47.748 s, System: 0.045 s]
	  Range (min … max):   47.709 s … 47.890 s    2 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 3.277466011s
	Processing time (w/o IO): 3.273347149s
	Processing time (w/o IO): 3.283486081s
	  Time (mean ± σ):      3.770 s ±  0.020 s    [User: 3.793 s, System: 0.109 s]
	  Range (min … max):    3.756 s …  3.784 s    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1.419432251s
	Processing time (w/o IO): 1.431534578s
	Processing time (w/o IO): 1.424563595s
	  Time (mean ± σ):      1.927 s ±  0.003 s    [User: 6.181 s, System: 0.099 s]
	  Range (min … max):    1.925 s …  1.929 s    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 3.039295056s
	Processing time (w/o IO): 3.034120156s
	Processing time (w/o IO): 3.035315894s
	  Time (mean ± σ):      3.250 s ±  0.004 s    [User: 3.168 s, System: 0.073 s]
	  Range (min … max):    3.247 s …  3.252 s    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 1.51818868s
	Processing time (w/o IO): 1.517488668s
	Processing time (w/o IO): 1.517802773s
	  Time (mean ± σ):      1.775 s ±  0.068 s    [User: 3.133 s, System: 0.093 s]
	  Range (min … max):    1.727 s …  1.823 s    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 2708.83ms
	Processing time (w/o IO): 2721.87ms
	Processing time (w/o IO): 2699.79ms
	  Time (mean ± σ):      3.652 s ±  0.013 s    [User: 3.547 s, System: 0.109 s]
	  Range (min … max):    3.642 s …  3.661 s    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 977.032ms
	Processing time (w/o IO): 971.367ms
	Processing time (w/o IO): 971.954ms
	  Time (mean ± σ):      1.905 s ±  0.017 s    [User: 4.534 s, System: 0.087 s]
	  Range (min … max):    1.892 s …  1.917 s    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 2926 ms
	Processing time (w/o IO): 2922 ms
	Processing time (w/o IO): 2931 ms
	  Time (mean ± σ):      5.663 s ±  0.089 s    [User: 5.056 s, System: 0.348 s]
	  Range (min … max):    5.600 s …  5.726 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 1400 ms
	Processing time (w/o IO): 1404 ms
	Processing time (w/o IO): 1401 ms
	  Time (mean ± σ):      4.246 s ±  0.052 s    [User: 7.897 s, System: 0.329 s]
	  Range (min … max):    4.209 s …  4.283 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 212.152s
	Processing time (w/o IO): 214.096s
	  Time (abs ≡):        214.532 s               [User: 214.380 s, System: 0.119 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 7987.965571ms
	Processing time (w/o IO): 7979.014597ms
	Processing time (w/o IO): 7943.149474ms
	  Time (mean ± σ):      8.678 s ±  0.025 s    [User: 8.576 s, System: 0.097 s]
	  Range (min … max):    8.661 s …  8.696 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 3013ms
	Processing time (w/o IO): 3016ms
	Processing time (w/o IO): 3011ms
	  Time (mean ± σ):      3.609 s ±  0.007 s    [User: 3.557 s, System: 0.047 s]
	  Range (min … max):    3.604 s …  3.615 s    2 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 2917 milliseconds
	Processing time (w/o IO): 2925 milliseconds
	Processing time (w/o IO): 2917 milliseconds
	  Time (mean ± σ):     16.404 s ±  0.016 s    [User: 16.135 s, System: 0.361 s]
	  Range (min … max):   16.393 s … 16.415 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 136 milliseconds
	Processing time (w/o IO): 139 milliseconds
	Processing time (w/o IO): 146 milliseconds
	  Time (mean ± σ):      1.583 s ±  0.021 s    [User: 1.400 s, System: 0.286 s]
	  Range (min … max):    1.568 s …  1.598 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 1950 milliseconds
	Processing time (w/o IO): 1939 milliseconds
	Processing time (w/o IO): 1938 milliseconds
	  Time (mean ± σ):      2.934 s ±  0.014 s    [User: 8.493 s, System: 0.311 s]
	  Range (min … max):    2.924 s …  2.944 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  5.079432339s
	Processing time (w/o IO):  5.066863595s
	Processing time (w/o IO):  5.055909781s
	  Time (mean ± σ):      7.431 s ±  0.008 s    [User: 7.339 s, System: 0.086 s]
	  Range (min … max):    7.426 s …  7.437 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 6.594s
	Processing time (w/o IO): 6.594s
	Processing time (w/o IO): 6.591s
	  Time (mean ± σ):     83.687 s ±  0.346 s    [User: 83.291 s, System: 0.379 s]
	  Range (min … max):   83.442 s … 83.931 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 19667ms
	Processing time (w/o IO): 19668ms
	Processing time (w/o IO): 19668ms
	  Time (mean ± σ):     21.175 s ±  0.027 s    [User: 21.388 s, System: 0.245 s]
	  Range (min … max):   21.156 s … 21.195 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 17876ms
	Processing time (w/o IO): 17846ms
	Processing time (w/o IO): 17833ms
	  Time (mean ± σ):     19.343 s ±  0.035 s    [User: 19.349 s, System: 0.125 s]
	  Range (min … max):   19.318 s … 19.368 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 6255.250930786133ms
	Processing time (w/o IO): 6193.575978279114ms
	Processing time (w/o IO): 6200.519919395447ms
	  Time (mean ± σ):     10.466 s ±  0.038 s    [User: 9.981 s, System: 0.341 s]
	  Range (min … max):   10.439 s … 10.492 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 3454.977616ms
	Processing time (w/o IO): 3463.257468ms
	Processing time (w/o IO): 3489.825334ms
	  Time (mean ± σ):      7.749 s ±  0.067 s    [User: 17.561 s, System: 0.347 s]
	  Range (min … max):    7.702 s …  7.796 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 24155ms
	Processing time (w/o IO): 24140ms
	Processing time (w/o IO): 14273ms
	  Time (mean ± σ):     20.035 s ±  6.998 s    [User: 20.080 s, System: 0.174 s]
	  Range (min … max):   15.087 s … 24.983 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 12986ms
	Processing time (w/o IO): 13196ms
	Processing time (w/o IO): 12963ms
	  Time (mean ± σ):     13.586 s ±  0.176 s    [User: 13.565 s, System: 0.167 s]
	  Range (min … max):   13.462 s … 13.711 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 15870ms
	Processing time (w/o IO): 17864ms
	Processing time (w/o IO): 17938ms
	  Time (mean ± σ):     18.537 s ±  0.122 s    [User: 18.416 s, System: 0.178 s]
	  Range (min … max):   18.451 s … 18.623 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 7515 ms
	Processing time (w/o IO): 7514 ms
	Processing time (w/o IO): 7519 ms
	  Time (mean ± σ):     15.491 s ±  0.005 s    [User: 15.371 s, System: 0.110 s]
	  Range (min … max):   15.487 s … 15.494 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 5323 ms
	Processing time (w/o IO): 5323 ms
	Processing time (w/o IO): 5333 ms
	  Time (mean ± σ):      5.677 s ±  0.008 s    [User: 14.250 s, System: 0.089 s]
	  Range (min … max):    5.671 s …  5.683 s    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 3070.051ms
	Processing time (w/o IO): 3061.753ms
	Processing time (w/o IO): 3068.254ms
	  Time (mean ± σ):      3.419 s ±  0.012 s    [User: 3.312 s, System: 0.099 s]
	  Range (min … max):    3.411 s …  3.427 s    2 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 1476.648ms
	Processing time (w/o IO): 1475.884ms
	Processing time (w/o IO): 1475.673ms
	  Time (mean ± σ):      1.849 s ±  0.007 s    [User: 6.140 s, System: 0.091 s]
	  Range (min … max):    1.845 s …  1.854 s    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 4039ms
	Processing time (w/o IO): 4042ms
	Processing time (w/o IO): 4043ms
	  Time (mean ± σ):     13.339 s ±  0.067 s    [User: 14.262 s, System: 0.563 s]
	  Range (min … max):   13.292 s … 13.386 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 2511ms
	Processing time (w/o IO): 2405ms
	Processing time (w/o IO): 2501ms
	  Time (mean ± σ):     10.070 s ±  0.089 s    [User: 25.619 s, System: 0.548 s]
	  Range (min … max):   10.007 s … 10.133 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 2457ms
	Processing time (w/o IO): 2458ms
	Processing time (w/o IO): 2460ms
	  Time (mean ± σ):     12.953 s ±  0.151 s    [User: 28.985 s, System: 0.565 s]
	  Range (min … max):   12.846 s … 13.060 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 3412ms
	Processing time (w/o IO): 3410ms
	Processing time (w/o IO): 3412ms
	  Time (mean ± σ):     14.928 s ±  0.103 s    [User: 16.066 s, System: 0.615 s]
	  Range (min … max):   14.855 s … 15.001 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 3257.6083ms
	Processing time (w/o IO): 3260.1047ms
	Processing time (w/o IO): 3271.0248ms
	  Time (mean ± σ):      7.395 s ±  0.000 s    [User: 7.359 s, System: 0.162 s]
	  Range (min … max):    7.395 s …  7.395 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 3245.7756ms
	Processing time (w/o IO): 3241.7141ms
	Processing time (w/o IO): 3248.3353ms
	  Time (mean ± σ):      7.038 s ±  0.003 s    [User: 7.035 s, System: 0.150 s]
	  Range (min … max):    7.036 s …  7.040 s    2 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 1010.6828ms
	Processing time (w/o IO): 1010ms
	Processing time (w/o IO): 1008.882ms
	  Time (mean ± σ):      2.902 s ±  0.004 s    [User: 8.646 s, System: 0.179 s]
	  Range (min … max):    2.900 s …  2.905 s    2 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 1128.7138ms
	Processing time (w/o IO): 1131.1568ms
	Processing time (w/o IO): 1133.8281ms
	  Time (mean ± σ):      2.801 s ±  0.006 s    [User: 9.354 s, System: 0.178 s]
	  Range (min … max):    2.797 s …  2.805 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	12037.775039673	ms
	Processing time (w/o IO):	9730.4751873016	ms
	Processing time (w/o IO):	12273.57006073	ms
	  Time (mean ± σ):     15.212 s ±  1.641 s    [User: 15.010 s, System: 0.193 s]
	  Range (min … max):   14.052 s … 16.373 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	150629.79483604	ms
	Processing time (w/o IO):	150015.59591293	ms
	  Time (abs ≡):        156.473 s               [User: 156.217 s, System: 0.232 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 33195ms
	Processing time (w/o IO): 34304ms
	Processing time (w/o IO): 34223ms
	  Time (mean ± σ):     35.666 s ±  0.041 s    [User: 35.202 s, System: 0.449 s]
	  Range (min … max):   35.636 s … 35.695 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 132.136502 s
	Processing time (w/o IO): 132.390805 s
	Processing time (w/o IO): 135.262736 s
	  Time (mean ± σ):     136.984 s ±  2.008 s    [User: 136.175 s, System: 0.875 s]
	  Range (min … max):   135.565 s … 138.404 s    2 runs
	 
Ruby:

	Benchmark 1: ruby related.rb
	Processing time (w/o IO): 430637ms
	Processing time (w/o IO): 429461ms
	Processing time (w/o IO): 425693ms
	  Time (mean ± σ):     428.372 s ±  2.653 s    [User: 428.184 s, System: 0.144 s]
	  Range (min … max):   426.496 s … 430.248 s    2 runs
	 
