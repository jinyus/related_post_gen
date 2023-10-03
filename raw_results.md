Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 47.873043ms
	Processing time (w/o IO): 48.014943ms
	Processing time (w/o IO): 51.782071ms
	Processing time (w/o IO): 46.12113ms
	Processing time (w/o IO): 45.550427ms
	Processing time (w/o IO): 49.471754ms
	Processing time (w/o IO): 48.767849ms
	Processing time (w/o IO): 56.846408ms
	Processing time (w/o IO): 49.855457ms
	Processing time (w/o IO): 49.821057ms
	Processing time (w/o IO): 46.807835ms
	Processing time (w/o IO): 56.176403ms
	Processing time (w/o IO): 47.372539ms
	  Time (mean ± σ):      90.8 ms ±   5.6 ms    [User: 85.5 ms, System: 14.7 ms]
	  Range (min … max):    82.4 ms …  98.9 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 20.833549ms
	Processing time (w/o IO): 19.946743ms
	Processing time (w/o IO): 19.591141ms
	Processing time (w/o IO): 19.469639ms
	Processing time (w/o IO): 18.551733ms
	Processing time (w/o IO): 20.365646ms
	Processing time (w/o IO): 20.291545ms
	Processing time (w/o IO): 19.059837ms
	Processing time (w/o IO): 20.999451ms
	Processing time (w/o IO): 19.971244ms
	Processing time (w/o IO): 20.528647ms
	Processing time (w/o IO): 20.806649ms
	Processing time (w/o IO): 24.604976ms
	  Time (mean ± σ):      64.3 ms ±   3.6 ms    [User: 66.4 ms, System: 18.8 ms]
	  Range (min … max):    59.1 ms …  71.2 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 54.287485ms
	Processing time (w/o IO): 48.940647ms
	Processing time (w/o IO): 52.868774ms
	Processing time (w/o IO): 50.368057ms
	Processing time (w/o IO): 54.812488ms
	Processing time (w/o IO): 53.338779ms
	Processing time (w/o IO): 56.024297ms
	Processing time (w/o IO): 52.937576ms
	Processing time (w/o IO): 52.432872ms
	Processing time (w/o IO): 52.701873ms
	Processing time (w/o IO): 53.58688ms
	Processing time (w/o IO): 57.754609ms
	Processing time (w/o IO): 54.366885ms
	  Time (mean ± σ):      78.3 ms ±   2.9 ms    [User: 67.5 ms, System: 10.1 ms]
	  Range (min … max):    73.7 ms …  83.8 ms    10 runs
	 
Rust Rayon:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 29.298211ms
	Processing time (w/o IO): 28.382704ms
	Processing time (w/o IO): 28.823808ms
	Processing time (w/o IO): 26.484391ms
	Processing time (w/o IO): 27.860801ms
	Processing time (w/o IO): 29.576613ms
	Processing time (w/o IO): 27.994002ms
	Processing time (w/o IO): 29.090509ms
	Processing time (w/o IO): 29.200611ms
	Processing time (w/o IO): 34.951752ms
	Processing time (w/o IO): 28.595306ms
	Processing time (w/o IO): 33.331041ms
	Processing time (w/o IO): 32.188832ms
	  Time (mean ± σ):      53.5 ms ±   2.5 ms    [User: 66.4 ms, System: 11.7 ms]
	  Range (min … max):    48.9 ms …  57.1 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 3.215s
	Processing time (w/o IO): 3.195s
	Processing time (w/o IO): 3.277s
	Processing time (w/o IO): 3.254s
	Processing time (w/o IO): 3.273s
	  Time (mean ± σ):      3.603 s ±  0.039 s    [User: 3.564 s, System: 0.037 s]
	  Range (min … max):    3.560 s …  3.642 s    5 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO):  1.289s
	Processing time (w/o IO):  1.190s
	Processing time (w/o IO):  1.161s
	Processing time (w/o IO):  1.138s
	Processing time (w/o IO):  1.155s
	  Time (mean ± σ):      1.673 s ±  0.062 s    [User: 1.572 s, System: 0.212 s]
	  Range (min … max):    1.627 s …  1.775 s    5 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 57.907282ms
	Processing time (w/o IO): 68.671954ms
	Processing time (w/o IO): 70.292865ms
	Processing time (w/o IO): 62.428113ms
	Processing time (w/o IO): 64.384426ms
	Processing time (w/o IO): 65.028639ms
	Processing time (w/o IO): 63.020925ms
	Processing time (w/o IO): 62.23872ms
	Processing time (w/o IO): 64.515835ms
	Processing time (w/o IO): 68.563862ms
	  Time (mean ± σ):     132.9 ms ±   5.6 ms    [User: 118.6 ms, System: 14.1 ms]
	  Range (min … max):   124.1 ms … 142.7 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 254ms
	Processing time (w/o IO): 260ms
	Processing time (w/o IO): 252ms
	Processing time (w/o IO): 254ms
	Processing time (w/o IO): 253ms
	Processing time (w/o IO): 243ms
	Processing time (w/o IO): 250ms
	Processing time (w/o IO): 244ms
	Processing time (w/o IO): 244ms
	Processing time (w/o IO): 255ms
	Processing time (w/o IO): 246ms
	Processing time (w/o IO): 255ms
	Processing time (w/o IO): 245ms
	  Time (mean ± σ):     305.2 ms ±   7.2 ms    [User: 294.1 ms, System: 10.8 ms]
	  Range (min … max):   296.5 ms … 318.1 ms    10 runs
	 
