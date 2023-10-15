Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 24.228107ms
	Processing time (w/o IO): 24.015704ms
	Processing time (w/o IO): 24.098705ms
	Processing time (w/o IO): 24.039304ms
	Processing time (w/o IO): 24.247308ms
	Processing time (w/o IO): 24.267207ms
	Processing time (w/o IO): 24.203707ms
	Processing time (w/o IO): 24.234808ms
	Processing time (w/o IO): 24.640015ms
	Processing time (w/o IO): 24.899319ms
	Processing time (w/o IO): 24.956519ms
	Processing time (w/o IO): 24.490012ms
	Processing time (w/o IO): 24.570012ms
	  Time (mean ± σ):      64.0 ms ±   1.2 ms    [User: 58.6 ms, System: 11.6 ms]
	  Range (min … max):    62.4 ms …  65.5 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 12.906817ms
	Processing time (w/o IO): 13.604729ms
	Processing time (w/o IO): 13.304723ms
	Processing time (w/o IO): 12.818215ms
	Processing time (w/o IO): 12.677213ms
	Processing time (w/o IO): 13.129421ms
	Processing time (w/o IO): 12.440309ms
	Processing time (w/o IO): 12.808515ms
	Processing time (w/o IO): 14.600946ms
	Processing time (w/o IO): 12.715614ms
	Processing time (w/o IO): 14.87245ms
	Processing time (w/o IO): 12.842816ms
	Processing time (w/o IO): 12.885617ms
	  Time (mean ± σ):      51.0 ms ±   1.1 ms    [User: 80.3 ms, System: 10.0 ms]
	  Range (min … max):    49.3 ms …  53.3 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 23.538908ms
	Processing time (w/o IO): 23.464106ms
	Processing time (w/o IO): 23.371704ms
	Processing time (w/o IO): 23.438605ms
	Processing time (w/o IO): 23.64481ms
	Processing time (w/o IO): 23.426505ms
	Processing time (w/o IO): 23.431506ms
	Processing time (w/o IO): 23.450906ms
	Processing time (w/o IO): 25.078734ms
	Processing time (w/o IO): 23.982615ms
	Processing time (w/o IO): 24.28412ms
	Processing time (w/o IO): 24.182218ms
	Processing time (w/o IO): 23.488106ms
	  Time (mean ± σ):      39.9 ms ±   1.4 ms    [User: 33.8 ms, System: 6.1 ms]
	  Range (min … max):    38.3 ms …  42.9 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 25.245728ms
	Processing time (w/o IO): 14.720049ms
	Processing time (w/o IO): 14.18214ms
	Processing time (w/o IO): 14.069938ms
	Processing time (w/o IO): 14.018938ms
	Processing time (w/o IO): 14.860252ms
	Processing time (w/o IO): 14.22134ms
	Processing time (w/o IO): 15.344959ms
	Processing time (w/o IO): 14.292342ms
	Processing time (w/o IO): 14.14924ms
	Processing time (w/o IO): 14.407044ms
	Processing time (w/o IO): 14.255042ms
	Processing time (w/o IO): 13.981037ms
	  Time (mean ± σ):      30.4 ms ±   0.4 ms    [User: 33.0 ms, System: 9.5 ms]
	  Range (min … max):    29.9 ms …  31.0 ms    10 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 32.589ms
	Processing time (w/o IO): 32.971ms
	Processing time (w/o IO): 33.038ms
	Processing time (w/o IO): 33.044ms
	Processing time (w/o IO): 33.107ms
	Processing time (w/o IO): 32.971ms
	Processing time (w/o IO): 32.973ms
	Processing time (w/o IO): 33.116ms
	Processing time (w/o IO): 32.879ms
	Processing time (w/o IO): 32.667ms
	Processing time (w/o IO): 32.996ms
	Processing time (w/o IO): 33.016ms
	Processing time (w/o IO): 32.999ms
	  Time (mean ± σ):     114.4 ms ±   2.7 ms    [User: 104.2 ms, System: 11.4 ms]
	  Range (min … max):   112.5 ms … 121.3 ms    10 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 22.115ms
	Processing time (w/o IO): 21.621ms
	Processing time (w/o IO): 21.134ms
	Processing time (w/o IO): 20.263ms
	Processing time (w/o IO): 21.76ms
	Processing time (w/o IO): 22.025ms
	Processing time (w/o IO): 20.482ms
	Processing time (w/o IO): 23.119ms
	Processing time (w/o IO): 22.069ms
	Processing time (w/o IO): 20.787ms
	Processing time (w/o IO): 20.016ms
	Processing time (w/o IO): 22.165ms
	Processing time (w/o IO): 22.337ms
	  Time (mean ± σ):     101.7 ms ±   1.0 ms    [User: 137.3 ms, System: 12.1 ms]
	  Range (min … max):   100.1 ms … 103.6 ms    10 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 36 ms
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
	  Time (mean ± σ):     236.8 ms ±   1.5 ms    [User: 205.2 ms, System: 31.5 ms]
	  Range (min … max):   234.6 ms … 239.2 ms    10 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 19 ms
	Processing time (w/o IO): 18 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 17 ms
	  Time (mean ± σ):     231.6 ms ±   2.1 ms    [User: 230.3 ms, System: 42.3 ms]
	  Range (min … max):   228.3 ms … 235.2 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 1.479s
	Processing time (w/o IO): 1.454s
	Processing time (w/o IO): 1.462s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.476s
	Processing time (w/o IO): 1.470s
	Processing time (w/o IO): 1.461s
	Processing time (w/o IO): 1.475s
	Processing time (w/o IO): 1.467s
	Processing time (w/o IO): 1.459s
	Processing time (w/o IO): 1.473s
	Processing time (w/o IO): 1.475s
	Processing time (w/o IO): 1.548s
	  Time (mean ± σ):      1.544 s ±  0.026 s    [User: 1.527 s, System: 0.016 s]
	  Range (min … max):    1.526 s …  1.614 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 348.6ms
	Processing time (w/o IO): 348.7ms
	Processing time (w/o IO): 347.6ms
	Processing time (w/o IO): 346.4ms
	Processing time (w/o IO): 347.8ms
	Processing time (w/o IO): 347.8ms
	Processing time (w/o IO): 347.0ms
	Processing time (w/o IO): 349.9ms
	Processing time (w/o IO): 348.0ms
	Processing time (w/o IO): 347.7ms
	Processing time (w/o IO): 347.9ms
	Processing time (w/o IO): 349.2ms
	Processing time (w/o IO): 348.5ms
	  Time (mean ± σ):     653.6 ms ±  66.7 ms    [User: 825.0 ms, System: 417.8 ms]
	  Range (min … max):   623.6 ms … 838.2 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 65.416111ms
	Processing time (w/o IO): 65.070507ms
	Processing time (w/o IO): 65.212808ms
	Processing time (w/o IO): 64.956706ms
	Processing time (w/o IO): 65.087308ms
	Processing time (w/o IO): 65.065407ms
	Processing time (w/o IO): 64.936807ms
	Processing time (w/o IO): 65.134908ms
	Processing time (w/o IO): 65.35541ms
	Processing time (w/o IO): 65.31671ms
	Processing time (w/o IO): 65.794414ms
	Processing time (w/o IO): 65.238509ms
	Processing time (w/o IO): 64.933707ms
	  Time (mean ± σ):     116.0 ms ±   1.5 ms    [User: 106.5 ms, System: 9.4 ms]
	  Range (min … max):   113.5 ms … 118.2 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 29ms
	  Time (mean ± σ):      74.3 ms ±   0.3 ms    [User: 69.0 ms, System: 5.4 ms]
	  Range (min … max):    74.0 ms …  75.1 ms    10 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	  Time (mean ± σ):     469.7 ms ±  15.7 ms    [User: 371.7 ms, System: 201.6 ms]
	  Range (min … max):   449.0 ms … 491.8 ms    10 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 19 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 17 milliseconds
	  Time (mean ± σ):     469.7 ms ±  22.3 ms    [User: 408.9 ms, System: 211.3 ms]
	  Range (min … max):   443.2 ms … 508.2 ms    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  47.137161ms
	Processing time (w/o IO):  47.335764ms
	Processing time (w/o IO):  47.403165ms
	Processing time (w/o IO):  47.527668ms
	Processing time (w/o IO):  47.61037ms
	Processing time (w/o IO):  47.339365ms
	Processing time (w/o IO):  47.233962ms
	Processing time (w/o IO):  47.772673ms
	Processing time (w/o IO):  47.168061ms
	Processing time (w/o IO):  47.699171ms
	Processing time (w/o IO):  47.743823ms
	Processing time (w/o IO):  47.296314ms
	Processing time (w/o IO):  47.809824ms
	  Time (mean ± σ):     266.1 ms ±   0.9 ms    [User: 256.9 ms, System: 9.2 ms]
	  Range (min … max):   265.0 ms … 267.2 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 51.379ms
	Processing time (w/o IO): 51.606ms
	Processing time (w/o IO): 51.163ms
	Processing time (w/o IO): 51.483ms
	Processing time (w/o IO): 51.256ms
	Processing time (w/o IO): 51.383ms
	Processing time (w/o IO): 51.405ms
	Processing time (w/o IO): 51.167ms
	Processing time (w/o IO): 51.341ms
	Processing time (w/o IO): 51.225ms
	Processing time (w/o IO): 51.453ms
	Processing time (w/o IO): 51.214ms
	Processing time (w/o IO): 51.292ms
	  Time (mean ± σ):     371.0 ms ±   1.7 ms    [User: 344.8 ms, System: 26.1 ms]
	  Range (min … max):   367.8 ms … 373.5 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 129ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 133ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 131ms
	  Time (mean ± σ):     513.1 ms ±   9.9 ms    [User: 636.2 ms, System: 98.3 ms]
	  Range (min … max):   493.4 ms … 529.2 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 187ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	  Time (mean ± σ):     312.8 ms ±   1.1 ms    [User: 295.8 ms, System: 21.1 ms]
	  Range (min … max):   310.1 ms … 314.4 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 50.65500736236572ms
	Processing time (w/o IO): 50.51600933074951ms
	Processing time (w/o IO): 50.938963890075684ms
	Processing time (w/o IO): 50.889015197753906ms
	Processing time (w/o IO): 50.54497718811035ms
	Processing time (w/o IO): 51.08797550201416ms
	Processing time (w/o IO): 51.00703239440918ms
	Processing time (w/o IO): 51.25999450683594ms
	Processing time (w/o IO): 50.720930099487305ms
	Processing time (w/o IO): 50.55499076843262ms
	Processing time (w/o IO): 50.85599422454834ms
	Processing time (w/o IO): 50.814032554626465ms
	Processing time (w/o IO): 50.7810115814209ms
	  Time (mean ± σ):     409.9 ms ±   5.7 ms    [User: 355.6 ms, System: 34.7 ms]
	  Range (min … max):   402.7 ms … 421.2 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 31.628538ms
	Processing time (w/o IO): 31.856043ms
	Processing time (w/o IO): 31.485037ms
	Processing time (w/o IO): 31.002329ms
	Processing time (w/o IO): 31.371735ms
	Processing time (w/o IO): 32.795759ms
	Processing time (w/o IO): 31.10123ms
	Processing time (w/o IO): 31.535038ms
	Processing time (w/o IO): 31.164931ms
	Processing time (w/o IO): 31.67484ms
	Processing time (w/o IO): 31.67344ms
	Processing time (w/o IO): 31.988645ms
	Processing time (w/o IO): 31.004829ms
	  Time (mean ± σ):     398.6 ms ±  12.2 ms    [User: 424.0 ms, System: 39.3 ms]
	  Range (min … max):   389.7 ms … 431.2 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 129ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 134ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 184ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 124ms
	Processing time (w/o IO): 130ms
	  Time (mean ± σ):     314.1 ms ±  25.3 ms    [User: 309.5 ms, System: 60.6 ms]
	  Range (min … max):   295.4 ms … 366.5 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 120ms
	Processing time (w/o IO): 124ms
	Processing time (w/o IO): 118ms
	Processing time (w/o IO): 119ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 124ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 118ms
	Processing time (w/o IO): 119ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 124ms
	Processing time (w/o IO): 117ms
	  Time (mean ± σ):     178.5 ms ±   5.9 ms    [User: 196.4 ms, System: 35.7 ms]
	  Range (min … max):   170.7 ms … 189.7 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 194ms
	Processing time (w/o IO): 198ms
	Processing time (w/o IO): 196ms
	Processing time (w/o IO): 136ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 197ms
	Processing time (w/o IO): 195ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 198ms
	Processing time (w/o IO): 194ms
	Processing time (w/o IO): 198ms
	Processing time (w/o IO): 193ms
	Processing time (w/o IO): 193ms
	  Time (mean ± σ):     250.4 ms ±  25.8 ms    [User: 247.5 ms, System: 28.9 ms]
	  Range (min … max):   199.5 ms … 265.4 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	  Time (mean ± σ):     391.8 ms ±   8.2 ms    [User: 699.4 ms, System: 52.4 ms]
	  Range (min … max):   378.1 ms … 407.2 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	  Time (mean ± σ):     142.9 ms ±   1.5 ms    [User: 132.6 ms, System: 10.3 ms]
	  Range (min … max):   140.0 ms … 145.5 ms    10 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 49 ms
	Processing time (w/o IO): 45 ms
	  Time (mean ± σ):      78.6 ms ±   2.6 ms    [User: 141.6 ms, System: 10.5 ms]
	  Range (min … max):    75.3 ms …  82.4 ms    10 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 30.557ms
	Processing time (w/o IO): 30.256ms
	Processing time (w/o IO): 30.197ms
	Processing time (w/o IO): 30.407ms
	Processing time (w/o IO): 30.209ms
	Processing time (w/o IO): 30.59ms
	Processing time (w/o IO): 30.285ms
	Processing time (w/o IO): 30.206ms
	Processing time (w/o IO): 30.204ms
	Processing time (w/o IO): 30.225ms
	Processing time (w/o IO): 30.189ms
	Processing time (w/o IO): 30.193ms
	Processing time (w/o IO): 30.384ms
	  Time (mean ± σ):      54.8 ms ±   0.6 ms    [User: 44.7 ms, System: 10.0 ms]
	  Range (min … max):    54.2 ms …  55.8 ms    10 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 45ms
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 45ms
	Processing time (w/o IO): 45ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 44ms
	  Time (mean ± σ):     907.0 ms ±  10.9 ms    [User: 979.4 ms, System: 90.4 ms]
	  Range (min … max):   897.6 ms … 927.6 ms    10 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 22ms
	Processing time (w/o IO): 22ms
	Processing time (w/o IO): 23ms
	Processing time (w/o IO): 22ms
	Processing time (w/o IO): 25ms
	Processing time (w/o IO): 22ms
	Processing time (w/o IO): 22ms
	Processing time (w/o IO): 22ms
	Processing time (w/o IO): 22ms
	Processing time (w/o IO): 22ms
	Processing time (w/o IO): 22ms
	Processing time (w/o IO): 22ms
	Processing time (w/o IO): 22ms
	  Time (mean ± σ):     892.6 ms ±   8.0 ms    [User: 1055.1 ms, System: 85.9 ms]
	  Range (min … max):   882.9 ms … 906.0 ms    10 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	  Time (mean ± σ):     712.9 ms ±   2.6 ms    [User: 772.6 ms, System: 87.1 ms]
	  Range (min … max):   707.4 ms … 717.4 ms    10 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 33ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 33ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 33ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	  Time (mean ± σ):     746.9 ms ±   2.3 ms    [User: 712.4 ms, System: 76.7 ms]
	  Range (min … max):   742.2 ms … 750.9 ms    10 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 57.8ms
	Processing time (w/o IO): 58.0945ms
	Processing time (w/o IO): 57.9936ms
	Processing time (w/o IO): 57.9854ms
	Processing time (w/o IO): 57.854ms
	Processing time (w/o IO): 57.9631ms
	Processing time (w/o IO): 57.6802ms
	Processing time (w/o IO): 57.8884ms
	Processing time (w/o IO): 57.948ms
	Processing time (w/o IO): 57.9037ms
	Processing time (w/o IO): 57.7876ms
	Processing time (w/o IO): 57.7644ms
	Processing time (w/o IO): 57.4394ms
	  Time (mean ± σ):     199.9 ms ±   5.4 ms    [User: 159.4 ms, System: 23.0 ms]
	  Range (min … max):   195.2 ms … 214.2 ms    10 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 42.6335ms
	Processing time (w/o IO): 42.8966ms
	Processing time (w/o IO): 42.6194ms
	Processing time (w/o IO): 42.9791ms
	Processing time (w/o IO): 42.4397ms
	Processing time (w/o IO): 42.6791ms
	Processing time (w/o IO): 42.5867ms
	Processing time (w/o IO): 42.6716ms
	Processing time (w/o IO): 42.684ms
	Processing time (w/o IO): 42.6732ms
	Processing time (w/o IO): 42.6961ms
	Processing time (w/o IO): 42.7122ms
	Processing time (w/o IO): 42.4845ms
	  Time (mean ± σ):      86.2 ms ±   0.9 ms    [User: 75.7 ms, System: 20.7 ms]
	  Range (min … max):    84.7 ms …  87.9 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	88.17195892334	ms
	Processing time (w/o IO):	104.52318191528	ms
	Processing time (w/o IO):	109.4229221344	ms
	Processing time (w/o IO):	88.330030441284	ms
	Processing time (w/o IO):	103.47390174866	ms
	Processing time (w/o IO):	112.84184455872	ms
	Processing time (w/o IO):	87.512016296387	ms
	Processing time (w/o IO):	111.33790016174	ms
	Processing time (w/o IO):	105.96799850464	ms
	Processing time (w/o IO):	114.1459941864	ms
	Processing time (w/o IO):	113.70491981506	ms
	Processing time (w/o IO):	106.36591911316	ms
	Processing time (w/o IO):	112.99705505371	ms
	  Time (mean ± σ):     347.7 ms ±  16.3 ms    [User: 330.8 ms, System: 16.9 ms]
	  Range (min … max):   318.1 ms … 367.8 ms    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1092.0829772949	ms
	Processing time (w/o IO):	1091.0308361053	ms
	Processing time (w/o IO):	1094.3768024445	ms
	Processing time (w/o IO):	1092.4730300903	ms
	Processing time (w/o IO):	1116.5471076965	ms
	Processing time (w/o IO):	1098.0470180511	ms
	Processing time (w/o IO):	1089.2169475555	ms
	Processing time (w/o IO):	1091.7479991913	ms
	Processing time (w/o IO):	1092.9930210114	ms
	Processing time (w/o IO):	1091.2461280823	ms
	Processing time (w/o IO):	1090.6269550323	ms
	Processing time (w/o IO):	1091.5219783783	ms
	Processing time (w/o IO):	1091.4430618286	ms
	  Time (mean ± σ):      1.517 s ±  0.008 s    [User: 1.498 s, System: 0.018 s]
	  Range (min … max):    1.510 s …  1.539 s    10 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 146ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 145ms
	Processing time (w/o IO): 143ms
	Processing time (w/o IO): 144ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 146ms
	Processing time (w/o IO): 143ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 152ms
	Processing time (w/o IO): 149ms
	Processing time (w/o IO): 149ms
	  Time (mean ± σ):     236.0 ms ±   6.1 ms    [User: 205.9 ms, System: 29.1 ms]
	  Range (min … max):   229.2 ms … 247.4 ms    10 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 371.33297ms
	Processing time (w/o IO): 370.830462ms
	Processing time (w/o IO): 371.522873ms
	  Time (mean ± σ):     521.1 ms ±  11.2 ms    [User: 511.5 ms, System: 43.6 ms]
	  Range (min … max):   513.2 ms … 529.1 ms    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 168.686049ms
	Processing time (w/o IO): 170.837584ms
	Processing time (w/o IO): 168.620648ms
	  Time (mean ± σ):     315.1 ms ±   3.2 ms    [User: 790.2 ms, System: 41.2 ms]
	  Range (min … max):   312.8 ms … 317.4 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 340.402448ms
	Processing time (w/o IO): 341.785472ms
	Processing time (w/o IO): 340.658553ms
	  Time (mean ± σ):     403.8 ms ±   0.5 ms    [User: 370.4 ms, System: 33.3 ms]
	  Range (min … max):   403.4 ms … 404.1 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 181.571566ms
	Processing time (w/o IO): 178.86272ms
	Processing time (w/o IO): 185.562933ms
	  Time (mean ± σ):     242.5 ms ±   4.4 ms    [User: 390.2 ms, System: 27.2 ms]
	  Range (min … max):   239.4 ms … 245.7 ms    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 444.739ms
	Processing time (w/o IO): 442.405ms
	Processing time (w/o IO): 443.078ms
	  Time (mean ± σ):     742.8 ms ±   1.5 ms    [User: 729.6 ms, System: 17.3 ms]
	  Range (min … max):   741.8 ms … 743.9 ms    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 240.968ms
	Processing time (w/o IO): 241.073ms
	Processing time (w/o IO): 239.352ms
	  Time (mean ± σ):     540.3 ms ±   6.2 ms    [User: 1178.4 ms, System: 25.3 ms]
	  Range (min … max):   535.9 ms … 544.7 ms    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 519 ms
	Processing time (w/o IO): 520 ms
	Processing time (w/o IO): 520 ms
	  Time (mean ± σ):      1.362 s ±  0.005 s    [User: 1.250 s, System: 0.112 s]
	  Range (min … max):    1.358 s …  1.366 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 204 ms
	Processing time (w/o IO): 207 ms
	Processing time (w/o IO): 209 ms
	  Time (mean ± σ):      1.094 s ±  0.008 s    [User: 1.557 s, System: 0.125 s]
	  Range (min … max):    1.088 s …  1.099 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 23.553s
	Processing time (w/o IO): 23.517s
	  Time (abs ≡):        23.683 s               [User: 23.632 s, System: 0.043 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 5.905s
	Processing time (w/o IO): 6.726s
	Processing time (w/o IO): 6.620s
	  Time (mean ± σ):      7.172 s ±  0.097 s    [User: 5.018 s, System: 2.747 s]
	  Range (min … max):    7.104 s …  7.240 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 973.606947ms
	Processing time (w/o IO): 979.014938ms
	Processing time (w/o IO): 973.623247ms
	  Time (mean ± σ):      1.204 s ±  0.018 s    [User: 1.160 s, System: 0.033 s]
	  Range (min … max):    1.192 s …  1.217 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 427ms
	Processing time (w/o IO): 444ms
	Processing time (w/o IO): 427ms
	  Time (mean ± σ):     630.1 ms ±  22.5 ms    [User: 595.3 ms, System: 33.4 ms]
	  Range (min … max):   614.2 ms … 646.0 ms    2 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 478 milliseconds
	Processing time (w/o IO): 477 milliseconds
	Processing time (w/o IO): 477 milliseconds
	  Time (mean ± σ):      1.132 s ±  0.010 s    [User: 1.004 s, System: 0.231 s]
	  Range (min … max):    1.125 s …  1.138 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 221 milliseconds
	Processing time (w/o IO): 223 milliseconds
	Processing time (w/o IO): 225 milliseconds
	  Time (mean ± σ):     935.2 ms ±   3.6 ms    [User: 1451.9 ms, System: 240.1 ms]
	  Range (min … max):   932.7 ms … 937.8 ms    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  573.882202ms
	Processing time (w/o IO):  578.378179ms
	Processing time (w/o IO):  574.963122ms
	  Time (mean ± σ):      1.368 s ±  0.002 s    [User: 1.342 s, System: 0.025 s]
	  Range (min … max):    1.366 s …  1.369 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 756.613ms
	Processing time (w/o IO): 756.418ms
	Processing time (w/o IO): 758.294ms
	  Time (mean ± σ):     10.401 s ±  0.145 s    [User: 10.278 s, System: 0.119 s]
	  Range (min … max):   10.299 s … 10.504 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 2122ms
	Processing time (w/o IO): 2421ms
	Processing time (w/o IO): 2369ms
	  Time (mean ± σ):      3.069 s ±  0.047 s    [User: 3.276 s, System: 0.148 s]
	  Range (min … max):    3.036 s …  3.102 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 2884ms
	Processing time (w/o IO): 2881ms
	Processing time (w/o IO): 2896ms
	  Time (mean ± σ):      3.399 s ±  0.003 s    [User: 3.351 s, System: 0.068 s]
	  Range (min … max):    3.398 s …  3.401 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 718.1229591369629ms
	Processing time (w/o IO): 720.1499938964844ms
	Processing time (w/o IO): 720.7028865814209ms
	  Time (mean ± σ):      2.154 s ±  0.016 s    [User: 1.998 s, System: 0.120 s]
	  Range (min … max):    2.142 s …  2.165 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 393.39815ms
	Processing time (w/o IO): 392.537637ms
	Processing time (w/o IO): 392.969843ms
	  Time (mean ± σ):      1.816 s ±  0.003 s    [User: 2.769 s, System: 0.153 s]
	  Range (min … max):    1.814 s …  1.819 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 2613ms
	Processing time (w/o IO): 2020ms
	Processing time (w/o IO): 2013ms
	  Time (mean ± σ):      2.347 s ±  0.006 s    [User: 2.342 s, System: 0.105 s]
	  Range (min … max):    2.343 s …  2.351 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 1416ms
	Processing time (w/o IO): 1413ms
	Processing time (w/o IO): 1414ms
	  Time (mean ± σ):      1.568 s ±  0.002 s    [User: 1.571 s, System: 0.074 s]
	  Range (min … max):    1.567 s …  1.569 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 1814ms
	Processing time (w/o IO): 2036ms
	Processing time (w/o IO): 1801ms
	  Time (mean ± σ):      2.550 s ±  0.259 s    [User: 2.077 s, System: 0.055 s]
	  Range (min … max):    2.367 s …  2.733 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 753 ms
	Processing time (w/o IO): 780 ms
	Processing time (w/o IO): 771 ms
	  Time (mean ± σ):      1.942 s ±  0.020 s    [User: 2.561 s, System: 0.081 s]
	  Range (min … max):    1.928 s …  1.956 s    2 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 744 ms
	Processing time (w/o IO): 744 ms
	Processing time (w/o IO): 742 ms
	  Time (mean ± σ):      1.586 s ±  0.001 s    [User: 1.534 s, System: 0.051 s]
	  Range (min … max):    1.586 s …  1.587 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 461 ms
	Processing time (w/o IO): 463 ms
	Processing time (w/o IO): 465 ms
	  Time (mean ± σ):     564.3 ms ±   1.7 ms    [User: 1297.2 ms, System: 31.5 ms]
	  Range (min … max):   563.1 ms … 565.5 ms    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 521.838ms
	Processing time (w/o IO): 522.0700000000001ms
	Processing time (w/o IO): 521.4160000000001ms
	  Time (mean ± σ):     626.6 ms ±   0.4 ms    [User: 591.0 ms, System: 35.4 ms]
	  Range (min … max):   626.3 ms … 626.9 ms    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 623ms
	Processing time (w/o IO): 622ms
	Processing time (w/o IO): 622ms
	  Time (mean ± σ):      3.297 s ±  0.020 s    [User: 3.231 s, System: 0.270 s]
	  Range (min … max):    3.282 s …  3.311 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 282ms
	Processing time (w/o IO): 290ms
	Processing time (w/o IO): 285ms
	  Time (mean ± σ):      2.712 s ±  0.013 s    [User: 4.300 s, System: 0.272 s]
	  Range (min … max):    2.703 s …  2.722 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 242ms
	Processing time (w/o IO): 242ms
	Processing time (w/o IO): 242ms
	  Time (mean ± σ):      3.510 s ±  0.010 s    [User: 5.181 s, System: 0.374 s]
	  Range (min … max):    3.503 s …  3.517 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 484ms
	Processing time (w/o IO): 485ms
	Processing time (w/o IO): 486ms
	  Time (mean ± σ):      4.021 s ±  0.022 s    [User: 4.234 s, System: 0.437 s]
	  Range (min … max):    4.005 s …  4.036 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 773.4933ms
	Processing time (w/o IO): 772.315ms
	Processing time (w/o IO): 772.9809ms
	  Time (mean ± σ):      1.089 s ±  0.006 s    [User: 1.042 s, System: 0.062 s]
	  Range (min … max):    1.085 s …  1.094 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 614.771ms
	Processing time (w/o IO): 613.749ms
	Processing time (w/o IO): 614.9211ms
	  Time (mean ± σ):     782.5 ms ±   1.9 ms    [User: 770.0 ms, System: 57.3 ms]
	  Range (min … max):   781.1 ms … 783.8 ms    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	1518.9988613129	ms
	Processing time (w/o IO):	1151.4568328857	ms
	Processing time (w/o IO):	1478.2209396362	ms
	  Time (mean ± σ):      2.580 s ±  0.200 s    [User: 2.509 s, System: 0.070 s]
	  Range (min … max):    2.439 s …  2.721 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	16744.538068771	ms
	Processing time (w/o IO):	16748.116970062	ms
	  Time (abs ≡):        18.509 s               [User: 18.448 s, System: 0.055 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 2697ms
	Processing time (w/o IO): 2651ms
	Processing time (w/o IO): 2642ms
	  Time (mean ± σ):      3.053 s ±  0.008 s    [User: 2.892 s, System: 0.157 s]
	  Range (min … max):    3.047 s …  3.058 s    2 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 3.277220494s
	Processing time (w/o IO): 3.270642196s
	Processing time (w/o IO): 3.276347193s
	  Time (mean ± σ):      3.747 s ±  0.002 s    [User: 3.770 s, System: 0.108 s]
	  Range (min … max):    3.746 s …  3.749 s    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1.426770691s
	Processing time (w/o IO): 1.420428284s
	Processing time (w/o IO): 1.417399433s
	  Time (mean ± σ):      1.881 s ±  0.004 s    [User: 6.111 s, System: 0.098 s]
	  Range (min … max):    1.878 s …  1.883 s    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 3.036532031s
	Processing time (w/o IO): 3.033715768s
	Processing time (w/o IO): 3.037465332s
	  Time (mean ± σ):      3.239 s ±  0.007 s    [User: 3.167 s, System: 0.067 s]
	  Range (min … max):    3.234 s …  3.245 s    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 1.580367449s
	Processing time (w/o IO): 1.577251696s
	Processing time (w/o IO): 1.572114908s
	  Time (mean ± σ):      1.784 s ±  0.001 s    [User: 3.257 s, System: 0.078 s]
	  Range (min … max):    1.784 s …  1.785 s    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 3834.81ms
	Processing time (w/o IO): 3832.86ms
	Processing time (w/o IO): 3832.38ms
	  Time (mean ± σ):      4.784 s ±  0.004 s    [User: 4.667 s, System: 0.117 s]
	  Range (min … max):    4.781 s …  4.787 s    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 2042ms
	Processing time (w/o IO): 2049.31ms
	Processing time (w/o IO): 2043.99ms
	  Time (mean ± σ):      2.994 s ±  0.011 s    [User: 8.843 s, System: 0.114 s]
	  Range (min … max):    2.986 s …  3.001 s    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 4575 ms
	Processing time (w/o IO): 4578 ms
	Processing time (w/o IO): 4573 ms
	  Time (mean ± σ):      7.199 s ±  0.010 s    [User: 6.679 s, System: 0.324 s]
	  Range (min … max):    7.192 s …  7.206 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 1755 ms
	Processing time (w/o IO): 1750 ms
	Processing time (w/o IO): 1749 ms
	  Time (mean ± σ):      4.470 s ±  0.098 s    [User: 9.157 s, System: 0.324 s]
	  Range (min … max):    4.400 s …  4.539 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 213.801s
	Processing time (w/o IO): 212.524s
	  Time (abs ≡):        212.987 s               [User: 212.782 s, System: 0.175 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 8652.528798ms
	Processing time (w/o IO): 8645.156202ms
	Processing time (w/o IO): 8653.571732ms
	  Time (mean ± σ):      9.354 s ±  0.003 s    [User: 9.253 s, System: 0.093 s]
	  Range (min … max):    9.353 s …  9.356 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 3816ms
	Processing time (w/o IO): 3818ms
	Processing time (w/o IO): 3815ms
	  Time (mean ± σ):      4.413 s ±  0.002 s    [User: 4.342 s, System: 0.059 s]
	  Range (min … max):    4.411 s …  4.414 s    2 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 4216 milliseconds
	Processing time (w/o IO): 4223 milliseconds
	Processing time (w/o IO): 4214 milliseconds
	  Time (mean ± σ):      5.229 s ±  0.035 s    [User: 5.016 s, System: 0.311 s]
	  Range (min … max):    5.205 s …  5.254 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 1941 milliseconds
	Processing time (w/o IO): 1941 milliseconds
	Processing time (w/o IO): 1940 milliseconds
	  Time (mean ± σ):      2.942 s ±  0.008 s    [User: 8.497 s, System: 0.314 s]
	  Range (min … max):    2.936 s …  2.947 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  6.04882267s
	Processing time (w/o IO):  6.035892506s
	Processing time (w/o IO):  6.051792371s
	  Time (mean ± σ):      8.449 s ±  0.021 s    [User: 8.370 s, System: 0.073 s]
	  Range (min … max):    8.435 s …  8.464 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 6.662s
	Processing time (w/o IO): 6.660s
	Processing time (w/o IO): 6.659s
	  Time (mean ± σ):     81.034 s ±  0.781 s    [User: 80.626 s, System: 0.394 s]
	  Range (min … max):   80.481 s … 81.586 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 21114ms
	Processing time (w/o IO): 21105ms
	Processing time (w/o IO): 20895ms
	  Time (mean ± σ):     22.487 s ±  0.140 s    [User: 22.643 s, System: 0.297 s]
	  Range (min … max):   22.388 s … 22.586 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 25790ms
	Processing time (w/o IO): 25727ms
	Processing time (w/o IO): 25790ms
	  Time (mean ± σ):     27.252 s ±  0.028 s    [User: 27.201 s, System: 0.152 s]
	  Range (min … max):   27.233 s … 27.272 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 6184.640049934387ms
	Processing time (w/o IO): 6199.096083641052ms
	Processing time (w/o IO): 6174.301028251648ms
	  Time (mean ± σ):     10.522 s ±  0.115 s    [User: 10.027 s, System: 0.346 s]
	  Range (min … max):   10.441 s … 10.604 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 3428.822364ms
	Processing time (w/o IO): 3428.895043ms
	Processing time (w/o IO): 3443.87782ms
	  Time (mean ± σ):      7.798 s ±  0.008 s    [User: 17.443 s, System: 0.358 s]
	  Range (min … max):    7.792 s …  7.804 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 18656ms
	Processing time (w/o IO): 24166ms
	Processing time (w/o IO): 24087ms
	  Time (mean ± σ):     24.967 s ±  0.045 s    [User: 25.051 s, System: 0.183 s]
	  Range (min … max):   24.935 s … 24.999 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 12978ms
	Processing time (w/o IO): 11278ms
	Processing time (w/o IO): 14330ms
	  Time (mean ± σ):     13.270 s ±  2.156 s    [User: 13.256 s, System: 0.147 s]
	  Range (min … max):   11.746 s … 14.795 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 19356ms
	Processing time (w/o IO): 17872ms
	Processing time (w/o IO): 18006ms
	  Time (mean ± σ):     18.601 s ±  0.362 s    [User: 18.383 s, System: 0.199 s]
	  Range (min … max):   18.345 s … 18.857 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 6432 ms
	Processing time (w/o IO): 6475 ms
	Processing time (w/o IO): 6427 ms
	  Time (mean ± σ):     13.609 s ±  0.021 s    [User: 14.342 s, System: 0.148 s]
	  Range (min … max):   13.594 s … 13.624 s    2 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 7515 ms
	Processing time (w/o IO): 7519 ms
	Processing time (w/o IO): 7519 ms
	  Time (mean ± σ):     15.501 s ±  0.008 s    [User: 15.387 s, System: 0.109 s]
	  Range (min … max):   15.495 s … 15.507 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 4117 ms
	Processing time (w/o IO): 4129 ms
	Processing time (w/o IO): 4113 ms
	  Time (mean ± σ):      4.486 s ±  0.010 s    [User: 11.046 s, System: 0.114 s]
	  Range (min … max):    4.479 s …  4.493 s    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 4603.355ms
	Processing time (w/o IO): 4613.91ms
	Processing time (w/o IO): 4608.509ms
	  Time (mean ± σ):      4.958 s ±  0.007 s    [User: 4.842 s, System: 0.111 s]
	  Range (min … max):    4.953 s …  4.963 s    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 5502ms
	Processing time (w/o IO): 5504ms
	Processing time (w/o IO): 5498ms
	  Time (mean ± σ):     16.347 s ±  0.017 s    [User: 17.144 s, System: 0.572 s]
	  Range (min … max):   16.334 s … 16.359 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 2536ms
	Processing time (w/o IO): 2549ms
	Processing time (w/o IO): 2530ms
	  Time (mean ± σ):     10.493 s ±  0.007 s    [User: 26.186 s, System: 0.601 s]
	  Range (min … max):   10.488 s … 10.498 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 2036ms
	Processing time (w/o IO): 2035ms
	Processing time (w/o IO): 2037ms
	  Time (mean ± σ):     12.142 s ±  0.039 s    [User: 25.353 s, System: 0.561 s]
	  Range (min … max):   12.115 s … 12.169 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 4134ms
	Processing time (w/o IO): 4133ms
	Processing time (w/o IO): 4134ms
	  Time (mean ± σ):     16.402 s ±  0.009 s    [User: 17.421 s, System: 0.567 s]
	  Range (min … max):   16.396 s … 16.409 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 6771.4202ms
	Processing time (w/o IO): 6767.4458ms
	Processing time (w/o IO): 6774.1545ms
	  Time (mean ± σ):      7.649 s ±  0.013 s    [User: 7.673 s, System: 0.161 s]
	  Range (min … max):    7.640 s …  7.658 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 5396.121ms
	Processing time (w/o IO): 5408.1317ms
	Processing time (w/o IO): 5400.4666ms
	  Time (mean ± σ):      5.925 s ±  0.008 s    [User: 5.951 s, System: 0.141 s]
	  Range (min … max):    5.919 s …  5.930 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	13375.029802322	ms
	Processing time (w/o IO):	13157.99498558	ms
	Processing time (w/o IO):	11943.821907043	ms
	  Time (mean ± σ):     16.706 s ±  0.915 s    [User: 16.497 s, System: 0.192 s]
	  Range (min … max):   16.060 s … 17.353 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	149786.88812256	ms
	Processing time (w/o IO):	150209.79905128	ms
	  Time (abs ≡):        156.869 s               [User: 156.632 s, System: 0.203 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 34607ms
	Processing time (w/o IO): 34780ms
	Processing time (w/o IO): 35024ms
	  Time (mean ± σ):     36.341 s ±  0.190 s    [User: 35.544 s, System: 0.791 s]
	  Range (min … max):   36.207 s … 36.476 s    2 runs
	 
