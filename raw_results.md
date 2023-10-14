Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 24.036896ms
	Processing time (w/o IO): 24.190299ms
	Processing time (w/o IO): 24.167197ms
	Processing time (w/o IO): 24.009495ms
	Processing time (w/o IO): 24.200899ms
	Processing time (w/o IO): 24.222799ms
	Processing time (w/o IO): 24.052396ms
	Processing time (w/o IO): 24.3566ms
	Processing time (w/o IO): 24.284899ms
	Processing time (w/o IO): 25.108912ms
	Processing time (w/o IO): 24.011995ms
	Processing time (w/o IO): 24.208497ms
	Processing time (w/o IO): 24.047895ms
	  Time (mean ± σ):      63.6 ms ±   1.5 ms    [User: 60.4 ms, System: 10.7 ms]
	  Range (min … max):    61.5 ms …  66.8 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 12.611808ms
	Processing time (w/o IO): 13.173716ms
	Processing time (w/o IO): 13.307819ms
	Processing time (w/o IO): 12.475005ms
	Processing time (w/o IO): 12.895912ms
	Processing time (w/o IO): 14.370636ms
	Processing time (w/o IO): 12.440705ms
	Processing time (w/o IO): 13.055315ms
	Processing time (w/o IO): 12.726709ms
	Processing time (w/o IO): 15.160349ms
	Processing time (w/o IO): 12.74821ms
	Processing time (w/o IO): 13.162617ms
	Processing time (w/o IO): 12.581307ms
	  Time (mean ± σ):      50.7 ms ±   1.2 ms    [User: 79.4 ms, System: 11.1 ms]
	  Range (min … max):    48.3 ms …  52.4 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 23.733499ms
	Processing time (w/o IO): 23.419394ms
	Processing time (w/o IO): 23.463695ms
	Processing time (w/o IO): 23.400393ms
	Processing time (w/o IO): 23.463695ms
	Processing time (w/o IO): 23.424394ms
	Processing time (w/o IO): 23.699199ms
	Processing time (w/o IO): 23.370293ms
	Processing time (w/o IO): 23.397793ms
	Processing time (w/o IO): 23.414694ms
	Processing time (w/o IO): 23.515595ms
	Processing time (w/o IO): 23.906402ms
	Processing time (w/o IO): 23.407794ms
	  Time (mean ± σ):      38.6 ms ±   0.3 ms    [User: 32.1 ms, System: 6.6 ms]
	  Range (min … max):    38.1 ms …  39.0 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 16.604389ms
	Processing time (w/o IO): 13.939042ms
	Processing time (w/o IO): 14.288848ms
	Processing time (w/o IO): 14.563652ms
	Processing time (w/o IO): 14.091445ms
	Processing time (w/o IO): 14.157646ms
	Processing time (w/o IO): 13.683037ms
	Processing time (w/o IO): 14.170346ms
	Processing time (w/o IO): 13.971643ms
	Processing time (w/o IO): 14.771056ms
	Processing time (w/o IO): 14.199446ms
	Processing time (w/o IO): 14.008543ms
	Processing time (w/o IO): 14.583953ms
	  Time (mean ± σ):      29.8 ms ±   0.4 ms    [User: 32.0 ms, System: 10.0 ms]
	  Range (min … max):    29.2 ms …  30.6 ms    10 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 24.981ms
	Processing time (w/o IO): 24.746ms
	Processing time (w/o IO): 24.974ms
	Processing time (w/o IO): 25.057ms
	Processing time (w/o IO): 24.411ms
	Processing time (w/o IO): 24.624ms
	Processing time (w/o IO): 25.178ms
	Processing time (w/o IO): 24.257ms
	Processing time (w/o IO): 24.791ms
	Processing time (w/o IO): 24.728ms
	Processing time (w/o IO): 24.915ms
	Processing time (w/o IO): 24.637ms
	Processing time (w/o IO): 24.565ms
	  Time (mean ± σ):     104.3 ms ±   0.9 ms    [User: 93.9 ms, System: 11.7 ms]
	  Range (min … max):   103.1 ms … 105.8 ms    10 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 15.474ms
	Processing time (w/o IO): 16.363ms
	Processing time (w/o IO): 14.263ms
	Processing time (w/o IO): 15.304ms
	Processing time (w/o IO): 13.994ms
	Processing time (w/o IO): 14.917ms
	Processing time (w/o IO): 15.863ms
	Processing time (w/o IO): 14.085ms
	Processing time (w/o IO): 14.806ms
	Processing time (w/o IO): 15.712ms
	Processing time (w/o IO): 14.393ms
	Processing time (w/o IO): 15.643ms
	Processing time (w/o IO): 15.436ms
	  Time (mean ± σ):      95.6 ms ±   1.2 ms    [User: 114.5 ms, System: 9.4 ms]
	  Range (min … max):    93.3 ms …  96.9 ms    10 runs
	 
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
	  Time (mean ± σ):     223.8 ms ±   2.2 ms    [User: 194.8 ms, System: 29.0 ms]
	  Range (min … max):   221.5 ms … 228.5 ms    10 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 15 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 14 ms
	  Time (mean ± σ):     222.5 ms ±   2.1 ms    [User: 216.1 ms, System: 39.0 ms]
	  Range (min … max):   220.2 ms … 227.1 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 1.475s
	Processing time (w/o IO): 1.466s
	Processing time (w/o IO): 1.467s
	Processing time (w/o IO): 1.462s
	Processing time (w/o IO): 1.487s
	Processing time (w/o IO): 1.472s
	Processing time (w/o IO): 1.461s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.458s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.462s
	Processing time (w/o IO): 1.458s
	Processing time (w/o IO): 1.464s
	  Time (mean ± σ):      1.531 s ±  0.009 s    [User: 1.513 s, System: 0.018 s]
	  Range (min … max):    1.525 s …  1.553 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 348.5ms
	Processing time (w/o IO): 348.5ms
	Processing time (w/o IO): 349.6ms
	Processing time (w/o IO): 348.8ms
	Processing time (w/o IO): 349.2ms
	Processing time (w/o IO): 349.7ms
	Processing time (w/o IO): 350.7ms
	Processing time (w/o IO): 348.8ms
	Processing time (w/o IO): 352.4ms
	Processing time (w/o IO): 349.6ms
	Processing time (w/o IO): 348.5ms
	Processing time (w/o IO): 349.0ms
	Processing time (w/o IO): 350.0ms
	  Time (mean ± σ):     675.6 ms ± 128.4 ms    [User: 850.8 ms, System: 394.5 ms]
	  Range (min … max):   631.6 ms … 1041.0 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 65.467497ms
	Processing time (w/o IO): 65.112991ms
	Processing time (w/o IO): 64.909787ms
	Processing time (w/o IO): 65.094391ms
	Processing time (w/o IO): 64.852587ms
	Processing time (w/o IO): 65.311594ms
	Processing time (w/o IO): 64.961088ms
	Processing time (w/o IO): 64.959988ms
	Processing time (w/o IO): 64.757485ms
	Processing time (w/o IO): 64.680583ms
	Processing time (w/o IO): 64.722084ms
	Processing time (w/o IO): 64.954088ms
	Processing time (w/o IO): 64.658883ms
	  Time (mean ± σ):     114.1 ms ±   1.1 ms    [User: 104.2 ms, System: 9.9 ms]
	  Range (min … max):   112.9 ms … 115.8 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	  Time (mean ± σ):      76.4 ms ±   0.3 ms    [User: 68.7 ms, System: 7.7 ms]
	  Range (min … max):    76.0 ms …  77.0 ms    10 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 31 milliseconds
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
	  Time (mean ± σ):     467.1 ms ±  16.1 ms    [User: 369.6 ms, System: 201.2 ms]
	  Range (min … max):   449.3 ms … 491.0 ms    10 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 19 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 16 milliseconds
	  Time (mean ± σ):     449.5 ms ±  14.8 ms    [User: 401.5 ms, System: 198.4 ms]
	  Range (min … max):   436.0 ms … 471.6 ms    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  40.988567ms
	Processing time (w/o IO):  41.310072ms
	Processing time (w/o IO):  41.049768ms
	Processing time (w/o IO):  41.16327ms
	Processing time (w/o IO):  41.093669ms
	Processing time (w/o IO):  40.805764ms
	Processing time (w/o IO):  41.677078ms
	Processing time (w/o IO):  41.217171ms
	Processing time (w/o IO):  40.931866ms
	Processing time (w/o IO):  41.222771ms
	Processing time (w/o IO):  41.089469ms
	Processing time (w/o IO):  41.20997ms
	Processing time (w/o IO):  41.21877ms
	  Time (mean ± σ):     259.2 ms ±   0.6 ms    [User: 249.1 ms, System: 10.0 ms]
	  Range (min … max):   258.3 ms … 260.1 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 51.465ms
	Processing time (w/o IO): 51.187ms
	Processing time (w/o IO): 51.270ms
	Processing time (w/o IO): 51.447ms
	Processing time (w/o IO): 51.519ms
	Processing time (w/o IO): 51.739ms
	Processing time (w/o IO): 51.086ms
	Processing time (w/o IO): 50.992ms
	Processing time (w/o IO): 51.195ms
	Processing time (w/o IO): 51.921ms
	Processing time (w/o IO): 51.494ms
	Processing time (w/o IO): 51.398ms
	Processing time (w/o IO): 50.831ms
	  Time (mean ± σ):     370.0 ms ±   4.2 ms    [User: 344.7 ms, System: 25.2 ms]
	  Range (min … max):   364.2 ms … 377.4 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 168ms
	Processing time (w/o IO): 167ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 133ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	  Time (mean ± σ):     518.5 ms ±  15.2 ms    [User: 628.4 ms, System: 106.4 ms]
	  Range (min … max):   495.1 ms … 544.1 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 187ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 187ms
	  Time (mean ± σ):     311.8 ms ±   1.5 ms    [User: 297.3 ms, System: 18.4 ms]
	  Range (min … max):   309.5 ms … 314.4 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 50.51290988922119ms
	Processing time (w/o IO): 50.40407180786133ms
	Processing time (w/o IO): 50.238966941833496ms
	Processing time (w/o IO): 50.44996738433838ms
	Processing time (w/o IO): 50.85599422454834ms
	Processing time (w/o IO): 50.309062004089355ms
	Processing time (w/o IO): 50.85599422454834ms
	Processing time (w/o IO): 50.737977027893066ms
	Processing time (w/o IO): 50.627946853637695ms
	Processing time (w/o IO): 50.76897144317627ms
	Processing time (w/o IO): 51.239967346191406ms
	Processing time (w/o IO): 51.37300491333008ms
	Processing time (w/o IO): 50.50504207611084ms
	  Time (mean ± σ):     402.3 ms ±   7.7 ms    [User: 345.9 ms, System: 37.0 ms]
	  Range (min … max):   391.6 ms … 413.3 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 30.651822ms
	Processing time (w/o IO): 32.079546ms
	Processing time (w/o IO): 31.822441ms
	Processing time (w/o IO): 31.253432ms
	Processing time (w/o IO): 31.191631ms
	Processing time (w/o IO): 30.972727ms
	Processing time (w/o IO): 32.142546ms
	Processing time (w/o IO): 30.759123ms
	Processing time (w/o IO): 31.495836ms
	Processing time (w/o IO): 30.913115ms
	Processing time (w/o IO): 31.112219ms
	Processing time (w/o IO): 31.785331ms
	Processing time (w/o IO): 31.026417ms
	  Time (mean ± σ):     404.0 ms ±  35.8 ms    [User: 426.1 ms, System: 34.8 ms]
	  Range (min … max):   384.5 ms … 504.3 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 184ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 184ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 181ms
	Processing time (w/o IO): 181ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 182ms
	Processing time (w/o IO): 178ms
	  Time (mean ± σ):     353.8 ms ±   3.7 ms    [User: 360.4 ms, System: 62.0 ms]
	  Range (min … max):   347.6 ms … 358.3 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 764ms
	Processing time (w/o IO): 809ms
	Processing time (w/o IO): 764ms
	Processing time (w/o IO): 795ms
	Processing time (w/o IO): 809ms
	Processing time (w/o IO): 774ms
	Processing time (w/o IO): 766ms
	Processing time (w/o IO): 770ms
	Processing time (w/o IO): 777ms
	Processing time (w/o IO): 751ms
	Processing time (w/o IO): 760ms
	Processing time (w/o IO): 774ms
	Processing time (w/o IO): 608ms
	  Time (mean ± σ):     815.2 ms ±  55.5 ms    [User: 835.4 ms, System: 35.1 ms]
	  Range (min … max):   664.0 ms … 864.2 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 190ms
	Processing time (w/o IO): 190ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 190ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 198ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 198ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 194ms
	  Time (mean ± σ):     258.9 ms ±   2.9 ms    [User: 251.9 ms, System: 29.1 ms]
	  Range (min … max):   255.5 ms … 263.9 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	  Time (mean ± σ):     389.2 ms ±   8.5 ms    [User: 694.5 ms, System: 52.0 ms]
	  Range (min … max):   375.2 ms … 401.0 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 41 ms
	Processing time (w/o IO): 41 ms
	Processing time (w/o IO): 41 ms
	Processing time (w/o IO): 41 ms
	Processing time (w/o IO): 41 ms
	Processing time (w/o IO): 41 ms
	Processing time (w/o IO): 41 ms
	Processing time (w/o IO): 41 ms
	Processing time (w/o IO): 41 ms
	Processing time (w/o IO): 41 ms
	Processing time (w/o IO): 41 ms
	Processing time (w/o IO): 41 ms
	Processing time (w/o IO): 41 ms
	  Time (mean ± σ):     111.2 ms ±   0.5 ms    [User: 95.1 ms, System: 16.3 ms]
	  Range (min … max):   110.3 ms … 112.0 ms    10 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 38 ms
	Processing time (w/o IO): 39 ms
	  Time (mean ± σ):      68.6 ms ±   1.4 ms    [User: 113.9 ms, System: 13.1 ms]
	  Range (min … max):    65.8 ms …  70.7 ms    10 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 30.189ms
	Processing time (w/o IO): 30.255ms
	Processing time (w/o IO): 29.88ms
	Processing time (w/o IO): 30.22ms
	Processing time (w/o IO): 30.019ms
	Processing time (w/o IO): 30.026ms
	Processing time (w/o IO): 30.06ms
	Processing time (w/o IO): 29.941ms
	Processing time (w/o IO): 30.047ms
	Processing time (w/o IO): 30.04ms
	Processing time (w/o IO): 29.87ms
	Processing time (w/o IO): 29.804ms
	Processing time (w/o IO): 29.876ms
	  Time (mean ± σ):      55.3 ms ±   0.7 ms    [User: 43.8 ms, System: 11.5 ms]
	  Range (min … max):    54.3 ms …  56.5 ms    10 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 45ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 45ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 45ms
	Processing time (w/o IO): 45ms
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 44ms
	  Time (mean ± σ):     908.6 ms ±   6.2 ms    [User: 995.5 ms, System: 81.3 ms]
	  Range (min … max):   898.5 ms … 920.0 ms    10 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 22ms
	Processing time (w/o IO): 22ms
	Processing time (w/o IO): 23ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 22ms
	Processing time (w/o IO): 22ms
	Processing time (w/o IO): 22ms
	Processing time (w/o IO): 23ms
	Processing time (w/o IO): 22ms
	Processing time (w/o IO): 23ms
	Processing time (w/o IO): 23ms
	Processing time (w/o IO): 23ms
	Processing time (w/o IO): 22ms
	  Time (mean ± σ):     897.0 ms ±   6.5 ms    [User: 1060.5 ms, System: 91.3 ms]
	  Range (min … max):   886.8 ms … 907.2 ms    10 runs
	 
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
	  Time (mean ± σ):     722.0 ms ±   1.9 ms    [User: 792.3 ms, System: 90.7 ms]
	  Range (min … max):   719.4 ms … 725.9 ms    10 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 33ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 33ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 33ms
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	  Time (mean ± σ):     747.4 ms ±   2.5 ms    [User: 709.1 ms, System: 81.0 ms]
	  Range (min … max):   742.0 ms … 750.6 ms    10 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 57.7309ms
	Processing time (w/o IO): 57.6336ms
	Processing time (w/o IO): 57.5089ms
	Processing time (w/o IO): 58.0499ms
	Processing time (w/o IO): 57.5861ms
	Processing time (w/o IO): 57.8542ms
	Processing time (w/o IO): 59.7293ms
	Processing time (w/o IO): 57.8903ms
	Processing time (w/o IO): 57.8219ms
	Processing time (w/o IO): 57.9292ms
	Processing time (w/o IO): 57.762ms
	Processing time (w/o IO): 57.9604ms
	Processing time (w/o IO): 58.0899ms
	  Time (mean ± σ):     198.1 ms ±   4.6 ms    [User: 148.3 ms, System: 33.7 ms]
	  Range (min … max):   191.3 ms … 207.2 ms    10 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 42.6787ms
	Processing time (w/o IO): 42.4125ms
	Processing time (w/o IO): 42.4982ms
	Processing time (w/o IO): 42.8986ms
	Processing time (w/o IO): 42.4814ms
	Processing time (w/o IO): 42.7845ms
	Processing time (w/o IO): 42.7117ms
	Processing time (w/o IO): 42.8807ms
	Processing time (w/o IO): 42.8096ms
	Processing time (w/o IO): 42.7255ms
	Processing time (w/o IO): 42.8115ms
	Processing time (w/o IO): 42.6259ms
	Processing time (w/o IO): 42.7771ms
	  Time (mean ± σ):      86.7 ms ±   1.6 ms    [User: 78.2 ms, System: 18.7 ms]
	  Range (min … max):    85.3 ms …  90.1 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	104.20489311218	ms
	Processing time (w/o IO):	110.89181900024	ms
	Processing time (w/o IO):	110.64791679382	ms
	Processing time (w/o IO):	118.66188049316	ms
	Processing time (w/o IO):	87.924957275391	ms
	Processing time (w/o IO):	110.18681526184	ms
	Processing time (w/o IO):	111.54007911682	ms
	Processing time (w/o IO):	113.70015144348	ms
	Processing time (w/o IO):	110.54801940918	ms
	Processing time (w/o IO):	108.58297348022	ms
	Processing time (w/o IO):	112.59794235229	ms
	Processing time (w/o IO):	112.14900016785	ms
	Processing time (w/o IO):	112.27202415466	ms
	  Time (mean ± σ):     351.1 ms ±   9.8 ms    [User: 335.7 ms, System: 15.3 ms]
	  Range (min … max):   328.2 ms … 362.2 ms    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1090.7080173492	ms
	Processing time (w/o IO):	1089.3278121948	ms
	Processing time (w/o IO):	1089.9450778961	ms
	Processing time (w/o IO):	1091.9101238251	ms
	Processing time (w/o IO):	1105.3049564362	ms
	Processing time (w/o IO):	1091.5241241455	ms
	Processing time (w/o IO):	1090.0719165802	ms
	Processing time (w/o IO):	1088.7131690979	ms
	Processing time (w/o IO):	1090.0959968567	ms
	Processing time (w/o IO):	1089.4842147827	ms
	Processing time (w/o IO):	1088.5419845581	ms
	Processing time (w/o IO):	1090.5041694641	ms
	Processing time (w/o IO):	1092.6690101624	ms
	  Time (mean ± σ):      1.515 s ±  0.006 s    [User: 1.497 s, System: 0.017 s]
	  Range (min … max):    1.507 s …  1.526 s    10 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 142ms
	Processing time (w/o IO): 143ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 139ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 139ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 140ms
	  Time (mean ± σ):     224.4 ms ±   2.7 ms    [User: 202.2 ms, System: 21.3 ms]
	  Range (min … max):   221.1 ms … 230.5 ms    10 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 370.917225ms
	Processing time (w/o IO): 372.44105ms
	Processing time (w/o IO): 371.577524ms
	  Time (mean ± σ):     513.8 ms ±   2.7 ms    [User: 517.8 ms, System: 28.1 ms]
	  Range (min … max):   511.9 ms … 515.7 ms    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 165.339156ms
	Processing time (w/o IO): 166.845673ms
	Processing time (w/o IO): 165.918262ms
	  Time (mean ± σ):     303.0 ms ±   4.5 ms    [User: 781.4 ms, System: 31.8 ms]
	  Range (min … max):   299.8 ms … 306.1 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 342.14634ms
	Processing time (w/o IO): 340.36882ms
	Processing time (w/o IO): 340.546422ms
	  Time (mean ± σ):     401.3 ms ±   0.1 ms    [User: 371.8 ms, System: 29.5 ms]
	  Range (min … max):   401.2 ms … 401.4 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 188.147411ms
	Processing time (w/o IO): 180.79823ms
	Processing time (w/o IO): 191.650851ms
	  Time (mean ± σ):     247.0 ms ±   8.6 ms    [User: 394.3 ms, System: 33.5 ms]
	  Range (min … max):   240.9 ms … 253.1 ms    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 312.939ms
	Processing time (w/o IO): 312.726ms
	Processing time (w/o IO): 316.754ms
	  Time (mean ± σ):     609.8 ms ±   3.7 ms    [User: 586.7 ms, System: 27.4 ms]
	  Range (min … max):   607.2 ms … 612.5 ms    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 145.728ms
	Processing time (w/o IO): 144.271ms
	Processing time (w/o IO): 145.293ms
	  Time (mean ± σ):     440.8 ms ±   0.9 ms    [User: 801.1 ms, System: 19.5 ms]
	  Range (min … max):   440.2 ms … 441.5 ms    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 340 ms
	Processing time (w/o IO): 336 ms
	Processing time (w/o IO): 336 ms
	  Time (mean ± σ):      1.162 s ±  0.004 s    [User: 1.030 s, System: 0.130 s]
	  Range (min … max):    1.159 s …  1.165 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 163 ms
	Processing time (w/o IO): 164 ms
	Processing time (w/o IO): 164 ms
	  Time (mean ± σ):      1.073 s ±  0.071 s    [User: 1.382 s, System: 0.107 s]
	  Range (min … max):    1.023 s …  1.123 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 23.379s
	Processing time (w/o IO): 23.586s
	  Time (abs ≡):        23.747 s               [User: 23.695 s, System: 0.048 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 5.887s
	Processing time (w/o IO): 6.907s
	Processing time (w/o IO): 7.205s
	  Time (mean ± σ):      7.567 s ±  0.198 s    [User: 5.094 s, System: 3.066 s]
	  Range (min … max):    7.427 s …  7.707 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 973.92082ms
	Processing time (w/o IO): 972.333328ms
	Processing time (w/o IO): 977.225813ms
	  Time (mean ± σ):      1.188 s ±  0.002 s    [User: 1.145 s, System: 0.039 s]
	  Range (min … max):    1.187 s …  1.189 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 430ms
	Processing time (w/o IO): 431ms
	Processing time (w/o IO): 430ms
	  Time (mean ± σ):     626.1 ms ±   0.4 ms    [User: 596.5 ms, System: 29.5 ms]
	  Range (min … max):   625.8 ms … 626.4 ms    2 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 481 milliseconds
	Processing time (w/o IO): 481 milliseconds
	Processing time (w/o IO): 481 milliseconds
	  Time (mean ± σ):      1.154 s ±  0.013 s    [User: 1.028 s, System: 0.228 s]
	  Range (min … max):    1.145 s …  1.163 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 222 milliseconds
	Processing time (w/o IO): 223 milliseconds
	Processing time (w/o IO): 223 milliseconds
	  Time (mean ± σ):     872.3 ms ±   2.4 ms    [User: 1400.6 ms, System: 229.7 ms]
	  Range (min … max):   870.6 ms … 874.0 ms    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  685.893841ms
	Processing time (w/o IO):  690.797016ms
	Processing time (w/o IO):  690.531256ms
	  Time (mean ± σ):      1.480 s ±  0.003 s    [User: 1.446 s, System: 0.031 s]
	  Range (min … max):    1.478 s …  1.483 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 756.717ms
	Processing time (w/o IO): 756.458ms
	Processing time (w/o IO): 756.729ms
	  Time (mean ± σ):      8.604 s ±  0.296 s    [User: 8.465 s, System: 0.136 s]
	  Range (min … max):    8.395 s …  8.813 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 2350ms
	Processing time (w/o IO): 2381ms
	Processing time (w/o IO): 2510ms
	  Time (mean ± σ):      3.099 s ±  0.098 s    [User: 3.296 s, System: 0.142 s]
	  Range (min … max):    3.029 s …  3.168 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 2900ms
	Processing time (w/o IO): 2889ms
	Processing time (w/o IO): 2887ms
	  Time (mean ± σ):      3.382 s ±  0.007 s    [User: 3.326 s, System: 0.076 s]
	  Range (min … max):    3.377 s …  3.387 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 713.0719423294067ms
	Processing time (w/o IO): 715.1919603347778ms
	Processing time (w/o IO): 709.5600366592407ms
	  Time (mean ± σ):      2.093 s ±  0.011 s    [User: 1.928 s, System: 0.129 s]
	  Range (min … max):    2.086 s …  2.101 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 393.588753ms
	Processing time (w/o IO): 393.037439ms
	Processing time (w/o IO): 393.984254ms
	  Time (mean ± σ):      1.815 s ±  0.031 s    [User: 2.762 s, System: 0.164 s]
	  Range (min … max):    1.793 s …  1.837 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 2431ms
	Processing time (w/o IO): 2444ms
	Processing time (w/o IO): 2431ms
	  Time (mean ± σ):      2.764 s ±  0.006 s    [User: 2.771 s, System: 0.099 s]
	  Range (min … max):    2.760 s …  2.769 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 11800ms
	Processing time (w/o IO): 11785ms
	Processing time (w/o IO): 11867ms
	  Time (mean ± σ):     11.988 s ±  0.056 s    [User: 12.034 s, System: 0.074 s]
	  Range (min … max):   11.948 s … 12.027 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 2263ms
	Processing time (w/o IO): 2265ms
	Processing time (w/o IO): 2261ms
	  Time (mean ± σ):      2.773 s ±  0.024 s    [User: 2.431 s, System: 0.090 s]
	  Range (min … max):    2.755 s …  2.790 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 774 ms
	Processing time (w/o IO): 748 ms
	Processing time (w/o IO): 749 ms
	  Time (mean ± σ):      1.858 s ±  0.000 s    [User: 2.404 s, System: 0.071 s]
	  Range (min … max):    1.857 s …  1.858 s    2 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 496 ms
	Processing time (w/o IO): 495 ms
	Processing time (w/o IO): 495 ms
	  Time (mean ± σ):      1.094 s ±  0.001 s    [User: 1.059 s, System: 0.032 s]
	  Range (min … max):    1.093 s …  1.094 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 593 ms
	Processing time (w/o IO): 593 ms
	Processing time (w/o IO): 591 ms
	  Time (mean ± σ):     689.6 ms ±   4.1 ms    [User: 1624.3 ms, System: 41.4 ms]
	  Range (min … max):   686.7 ms … 692.5 ms    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 522.375ms
	Processing time (w/o IO): 520.582ms
	Processing time (w/o IO): 522.15ms
	  Time (mean ± σ):     620.4 ms ±   2.7 ms    [User: 576.8 ms, System: 43.5 ms]
	  Range (min … max):   618.5 ms … 622.3 ms    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 623ms
	Processing time (w/o IO): 624ms
	Processing time (w/o IO): 624ms
	  Time (mean ± σ):      3.314 s ±  0.000 s    [User: 3.184 s, System: 0.311 s]
	  Range (min … max):    3.314 s …  3.314 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 289ms
	Processing time (w/o IO): 293ms
	Processing time (w/o IO): 283ms
	  Time (mean ± σ):      2.658 s ±  0.023 s    [User: 4.202 s, System: 0.290 s]
	  Range (min … max):    2.642 s …  2.674 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 290ms
	Processing time (w/o IO): 290ms
	Processing time (w/o IO): 290ms
	  Time (mean ± σ):      3.614 s ±  0.007 s    [User: 5.561 s, System: 0.358 s]
	  Range (min … max):    3.608 s …  3.619 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 486ms
	Processing time (w/o IO): 486ms
	Processing time (w/o IO): 485ms
	  Time (mean ± σ):      4.009 s ±  0.005 s    [User: 4.216 s, System: 0.407 s]
	  Range (min … max):    4.005 s …  4.012 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 773.8555ms
	Processing time (w/o IO): 771.6819ms
	Processing time (w/o IO): 772.8103ms
	  Time (mean ± σ):      1.098 s ±  0.005 s    [User: 1.055 s, System: 0.066 s]
	  Range (min … max):    1.095 s …  1.102 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 615.5034ms
	Processing time (w/o IO): 614.904ms
	Processing time (w/o IO): 616.9878ms
	  Time (mean ± σ):     785.6 ms ±   0.5 ms    [User: 771.2 ms, System: 59.3 ms]
	  Range (min … max):   785.3 ms … 786.0 ms    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	1558.7351322174	ms
	Processing time (w/o IO):	1560.4810714722	ms
	Processing time (w/o IO):	1412.1530056	ms
	  Time (mean ± σ):      2.712 s ±  0.074 s    [User: 2.646 s, System: 0.065 s]
	  Range (min … max):    2.660 s …  2.764 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	16781.106948853	ms
	Processing time (w/o IO):	16774.936914444	ms
	  Time (abs ≡):        18.666 s               [User: 18.591 s, System: 0.067 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 2739ms
	Processing time (w/o IO): 2817ms
	Processing time (w/o IO): 2734ms
	  Time (mean ± σ):      3.190 s ±  0.069 s    [User: 3.048 s, System: 0.140 s]
	  Range (min … max):    3.142 s …  3.239 s    2 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 3.280214198s
	Processing time (w/o IO): 3.273857393s
	Processing time (w/o IO): 3.277202262s
	  Time (mean ± σ):      3.749 s ±  0.011 s    [User: 3.742 s, System: 0.126 s]
	  Range (min … max):    3.741 s …  3.757 s    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1.416138434s
	Processing time (w/o IO): 1.416272737s
	Processing time (w/o IO): 1.416142555s
	  Time (mean ± σ):      1.902 s ±  0.022 s    [User: 6.117 s, System: 0.095 s]
	  Range (min … max):    1.886 s …  1.917 s    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 3.035390131s
	Processing time (w/o IO): 3.036863418s
	Processing time (w/o IO): 3.03578841s
	  Time (mean ± σ):      3.242 s ±  0.001 s    [User: 3.154 s, System: 0.077 s]
	  Range (min … max):    3.241 s …  3.242 s    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 1.577561455s
	Processing time (w/o IO): 1.581962829s
	Processing time (w/o IO): 1.572024601s
	  Time (mean ± σ):      1.785 s ±  0.003 s    [User: 3.268 s, System: 0.075 s]
	  Range (min … max):    1.782 s …  1.787 s    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 2702.7ms
	Processing time (w/o IO): 2693.51ms
	Processing time (w/o IO): 2700.03ms
	  Time (mean ± σ):      3.634 s ±  0.010 s    [User: 3.523 s, System: 0.117 s]
	  Range (min … max):    3.627 s …  3.641 s    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1160.3ms
	Processing time (w/o IO): 1162.47ms
	Processing time (w/o IO): 1164.38ms
	  Time (mean ± σ):      2.082 s ±  0.009 s    [User: 5.312 s, System: 0.096 s]
	  Range (min … max):    2.076 s …  2.089 s    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 2936 ms
	Processing time (w/o IO): 2935 ms
	Processing time (w/o IO): 2940 ms
	  Time (mean ± σ):      5.569 s ±  0.007 s    [User: 5.059 s, System: 0.320 s]
	  Range (min … max):    5.564 s …  5.574 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 1377 ms
	Processing time (w/o IO): 1390 ms
	Processing time (w/o IO): 1381 ms
	  Time (mean ± σ):      4.159 s ±  0.034 s    [User: 7.630 s, System: 0.368 s]
	  Range (min … max):    4.135 s …  4.183 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 214.903s
	Processing time (w/o IO): 215.085s
	  Time (abs ≡):        215.542 s               [User: 215.349 s, System: 0.148 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 8646.853449ms
	Processing time (w/o IO): 8643.341587ms
	Processing time (w/o IO): 8640.988402ms
	  Time (mean ± σ):      9.323 s ±  0.003 s    [User: 9.211 s, System: 0.104 s]
	  Range (min … max):    9.321 s …  9.326 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 3811ms
	Processing time (w/o IO): 3812ms
	Processing time (w/o IO): 3820ms
	  Time (mean ± σ):      4.418 s ±  0.003 s    [User: 4.345 s, System: 0.068 s]
	  Range (min … max):    4.416 s …  4.420 s    2 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 4237 milliseconds
	Processing time (w/o IO): 4237 milliseconds
	Processing time (w/o IO): 4233 milliseconds
	  Time (mean ± σ):      5.227 s ±  0.009 s    [User: 5.036 s, System: 0.291 s]
	  Range (min … max):    5.220 s …  5.233 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 1938 milliseconds
	Processing time (w/o IO): 1941 milliseconds
	Processing time (w/o IO): 1938 milliseconds
	  Time (mean ± σ):      2.910 s ±  0.006 s    [User: 8.464 s, System: 0.309 s]
	  Range (min … max):    2.906 s …  2.915 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  5.028358155s
	Processing time (w/o IO):  5.096027092s
	Processing time (w/o IO):  5.03154856s
	  Time (mean ± σ):      7.472 s ±  0.033 s    [User: 7.388 s, System: 0.073 s]
	  Range (min … max):    7.449 s …  7.495 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 6.658s
	Processing time (w/o IO): 6.656s
	Processing time (w/o IO): 6.653s
	  Time (mean ± σ):     76.283 s ±  4.175 s    [User: 75.854 s, System: 0.411 s]
	  Range (min … max):   73.331 s … 79.235 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 21010ms
	Processing time (w/o IO): 21024ms
	Processing time (w/o IO): 20848ms
	  Time (mean ± σ):     22.435 s ±  0.115 s    [User: 22.667 s, System: 0.240 s]
	  Range (min … max):   22.354 s … 22.517 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 25761ms
	Processing time (w/o IO): 25742ms
	Processing time (w/o IO): 25748ms
	  Time (mean ± σ):     27.275 s ±  0.052 s    [User: 27.198 s, System: 0.163 s]
	  Range (min … max):   27.238 s … 27.312 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 6159.8581075668335ms
	Processing time (w/o IO): 6147.725939750671ms
	Processing time (w/o IO): 6182.902932167053ms
	  Time (mean ± σ):     10.419 s ±  0.010 s    [User: 9.886 s, System: 0.337 s]
	  Range (min … max):   10.412 s … 10.427 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 3464.702258ms
	Processing time (w/o IO): 3509.892371ms
	Processing time (w/o IO): 3529.985406ms
	  Time (mean ± σ):      7.925 s ±  0.105 s    [User: 17.822 s, System: 0.376 s]
	  Range (min … max):    7.851 s …  7.999 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 24500ms
	Processing time (w/o IO): 21725ms
	Processing time (w/o IO): 21281ms
	  Time (mean ± σ):     22.319 s ±  0.301 s    [User: 22.359 s, System: 0.183 s]
	  Range (min … max):   22.106 s … 22.531 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 107225ms
	Processing time (w/o IO): 108539ms
	Processing time (w/o IO): 110848ms
	  Time (mean ± σ):     110.162 s ±  1.650 s    [User: 110.168 s, System: 0.141 s]
	  Range (min … max):   108.996 s … 111.329 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 41030ms
	Processing time (w/o IO): 41141ms
	Processing time (w/o IO): 41216ms
	  Time (mean ± σ):     42.090 s ±  0.009 s    [User: 41.650 s, System: 0.197 s]
	  Range (min … max):   42.083 s … 42.097 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 6412 ms
	Processing time (w/o IO): 6471 ms
	Processing time (w/o IO): 6427 ms
	  Time (mean ± σ):     13.704 s ±  0.208 s    [User: 14.505 s, System: 0.115 s]
	  Range (min … max):   13.558 s … 13.851 s    2 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 5280 ms
	Processing time (w/o IO): 5282 ms
	Processing time (w/o IO): 5280 ms
	  Time (mean ± σ):     11.013 s ±  0.010 s    [User: 10.886 s, System: 0.121 s]
	  Range (min … max):   11.006 s … 11.020 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 4119 ms
	Processing time (w/o IO): 4121 ms
	Processing time (w/o IO): 4116 ms
	  Time (mean ± σ):      4.484 s ±  0.002 s    [User: 11.029 s, System: 0.117 s]
	  Range (min … max):    4.483 s …  4.486 s    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 3559.338ms
	Processing time (w/o IO): 3556.959ms
	Processing time (w/o IO): 3564.176ms
	  Time (mean ± σ):      3.914 s ±  0.008 s    [User: 3.789 s, System: 0.114 s]
	  Range (min … max):    3.908 s …  3.920 s    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 5494ms
	Processing time (w/o IO): 5490ms
	Processing time (w/o IO): 5492ms
	  Time (mean ± σ):     16.238 s ±  0.034 s    [User: 17.056 s, System: 0.595 s]
	  Range (min … max):   16.214 s … 16.263 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 2509ms
	Processing time (w/o IO): 2437ms
	Processing time (w/o IO): 2432ms
	  Time (mean ± σ):     10.211 s ±  0.044 s    [User: 25.370 s, System: 0.590 s]
	  Range (min … max):   10.180 s … 10.242 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 2484ms
	Processing time (w/o IO): 2476ms
	Processing time (w/o IO): 2464ms
	  Time (mean ± σ):     12.971 s ±  0.144 s    [User: 28.771 s, System: 0.633 s]
	  Range (min … max):   12.869 s … 13.073 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 4130ms
	Processing time (w/o IO): 4133ms
	Processing time (w/o IO): 4131ms
	  Time (mean ± σ):     16.336 s ±  0.020 s    [User: 17.359 s, System: 0.539 s]
	  Range (min … max):   16.322 s … 16.350 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 6768.0178ms
	Processing time (w/o IO): 6778.0379ms
	Processing time (w/o IO): 6771.6019ms
	  Time (mean ± σ):      7.627 s ±  0.015 s    [User: 7.593 s, System: 0.190 s]
	  Range (min … max):    7.617 s …  7.638 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 5393.834ms
	Processing time (w/o IO): 5394.6069ms
	Processing time (w/o IO): 5395.399ms
	  Time (mean ± σ):      5.927 s ±  0.016 s    [User: 5.965 s, System: 0.134 s]
	  Range (min … max):    5.915 s …  5.938 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	12971.747159958	ms
	Processing time (w/o IO):	12941.779851913	ms
	Processing time (w/o IO):	12878.212928772	ms
	  Time (mean ± σ):     17.025 s ±  0.011 s    [User: 16.838 s, System: 0.177 s]
	  Range (min … max):   17.018 s … 17.033 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	150010.52594185	ms
	Processing time (w/o IO):	149997.70212173	ms
	  Time (abs ≡):        156.257 s               [User: 156.059 s, System: 0.168 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 32861ms
	Processing time (w/o IO): 32589ms
	Processing time (w/o IO): 32674ms
	  Time (mean ± σ):     34.091 s ±  0.048 s    [User: 33.740 s, System: 0.338 s]
	  Range (min … max):   34.057 s … 34.125 s    2 runs
	 