Julia v2:

	Benchmark 1: julia related_v2.jl
	Processing time (w/o IO): 1037 milliseconds
	Processing time (w/o IO): 1080 milliseconds
	Processing time (w/o IO): 1073 milliseconds
	Processing time (w/o IO): 1115 milliseconds
	Processing time (w/o IO): 1067 milliseconds
	Processing time (w/o IO): 1037 milliseconds
	  Time (mean ± σ):      7.095 s ±  0.057 s    [User: 6.825 s, System: 0.265 s]
	  Range (min … max):    7.025 s …  7.150 s    5 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  64.801184ms
	Processing time (w/o IO):  63.676571ms
	Processing time (w/o IO):  69.669843ms
	Processing time (w/o IO):  67.810221ms
	Processing time (w/o IO):  68.655931ms
	Processing time (w/o IO):  61.16504ms
	Processing time (w/o IO):  74.971538ms
	Processing time (w/o IO):  64.393563ms
	Processing time (w/o IO):  68.708794ms
	Processing time (w/o IO):  60.907838ms
	  Time (mean ± σ):     377.4 ms ±   9.8 ms    [User: 358.2 ms, System: 18.8 ms]
	  Range (min … max):   358.3 ms … 390.8 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 55.314ms
	Processing time (w/o IO): 58.577ms
	Processing time (w/o IO): 63.426ms
	Processing time (w/o IO): 60.698ms
	Processing time (w/o IO): 58.064ms
	  Time (mean ± σ):     713.4 ms ±  16.9 ms    [User: 671.3 ms, System: 41.4 ms]
	  Range (min … max):   691.9 ms … 734.7 ms    5 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 168ms
	Processing time (w/o IO): 166ms
	Processing time (w/o IO): 174ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 184ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 178ms
	  Time (mean ± σ):     832.7 ms ±  21.0 ms    [User: 937.5 ms, System: 207.1 ms]
	  Range (min … max):   804.8 ms … 861.0 ms    5 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 266ms
	Processing time (w/o IO): 247ms
	Processing time (w/o IO): 257ms
	Processing time (w/o IO): 254ms
	Processing time (w/o IO): 258ms
	Processing time (w/o IO): 254ms
	Processing time (w/o IO): 251ms
	Processing time (w/o IO): 261ms
	  Time (mean ± σ):     423.3 ms ±   6.9 ms    [User: 387.4 ms, System: 37.5 ms]
	  Range (min … max):   414.7 ms … 431.6 ms    5 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 66.336989402771ms
	Processing time (w/o IO): 63.42804431915283ms
	Processing time (w/o IO): 59.27109718322754ms
	Processing time (w/o IO): 62.87693977355957ms
	Processing time (w/o IO): 62.335968017578125ms
	Processing time (w/o IO): 63.356995582580566ms
	Processing time (w/o IO): 63.56692314147949ms
	Processing time (w/o IO): 64.31198120117188ms
	Processing time (w/o IO): 63.50207328796387ms
	Processing time (w/o IO): 74.05507564544678ms
	  Time (mean ± σ):     590.3 ms ±  16.0 ms    [User: 531.9 ms, System: 51.5 ms]
	  Range (min … max):   562.2 ms … 622.8 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 235ms
	Processing time (w/o IO): 201ms
	Processing time (w/o IO): 193ms
	Processing time (w/o IO): 195ms
	Processing time (w/o IO): 194ms
	  Time (mean ± σ):     305.6 ms ±  18.7 ms    [User: 269.4 ms, System: 82.8 ms]
	  Range (min … max):   290.0 ms … 336.4 ms    5 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 816ms
	Processing time (w/o IO): 1009ms
	Processing time (w/o IO): 991ms
	Processing time (w/o IO): 1010ms
	Processing time (w/o IO): 746ms
	  Time (mean ± σ):      1.041 s ±  0.137 s    [User: 1.010 s, System: 0.039 s]
	  Range (min … max):    0.814 s …  1.182 s    5 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 187ms
	Processing time (w/o IO): 166ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 173ms
	Processing time (w/o IO): 181ms
	  Time (mean ± σ):     299.1 ms ±  91.7 ms    [User: 246.8 ms, System: 41.2 ms]
	  Range (min … max):   253.0 ms … 463.0 ms    5 runs
	 
Java (JIT):

	Benchmark 1: java -jar ./target/main.jar
	Processing time (w/o IO): 325 ms
	Processing time (w/o IO): 275 ms
	Processing time (w/o IO): 267 ms
	Processing time (w/o IO): 262 ms
	Processing time (w/o IO): 318 ms
	Processing time (w/o IO): 324 ms
	Processing time (w/o IO): 316 ms
	Processing time (w/o IO): 287 ms
	Processing time (w/o IO): 278 ms
	Processing time (w/o IO): 330 ms
	Processing time (w/o IO): 308 ms
	Processing time (w/o IO): 326 ms
	Processing time (w/o IO): 373 ms
	  Time (mean ± σ):     660.8 ms ±  40.5 ms    [User: 1112.6 ms, System: 99.8 ms]
	  Range (min … max):   603.4 ms … 747.0 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 58 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 63 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 58 ms
	Processing time (w/o IO): 59 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 58 ms
	Processing time (w/o IO): 59 ms
	Processing time (w/o IO): 59 ms
	Processing time (w/o IO): 58 ms
	  Time (mean ± σ):     100.7 ms ±   2.3 ms    [User: 83.5 ms, System: 17.2 ms]
	  Range (min … max):    97.4 ms … 105.6 ms    10 runs
	 
