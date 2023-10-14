Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 24.086286ms
	Processing time (w/o IO): 25.078002ms
	Processing time (w/o IO): 24.194088ms
	Processing time (w/o IO): 24.375791ms
	Processing time (w/o IO): 24.281789ms
	Processing time (w/o IO): 24.059986ms
	Processing time (w/o IO): 24.106986ms
	Processing time (w/o IO): 24.059686ms
	Processing time (w/o IO): 24.046185ms
	Processing time (w/o IO): 24.131487ms
	Processing time (w/o IO): 24.160787ms
	Processing time (w/o IO): 24.381291ms
	Processing time (w/o IO): 24.102987ms
	  Time (mean ± σ):      63.9 ms ±   1.6 ms    [User: 58.9 ms, System: 12.2 ms]
	  Range (min … max):    62.4 ms …  67.4 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 12.518901ms
	Processing time (w/o IO): 12.684704ms
	Processing time (w/o IO): 12.941208ms
	Processing time (w/o IO): 12.587602ms
	Processing time (w/o IO): 13.153611ms
	Processing time (w/o IO): 14.178328ms
	Processing time (w/o IO): 12.500801ms
	Processing time (w/o IO): 13.249913ms
	Processing time (w/o IO): 14.342431ms
	Processing time (w/o IO): 13.244113ms
	Processing time (w/o IO): 13.875123ms
	Processing time (w/o IO): 13.928124ms
	Processing time (w/o IO): 12.644604ms
	  Time (mean ± σ):      51.8 ms ±   1.8 ms    [User: 79.5 ms, System: 12.9 ms]
	  Range (min … max):    49.8 ms …  55.3 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 23.663249ms
	Processing time (w/o IO): 23.429545ms
	Processing time (w/o IO): 23.470546ms
	Processing time (w/o IO): 23.428045ms
	Processing time (w/o IO): 23.385945ms
	Processing time (w/o IO): 23.450945ms
	Processing time (w/o IO): 23.441745ms
	Processing time (w/o IO): 23.402945ms
	Processing time (w/o IO): 23.394644ms
	Processing time (w/o IO): 23.423845ms
	Processing time (w/o IO): 23.455145ms
	Processing time (w/o IO): 23.406045ms
	Processing time (w/o IO): 23.383745ms
	  Time (mean ± σ):      39.2 ms ±   0.5 ms    [User: 31.3 ms, System: 7.8 ms]
	  Range (min … max):    38.7 ms …  40.6 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 14.684959ms
	Processing time (w/o IO): 14.366653ms
	Processing time (w/o IO): 14.353353ms
	Processing time (w/o IO): 14.490956ms
	Processing time (w/o IO): 14.323552ms
	Processing time (w/o IO): 15.709077ms
	Processing time (w/o IO): 13.973947ms
	Processing time (w/o IO): 16.083483ms
	Processing time (w/o IO): 13.357335ms
	Processing time (w/o IO): 14.423055ms
	Processing time (w/o IO): 14.121149ms
	Processing time (w/o IO): 14.247751ms
	Processing time (w/o IO): 14.645358ms
	  Time (mean ± σ):      31.9 ms ±   0.9 ms    [User: 33.3 ms, System: 10.7 ms]
	  Range (min … max):    30.5 ms …  33.3 ms    10 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 24.66ms
	Processing time (w/o IO): 25.373ms
	Processing time (w/o IO): 24.321ms
	Processing time (w/o IO): 25.297ms
	Processing time (w/o IO): 24.958ms
	Processing time (w/o IO): 24.901ms
	Processing time (w/o IO): 24.664ms
	Processing time (w/o IO): 25.148ms
	Processing time (w/o IO): 25.738ms
	Processing time (w/o IO): 24.989ms
	Processing time (w/o IO): 24.762ms
	Processing time (w/o IO): 24.659ms
	Processing time (w/o IO): 25.328ms
	  Time (mean ± σ):     104.6 ms ±   1.0 ms    [User: 96.3 ms, System: 9.6 ms]
	  Range (min … max):   102.7 ms … 106.4 ms    10 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 14.035ms
	Processing time (w/o IO): 15.636ms
	Processing time (w/o IO): 15.12ms
	Processing time (w/o IO): 15.682ms
	Processing time (w/o IO): 15.453ms
	Processing time (w/o IO): 14.395ms
	Processing time (w/o IO): 14.973ms
	Processing time (w/o IO): 16.647ms
	Processing time (w/o IO): 13.316ms
	Processing time (w/o IO): 15.583ms
	Processing time (w/o IO): 15.425ms
	Processing time (w/o IO): 14.524ms
	Processing time (w/o IO): 14.788ms
	  Time (mean ± σ):      95.5 ms ±   1.2 ms    [User: 113.9 ms, System: 9.5 ms]
	  Range (min … max):    94.0 ms …  97.2 ms    10 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 24 ms
	  Time (mean ± σ):     230.9 ms ±   2.6 ms    [User: 198.2 ms, System: 32.5 ms]
	  Range (min … max):   227.3 ms … 236.7 ms    10 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 15 ms
	Processing time (w/o IO): 15 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 14 ms
	  Time (mean ± σ):     227.2 ms ±   2.3 ms    [User: 219.9 ms, System: 39.6 ms]
	  Range (min … max):   224.0 ms … 230.8 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 1.464s
	Processing time (w/o IO): 1.461s
	Processing time (w/o IO): 1.461s
	Processing time (w/o IO): 1.458s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.462s
	Processing time (w/o IO): 1.467s
	Processing time (w/o IO): 1.475s
	Processing time (w/o IO): 1.457s
	Processing time (w/o IO): 1.461s
	Processing time (w/o IO): 1.479s
	Processing time (w/o IO): 1.462s
	Processing time (w/o IO): 1.459s
	  Time (mean ± σ):      1.531 s ±  0.007 s    [User: 1.511 s, System: 0.020 s]
	  Range (min … max):    1.523 s …  1.544 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 487.2ms
	Processing time (w/o IO): 490.7ms
	Processing time (w/o IO): 491.4ms
	Processing time (w/o IO): 486.6ms
	Processing time (w/o IO): 463.9ms
	Processing time (w/o IO): 538.7ms
	Processing time (w/o IO): 456.1ms
	Processing time (w/o IO): 461.6ms
	Processing time (w/o IO): 484.5ms
	Processing time (w/o IO): 473.1ms
	Processing time (w/o IO): 436.0ms
	Processing time (w/o IO): 451.8ms
	Processing time (w/o IO): 442.9ms
	  Time (mean ± σ):     768.4 ms ±  33.4 ms    [User: 850.0 ms, System: 523.4 ms]
	  Range (min … max):   728.9 ms … 846.8 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 65.427501ms
	Processing time (w/o IO): 65.244698ms
	Processing time (w/o IO): 65.000694ms
	Processing time (w/o IO): 65.046794ms
	Processing time (w/o IO): 64.919493ms
	Processing time (w/o IO): 64.80209ms
	Processing time (w/o IO): 65.166996ms
	Processing time (w/o IO): 65.052995ms
	Processing time (w/o IO): 64.816291ms
	Processing time (w/o IO): 65.126196ms
	Processing time (w/o IO): 64.872391ms
	Processing time (w/o IO): 64.927292ms
	Processing time (w/o IO): 64.738088ms
	  Time (mean ± σ):     114.0 ms ±   1.0 ms    [User: 103.0 ms, System: 10.9 ms]
	  Range (min … max):   112.5 ms … 116.3 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	  Time (mean ± σ):      77.0 ms ±   0.4 ms    [User: 71.1 ms, System: 5.9 ms]
	  Range (min … max):    76.4 ms …  78.0 ms    10 runs
	 
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
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 30 milliseconds
	  Time (mean ± σ):     470.3 ms ±  13.6 ms    [User: 365.6 ms, System: 208.3 ms]
	  Range (min … max):   457.7 ms … 497.6 ms    10 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 16 milliseconds
	  Time (mean ± σ):     460.2 ms ±  15.9 ms    [User: 394.9 ms, System: 215.7 ms]
	  Range (min … max):   442.3 ms … 489.5 ms    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  41.00518ms
	Processing time (w/o IO):  41.080682ms
	Processing time (w/o IO):  40.94628ms
	Processing time (w/o IO):  41.671192ms
	Processing time (w/o IO):  41.106682ms
	Processing time (w/o IO):  41.651991ms
	Processing time (w/o IO):  40.937879ms
	Processing time (w/o IO):  40.97458ms
	Processing time (w/o IO):  41.56639ms
	Processing time (w/o IO):  41.084881ms
	Processing time (w/o IO):  41.00618ms
	Processing time (w/o IO):  41.285785ms
	Processing time (w/o IO):  41.172283ms
	  Time (mean ± σ):     260.4 ms ±   1.0 ms    [User: 253.0 ms, System: 7.4 ms]
	  Range (min … max):   258.9 ms … 262.3 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 51.511ms
	Processing time (w/o IO): 52.072ms
	Processing time (w/o IO): 51.578ms
	Processing time (w/o IO): 51.409ms
	Processing time (w/o IO): 51.454ms
	Processing time (w/o IO): 51.251ms
	Processing time (w/o IO): 51.083ms
	Processing time (w/o IO): 51.504ms
	Processing time (w/o IO): 51.354ms
	Processing time (w/o IO): 51.458ms
	Processing time (w/o IO): 51.470ms
	Processing time (w/o IO): 51.283ms
	Processing time (w/o IO): 51.151ms
	  Time (mean ± σ):     380.3 ms ±   2.2 ms    [User: 351.5 ms, System: 28.7 ms]
	  Range (min … max):   376.5 ms … 383.3 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 130ms
	  Time (mean ± σ):     505.6 ms ±   8.9 ms    [User: 613.5 ms, System: 107.1 ms]
	  Range (min … max):   491.3 ms … 519.0 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 188ms
	Processing time (w/o IO): 188ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 189ms
	Processing time (w/o IO): 186ms
	  Time (mean ± σ):     313.7 ms ±   2.0 ms    [User: 295.1 ms, System: 22.4 ms]
	  Range (min … max):   311.0 ms … 316.7 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 50.961971282958984ms
	Processing time (w/o IO): 50.51898956298828ms
	Processing time (w/o IO): 50.901055335998535ms
	Processing time (w/o IO): 50.544023513793945ms
	Processing time (w/o IO): 51.02503299713135ms
	Processing time (w/o IO): 50.57799816131592ms
	Processing time (w/o IO): 50.4840612411499ms
	Processing time (w/o IO): 50.77099800109863ms
	Processing time (w/o IO): 50.6289005279541ms
	Processing time (w/o IO): 50.51898956298828ms
	Processing time (w/o IO): 50.21703243255615ms
	Processing time (w/o IO): 50.547003746032715ms
	Processing time (w/o IO): 50.271034240722656ms
	  Time (mean ± σ):     400.3 ms ±   5.9 ms    [User: 343.1 ms, System: 38.6 ms]
	  Range (min … max):   391.0 ms … 411.9 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 31.765417ms
	Processing time (w/o IO): 31.489112ms
	Processing time (w/o IO): 31.274908ms
	Processing time (w/o IO): 31.725616ms
	Processing time (w/o IO): 30.956703ms
	Processing time (w/o IO): 31.198819ms
	Processing time (w/o IO): 31.156018ms
	Processing time (w/o IO): 31.301421ms
	Processing time (w/o IO): 31.264221ms
	Processing time (w/o IO): 32.270437ms
	Processing time (w/o IO): 32.151935ms
	Processing time (w/o IO): 31.349121ms
	Processing time (w/o IO): 32.190335ms
	  Time (mean ± σ):     393.0 ms ±   5.4 ms    [User: 423.6 ms, System: 38.8 ms]
	  Range (min … max):   386.2 ms … 403.1 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 189ms
	Processing time (w/o IO): 181ms
	Processing time (w/o IO): 181ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 184ms
	Processing time (w/o IO): 176ms
	Processing time (w/o IO): 183ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 181ms
	Processing time (w/o IO): 182ms
	Processing time (w/o IO): 183ms
	Processing time (w/o IO): 185ms
	  Time (mean ± σ):     354.9 ms ±   5.7 ms    [User: 360.3 ms, System: 61.9 ms]
	  Range (min … max):   347.5 ms … 364.8 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 650ms
	Processing time (w/o IO): 628ms
	Processing time (w/o IO): 621ms
	Processing time (w/o IO): 619ms
	Processing time (w/o IO): 606ms
	Processing time (w/o IO): 621ms
	Processing time (w/o IO): 607ms
	Processing time (w/o IO): 619ms
	Processing time (w/o IO): 624ms
	Processing time (w/o IO): 620ms
	Processing time (w/o IO): 623ms
	Processing time (w/o IO): 617ms
	Processing time (w/o IO): 604ms
	  Time (mean ± σ):     674.4 ms ±   7.4 ms    [User: 683.5 ms, System: 44.7 ms]
	  Range (min … max):   661.1 ms … 682.7 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 199ms
	Processing time (w/o IO): 190ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 196ms
	Processing time (w/o IO): 190ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 190ms
	Processing time (w/o IO): 190ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 194ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 191ms
	  Time (mean ± σ):     258.7 ms ±   4.0 ms    [User: 249.9 ms, System: 31.0 ms]
	  Range (min … max):   255.5 ms … 268.6 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 52 ms
	  Time (mean ± σ):     381.4 ms ±   6.4 ms    [User: 683.2 ms, System: 42.6 ms]
	  Range (min … max):   375.2 ms … 393.9 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 33 ms
	Processing time (w/o IO): 33 ms
	Processing time (w/o IO): 33 ms
	Processing time (w/o IO): 33 ms
	Processing time (w/o IO): 33 ms
	Processing time (w/o IO): 33 ms
	Processing time (w/o IO): 33 ms
	Processing time (w/o IO): 33 ms
	Processing time (w/o IO): 33 ms
	Processing time (w/o IO): 33 ms
	Processing time (w/o IO): 33 ms
	Processing time (w/o IO): 33 ms
	Processing time (w/o IO): 33 ms
	  Time (mean ± σ):      97.6 ms ±   0.7 ms    [User: 87.9 ms, System: 9.8 ms]
	  Range (min … max):    96.4 ms …  98.6 ms    10 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	  Time (mean ± σ):      67.2 ms ±   1.0 ms    [User: 116.9 ms, System: 8.5 ms]
	  Range (min … max):    65.6 ms …  68.7 ms    10 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 30.231ms
	Processing time (w/o IO): 30.021ms
	Processing time (w/o IO): 30.207ms
	Processing time (w/o IO): 30.165ms
	Processing time (w/o IO): 30.269ms
	Processing time (w/o IO): 29.895ms
	Processing time (w/o IO): 29.804ms
	Processing time (w/o IO): 30.068ms
	Processing time (w/o IO): 29.969ms
	Processing time (w/o IO): 29.818ms
	Processing time (w/o IO): 29.948ms
	Processing time (w/o IO): 30.004ms
	Processing time (w/o IO): 30.068ms
	  Time (mean ± σ):      55.1 ms ±   0.8 ms    [User: 41.2 ms, System: 13.8 ms]
	  Range (min … max):    54.1 ms …  56.7 ms    10 runs
	 
