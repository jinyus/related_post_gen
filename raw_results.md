Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 24.772009ms
	Processing time (w/o IO): 24.096897ms
	Processing time (w/o IO): 24.331901ms
	Processing time (w/o IO): 24.986412ms
	Processing time (w/o IO): 24.094198ms
	Processing time (w/o IO): 24.121798ms
	Processing time (w/o IO): 24.216199ms
	Processing time (w/o IO): 24.573305ms
	Processing time (w/o IO): 24.713208ms
	Processing time (w/o IO): 24.070897ms
	Processing time (w/o IO): 24.2736ms
	Processing time (w/o IO): 24.639507ms
	Processing time (w/o IO): 24.160898ms
	  Time (mean ± σ):      62.9 ms ±   1.2 ms    [User: 60.9 ms, System: 8.3 ms]
	  Range (min … max):    61.3 ms …  65.1 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 12.642409ms
	Processing time (w/o IO): 13.078116ms
	Processing time (w/o IO): 14.128833ms
	Processing time (w/o IO): 12.533506ms
	Processing time (w/o IO): 12.557207ms
	Processing time (w/o IO): 13.152417ms
	Processing time (w/o IO): 13.023815ms
	Processing time (w/o IO): 12.689909ms
	Processing time (w/o IO): 14.494639ms
	Processing time (w/o IO): 12.69591ms
	Processing time (w/o IO): 12.638709ms
	Processing time (w/o IO): 12.577207ms
	Processing time (w/o IO): 12.353004ms
	  Time (mean ± σ):      49.9 ms ±   0.9 ms    [User: 77.6 ms, System: 11.5 ms]
	  Range (min … max):    48.7 ms …  51.8 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 23.582893ms
	Processing time (w/o IO): 23.707595ms
	Processing time (w/o IO): 23.41559ms
	Processing time (w/o IO): 23.461191ms
	Processing time (w/o IO): 23.41759ms
	Processing time (w/o IO): 23.621894ms
	Processing time (w/o IO): 23.373389ms
	Processing time (w/o IO): 23.648094ms
	Processing time (w/o IO): 23.44259ms
	Processing time (w/o IO): 23.485391ms
	Processing time (w/o IO): 23.42259ms
	Processing time (w/o IO): 23.511492ms
	Processing time (w/o IO): 23.46159ms
	  Time (mean ± σ):      38.5 ms ±   0.6 ms    [User: 30.2 ms, System: 8.3 ms]
	  Range (min … max):    38.1 ms …  40.0 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 16.029189ms
	Processing time (w/o IO): 14.344248ms
	Processing time (w/o IO): 13.979039ms
	Processing time (w/o IO): 13.920238ms
	Processing time (w/o IO): 15.295571ms
	Processing time (w/o IO): 14.064741ms
	Processing time (w/o IO): 14.695057ms
	Processing time (w/o IO): 14.700357ms
	Processing time (w/o IO): 14.461651ms
	Processing time (w/o IO): 14.522452ms
	Processing time (w/o IO): 14.730258ms
	Processing time (w/o IO): 14.337148ms
	Processing time (w/o IO): 14.443551ms
	  Time (mean ± σ):      30.5 ms ±   0.8 ms    [User: 32.9 ms, System: 9.6 ms]
	  Range (min … max):    29.2 ms …  31.7 ms    10 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 25.178ms
	Processing time (w/o IO): 24.617ms
	Processing time (w/o IO): 24.747ms
	Processing time (w/o IO): 25.171ms
	Processing time (w/o IO): 24.98ms
	Processing time (w/o IO): 24.916ms
	Processing time (w/o IO): 24.624ms
	Processing time (w/o IO): 24.455ms
	Processing time (w/o IO): 24.839ms
	Processing time (w/o IO): 24.76ms
	Processing time (w/o IO): 24.868ms
	Processing time (w/o IO): 24.34ms
	Processing time (w/o IO): 24.52ms
	  Time (mean ± σ):     104.4 ms ±   0.7 ms    [User: 97.2 ms, System: 8.7 ms]
	  Range (min … max):   103.3 ms … 105.3 ms    10 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 17.856ms
	Processing time (w/o IO): 16.087ms
	Processing time (w/o IO): 16.065ms
	Processing time (w/o IO): 16.808ms
	Processing time (w/o IO): 17.09ms
	Processing time (w/o IO): 17.61ms
	Processing time (w/o IO): 17.784ms
	Processing time (w/o IO): 17.59ms
	Processing time (w/o IO): 18.285ms
	Processing time (w/o IO): 16.079ms
	Processing time (w/o IO): 15.89ms
	Processing time (w/o IO): 17.075ms
	Processing time (w/o IO): 17.096ms
	  Time (mean ± σ):      97.6 ms ±   1.1 ms    [User: 121.5 ms, System: 9.7 ms]
	  Range (min … max):    96.0 ms …  99.1 ms    10 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 35 ms
	  Time (mean ± σ):     234.2 ms ±   1.6 ms    [User: 202.0 ms, System: 32.0 ms]
	  Range (min … max):   231.9 ms … 237.0 ms    10 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 15 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 18 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 15 ms
	Processing time (w/o IO): 19 ms
	Processing time (w/o IO): 18 ms
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 17 ms
	  Time (mean ± σ):     230.1 ms ±   1.8 ms    [User: 235.8 ms, System: 35.9 ms]
	  Range (min … max):   227.2 ms … 232.5 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 1.477s
	Processing time (w/o IO): 1.465s
	Processing time (w/o IO): 1.457s
	Processing time (w/o IO): 1.461s
	Processing time (w/o IO): 1.455s
	Processing time (w/o IO): 1.481s
	Processing time (w/o IO): 1.462s
	Processing time (w/o IO): 1.476s
	Processing time (w/o IO): 1.461s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.459s
	Processing time (w/o IO): 1.468s
	Processing time (w/o IO): 1.464s
	  Time (mean ± σ):      1.532 s ±  0.008 s    [User: 1.517 s, System: 0.014 s]
	  Range (min … max):    1.523 s …  1.548 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 346.7ms
	Processing time (w/o IO): 347.8ms
	Processing time (w/o IO): 348.4ms
	Processing time (w/o IO): 347.9ms
	Processing time (w/o IO): 348.8ms
	Processing time (w/o IO): 348.5ms
	Processing time (w/o IO): 348.3ms
	Processing time (w/o IO): 348.1ms
	Processing time (w/o IO): 347.7ms
	Processing time (w/o IO): 351.2ms
	Processing time (w/o IO): 347.4ms
	Processing time (w/o IO): 347.9ms
	Processing time (w/o IO): 349.9ms
	  Time (mean ± σ):     650.7 ms ±  57.1 ms    [User: 841.2 ms, System: 400.8 ms]
	  Range (min … max):   625.9 ms … 808.2 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 65.323283ms
	Processing time (w/o IO): 65.047479ms
	Processing time (w/o IO): 64.895377ms
	Processing time (w/o IO): 64.903076ms
	Processing time (w/o IO): 65.226482ms
	Processing time (w/o IO): 64.965578ms
	Processing time (w/o IO): 65.225981ms
	Processing time (w/o IO): 64.986577ms
	Processing time (w/o IO): 65.525686ms
	Processing time (w/o IO): 65.008778ms
	Processing time (w/o IO): 64.897576ms
	Processing time (w/o IO): 64.972278ms
	Processing time (w/o IO): 64.955178ms
	  Time (mean ± σ):     115.1 ms ±   1.6 ms    [User: 106.4 ms, System: 8.6 ms]
	  Range (min … max):   113.4 ms … 117.4 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 28ms
	  Time (mean ± σ):      75.2 ms ±   0.9 ms    [User: 65.4 ms, System: 9.8 ms]
	  Range (min … max):    74.5 ms …  77.1 ms    10 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
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
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 29 milliseconds
	Processing time (w/o IO): 30 milliseconds
	  Time (mean ± σ):     470.6 ms ±  15.1 ms    [User: 367.3 ms, System: 206.9 ms]
	  Range (min … max):   452.6 ms … 486.2 ms    10 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 15 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 17 milliseconds
	  Time (mean ± σ):     461.7 ms ±  17.6 ms    [User: 405.0 ms, System: 206.7 ms]
	  Range (min … max):   439.8 ms … 486.5 ms    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  41.38139ms
	Processing time (w/o IO):  41.39089ms
	Processing time (w/o IO):  40.76828ms
	Processing time (w/o IO):  41.028684ms
	Processing time (w/o IO):  41.42059ms
	Processing time (w/o IO):  41.301689ms
	Processing time (w/o IO):  41.319023ms
	Processing time (w/o IO):  41.104819ms
	Processing time (w/o IO):  41.424725ms
	Processing time (w/o IO):  41.030518ms
	Processing time (w/o IO):  41.224121ms
	Processing time (w/o IO):  41.122419ms
	Processing time (w/o IO):  40.966616ms
	  Time (mean ± σ):     259.2 ms ±   1.2 ms    [User: 250.3 ms, System: 8.8 ms]
	  Range (min … max):   258.3 ms … 262.6 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 51.605ms
	Processing time (w/o IO): 51.036ms
	Processing time (w/o IO): 51.433ms
	Processing time (w/o IO): 51.345ms
	Processing time (w/o IO): 51.147ms
	Processing time (w/o IO): 51.421ms
	Processing time (w/o IO): 51.090ms
	Processing time (w/o IO): 51.293ms
	Processing time (w/o IO): 51.104ms
	Processing time (w/o IO): 51.198ms
	Processing time (w/o IO): 51.461ms
	Processing time (w/o IO): 51.196ms
	Processing time (w/o IO): 51.419ms
	  Time (mean ± σ):     363.1 ms ±   1.8 ms    [User: 335.6 ms, System: 27.5 ms]
	  Range (min … max):   360.3 ms … 365.5 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 154ms
	  Time (mean ± σ):     514.3 ms ±  13.4 ms    [User: 626.5 ms, System: 107.2 ms]
	  Range (min … max):   498.0 ms … 535.1 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 187ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 187ms
	Processing time (w/o IO): 187ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 187ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 187ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 186ms
	  Time (mean ± σ):     314.2 ms ±   1.8 ms    [User: 297.1 ms, System: 21.3 ms]
	  Range (min … max):   312.0 ms … 316.8 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 51.217079162597656ms
	Processing time (w/o IO): 51.16307735443115ms
	Processing time (w/o IO): 50.60398578643799ms
	Processing time (w/o IO): 51.524996757507324ms
	Processing time (w/o IO): 51.25701427459717ms
	Processing time (w/o IO): 51.293015480041504ms
	Processing time (w/o IO): 50.971031188964844ms
	Processing time (w/o IO): 50.99606513977051ms
	Processing time (w/o IO): 50.52495002746582ms
	Processing time (w/o IO): 50.71699619293213ms
	Processing time (w/o IO): 50.83894729614258ms
	Processing time (w/o IO): 51.12111568450928ms
	Processing time (w/o IO): 51.2470006942749ms
	  Time (mean ± σ):     411.5 ms ±   8.5 ms    [User: 353.3 ms, System: 36.0 ms]
	  Range (min … max):   402.5 ms … 424.3 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 31.401735ms
	Processing time (w/o IO): 31.489936ms
	Processing time (w/o IO): 30.911626ms
	Processing time (w/o IO): 32.853859ms
	Processing time (w/o IO): 31.369834ms
	Processing time (w/o IO): 31.930044ms
	Processing time (w/o IO): 31.13673ms
	Processing time (w/o IO): 31.566137ms
	Processing time (w/o IO): 30.936227ms
	Processing time (w/o IO): 31.053228ms
	Processing time (w/o IO): 31.151531ms
	Processing time (w/o IO): 31.850743ms
	Processing time (w/o IO): 31.040829ms
	  Time (mean ± σ):     394.4 ms ±   5.1 ms    [User: 421.2 ms, System: 40.5 ms]
	  Range (min … max):   389.3 ms … 402.3 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 125ms
	Processing time (w/o IO): 130ms
	  Time (mean ± σ):     309.1 ms ±  19.7 ms    [User: 303.6 ms, System: 62.0 ms]
	  Range (min … max):   296.8 ms … 364.4 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 117ms
	Processing time (w/o IO): 124ms
	Processing time (w/o IO): 100ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 117ms
	Processing time (w/o IO): 117ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 120ms
	Processing time (w/o IO): 125ms
	Processing time (w/o IO): 119ms
	Processing time (w/o IO): 120ms
	Processing time (w/o IO): 122ms
	Processing time (w/o IO): 125ms
	  Time (mean ± σ):     179.1 ms ±   4.6 ms    [User: 195.7 ms, System: 35.6 ms]
	  Range (min … max):   173.9 ms … 188.1 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 203ms
	Processing time (w/o IO): 205ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 136ms
	Processing time (w/o IO): 198ms
	Processing time (w/o IO): 133ms
	Processing time (w/o IO): 200ms
	Processing time (w/o IO): 193ms
	Processing time (w/o IO): 199ms
	Processing time (w/o IO): 135ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 199ms
	Processing time (w/o IO): 138ms
	  Time (mean ± σ):     235.2 ms ±  32.8 ms    [User: 226.8 ms, System: 33.3 ms]
	  Range (min … max):   199.8 ms … 269.2 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 54 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 54 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 55 ms
	  Time (mean ± σ):     386.9 ms ±   8.3 ms    [User: 697.1 ms, System: 45.3 ms]
	  Range (min … max):   373.1 ms … 397.5 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	  Time (mean ± σ):     129.5 ms ±   0.5 ms    [User: 118.6 ms, System: 11.0 ms]
	  Range (min … max):   128.8 ms … 130.4 ms    10 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 38 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	  Time (mean ± σ):      68.8 ms ±   0.8 ms    [User: 113.3 ms, System: 13.8 ms]
	  Range (min … max):    67.4 ms …  69.7 ms    10 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 30.744ms
	Processing time (w/o IO): 30.45ms
	Processing time (w/o IO): 30.376ms
	Processing time (w/o IO): 30.408ms
	Processing time (w/o IO): 30.401ms
	Processing time (w/o IO): 30.402ms
	Processing time (w/o IO): 30.476ms
	Processing time (w/o IO): 30.226ms
	Processing time (w/o IO): 30.386ms
	Processing time (w/o IO): 30.193ms
	Processing time (w/o IO): 30.329ms
	Processing time (w/o IO): 30.29ms
	Processing time (w/o IO): 30.491ms
	  Time (mean ± σ):      55.4 ms ±   0.6 ms    [User: 45.2 ms, System: 10.2 ms]
	  Range (min … max):    54.6 ms …  56.4 ms    10 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 53ms
	Processing time (w/o IO): 52ms
	Processing time (w/o IO): 51ms
	Processing time (w/o IO): 52ms
	Processing time (w/o IO): 52ms
	Processing time (w/o IO): 53ms
	Processing time (w/o IO): 52ms
	Processing time (w/o IO): 51ms
	Processing time (w/o IO): 52ms
	Processing time (w/o IO): 51ms
	Processing time (w/o IO): 52ms
	Processing time (w/o IO): 52ms
	Processing time (w/o IO): 51ms
	  Time (mean ± σ):     923.9 ms ±   6.7 ms    [User: 1004.6 ms, System: 100.7 ms]
	  Range (min … max):   918.8 ms … 939.5 ms    10 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 23ms
	Processing time (w/o IO): 22ms
	Processing time (w/o IO): 23ms
	Processing time (w/o IO): 24ms
	Processing time (w/o IO): 22ms
	Processing time (w/o IO): 22ms
	Processing time (w/o IO): 22ms
	Processing time (w/o IO): 23ms
	Processing time (w/o IO): 23ms
	Processing time (w/o IO): 22ms
	Processing time (w/o IO): 23ms
	Processing time (w/o IO): 22ms
	Processing time (w/o IO): 23ms
	  Time (mean ± σ):     899.0 ms ±   6.1 ms    [User: 1062.7 ms, System: 93.0 ms]
	  Range (min … max):   889.4 ms … 906.7 ms    10 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 19ms
	  Time (mean ± σ):     724.8 ms ±   5.1 ms    [User: 792.8 ms, System: 96.7 ms]
	  Range (min … max):   718.6 ms … 735.9 ms    10 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 37ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 37ms
	Processing time (w/o IO): 37ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 37ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 36ms
	  Time (mean ± σ):     764.3 ms ±   3.5 ms    [User: 724.5 ms, System: 81.8 ms]
	  Range (min … max):   760.0 ms … 770.3 ms    10 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 57.8081ms
	Processing time (w/o IO): 57.7195ms
	Processing time (w/o IO): 58.3026ms
	Processing time (w/o IO): 58.1743ms
	Processing time (w/o IO): 58.0948ms
	Processing time (w/o IO): 57.8584ms
	Processing time (w/o IO): 57.9636ms
	Processing time (w/o IO): 58.0317ms
	Processing time (w/o IO): 57.9052ms
	Processing time (w/o IO): 57.9271ms
	Processing time (w/o IO): 57.6304ms
	Processing time (w/o IO): 57.7496ms
	Processing time (w/o IO): 57.9105ms
	  Time (mean ± σ):     199.7 ms ±   4.0 ms    [User: 151.5 ms, System: 31.4 ms]
	  Range (min … max):   192.8 ms … 206.0 ms    10 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 42.6656ms
	Processing time (w/o IO): 42.9712ms
	Processing time (w/o IO): 43.1996ms
	Processing time (w/o IO): 42.8551ms
	Processing time (w/o IO): 42.9007ms
	Processing time (w/o IO): 43.1406ms
	Processing time (w/o IO): 42.8991ms
	Processing time (w/o IO): 42.8406ms
	Processing time (w/o IO): 43.0952ms
	Processing time (w/o IO): 42.8118ms
	Processing time (w/o IO): 42.6156ms
	Processing time (w/o IO): 42.8584ms
	Processing time (w/o IO): 42.7069ms
	  Time (mean ± σ):      87.8 ms ±   1.2 ms    [User: 81.7 ms, System: 16.4 ms]
	  Range (min … max):    86.5 ms …  90.1 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	90.821027755737	ms
	Processing time (w/o IO):	104.42280769348	ms
	Processing time (w/o IO):	113.69490623474	ms
	Processing time (w/o IO):	103.48796844482	ms
	Processing time (w/o IO):	113.63697052002	ms
	Processing time (w/o IO):	107.55395889282	ms
	Processing time (w/o IO):	88.147878646851	ms
	Processing time (w/o IO):	90.003967285156	ms
	Processing time (w/o IO):	111.05608940125	ms
	Processing time (w/o IO):	112.58482933044	ms
	Processing time (w/o IO):	110.92495918274	ms
	Processing time (w/o IO):	107.23304748535	ms
	Processing time (w/o IO):	107.45692253113	ms
	  Time (mean ± σ):     348.1 ms ±   9.5 ms    [User: 328.3 ms, System: 19.7 ms]
	  Range (min … max):   326.5 ms … 357.6 ms    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1090.9879207611	ms
	Processing time (w/o IO):	1092.2961235046	ms
	Processing time (w/o IO):	1094.4449901581	ms
	Processing time (w/o IO):	1091.8967723846	ms
	Processing time (w/o IO):	1109.7989082336	ms
	Processing time (w/o IO):	1092.4129486084	ms
	Processing time (w/o IO):	1091.1300182343	ms
	Processing time (w/o IO):	1092.0112133026	ms
	Processing time (w/o IO):	1097.2561836243	ms
	Processing time (w/o IO):	1091.9570922852	ms
	Processing time (w/o IO):	1101.8471717834	ms
	Processing time (w/o IO):	1090.1408195496	ms
	Processing time (w/o IO):	1091.3009643555	ms
	  Time (mean ± σ):      1.520 s ±  0.006 s    [User: 1.503 s, System: 0.016 s]
	  Range (min … max):    1.512 s …  1.534 s    10 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 142ms
	Processing time (w/o IO): 143ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 142ms
	Processing time (w/o IO): 139ms
	Processing time (w/o IO): 139ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 139ms
	Processing time (w/o IO): 139ms
	Processing time (w/o IO): 136ms
	Processing time (w/o IO): 137ms
	  Time (mean ± σ):     230.4 ms ±  25.7 ms    [User: 193.4 ms, System: 29.4 ms]
	  Range (min … max):   217.5 ms … 303.1 ms    10 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 370.987686ms
	Processing time (w/o IO): 371.419892ms
	Processing time (w/o IO): 370.871085ms
	  Time (mean ± σ):     518.4 ms ±   3.6 ms    [User: 501.1 ms, System: 49.7 ms]
	  Range (min … max):   515.8 ms … 520.9 ms    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 165.980185ms
	Processing time (w/o IO): 165.681895ms
	Processing time (w/o IO): 166.0047ms
	  Time (mean ± σ):     305.4 ms ±   2.0 ms    [User: 782.2 ms, System: 31.5 ms]
	  Range (min … max):   304.0 ms … 306.8 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 340.719336ms
	Processing time (w/o IO): 340.888838ms
	Processing time (w/o IO): 340.409531ms
	  Time (mean ± σ):     401.7 ms ±   0.7 ms    [User: 375.9 ms, System: 25.7 ms]
	  Range (min … max):   401.2 ms … 402.2 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 182.730062ms
	Processing time (w/o IO): 180.212885ms
	Processing time (w/o IO): 180.453668ms
	  Time (mean ± σ):     240.6 ms ±   1.3 ms    [User: 386.4 ms, System: 29.5 ms]
	  Range (min … max):   239.7 ms … 241.6 ms    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 312.323ms
	Processing time (w/o IO): 315.303ms
	Processing time (w/o IO): 314.704ms
	  Time (mean ± σ):     611.5 ms ±   1.2 ms    [User: 586.1 ms, System: 29.4 ms]
	  Range (min … max):   610.6 ms … 612.3 ms    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 172.203ms
	Processing time (w/o IO): 172.37ms
	Processing time (w/o IO): 171.7ms
	  Time (mean ± σ):     466.3 ms ±   0.6 ms    [User: 891.6 ms, System: 33.3 ms]
	  Range (min … max):   465.9 ms … 466.7 ms    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 519 ms
	Processing time (w/o IO): 522 ms
	Processing time (w/o IO): 520 ms
	  Time (mean ± σ):      1.339 s ±  0.006 s    [User: 1.219 s, System: 0.119 s]
	  Range (min … max):    1.334 s …  1.343 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 206 ms
	Processing time (w/o IO): 204 ms
	Processing time (w/o IO): 204 ms
	  Time (mean ± σ):      1.060 s ±  0.004 s    [User: 1.520 s, System: 0.121 s]
	  Range (min … max):    1.057 s …  1.063 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 23.753s
	Processing time (w/o IO): 23.436s
	  Time (abs ≡):        23.595 s               [User: 23.527 s, System: 0.064 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 6.168s
	Processing time (w/o IO): 7.381s
	Processing time (w/o IO): 7.214s
	  Time (mean ± σ):      7.812 s ±  0.139 s    [User: 5.137 s, System: 3.265 s]
	  Range (min … max):    7.714 s …  7.911 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 972.433428ms
	Processing time (w/o IO): 977.72912ms
	Processing time (w/o IO): 971.459612ms
	  Time (mean ± σ):      1.190 s ±  0.005 s    [User: 1.162 s, System: 0.025 s]
	  Range (min … max):    1.187 s …  1.194 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 429ms
	Processing time (w/o IO): 430ms
	Processing time (w/o IO): 430ms
	  Time (mean ± σ):     616.2 ms ±   0.9 ms    [User: 582.9 ms, System: 33.3 ms]
	  Range (min … max):   615.6 ms … 616.9 ms    2 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 479 milliseconds
	Processing time (w/o IO): 479 milliseconds
	Processing time (w/o IO): 479 milliseconds
	  Time (mean ± σ):      1.135 s ±  0.001 s    [User: 1.006 s, System: 0.231 s]
	  Range (min … max):    1.134 s …  1.135 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 222 milliseconds
	Processing time (w/o IO): 221 milliseconds
	Processing time (w/o IO): 222 milliseconds
	  Time (mean ± σ):     879.2 ms ±   0.1 ms    [User: 1400.4 ms, System: 235.3 ms]
	  Range (min … max):   879.1 ms … 879.3 ms    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  572.253084ms
	Processing time (w/o IO):  571.999822ms
	Processing time (w/o IO):  574.498754ms
	  Time (mean ± σ):      1.368 s ±  0.004 s    [User: 1.341 s, System: 0.025 s]
	  Range (min … max):    1.365 s …  1.371 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 755.922ms
	Processing time (w/o IO): 756.220ms
	Processing time (w/o IO): 756.512ms
	  Time (mean ± σ):      9.536 s ±  0.088 s    [User: 9.395 s, System: 0.135 s]
	  Range (min … max):    9.473 s …  9.598 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 2388ms
	Processing time (w/o IO): 2377ms
	Processing time (w/o IO): 2346ms
	  Time (mean ± σ):      3.021 s ±  0.025 s    [User: 3.224 s, System: 0.152 s]
	  Range (min … max):    3.004 s …  3.039 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 2895ms
	Processing time (w/o IO): 2903ms
	Processing time (w/o IO): 2885ms
	  Time (mean ± σ):      3.390 s ±  0.014 s    [User: 3.329 s, System: 0.079 s]
	  Range (min … max):    3.380 s …  3.400 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 714.3290042877197ms
	Processing time (w/o IO): 712.8469944000244ms
	Processing time (w/o IO): 713.3650779724121ms
	  Time (mean ± σ):      2.110 s ±  0.015 s    [User: 1.926 s, System: 0.146 s]
	  Range (min … max):    2.099 s …  2.120 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 394.241653ms
	Processing time (w/o IO): 392.675026ms
	Processing time (w/o IO): 393.408238ms
	  Time (mean ± σ):      1.808 s ±  0.001 s    [User: 2.789 s, System: 0.127 s]
	  Range (min … max):    1.807 s …  1.808 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 2609ms
	Processing time (w/o IO): 2606ms
	Processing time (w/o IO): 2067ms
	  Time (mean ± σ):      2.666 s ±  0.380 s    [User: 2.679 s, System: 0.088 s]
	  Range (min … max):    2.397 s …  2.935 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 1535ms
	Processing time (w/o IO): 1419ms
	Processing time (w/o IO): 1529ms
	  Time (mean ± σ):      1.639 s ±  0.068 s    [User: 1.635 s, System: 0.071 s]
	  Range (min … max):    1.591 s …  1.687 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 1811ms
	Processing time (w/o IO): 1814ms
	Processing time (w/o IO): 1807ms
	  Time (mean ± σ):      1.988 s ±  0.012 s    [User: 1.921 s, System: 0.103 s]
	  Range (min … max):    1.980 s …  1.996 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 462 ms
	Processing time (w/o IO): 466 ms
	Processing time (w/o IO): 461 ms
	  Time (mean ± σ):     559.4 ms ±   4.6 ms    [User: 1293.5 ms, System: 29.3 ms]
	  Range (min … max):   556.1 ms … 562.6 ms    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 463 ms
	Processing time (w/o IO): 462 ms
	Processing time (w/o IO): 468 ms
	  Time (mean ± σ):     562.1 ms ±   4.6 ms    [User: 1287.6 ms, System: 39.4 ms]
	  Range (min … max):   558.8 ms … 565.3 ms    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 435.231ms
	Processing time (w/o IO): 434.845ms
	Processing time (w/o IO): 433.889ms
	  Time (mean ± σ):     532.9 ms ±   1.2 ms    [User: 499.5 ms, System: 33.4 ms]
	  Range (min … max):   532.1 ms … 533.8 ms    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 826ms
	Processing time (w/o IO): 709ms
	Processing time (w/o IO): 708ms
	  Time (mean ± σ):      3.533 s ±  0.022 s    [User: 3.442 s, System: 0.294 s]
	  Range (min … max):    3.518 s …  3.549 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 295ms
	Processing time (w/o IO): 288ms
	Processing time (w/o IO): 281ms
	  Time (mean ± σ):      2.615 s ±  0.011 s    [User: 4.185 s, System: 0.252 s]
	  Range (min … max):    2.608 s …  2.623 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 290ms
	Processing time (w/o IO): 290ms
	Processing time (w/o IO): 290ms
	  Time (mean ± σ):      3.590 s ±  0.013 s    [User: 5.554 s, System: 0.360 s]
	  Range (min … max):    3.581 s …  3.599 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 547ms
	Processing time (w/o IO): 546ms
	Processing time (w/o IO): 546ms
	  Time (mean ± σ):      4.122 s ±  0.008 s    [User: 4.372 s, System: 0.410 s]
	  Range (min … max):    4.116 s …  4.128 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 775.4064ms
	Processing time (w/o IO): 772.0486ms
	Processing time (w/o IO): 774.8958ms
	  Time (mean ± σ):      1.091 s ±  0.004 s    [User: 1.069 s, System: 0.048 s]
	  Range (min … max):    1.088 s …  1.094 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 617.2011ms
	Processing time (w/o IO): 616.2859ms
	Processing time (w/o IO): 614.0687ms
	  Time (mean ± σ):     784.0 ms ±   3.1 ms    [User: 755.1 ms, System: 73.9 ms]
	  Range (min … max):   781.8 ms … 786.2 ms    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	1459.5539569855	ms
	Processing time (w/o IO):	1515.6168937683	ms
	Processing time (w/o IO):	1160.1240634918	ms
	  Time (mean ± σ):      2.551 s ±  0.283 s    [User: 2.484 s, System: 0.063 s]
	  Range (min … max):    2.351 s …  2.750 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	16750.49996376	ms
	Processing time (w/o IO):	16716.531038284	ms
	  Time (abs ≡):        18.483 s               [User: 18.391 s, System: 0.087 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 2652ms
	Processing time (w/o IO): 2605ms
	Processing time (w/o IO): 2586ms
	  Time (mean ± σ):      3.014 s ±  0.010 s    [User: 2.905 s, System: 0.108 s]
	  Range (min … max):    3.007 s …  3.021 s    2 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 3.273053658s
	Processing time (w/o IO): 3.277157619s
	Processing time (w/o IO): 3.27794807s
	  Time (mean ± σ):      3.750 s ±  0.004 s    [User: 3.762 s, System: 0.119 s]
	  Range (min … max):    3.747 s …  3.753 s    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1.418363597s
	Processing time (w/o IO): 1.420374854s
	Processing time (w/o IO): 1.4199929s
	  Time (mean ± σ):      1.883 s ±  0.001 s    [User: 6.099 s, System: 0.100 s]
	  Range (min … max):    1.883 s …  1.884 s    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 3.035957657s
	Processing time (w/o IO): 3.041183483s
	Processing time (w/o IO): 3.031882636s
	  Time (mean ± σ):      3.250 s ±  0.000 s    [User: 3.160 s, System: 0.083 s]
	  Range (min … max):    3.249 s …  3.250 s    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 1.572918718s
	Processing time (w/o IO): 1.565749798s
	Processing time (w/o IO): 1.57294551s
	  Time (mean ± σ):      1.781 s ±  0.013 s    [User: 3.251 s, System: 0.081 s]
	  Range (min … max):    1.772 s …  1.790 s    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 2704.45ms
	Processing time (w/o IO): 2700.66ms
	Processing time (w/o IO): 2705.57ms
	  Time (mean ± σ):      3.653 s ±  0.003 s    [User: 3.540 s, System: 0.116 s]
	  Range (min … max):    3.651 s …  3.655 s    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1396.88ms
	Processing time (w/o IO): 1397.78ms
	Processing time (w/o IO): 1394.18ms
	  Time (mean ± σ):      2.340 s ±  0.005 s    [User: 6.220 s, System: 0.139 s]
	  Range (min … max):    2.337 s …  2.343 s    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 4579 ms
	Processing time (w/o IO): 4583 ms
	Processing time (w/o IO): 4576 ms
	  Time (mean ± σ):      7.175 s ±  0.036 s    [User: 6.728 s, System: 0.296 s]
	  Range (min … max):    7.149 s …  7.200 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 1752 ms
	Processing time (w/o IO): 1752 ms
	Processing time (w/o IO): 1753 ms
	  Time (mean ± σ):      4.499 s ±  0.004 s    [User: 9.142 s, System: 0.336 s]
	  Range (min … max):    4.497 s …  4.502 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 225.358s
	Processing time (w/o IO): 214.979s
	  Time (abs ≡):        215.449 s               [User: 215.254 s, System: 0.167 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 8650.082227ms
	Processing time (w/o IO): 8649.791439ms
	Processing time (w/o IO): 8653.927847ms
	  Time (mean ± σ):      9.349 s ±  0.004 s    [User: 9.248 s, System: 0.090 s]
	  Range (min … max):    9.347 s …  9.352 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 3820ms
	Processing time (w/o IO): 3822ms
	Processing time (w/o IO): 3823ms
	  Time (mean ± σ):      4.404 s ±  0.001 s    [User: 4.340 s, System: 0.056 s]
	  Range (min … max):    4.404 s …  4.405 s    2 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 4231 milliseconds
	Processing time (w/o IO): 4234 milliseconds
	Processing time (w/o IO): 4236 milliseconds
	  Time (mean ± σ):      5.220 s ±  0.006 s    [User: 5.044 s, System: 0.270 s]
	  Range (min … max):    5.215 s …  5.224 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 1951 milliseconds
	Processing time (w/o IO): 1939 milliseconds
	Processing time (w/o IO): 1938 milliseconds
	  Time (mean ± σ):      2.925 s ±  0.001 s    [User: 8.491 s, System: 0.299 s]
	  Range (min … max):    2.924 s …  2.925 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  5.138814561s
	Processing time (w/o IO):  5.117069073s
	Processing time (w/o IO):  5.025538947s
	  Time (mean ± σ):      7.474 s ±  0.060 s    [User: 7.383 s, System: 0.082 s]
	  Range (min … max):    7.431 s …  7.517 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 6.652s
	Processing time (w/o IO): 6.655s
	Processing time (w/o IO): 6.657s
	  Time (mean ± σ):     77.647 s ±  4.551 s    [User: 77.200 s, System: 0.428 s]
	  Range (min … max):   74.430 s … 80.865 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 21269ms
	Processing time (w/o IO): 20717ms
	Processing time (w/o IO): 20953ms
	  Time (mean ± σ):     22.320 s ±  0.160 s    [User: 22.544 s, System: 0.235 s]
	  Range (min … max):   22.207 s … 22.433 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 25812ms
	Processing time (w/o IO): 25770ms
	Processing time (w/o IO): 25805ms
	  Time (mean ± σ):     27.274 s ±  0.036 s    [User: 27.226 s, System: 0.147 s]
	  Range (min … max):   27.249 s … 27.300 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 6179.98993396759ms
	Processing time (w/o IO): 6182.981014251709ms
	Processing time (w/o IO): 6181.777000427246ms
	  Time (mean ± σ):     10.396 s ±  0.015 s    [User: 9.891 s, System: 0.348 s]
	  Range (min … max):   10.385 s … 10.406 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 3447.717528ms
	Processing time (w/o IO): 3444.333411ms
	Processing time (w/o IO): 3461.459528ms
	  Time (mean ± σ):      7.817 s ±  0.036 s    [User: 17.502 s, System: 0.375 s]
	  Range (min … max):    7.791 s …  7.842 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 18674ms
	Processing time (w/o IO): 19692ms
	Processing time (w/o IO): 14285ms
	  Time (mean ± σ):     17.799 s ±  3.827 s    [User: 17.805 s, System: 0.181 s]
	  Range (min … max):   15.093 s … 20.505 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 12196ms
	Processing time (w/o IO): 12982ms
	Processing time (w/o IO): 13229ms
	  Time (mean ± σ):     13.577 s ±  0.180 s    [User: 13.554 s, System: 0.160 s]
	  Range (min … max):   13.449 s … 13.704 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 18133ms
	Processing time (w/o IO): 15856ms
	Processing time (w/o IO): 15896ms
	  Time (mean ± σ):     16.512 s ±  0.254 s    [User: 16.353 s, System: 0.185 s]
	  Range (min … max):   16.332 s … 16.692 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 4111 ms
	Processing time (w/o IO): 4200 ms
	Processing time (w/o IO): 4113 ms
	  Time (mean ± σ):      4.496 s ±  0.083 s    [User: 11.120 s, System: 0.097 s]
	  Range (min … max):    4.437 s …  4.554 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 4101 ms
	Processing time (w/o IO): 4107 ms
	Processing time (w/o IO): 4139 ms
	  Time (mean ± σ):      4.460 s ±  0.023 s    [User: 11.030 s, System: 0.114 s]
	  Range (min … max):    4.444 s …  4.476 s    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 3823.735ms
	Processing time (w/o IO): 3830.267ms
	Processing time (w/o IO): 3823.292ms
	  Time (mean ± σ):      4.167 s ±  0.007 s    [User: 4.046 s, System: 0.111 s]
	  Range (min … max):    4.162 s …  4.171 s    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 6260ms
	Processing time (w/o IO): 6266ms
	Processing time (w/o IO): 6263ms
	  Time (mean ± σ):     17.760 s ±  0.014 s    [User: 18.593 s, System: 0.588 s]
	  Range (min … max):   17.750 s … 17.770 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 2439ms
	Processing time (w/o IO): 2513ms
	Processing time (w/o IO): 2443ms
	  Time (mean ± σ):     10.229 s ±  0.053 s    [User: 25.619 s, System: 0.548 s]
	  Range (min … max):   10.192 s … 10.266 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 2473ms
	Processing time (w/o IO): 2477ms
	Processing time (w/o IO): 2474ms
	  Time (mean ± σ):     12.905 s ±  0.043 s    [User: 28.602 s, System: 0.530 s]
	  Range (min … max):   12.875 s … 12.935 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 4699ms
	Processing time (w/o IO): 4714ms
	Processing time (w/o IO): 4713ms
	  Time (mean ± σ):     17.505 s ±  0.076 s    [User: 18.505 s, System: 0.529 s]
	  Range (min … max):   17.451 s … 17.559 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 6759.81ms
	Processing time (w/o IO): 6765.781ms
	Processing time (w/o IO): 6761.4192ms
	  Time (mean ± σ):      7.606 s ±  0.032 s    [User: 7.604 s, System: 0.170 s]
	  Range (min … max):    7.583 s …  7.629 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 5392.3034ms
	Processing time (w/o IO): 5402.1824ms
	Processing time (w/o IO): 5390.2147ms
	  Time (mean ± σ):      5.915 s ±  0.001 s    [User: 5.920 s, System: 0.153 s]
	  Range (min … max):    5.914 s …  5.916 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	13045.490026474	ms
	Processing time (w/o IO):	13071.991920471	ms
	Processing time (w/o IO):	12511.85297966	ms
	  Time (mean ± σ):     16.878 s ±  0.395 s    [User: 16.666 s, System: 0.201 s]
	  Range (min … max):   16.599 s … 17.158 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	149822.15499878	ms
	Processing time (w/o IO):	149958.94503593	ms
	  Time (abs ≡):        156.368 s               [User: 156.147 s, System: 0.203 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 32613ms
	Processing time (w/o IO): 32789ms
	Processing time (w/o IO): 32918ms
	  Time (mean ± σ):     34.304 s ±  0.120 s    [User: 33.467 s, System: 0.825 s]
	  Range (min … max):   34.219 s … 34.389 s    2 runs
	 
