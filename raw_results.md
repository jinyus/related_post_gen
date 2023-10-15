Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 24.133008ms
	Processing time (w/o IO): 24.081507ms
	Processing time (w/o IO): 24.774718ms
	Processing time (w/o IO): 24.162508ms
	Processing time (w/o IO): 24.091206ms
	Processing time (w/o IO): 24.89362ms
	Processing time (w/o IO): 24.26241ms
	Processing time (w/o IO): 24.308111ms
	Processing time (w/o IO): 24.200909ms
	Processing time (w/o IO): 24.573515ms
	Processing time (w/o IO): 23.981205ms
	Processing time (w/o IO): 24.143308ms
	Processing time (w/o IO): 24.333111ms
	  Time (mean ± σ):      63.5 ms ±   1.0 ms    [User: 60.3 ms, System: 9.5 ms]
	  Range (min … max):    61.9 ms …  65.2 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 14.283441ms
	Processing time (w/o IO): 13.079921ms
	Processing time (w/o IO): 13.02582ms
	Processing time (w/o IO): 12.596313ms
	Processing time (w/o IO): 12.697414ms
	Processing time (w/o IO): 14.320442ms
	Processing time (w/o IO): 15.135356ms
	Processing time (w/o IO): 13.232524ms
	Processing time (w/o IO): 12.800216ms
	Processing time (w/o IO): 13.506328ms
	Processing time (w/o IO): 14.887552ms
	Processing time (w/o IO): 13.270224ms
	Processing time (w/o IO): 12.724815ms
	  Time (mean ± σ):      51.6 ms ±   2.2 ms    [User: 80.2 ms, System: 11.2 ms]
	  Range (min … max):    49.5 ms …  56.0 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 23.551902ms
	Processing time (w/o IO): 23.4267ms
	Processing time (w/o IO): 23.461301ms
	Processing time (w/o IO): 23.418ms
	Processing time (w/o IO): 23.4259ms
	Processing time (w/o IO): 23.447201ms
	Processing time (w/o IO): 23.4131ms
	Processing time (w/o IO): 23.3928ms
	Processing time (w/o IO): 23.624604ms
	Processing time (w/o IO): 23.4121ms
	Processing time (w/o IO): 23.3987ms
	Processing time (w/o IO): 23.667804ms
	Processing time (w/o IO): 23.371299ms
	  Time (mean ± σ):      38.4 ms ±   0.2 ms    [User: 30.5 ms, System: 7.9 ms]
	  Range (min … max):    37.9 ms …  38.7 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 14.893655ms
	Processing time (w/o IO): 25.723241ms
	Processing time (w/o IO): 14.395447ms
	Processing time (w/o IO): 14.345846ms
	Processing time (w/o IO): 14.56645ms
	Processing time (w/o IO): 13.910239ms
	Processing time (w/o IO): 13.574833ms
	Processing time (w/o IO): 13.897239ms
	Processing time (w/o IO): 13.903838ms
	Processing time (w/o IO): 14.180943ms
	Processing time (w/o IO): 14.346646ms
	Processing time (w/o IO): 16.702087ms
	Processing time (w/o IO): 14.364247ms
	  Time (mean ± σ):      30.5 ms ±   0.8 ms    [User: 35.4 ms, System: 7.5 ms]
	  Range (min … max):    29.5 ms …  32.4 ms    10 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 24.696ms
	Processing time (w/o IO): 24.62ms
	Processing time (w/o IO): 24.974ms
	Processing time (w/o IO): 24.753ms
	Processing time (w/o IO): 24.706ms
	Processing time (w/o IO): 24.959ms
	Processing time (w/o IO): 25.57ms
	Processing time (w/o IO): 25.336ms
	Processing time (w/o IO): 24.934ms
	Processing time (w/o IO): 24.44ms
	Processing time (w/o IO): 24.913ms
	Processing time (w/o IO): 25.072ms
	Processing time (w/o IO): 24.273ms
	  Time (mean ± σ):     104.2 ms ±   0.4 ms    [User: 93.7 ms, System: 11.9 ms]
	  Range (min … max):   103.5 ms … 104.9 ms    10 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 17.158ms
	Processing time (w/o IO): 15.62ms
	Processing time (w/o IO): 16.055ms
	Processing time (w/o IO): 17.049ms
	Processing time (w/o IO): 16.751ms
	Processing time (w/o IO): 15.77ms
	Processing time (w/o IO): 16.354ms
	Processing time (w/o IO): 17.487ms
	Processing time (w/o IO): 17.171ms
	Processing time (w/o IO): 18.275ms
	Processing time (w/o IO): 15.912ms
	Processing time (w/o IO): 16.93ms
	Processing time (w/o IO): 16.325ms
	  Time (mean ± σ):      96.9 ms ±   1.0 ms    [User: 120.3 ms, System: 10.1 ms]
	  Range (min … max):    95.6 ms …  98.5 ms    10 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 36 ms
	  Time (mean ± σ):     236.1 ms ±   2.0 ms    [User: 205.1 ms, System: 30.9 ms]
	  Range (min … max):   232.4 ms … 238.1 ms    10 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 18 ms
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 15 ms
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 16 ms
	  Time (mean ± σ):     229.8 ms ±   1.9 ms    [User: 240.2 ms, System: 30.3 ms]
	  Range (min … max):   227.9 ms … 234.4 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 1.484s
	Processing time (w/o IO): 1.466s
	Processing time (w/o IO): 1.473s
	Processing time (w/o IO): 1.463s
	Processing time (w/o IO): 1.469s
	Processing time (w/o IO): 1.464s
	Processing time (w/o IO): 1.467s
	Processing time (w/o IO): 1.464s
	Processing time (w/o IO): 1.505s
	Processing time (w/o IO): 1.459s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.462s
	  Time (mean ± σ):      1.534 s ±  0.014 s    [User: 1.514 s, System: 0.020 s]
	  Range (min … max):    1.526 s …  1.574 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 359.8ms
	Processing time (w/o IO): 348.7ms
	Processing time (w/o IO): 349.9ms
	Processing time (w/o IO): 350.5ms
	Processing time (w/o IO): 349.5ms
	Processing time (w/o IO): 348.7ms
	Processing time (w/o IO): 348.2ms
	Processing time (w/o IO): 347.4ms
	Processing time (w/o IO): 354.7ms
	Processing time (w/o IO): 354.5ms
	Processing time (w/o IO): 349.0ms
	Processing time (w/o IO): 348.4ms
	Processing time (w/o IO): 350.1ms
	  Time (mean ± σ):     691.4 ms ± 176.7 ms    [User: 823.7 ms, System: 425.9 ms]
	  Range (min … max):   628.0 ms … 1193.6 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 65.41973ms
	Processing time (w/o IO): 64.915522ms
	Processing time (w/o IO): 64.999623ms
	Processing time (w/o IO): 65.141625ms
	Processing time (w/o IO): 64.962823ms
	Processing time (w/o IO): 64.881522ms
	Processing time (w/o IO): 65.247727ms
	Processing time (w/o IO): 64.730619ms
	Processing time (w/o IO): 64.996123ms
	Processing time (w/o IO): 65.607133ms
	Processing time (w/o IO): 65.37803ms
	Processing time (w/o IO): 65.317329ms
	Processing time (w/o IO): 65.015524ms
	  Time (mean ± σ):     115.3 ms ±   1.4 ms    [User: 106.6 ms, System: 8.6 ms]
	  Range (min … max):   113.5 ms … 117.6 ms    10 runs
	 
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
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	  Time (mean ± σ):      75.4 ms ±   0.4 ms    [User: 69.8 ms, System: 5.6 ms]
	  Range (min … max):    74.8 ms …  76.0 ms    10 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	  Time (mean ± σ):     465.7 ms ±  18.9 ms    [User: 369.4 ms, System: 199.9 ms]
	  Range (min … max):   450.4 ms … 507.8 ms    10 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 19 milliseconds
	Processing time (w/o IO): 19 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 18 milliseconds
	  Time (mean ± σ):     456.3 ms ±  11.8 ms    [User: 406.7 ms, System: 200.5 ms]
	  Range (min … max):   445.0 ms … 483.2 ms    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  47.979328ms
	Processing time (w/o IO):  47.852025ms
	Processing time (w/o IO):  47.890326ms
	Processing time (w/o IO):  47.796425ms
	Processing time (w/o IO):  47.656923ms
	Processing time (w/o IO):  47.153114ms
	Processing time (w/o IO):  48.009228ms
	Processing time (w/o IO):  47.964828ms
	Processing time (w/o IO):  47.828026ms
	Processing time (w/o IO):  47.684219ms
	Processing time (w/o IO):  47.312513ms
	Processing time (w/o IO):  47.291013ms
	Processing time (w/o IO):  47.213911ms
	  Time (mean ± σ):     267.6 ms ±   1.3 ms    [User: 260.2 ms, System: 7.4 ms]
	  Range (min … max):   265.5 ms … 269.4 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 51.611ms
	Processing time (w/o IO): 51.330ms
	Processing time (w/o IO): 51.532ms
	Processing time (w/o IO): 51.166ms
	Processing time (w/o IO): 51.280ms
	Processing time (w/o IO): 53.492ms
	Processing time (w/o IO): 51.226ms
	Processing time (w/o IO): 51.610ms
	Processing time (w/o IO): 51.643ms
	Processing time (w/o IO): 51.778ms
	Processing time (w/o IO): 51.227ms
	Processing time (w/o IO): 51.466ms
	Processing time (w/o IO): 51.541ms
	  Time (mean ± σ):     369.0 ms ±   1.8 ms    [User: 345.4 ms, System: 23.5 ms]
	  Range (min … max):   365.9 ms … 370.9 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 147ms
	  Time (mean ± σ):     513.1 ms ±  13.4 ms    [User: 616.7 ms, System: 115.3 ms]
	  Range (min … max):   500.4 ms … 534.3 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 190ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 187ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 187ms
	Processing time (w/o IO): 187ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 186ms
	  Time (mean ± σ):     313.1 ms ±   1.5 ms    [User: 296.1 ms, System: 21.2 ms]
	  Range (min … max):   310.9 ms … 315.3 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 51.506996154785156ms
	Processing time (w/o IO): 51.06699466705322ms
	Processing time (w/o IO): 51.01203918457031ms
	Processing time (w/o IO): 50.643086433410645ms
	Processing time (w/o IO): 51.21004581451416ms
	Processing time (w/o IO): 51.18203163146973ms
	Processing time (w/o IO): 51.167964935302734ms
	Processing time (w/o IO): 51.00893974304199ms
	Processing time (w/o IO): 51.61106586456299ms
	Processing time (w/o IO): 50.85599422454834ms
	Processing time (w/o IO): 51.20992660522461ms
	Processing time (w/o IO): 51.658034324645996ms
	Processing time (w/o IO): 50.95994472503662ms
	  Time (mean ± σ):     410.2 ms ±   6.4 ms    [User: 351.5 ms, System: 38.3 ms]
	  Range (min … max):   403.4 ms … 422.4 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 31.535344ms
	Processing time (w/o IO): 32.366759ms
	Processing time (w/o IO): 32.023252ms
	Processing time (w/o IO): 30.818732ms
	Processing time (w/o IO): 31.734948ms
	Processing time (w/o IO): 31.951451ms
	Processing time (w/o IO): 31.506443ms
	Processing time (w/o IO): 31.219639ms
	Processing time (w/o IO): 30.933134ms
	Processing time (w/o IO): 32.108354ms
	Processing time (w/o IO): 31.709447ms
	Processing time (w/o IO): 31.508943ms
	Processing time (w/o IO): 31.632545ms
	  Time (mean ± σ):     405.7 ms ±  41.0 ms    [User: 421.8 ms, System: 39.2 ms]
	  Range (min … max):   387.2 ms … 521.9 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 128ms
	Processing time (w/o IO): 195ms
	Processing time (w/o IO): 125ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 129ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 130ms
	  Time (mean ± σ):     301.8 ms ±   2.5 ms    [User: 293.3 ms, System: 62.7 ms]
	  Range (min … max):   298.2 ms … 306.2 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 143ms
	Processing time (w/o IO): 117ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 117ms
	Processing time (w/o IO): 119ms
	Processing time (w/o IO): 105ms
	Processing time (w/o IO): 118ms
	Processing time (w/o IO): 106ms
	Processing time (w/o IO): 121ms
	Processing time (w/o IO): 120ms
	Processing time (w/o IO): 120ms
	Processing time (w/o IO): 119ms
	Processing time (w/o IO): 133ms
	  Time (mean ± σ):     174.6 ms ±   8.3 ms    [User: 194.4 ms, System: 34.6 ms]
	  Range (min … max):   159.4 ms … 188.3 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 201ms
	Processing time (w/o IO): 135ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 136ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 193ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 198ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 194ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 139ms
	Processing time (w/o IO): 195ms
	  Time (mean ± σ):     228.2 ms ±  30.1 ms    [User: 220.2 ms, System: 31.6 ms]
	  Range (min … max):   203.9 ms … 267.3 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	  Time (mean ± σ):     388.5 ms ±   8.0 ms    [User: 698.3 ms, System: 44.2 ms]
	  Range (min … max):   377.1 ms … 398.0 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	  Time (mean ± σ):     143.0 ms ±   0.5 ms    [User: 129.2 ms, System: 13.9 ms]
	  Range (min … max):   142.2 ms … 143.8 ms    10 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 39 ms
	  Time (mean ± σ):      69.0 ms ±   0.7 ms    [User: 115.3 ms, System: 12.1 ms]
	  Range (min … max):    67.6 ms …  69.8 ms    10 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 30.584ms
	Processing time (w/o IO): 30.337ms
	Processing time (w/o IO): 30.307ms
	Processing time (w/o IO): 30.241ms
	Processing time (w/o IO): 30.388ms
	Processing time (w/o IO): 30.469ms
	Processing time (w/o IO): 30.277ms
	Processing time (w/o IO): 30.788ms
	Processing time (w/o IO): 30.347ms
	Processing time (w/o IO): 30.589ms
	Processing time (w/o IO): 30.249ms
	Processing time (w/o IO): 30.185ms
	Processing time (w/o IO): 30.287ms
	  Time (mean ± σ):      55.6 ms ±   1.5 ms    [User: 45.4 ms, System: 10.2 ms]
	  Range (min … max):    54.4 ms …  59.7 ms    10 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 45ms
	Processing time (w/o IO): 45ms
	Processing time (w/o IO): 45ms
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 45ms
	Processing time (w/o IO): 45ms
	Processing time (w/o IO): 45ms
	Processing time (w/o IO): 45ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 46ms
	  Time (mean ± σ):     903.6 ms ±   6.2 ms    [User: 986.3 ms, System: 84.1 ms]
	  Range (min … max):   895.4 ms … 912.6 ms    10 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 22ms
	Processing time (w/o IO): 22ms
	Processing time (w/o IO): 23ms
	Processing time (w/o IO): 22ms
	Processing time (w/o IO): 22ms
	Processing time (w/o IO): 22ms
	Processing time (w/o IO): 24ms
	Processing time (w/o IO): 22ms
	Processing time (w/o IO): 23ms
	Processing time (w/o IO): 22ms
	Processing time (w/o IO): 23ms
	Processing time (w/o IO): 23ms
	Processing time (w/o IO): 22ms
	  Time (mean ± σ):     906.8 ms ±  19.4 ms    [User: 1076.0 ms, System: 86.0 ms]
	  Range (min … max):   892.1 ms … 957.9 ms    10 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 17ms
	Processing time (w/o IO): 17ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 17ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	  Time (mean ± σ):     713.5 ms ±   1.9 ms    [User: 777.7 ms, System: 81.1 ms]
	  Range (min … max):   709.8 ms … 716.2 ms    10 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 43ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 40ms
	  Time (mean ± σ):     765.9 ms ±   5.5 ms    [User: 721.5 ms, System: 86.3 ms]
	  Range (min … max):   760.5 ms … 778.1 ms    10 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 58.6546ms
	Processing time (w/o IO): 58.8775ms
	Processing time (w/o IO): 58.2066ms
	Processing time (w/o IO): 58.0523ms
	Processing time (w/o IO): 58.2379ms
	Processing time (w/o IO): 57.9587ms
	Processing time (w/o IO): 57.9345ms
	Processing time (w/o IO): 57.4684ms
	Processing time (w/o IO): 58.2045ms
	Processing time (w/o IO): 58.6889ms
	Processing time (w/o IO): 58.4633ms
	Processing time (w/o IO): 58.6057ms
	Processing time (w/o IO): 57.9393ms
	  Time (mean ± σ):     201.4 ms ±   5.3 ms    [User: 153.1 ms, System: 31.6 ms]
	  Range (min … max):   192.7 ms … 212.8 ms    10 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 42.98ms
	Processing time (w/o IO): 42.558ms
	Processing time (w/o IO): 42.7078ms
	Processing time (w/o IO): 43.1028ms
	Processing time (w/o IO): 42.9366ms
	Processing time (w/o IO): 42.5669ms
	Processing time (w/o IO): 42.6443ms
	Processing time (w/o IO): 42.7805ms
	Processing time (w/o IO): 42.7241ms
	Processing time (w/o IO): 42.7142ms
	Processing time (w/o IO): 42.9739ms
	Processing time (w/o IO): 42.742ms
	Processing time (w/o IO): 42.8297ms
	  Time (mean ± σ):      86.9 ms ±   1.1 ms    [User: 79.2 ms, System: 18.0 ms]
	  Range (min … max):    85.3 ms …  88.5 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	106.00614547729	ms
	Processing time (w/o IO):	108.01887512207	ms
	Processing time (w/o IO):	114.45999145508	ms
	Processing time (w/o IO):	106.4031124115	ms
	Processing time (w/o IO):	111.59491539001	ms
	Processing time (w/o IO):	90.243101119995	ms
	Processing time (w/o IO):	111.41204833984	ms
	Processing time (w/o IO):	112.73407936096	ms
	Processing time (w/o IO):	104.23302650452	ms
	Processing time (w/o IO):	87.973117828369	ms
	Processing time (w/o IO):	113.00492286682	ms
	Processing time (w/o IO):	104.49004173279	ms
	Processing time (w/o IO):	110.79001426697	ms
	  Time (mean ± σ):     344.9 ms ±   9.5 ms    [User: 325.8 ms, System: 19.0 ms]
	  Range (min … max):   323.9 ms … 355.6 ms    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1093.9829349518	ms
	Processing time (w/o IO):	1092.2508239746	ms
	Processing time (w/o IO):	1092.3700332642	ms
	Processing time (w/o IO):	1093.8050746918	ms
	Processing time (w/o IO):	1105.251789093	ms
	Processing time (w/o IO):	1092.06199646	ms
	Processing time (w/o IO):	1091.3820266724	ms
	Processing time (w/o IO):	1094.4359302521	ms
	Processing time (w/o IO):	1092.2939777374	ms
	Processing time (w/o IO):	1092.3888683319	ms
	Processing time (w/o IO):	1095.1721668243	ms
	Processing time (w/o IO):	1091.3329124451	ms
	Processing time (w/o IO):	1091.6140079498	ms
	  Time (mean ± σ):      1.518 s ±  0.005 s    [User: 1.498 s, System: 0.019 s]
	  Range (min … max):    1.510 s …  1.526 s    10 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 143ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 142ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 143ms
	Processing time (w/o IO): 145ms
	Processing time (w/o IO): 144ms
	  Time (mean ± σ):     230.1 ms ±   6.2 ms    [User: 203.7 ms, System: 25.5 ms]
	  Range (min … max):   223.7 ms … 243.2 ms    10 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 371.187336ms
	Processing time (w/o IO): 371.281638ms
	Processing time (w/o IO): 371.879747ms
	  Time (mean ± σ):     523.3 ms ±   4.0 ms    [User: 514.0 ms, System: 44.8 ms]
	  Range (min … max):   520.5 ms … 526.1 ms    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 167.612146ms
	Processing time (w/o IO): 165.98062ms
	Processing time (w/o IO): 166.647031ms
	  Time (mean ± σ):     307.6 ms ±   4.0 ms    [User: 778.8 ms, System: 37.8 ms]
	  Range (min … max):   304.7 ms … 310.4 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 340.511823ms
	Processing time (w/o IO): 341.268504ms
	Processing time (w/o IO): 340.521287ms
	  Time (mean ± σ):     407.4 ms ±   1.3 ms    [User: 372.0 ms, System: 35.3 ms]
	  Range (min … max):   406.5 ms … 408.3 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 181.991831ms
	Processing time (w/o IO): 181.93563ms
	Processing time (w/o IO): 180.361805ms
	  Time (mean ± σ):     243.9 ms ±   0.1 ms    [User: 394.2 ms, System: 25.4 ms]
	  Range (min … max):   243.8 ms … 244.0 ms    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 316.015ms
	Processing time (w/o IO): 315.782ms
	Processing time (w/o IO): 314.624ms
	  Time (mean ± σ):     609.7 ms ±   1.4 ms    [User: 594.2 ms, System: 19.5 ms]
	  Range (min … max):   608.7 ms … 610.7 ms    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 174.364ms
	Processing time (w/o IO): 171.17ms
	Processing time (w/o IO): 172.628ms
	  Time (mean ± σ):     467.4 ms ±   1.2 ms    [User: 904.0 ms, System: 23.1 ms]
	  Range (min … max):   466.6 ms … 468.2 ms    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 519 ms
	Processing time (w/o IO): 521 ms
	Processing time (w/o IO): 519 ms
	  Time (mean ± σ):      1.408 s ±  0.096 s    [User: 1.218 s, System: 0.122 s]
	  Range (min … max):    1.340 s …  1.476 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 204 ms
	Processing time (w/o IO): 204 ms
	Processing time (w/o IO): 205 ms
	  Time (mean ± σ):      1.096 s ±  0.023 s    [User: 1.544 s, System: 0.117 s]
	  Range (min … max):    1.080 s …  1.112 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 23.591s
	Processing time (w/o IO): 23.769s
	  Time (abs ≡):        23.935 s               [User: 23.900 s, System: 0.028 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 5.762s
	Processing time (w/o IO): 6.073s
	Processing time (w/o IO): 6.770s
	  Time (mean ± σ):      6.918 s ±  0.493 s    [User: 5.042 s, System: 2.465 s]
	  Range (min … max):    6.570 s …  7.267 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 973.36216ms
	Processing time (w/o IO): 972.8045ms
	Processing time (w/o IO): 979.098799ms
	  Time (mean ± σ):      1.192 s ±  0.004 s    [User: 1.147 s, System: 0.043 s]
	  Range (min … max):    1.189 s …  1.194 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 427ms
	Processing time (w/o IO): 427ms
	Processing time (w/o IO): 427ms
	  Time (mean ± σ):     613.7 ms ±   0.6 ms    [User: 590.0 ms, System: 23.6 ms]
	  Range (min … max):   613.3 ms … 614.1 ms    2 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 480 milliseconds
	Processing time (w/o IO): 480 milliseconds
	Processing time (w/o IO): 480 milliseconds
	  Time (mean ± σ):      1.157 s ±  0.018 s    [User: 1.015 s, System: 0.245 s]
	  Range (min … max):    1.144 s …  1.170 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 224 milliseconds
	Processing time (w/o IO): 224 milliseconds
	Processing time (w/o IO): 224 milliseconds
	  Time (mean ± σ):     918.3 ms ±  13.5 ms    [User: 1419.9 ms, System: 253.3 ms]
	  Range (min … max):   908.7 ms … 927.8 ms    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  685.376195ms
	Processing time (w/o IO):  688.287042ms
	Processing time (w/o IO):  686.240509ms
	  Time (mean ± σ):      1.484 s ±  0.001 s    [User: 1.456 s, System: 0.027 s]
	  Range (min … max):    1.483 s …  1.485 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 756.568ms
	Processing time (w/o IO): 758.406ms
	Processing time (w/o IO): 755.778ms
	  Time (mean ± σ):      9.856 s ±  0.100 s    [User: 9.726 s, System: 0.125 s]
	  Range (min … max):    9.785 s …  9.927 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 2386ms
	Processing time (w/o IO): 2510ms
	Processing time (w/o IO): 2504ms
	  Time (mean ± σ):      3.186 s ±  0.019 s    [User: 3.377 s, System: 0.156 s]
	  Range (min … max):    3.173 s …  3.200 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 2884ms
	Processing time (w/o IO): 2885ms
	Processing time (w/o IO): 2890ms
	  Time (mean ± σ):      3.392 s ±  0.007 s    [User: 3.331 s, System: 0.077 s]
	  Range (min … max):    3.386 s …  3.397 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 714.0600681304932ms
	Processing time (w/o IO): 714.7259712219238ms
	Processing time (w/o IO): 711.016058921814ms
	  Time (mean ± σ):      2.096 s ±  0.013 s    [User: 1.928 s, System: 0.133 s]
	  Range (min … max):    2.087 s …  2.105 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 396.0786ms
	Processing time (w/o IO): 392.935847ms
	Processing time (w/o IO): 394.139167ms
	  Time (mean ± σ):      1.843 s ±  0.026 s    [User: 2.812 s, System: 0.132 s]
	  Range (min … max):    1.825 s …  1.861 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 2613ms
	Processing time (w/o IO): 2623ms
	Processing time (w/o IO): 2615ms
	  Time (mean ± σ):      2.951 s ±  0.003 s    [User: 2.968 s, System: 0.101 s]
	  Range (min … max):    2.949 s …  2.953 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 1534ms
	Processing time (w/o IO): 1526ms
	Processing time (w/o IO): 1521ms
	  Time (mean ± σ):      1.688 s ±  0.005 s    [User: 1.697 s, System: 0.072 s]
	  Range (min … max):    1.684 s …  1.691 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 1813ms
	Processing time (w/o IO): 1808ms
	Processing time (w/o IO): 1810ms
	  Time (mean ± σ):      2.154 s ±  0.003 s    [User: 1.960 s, System: 0.070 s]
	  Range (min … max):    2.152 s …  2.156 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 751 ms
	Processing time (w/o IO): 776 ms
	Processing time (w/o IO): 775 ms
	  Time (mean ± σ):      1.936 s ±  0.003 s    [User: 2.539 s, System: 0.090 s]
	  Range (min … max):    1.934 s …  1.939 s    2 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 633 ms
	Processing time (w/o IO): 633 ms
	Processing time (w/o IO): 633 ms
	  Time (mean ± σ):      1.367 s ±  0.001 s    [User: 1.341 s, System: 0.023 s]
	  Range (min … max):    1.366 s …  1.367 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 468 ms
	Processing time (w/o IO): 472 ms
	Processing time (w/o IO): 463 ms
	  Time (mean ± σ):     569.4 ms ±   8.5 ms    [User: 1298.1 ms, System: 39.3 ms]
	  Range (min … max):   563.4 ms … 575.4 ms    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 523.468ms
	Processing time (w/o IO): 519.735ms
	Processing time (w/o IO): 523.914ms
	  Time (mean ± σ):     627.2 ms ±   1.0 ms    [User: 595.4 ms, System: 31.6 ms]
	  Range (min … max):   626.5 ms … 627.9 ms    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 624ms
	Processing time (w/o IO): 623ms
	Processing time (w/o IO): 623ms
	  Time (mean ± σ):      3.349 s ±  0.005 s    [User: 3.261 s, System: 0.290 s]
	  Range (min … max):    3.345 s …  3.352 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 283ms
	Processing time (w/o IO): 287ms
	Processing time (w/o IO): 291ms
	  Time (mean ± σ):      2.714 s ±  0.013 s    [User: 4.247 s, System: 0.303 s]
	  Range (min … max):    2.705 s …  2.722 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 243ms
	Processing time (w/o IO): 243ms
	Processing time (w/o IO): 243ms
	  Time (mean ± σ):      3.541 s ±  0.006 s    [User: 5.210 s, System: 0.395 s]
	  Range (min … max):    3.536 s …  3.545 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 604ms
	Processing time (w/o IO): 603ms
	Processing time (w/o IO): 605ms
	  Time (mean ± σ):      4.296 s ±  0.004 s    [User: 4.514 s, System: 0.404 s]
	  Range (min … max):    4.294 s …  4.299 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 772.8221ms
	Processing time (w/o IO): 772.9197ms
	Processing time (w/o IO): 771.8483ms
	  Time (mean ± σ):      1.096 s ±  0.004 s    [User: 1.059 s, System: 0.060 s]
	  Range (min … max):    1.093 s …  1.098 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 616.2033ms
	Processing time (w/o IO): 617.7188ms
	Processing time (w/o IO): 620.2749ms
	  Time (mean ± σ):     799.7 ms ±   2.0 ms    [User: 793.1 ms, System: 53.1 ms]
	  Range (min … max):   798.3 ms … 801.1 ms    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	1186.311006546	ms
	Processing time (w/o IO):	1184.5309734344	ms
	Processing time (w/o IO):	1185.6160163879	ms
	  Time (mean ± σ):      2.534 s ±  0.033 s    [User: 2.460 s, System: 0.071 s]
	  Range (min … max):    2.511 s …  2.557 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	16749.806880951	ms
	Processing time (w/o IO):	16839.401006699	ms
	  Time (abs ≡):        18.799 s               [User: 18.724 s, System: 0.067 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 2977ms
	Processing time (w/o IO): 3039ms
	Processing time (w/o IO): 2973ms
	  Time (mean ± σ):      3.426 s ±  0.050 s    [User: 3.217 s, System: 0.206 s]
	  Range (min … max):    3.391 s …  3.462 s    2 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 3.272191621s
	Processing time (w/o IO): 3.266667773s
	Processing time (w/o IO): 3.263381403s
	  Time (mean ± σ):      3.752 s ±  0.004 s    [User: 3.757 s, System: 0.123 s]
	  Range (min … max):    3.749 s …  3.754 s    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1.41857771s
	Processing time (w/o IO): 1.416806902s
	Processing time (w/o IO): 1.419469918s
	  Time (mean ± σ):      1.906 s ±  0.008 s    [User: 6.114 s, System: 0.118 s]
	  Range (min … max):    1.900 s …  1.911 s    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 3.034978391s
	Processing time (w/o IO): 3.033030949s
	Processing time (w/o IO): 3.036567945s
	  Time (mean ± σ):      3.249 s ±  0.001 s    [User: 3.165 s, System: 0.076 s]
	  Range (min … max):    3.248 s …  3.250 s    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 1.57055269s
	Processing time (w/o IO): 1.569948438s
	Processing time (w/o IO): 1.57190352s
	  Time (mean ± σ):      1.828 s ±  0.057 s    [User: 3.259 s, System: 0.081 s]
	  Range (min … max):    1.788 s …  1.868 s    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 2700.79ms
	Processing time (w/o IO): 2696.66ms
	Processing time (w/o IO): 2705.22ms
	  Time (mean ± σ):      3.644 s ±  0.008 s    [User: 3.553 s, System: 0.101 s]
	  Range (min … max):    3.638 s …  3.650 s    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1409.65ms
	Processing time (w/o IO): 1396.18ms
	Processing time (w/o IO): 1396.96ms
	  Time (mean ± σ):      2.331 s ±  0.028 s    [User: 6.237 s, System: 0.122 s]
	  Range (min … max):    2.312 s …  2.351 s    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 4567 ms
	Processing time (w/o IO): 4572 ms
	Processing time (w/o IO): 4568 ms
	  Time (mean ± σ):      7.151 s ±  0.081 s    [User: 6.715 s, System: 0.314 s]
	  Range (min … max):    7.093 s …  7.208 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 1756 ms
	Processing time (w/o IO): 1754 ms
	Processing time (w/o IO): 1750 ms
	  Time (mean ± σ):      4.549 s ±  0.011 s    [User: 9.199 s, System: 0.324 s]
	  Range (min … max):    4.542 s …  4.557 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 214.945s
	Processing time (w/o IO): 215.966s
	  Time (abs ≡):        216.406 s               [User: 216.218 s, System: 0.140 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 8649.159009ms
	Processing time (w/o IO): 8647.557775ms
	Processing time (w/o IO): 8640.174999ms
	  Time (mean ± σ):      9.337 s ±  0.010 s    [User: 9.230 s, System: 0.097 s]
	  Range (min … max):    9.330 s …  9.344 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 3822ms
	Processing time (w/o IO): 3817ms
	Processing time (w/o IO): 3815ms
	  Time (mean ± σ):      4.395 s ±  0.009 s    [User: 4.320 s, System: 0.072 s]
	  Range (min … max):    4.389 s …  4.402 s    2 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 4232 milliseconds
	Processing time (w/o IO): 4231 milliseconds
	Processing time (w/o IO): 4234 milliseconds
	  Time (mean ± σ):      5.225 s ±  0.012 s    [User: 5.010 s, System: 0.316 s]
	  Range (min … max):    5.217 s …  5.234 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 1936 milliseconds
	Processing time (w/o IO): 1939 milliseconds
	Processing time (w/o IO): 1938 milliseconds
	  Time (mean ± σ):      2.955 s ±  0.016 s    [User: 8.489 s, System: 0.337 s]
	  Range (min … max):    2.944 s …  2.966 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  5.955197393s
	Processing time (w/o IO):  5.958377144s
	Processing time (w/o IO):  6.117191269s
	  Time (mean ± σ):      8.471 s ±  0.113 s    [User: 8.386 s, System: 0.081 s]
	  Range (min … max):    8.392 s …  8.551 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 6.651s
	Processing time (w/o IO): 6.655s
	Processing time (w/o IO): 6.658s
	  Time (mean ± σ):     78.573 s ±  0.181 s    [User: 78.180 s, System: 0.378 s]
	  Range (min … max):   78.445 s … 78.701 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 21058ms
	Processing time (w/o IO): 21004ms
	Processing time (w/o IO): 20818ms
	  Time (mean ± σ):     22.406 s ±  0.106 s    [User: 22.628 s, System: 0.245 s]
	  Range (min … max):   22.331 s … 22.481 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 25768ms
	Processing time (w/o IO): 25775ms
	Processing time (w/o IO): 25707ms
	  Time (mean ± σ):     27.268 s ±  0.054 s    [User: 27.238 s, System: 0.138 s]
	  Range (min … max):   27.230 s … 27.306 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 6214.812994003296ms
	Processing time (w/o IO): 6178.570985794067ms
	Processing time (w/o IO): 6182.4740171432495ms
	  Time (mean ± σ):     10.477 s ±  0.038 s    [User: 9.930 s, System: 0.372 s]
	  Range (min … max):   10.451 s … 10.504 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 3430.118816ms
	Processing time (w/o IO): 3439.793208ms
	Processing time (w/o IO): 3444.759935ms
	  Time (mean ± σ):      7.843 s ±  0.006 s    [User: 17.541 s, System: 0.341 s]
	  Range (min … max):    7.838 s …  7.847 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 23030ms
	Processing time (w/o IO): 14221ms
	Processing time (w/o IO): 14263ms
	  Time (mean ± σ):     15.048 s ±  0.029 s    [User: 15.045 s, System: 0.192 s]
	  Range (min … max):   15.028 s … 15.068 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 13209ms
	Processing time (w/o IO): 15400ms
	Processing time (w/o IO): 15404ms
	  Time (mean ± σ):     15.880 s ±  0.008 s    [User: 15.841 s, System: 0.176 s]
	  Range (min … max):   15.874 s … 15.886 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 15871ms
	Processing time (w/o IO): 15912ms
	Processing time (w/o IO): 16924ms
	  Time (mean ± σ):     17.200 s ±  0.693 s    [User: 16.924 s, System: 0.174 s]
	  Range (min … max):   16.710 s … 17.689 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 6421 ms
	Processing time (w/o IO): 6477 ms
	Processing time (w/o IO): 6423 ms
	  Time (mean ± σ):     13.588 s ±  0.039 s    [User: 14.338 s, System: 0.136 s]
	  Range (min … max):   13.560 s … 13.616 s    2 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 7512 ms
	Processing time (w/o IO): 7511 ms
	Processing time (w/o IO): 7514 ms
	  Time (mean ± σ):     15.484 s ±  0.005 s    [User: 15.359 s, System: 0.115 s]
	  Range (min … max):   15.480 s … 15.487 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 4119 ms
	Processing time (w/o IO): 4117 ms
	Processing time (w/o IO): 4125 ms
	  Time (mean ± σ):      4.476 s ±  0.003 s    [User: 11.049 s, System: 0.103 s]
	  Range (min … max):    4.474 s …  4.478 s    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 4600.247ms
	Processing time (w/o IO): 4596.69ms
	Processing time (w/o IO): 4617.203ms
	  Time (mean ± σ):      4.940 s ±  0.016 s    [User: 4.828 s, System: 0.101 s]
	  Range (min … max):    4.929 s …  4.951 s    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 5491ms
	Processing time (w/o IO): 5495ms
	Processing time (w/o IO): 5507ms
	  Time (mean ± σ):     16.333 s ±  0.015 s    [User: 17.050 s, System: 0.596 s]
	  Range (min … max):   16.323 s … 16.344 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 2516ms
	Processing time (w/o IO): 2440ms
	Processing time (w/o IO): 2511ms
	  Time (mean ± σ):     10.365 s ±  0.154 s    [User: 25.615 s, System: 0.648 s]
	  Range (min … max):   10.256 s … 10.474 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 2035ms
	Processing time (w/o IO): 2039ms
	Processing time (w/o IO): 2045ms
	  Time (mean ± σ):     12.211 s ±  0.147 s    [User: 25.466 s, System: 0.600 s]
	  Range (min … max):   12.107 s … 12.314 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 5182ms
	Processing time (w/o IO): 5179ms
	Processing time (w/o IO): 5183ms
	  Time (mean ± σ):     18.529 s ±  0.044 s    [User: 19.484 s, System: 0.585 s]
	  Range (min … max):   18.497 s … 18.560 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 6764.6755ms
	Processing time (w/o IO): 6775.5907ms
	Processing time (w/o IO): 6769.1024ms
	  Time (mean ± σ):      7.612 s ±  0.011 s    [User: 7.585 s, System: 0.175 s]
	  Range (min … max):    7.604 s …  7.620 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 5401.5583ms
	Processing time (w/o IO): 5400.3592ms
	Processing time (w/o IO): 5403.2416ms
	  Time (mean ± σ):      5.932 s ±  0.005 s    [User: 5.915 s, System: 0.187 s]
	  Range (min … max):    5.929 s …  5.936 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	12035.056829453	ms
	Processing time (w/o IO):	12093.52183342	ms
	Processing time (w/o IO):	9740.040063858	ms
	  Time (mean ± σ):     15.203 s ±  1.541 s    [User: 15.001 s, System: 0.193 s]
	  Range (min … max):   14.113 s … 16.293 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	150683.37988853	ms
	Processing time (w/o IO):	149935.99104881	ms
	  Time (abs ≡):        156.201 s               [User: 155.991 s, System: 0.167 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 35327ms
	Processing time (w/o IO): 35553ms
	Processing time (w/o IO): 35520ms
	  Time (mean ± σ):     36.960 s ±  0.046 s    [User: 35.926 s, System: 1.015 s]
	  Range (min … max):   36.927 s … 36.992 s    2 runs
	 