F#:

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 45ms
	Processing time (w/o IO): 45ms
	Processing time (w/o IO): 45ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 45ms
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 47ms
	  Time (mean ± σ):     917.9 ms ±  18.5 ms    [User: 1001.2 ms, System: 83.3 ms]
	  Range (min … max):   904.5 ms … 968.2 ms    10 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 43ms
	Processing time (w/o IO): 42ms
	Processing time (w/o IO): 45ms
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 43ms
	Processing time (w/o IO): 43ms
	Processing time (w/o IO): 43ms
	Processing time (w/o IO): 43ms
	Processing time (w/o IO): 43ms
	Processing time (w/o IO): 42ms
	Processing time (w/o IO): 42ms
	Processing time (w/o IO): 43ms
	Processing time (w/o IO): 43ms
	  Time (mean ± σ):     902.6 ms ±  21.0 ms    [User: 1022.9 ms, System: 99.6 ms]
	  Range (min … max):   865.1 ms … 943.3 ms    10 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 41ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 40ms
	  Time (mean ± σ):     765.0 ms ±   4.2 ms    [User: 722.4 ms, System: 85.3 ms]
	  Range (min … max):   760.5 ms … 772.7 ms    10 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 57.8316ms
	Processing time (w/o IO): 57.6615ms
	Processing time (w/o IO): 57.8453ms
	Processing time (w/o IO): 57.987ms
	Processing time (w/o IO): 57.7117ms
	Processing time (w/o IO): 57.7651ms
	Processing time (w/o IO): 58.2803ms
	Processing time (w/o IO): 57.7812ms
	Processing time (w/o IO): 58.0513ms
	Processing time (w/o IO): 58.0104ms
	Processing time (w/o IO): 57.6426ms
	Processing time (w/o IO): 57.951ms
	Processing time (w/o IO): 58.0717ms
	  Time (mean ± σ):     197.7 ms ±   3.3 ms    [User: 157.3 ms, System: 25.2 ms]
	  Range (min … max):   191.8 ms … 203.8 ms    10 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 42.8426ms
	Processing time (w/o IO): 42.5777ms
	Processing time (w/o IO): 42.8526ms
	Processing time (w/o IO): 42.849ms
	Processing time (w/o IO): 43.2274ms
	Processing time (w/o IO): 42.8778ms
	Processing time (w/o IO): 42.5989ms
	Processing time (w/o IO): 42.6044ms
	Processing time (w/o IO): 42.6089ms
	Processing time (w/o IO): 43.0152ms
	Processing time (w/o IO): 42.6879ms
	Processing time (w/o IO): 42.5753ms
	Processing time (w/o IO): 42.8022ms
	  Time (mean ± σ):      87.0 ms ±   1.2 ms    [User: 80.8 ms, System: 16.5 ms]
	  Range (min … max):    85.1 ms …  88.4 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	111.4559173584	ms
	Processing time (w/o IO):	88.109970092773	ms
	Processing time (w/o IO):	103.98197174072	ms
	Processing time (w/o IO):	110.89682579041	ms
	Processing time (w/o IO):	87.970972061157	ms
	Processing time (w/o IO):	111.1581325531	ms
	Processing time (w/o IO):	105.44204711914	ms
	Processing time (w/o IO):	103.87015342712	ms
	Processing time (w/o IO):	87.846040725708	ms
	Processing time (w/o IO):	104.62594032288	ms
	Processing time (w/o IO):	104.57515716553	ms
	Processing time (w/o IO):	89.144945144653	ms
	Processing time (w/o IO):	104.09903526306	ms
	  Time (mean ± σ):     339.3 ms ±   9.8 ms    [User: 324.8 ms, System: 14.5 ms]
	  Range (min … max):   326.4 ms … 357.5 ms    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1092.0259952545	ms
	Processing time (w/o IO):	1096.4441299438	ms
	Processing time (w/o IO):	1091.5498733521	ms
	Processing time (w/o IO):	1093.2428836823	ms
	Processing time (w/o IO):	1091.0408496857	ms
	Processing time (w/o IO):	1091.3710594177	ms
	Processing time (w/o IO):	1090.320110321	ms
	Processing time (w/o IO):	1091.9251441956	ms
	Processing time (w/o IO):	1091.1569595337	ms
	Processing time (w/o IO):	1091.9699668884	ms
	Processing time (w/o IO):	1090.6090736389	ms
	Processing time (w/o IO):	1089.565038681	ms
	Processing time (w/o IO):	1092.0269489288	ms
	  Time (mean ± σ):      1.518 s ±  0.007 s    [User: 1.499 s, System: 0.017 s]
	  Range (min … max):    1.512 s …  1.535 s    10 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 134ms
	Processing time (w/o IO): 135ms
	Processing time (w/o IO): 136ms
	Processing time (w/o IO): 135ms
	Processing time (w/o IO): 135ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 134ms
	Processing time (w/o IO): 135ms
	Processing time (w/o IO): 136ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 138ms
	  Time (mean ± σ):     217.0 ms ±   3.5 ms    [User: 189.1 ms, System: 27.9 ms]
	  Range (min … max):   212.6 ms … 222.4 ms    10 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 370.389267ms
	Processing time (w/o IO): 372.374851ms
	Processing time (w/o IO): 381.412201ms
	  Time (mean ± σ):     527.1 ms ±   7.5 ms    [User: 521.9 ms, System: 39.0 ms]
	  Range (min … max):   521.8 ms … 532.4 ms    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 167.129662ms
	Processing time (w/o IO): 165.999242ms
	Processing time (w/o IO): 166.188845ms
	  Time (mean ± σ):     303.7 ms ±   0.9 ms    [User: 782.3 ms, System: 30.4 ms]
	  Range (min … max):   303.1 ms … 304.4 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 340.992034ms
	Processing time (w/o IO): 341.140236ms
	Processing time (w/o IO): 340.807631ms
	  Time (mean ± σ):     402.1 ms ±   0.5 ms    [User: 372.9 ms, System: 29.1 ms]
	  Range (min … max):   401.7 ms … 402.5 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 180.96229ms
	Processing time (w/o IO): 179.869272ms
	Processing time (w/o IO): 178.56355ms
	  Time (mean ± σ):     241.1 ms ±   0.0 ms    [User: 381.8 ms, System: 33.6 ms]
	  Range (min … max):   241.1 ms … 241.1 ms    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 315.655ms
	Processing time (w/o IO): 316.153ms
	Processing time (w/o IO): 314.744ms
	  Time (mean ± σ):     617.1 ms ±   3.6 ms    [User: 590.7 ms, System: 29.3 ms]
	  Range (min … max):   614.6 ms … 619.6 ms    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 144.649ms
	Processing time (w/o IO): 146.102ms
	Processing time (w/o IO): 146.26ms
	  Time (mean ± σ):     443.2 ms ±   0.9 ms    [User: 790.3 ms, System: 31.4 ms]
	  Range (min … max):   442.5 ms … 443.9 ms    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 335 ms
	Processing time (w/o IO): 334 ms
	Processing time (w/o IO): 333 ms
	  Time (mean ± σ):      1.256 s ±  0.127 s    [User: 1.052 s, System: 0.112 s]
	  Range (min … max):    1.166 s …  1.345 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 163 ms
	Processing time (w/o IO): 164 ms
	Processing time (w/o IO): 165 ms
	  Time (mean ± σ):      1.032 s ±  0.001 s    [User: 1.365 s, System: 0.130 s]
	  Range (min … max):    1.032 s …  1.033 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 23.354s
	Processing time (w/o IO): 23.567s
	  Time (abs ≡):        23.731 s               [User: 23.701 s, System: 0.023 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 6.496s
	Processing time (w/o IO): 7.660s
	Processing time (w/o IO): 7.954s
	  Time (mean ± σ):      8.326 s ±  0.204 s    [User: 5.108 s, System: 3.814 s]
	  Range (min … max):    8.182 s …  8.470 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 975.989495ms
	Processing time (w/o IO): 975.566641ms
	Processing time (w/o IO): 979.092762ms
	  Time (mean ± σ):      1.197 s ±  0.005 s    [User: 1.160 s, System: 0.033 s]
	  Range (min … max):    1.193 s …  1.200 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 430ms
	Processing time (w/o IO): 430ms
	Processing time (w/o IO): 431ms
	  Time (mean ± σ):     625.3 ms ±   0.6 ms    [User: 595.6 ms, System: 29.6 ms]
	  Range (min … max):   624.9 ms … 625.7 ms    2 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 477 milliseconds
	Processing time (w/o IO): 477 milliseconds
	Processing time (w/o IO): 478 milliseconds
	  Time (mean ± σ):      1.143 s ±  0.025 s    [User: 0.995 s, System: 0.250 s]
	  Range (min … max):    1.125 s …  1.161 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 223 milliseconds
	Processing time (w/o IO): 224 milliseconds
	Processing time (w/o IO): 228 milliseconds
	  Time (mean ± σ):     901.3 ms ±  19.0 ms    [User: 1430.5 ms, System: 229.7 ms]
	  Range (min … max):   887.8 ms … 914.7 ms    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  692.60399ms
	Processing time (w/o IO):  692.424088ms
	Processing time (w/o IO):  688.182968ms
	  Time (mean ± σ):      1.491 s ±  0.009 s    [User: 1.464 s, System: 0.025 s]
	  Range (min … max):    1.484 s …  1.497 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 756.242ms
	Processing time (w/o IO): 768.307ms
	Processing time (w/o IO): 756.505ms
	  Time (mean ± σ):      8.797 s ±  0.284 s    [User: 8.681 s, System: 0.113 s]
	  Range (min … max):    8.596 s …  8.998 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 2368ms
	Processing time (w/o IO): 2389ms
	Processing time (w/o IO): 2392ms
	  Time (mean ± σ):      3.054 s ±  0.007 s    [User: 3.258 s, System: 0.132 s]
	  Range (min … max):    3.050 s …  3.059 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 2887ms
	Processing time (w/o IO): 2886ms
	Processing time (w/o IO): 2885ms
	  Time (mean ± σ):      3.378 s ±  0.003 s    [User: 3.332 s, System: 0.062 s]
	  Range (min … max):    3.375 s …  3.380 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 712.8159999847412ms
	Processing time (w/o IO): 708.0299854278564ms
	Processing time (w/o IO): 711.5190029144287ms
	  Time (mean ± σ):      2.087 s ±  0.002 s    [User: 1.922 s, System: 0.127 s]
	  Range (min … max):    2.085 s …  2.088 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 392.883046ms
	Processing time (w/o IO): 393.014762ms
	Processing time (w/o IO): 394.08398ms
	  Time (mean ± σ):      1.804 s ±  0.002 s    [User: 2.770 s, System: 0.144 s]
	  Range (min … max):    1.803 s …  1.806 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 2426ms
	Processing time (w/o IO): 2423ms
	Processing time (w/o IO): 2423ms
	  Time (mean ± σ):      2.751 s ±  0.003 s    [User: 2.756 s, System: 0.095 s]
	  Range (min … max):    2.749 s …  2.753 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 11774ms
	Processing time (w/o IO): 11828ms
	Processing time (w/o IO): 11591ms
	  Time (mean ± σ):     11.861 s ±  0.168 s    [User: 11.902 s, System: 0.069 s]
	  Range (min … max):   11.743 s … 11.980 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 2270ms
	Processing time (w/o IO): 2261ms
	Processing time (w/o IO): 2263ms
	  Time (mean ± σ):      2.490 s ±  0.043 s    [User: 2.447 s, System: 0.080 s]
	  Range (min … max):    2.459 s …  2.521 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 779 ms
	Processing time (w/o IO): 773 ms
	Processing time (w/o IO): 773 ms
	  Time (mean ± σ):      1.935 s ±  0.003 s    [User: 2.525 s, System: 0.082 s]
	  Range (min … max):    1.932 s …  1.937 s    2 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 603 ms
	Processing time (w/o IO): 603 ms
	Processing time (w/o IO): 603 ms
	  Time (mean ± σ):      1.321 s ±  0.004 s    [User: 1.295 s, System: 0.023 s]
	  Range (min … max):    1.317 s …  1.324 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 602 ms
	Processing time (w/o IO): 596 ms
	Processing time (w/o IO): 609 ms
	  Time (mean ± σ):     705.3 ms ±  10.0 ms    [User: 1657.4 ms, System: 33.3 ms]
	  Range (min … max):   698.2 ms … 712.4 ms    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 401.591ms
	Processing time (w/o IO): 402.145ms
	Processing time (w/o IO): 402.48ms
	  Time (mean ± σ):     507.9 ms ±   1.5 ms    [User: 478.1 ms, System: 29.5 ms]
	  Range (min … max):   506.8 ms … 509.0 ms    2 runs
	 
F#:

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 623ms
	Processing time (w/o IO): 628ms
	Processing time (w/o IO): 624ms
	  Time (mean ± σ):      3.309 s ±  0.014 s    [User: 3.196 s, System: 0.295 s]
	  Range (min … max):    3.299 s …  3.319 s    2 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 424ms
	Processing time (w/o IO): 425ms
	Processing time (w/o IO): 430ms
	  Time (mean ± σ):      2.539 s ±  0.007 s    [User: 3.642 s, System: 0.260 s]
	  Range (min … max):    2.534 s …  2.544 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 604ms
	Processing time (w/o IO): 603ms
	Processing time (w/o IO): 603ms
	  Time (mean ± σ):      4.244 s ±  0.016 s    [User: 4.453 s, System: 0.426 s]
	  Range (min … max):    4.233 s …  4.255 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 772.1295ms
	Processing time (w/o IO): 773.4074ms
	Processing time (w/o IO): 771.9992ms
	  Time (mean ± σ):      1.093 s ±  0.004 s    [User: 1.052 s, System: 0.061 s]
	  Range (min … max):    1.090 s …  1.096 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 616.4817ms
	Processing time (w/o IO): 615.6231ms
	Processing time (w/o IO): 616.7551ms
	  Time (mean ± σ):     789.4 ms ±   1.0 ms    [User: 776.7 ms, System: 57.6 ms]
	  Range (min … max):   788.8 ms … 790.1 ms    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	1412.6539230347	ms
	Processing time (w/o IO):	1158.6618423462	ms
	Processing time (w/o IO):	1407.5970649719	ms
	  Time (mean ± σ):      2.536 s ±  0.149 s    [User: 2.456 s, System: 0.078 s]
	  Range (min … max):    2.430 s …  2.641 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	16757.671833038	ms
	Processing time (w/o IO):	16779.267072678	ms
	  Time (abs ≡):        18.558 s               [User: 18.498 s, System: 0.055 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 2548ms
	Processing time (w/o IO): 2566ms
	Processing time (w/o IO): 2614ms
	  Time (mean ± σ):      2.996 s ±  0.029 s    [User: 2.853 s, System: 0.141 s]
	  Range (min … max):    2.976 s …  3.017 s    2 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 3.286280701s
	Processing time (w/o IO): 3.273547402s
	Processing time (w/o IO): 3.275068615s
	  Time (mean ± σ):      3.749 s ±  0.005 s    [User: 3.778 s, System: 0.098 s]
	  Range (min … max):    3.745 s …  3.753 s    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1.415650407s
	Processing time (w/o IO): 1.41944997s
	Processing time (w/o IO): 1.418412851s
	  Time (mean ± σ):      1.875 s ±  0.002 s    [User: 6.083 s, System: 0.108 s]
	  Range (min … max):    1.873 s …  1.877 s    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 3.035636917s
	Processing time (w/o IO): 3.037693536s
	Processing time (w/o IO): 3.03839941s
	  Time (mean ± σ):      3.248 s ±  0.004 s    [User: 3.156 s, System: 0.080 s]
	  Range (min … max):    3.245 s …  3.251 s    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 1.570640239s
	Processing time (w/o IO): 1.579297371s
	Processing time (w/o IO): 1.573254439s
	  Time (mean ± σ):      1.786 s ±  0.012 s    [User: 3.262 s, System: 0.076 s]
	  Range (min … max):    1.777 s …  1.794 s    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 2705.45ms
	Processing time (w/o IO): 2702.41ms
	Processing time (w/o IO): 2698.96ms
	  Time (mean ± σ):      3.645 s ±  0.001 s    [User: 3.557 s, System: 0.089 s]
	  Range (min … max):    3.644 s …  3.645 s    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1162.32ms
	Processing time (w/o IO): 1165.73ms
	Processing time (w/o IO): 1160.37ms
	  Time (mean ± σ):      2.105 s ±  0.006 s    [User: 5.295 s, System: 0.117 s]
	  Range (min … max):    2.101 s …  2.110 s    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 2942 ms
	Processing time (w/o IO): 2943 ms
	Processing time (w/o IO): 2959 ms
	  Time (mean ± σ):      5.464 s ±  0.026 s    [User: 5.092 s, System: 0.331 s]
	  Range (min … max):    5.446 s …  5.482 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 1376 ms
	Processing time (w/o IO): 1377 ms
	Processing time (w/o IO): 1379 ms
	  Time (mean ± σ):      4.014 s ±  0.090 s    [User: 7.687 s, System: 0.317 s]
	  Range (min … max):    3.951 s …  4.078 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 214.807s
	Processing time (w/o IO): 216.619s
	  Time (abs ≡):        217.157 s               [User: 216.941 s, System: 0.123 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 8644.230053ms
	Processing time (w/o IO): 8641.98993ms
	Processing time (w/o IO): 8645.448675ms
	  Time (mean ± σ):      9.329 s ±  0.006 s    [User: 9.217 s, System: 0.102 s]
	  Range (min … max):    9.325 s …  9.333 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 3842ms
	Processing time (w/o IO): 3837ms
	Processing time (w/o IO): 3847ms
	  Time (mean ± σ):      4.448 s ±  0.005 s    [User: 4.365 s, System: 0.075 s]
	  Range (min … max):    4.444 s …  4.452 s    2 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 4243 milliseconds
	Processing time (w/o IO): 4207 milliseconds
	Processing time (w/o IO): 4212 milliseconds
	  Time (mean ± σ):      5.194 s ±  0.019 s    [User: 4.985 s, System: 0.306 s]
	  Range (min … max):    5.180 s …  5.207 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 1940 milliseconds
	Processing time (w/o IO): 1946 milliseconds
	Processing time (w/o IO): 1943 milliseconds
	  Time (mean ± σ):      2.946 s ±  0.003 s    [User: 8.506 s, System: 0.308 s]
	  Range (min … max):    2.944 s …  2.948 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  6.154731576s
	Processing time (w/o IO):  6.073676029s
	Processing time (w/o IO):  6.085843642s
	  Time (mean ± σ):      8.443 s ±  0.010 s    [User: 8.363 s, System: 0.070 s]
	  Range (min … max):    8.436 s …  8.450 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 6.655s
	Processing time (w/o IO): 6.661s
	Processing time (w/o IO): 6.655s
	  Time (mean ± σ):     74.611 s ±  1.091 s    [User: 74.205 s, System: 0.380 s]
	  Range (min … max):   73.839 s … 75.383 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 21139ms
	Processing time (w/o IO): 21040ms
	Processing time (w/o IO): 21086ms
	  Time (mean ± σ):     22.542 s ±  0.006 s    [User: 22.778 s, System: 0.220 s]
	  Range (min … max):   22.537 s … 22.546 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 25793ms
	Processing time (w/o IO): 25816ms
	Processing time (w/o IO): 25786ms
	  Time (mean ± σ):     27.283 s ±  0.010 s    [User: 27.239 s, System: 0.143 s]
	  Range (min … max):   27.276 s … 27.290 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 6170.130014419556ms
	Processing time (w/o IO): 6176.957964897156ms
	Processing time (w/o IO): 6180.904984474182ms
	  Time (mean ± σ):     10.499 s ±  0.055 s    [User: 9.937 s, System: 0.367 s]
	  Range (min … max):   10.459 s … 10.538 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 3479.16412ms
	Processing time (w/o IO): 3454.750627ms
	Processing time (w/o IO): 3452.105228ms
	  Time (mean ± σ):      7.750 s ±  0.075 s    [User: 17.513 s, System: 0.334 s]
	  Range (min … max):    7.696 s …  7.803 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 21245ms
	Processing time (w/o IO): 21901ms
	Processing time (w/o IO): 21246ms
	  Time (mean ± σ):     22.402 s ±  0.430 s    [User: 22.435 s, System: 0.192 s]
	  Range (min … max):   22.097 s … 22.706 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 109883ms
	Processing time (w/o IO): 108272ms
	Processing time (w/o IO): 109001ms
	  Time (mean ± σ):     109.133 s ±  0.522 s    [User: 109.090 s, System: 0.184 s]
	  Range (min … max):   108.764 s … 109.502 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 20023ms
	Processing time (w/o IO): 19971ms
	Processing time (w/o IO): 20083ms
	  Time (mean ± σ):     20.681 s ±  0.336 s    [User: 20.480 s, System: 0.193 s]
	  Range (min … max):   20.444 s … 20.918 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 6461 ms
	Processing time (w/o IO): 6455 ms
	Processing time (w/o IO): 6457 ms
	  Time (mean ± σ):     13.569 s ±  0.030 s    [User: 14.262 s, System: 0.148 s]
	  Range (min … max):   13.548 s … 13.591 s    2 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 4206 ms
	Processing time (w/o IO): 4211 ms
	Processing time (w/o IO): 4206 ms
	  Time (mean ± σ):      8.891 s ±  0.003 s    [User: 8.754 s, System: 0.125 s]
	  Range (min … max):    8.889 s …  8.893 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 5312 ms
	Processing time (w/o IO): 5312 ms
	Processing time (w/o IO): 5309 ms
	  Time (mean ± σ):      5.664 s ±  0.009 s    [User: 14.187 s, System: 0.115 s]
	  Range (min … max):    5.658 s …  5.671 s    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 3567.937ms
	Processing time (w/o IO): 3563.783ms
	Processing time (w/o IO): 3559.175ms
	  Time (mean ± σ):      3.903 s ±  0.000 s    [User: 3.785 s, System: 0.107 s]
	  Range (min … max):    3.902 s …  3.903 s    2 runs
	 
F#:

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 5493ms
	Processing time (w/o IO): 5494ms
	Processing time (w/o IO): 5497ms
	  Time (mean ± σ):     16.289 s ±  0.050 s    [User: 17.028 s, System: 0.649 s]
	  Range (min … max):   16.254 s … 16.324 s    2 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 3257ms
	Processing time (w/o IO): 3276ms
	Processing time (w/o IO): 3526ms
	  Time (mean ± σ):      8.668 s ±  0.178 s    [User: 19.341 s, System: 0.615 s]
	  Range (min … max):    8.542 s …  8.794 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 5192ms
	Processing time (w/o IO): 5198ms
	Processing time (w/o IO): 5195ms
	  Time (mean ± σ):     18.354 s ±  0.024 s    [User: 19.367 s, System: 0.556 s]
	  Range (min … max):   18.337 s … 18.371 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 6767.0915ms
	Processing time (w/o IO): 6771.6527ms
	Processing time (w/o IO): 6772.4739ms
	  Time (mean ± σ):      7.659 s ±  0.023 s    [User: 7.674 s, System: 0.155 s]
	  Range (min … max):    7.642 s …  7.675 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 5408.1743ms
	Processing time (w/o IO): 5399.0374ms
	Processing time (w/o IO): 5444.9903ms
	  Time (mean ± σ):      5.970 s ±  0.035 s    [User: 5.961 s, System: 0.155 s]
	  Range (min … max):    5.945 s …  5.995 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	12398.422956467	ms
	Processing time (w/o IO):	9820.3468322754	ms
	Processing time (w/o IO):	9899.5091915131	ms
	  Time (mean ± σ):     13.927 s ±  0.061 s    [User: 13.706 s, System: 0.208 s]
	  Range (min … max):   13.884 s … 13.970 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	149713.78493309	ms
	Processing time (w/o IO):	150112.01906204	ms
	  Time (abs ≡):        156.398 s               [User: 156.139 s, System: 0.220 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 32488ms
	Processing time (w/o IO): 32611ms
	Processing time (w/o IO): 33019ms
	  Time (mean ± σ):     34.255 s ±  0.304 s    [User: 33.546 s, System: 0.695 s]
	  Range (min … max):   34.039 s … 34.470 s    2 runs
	 
