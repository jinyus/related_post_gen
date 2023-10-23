Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 24.41583ms
	Processing time (w/o IO): 24.282928ms
	Processing time (w/o IO): 24.41713ms
	Processing time (w/o IO): 24.149326ms
	Processing time (w/o IO): 24.36453ms
	Processing time (w/o IO): 24.36243ms
	Processing time (w/o IO): 24.256828ms
	Processing time (w/o IO): 24.183926ms
	Processing time (w/o IO): 24.201727ms
	Processing time (w/o IO): 24.36583ms
	Processing time (w/o IO): 24.182527ms
	Processing time (w/o IO): 24.470731ms
	Processing time (w/o IO): 25.278946ms
	  Time (mean ± σ):      64.4 ms ±   1.0 ms    [User: 58.6 ms, System: 13.3 ms]
	  Range (min … max):    62.5 ms …  65.7 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 12.225816ms
	Processing time (w/o IO): 14.074648ms
	Processing time (w/o IO): 11.671106ms
	Processing time (w/o IO): 11.560904ms
	Processing time (w/o IO): 11.561604ms
	Processing time (w/o IO): 11.724507ms
	Processing time (w/o IO): 11.757908ms
	Processing time (w/o IO): 13.762843ms
	Processing time (w/o IO): 11.734007ms
	Processing time (w/o IO): 11.679406ms
	Processing time (w/o IO): 11.719907ms
	Processing time (w/o IO): 11.850809ms
	Processing time (w/o IO): 13.917045ms
	  Time (mean ± σ):      51.0 ms ±   1.8 ms    [User: 79.6 ms, System: 10.6 ms]
	  Range (min … max):    49.4 ms …  54.7 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 23.548614ms
	Processing time (w/o IO): 23.428512ms
	Processing time (w/o IO): 23.428312ms
	Processing time (w/o IO): 23.429513ms
	Processing time (w/o IO): 23.502414ms
	Processing time (w/o IO): 23.437713ms
	Processing time (w/o IO): 23.427312ms
	Processing time (w/o IO): 23.402912ms
	Processing time (w/o IO): 23.452712ms
	Processing time (w/o IO): 23.455513ms
	Processing time (w/o IO): 23.426613ms
	Processing time (w/o IO): 23.433213ms
	Processing time (w/o IO): 23.482313ms
	  Time (mean ± σ):      39.6 ms ±   0.1 ms    [User: 32.9 ms, System: 6.7 ms]
	  Range (min … max):    39.4 ms …  39.7 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 12.402719ms
	Processing time (w/o IO): 12.081913ms
	Processing time (w/o IO): 12.144114ms
	Processing time (w/o IO): 12.156815ms
	Processing time (w/o IO): 12.146414ms
	Processing time (w/o IO): 12.280216ms
	Processing time (w/o IO): 12.191715ms
	Processing time (w/o IO): 12.149315ms
	Processing time (w/o IO): 12.208716ms
	Processing time (w/o IO): 12.116113ms
	Processing time (w/o IO): 12.204715ms
	Processing time (w/o IO): 12.075313ms
	Processing time (w/o IO): 12.193915ms
	  Time (mean ± σ):      29.3 ms ±   0.5 ms    [User: 30.7 ms, System: 10.4 ms]
	  Range (min … max):    28.5 ms …  30.0 ms    10 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 25.494ms
	Processing time (w/o IO): 24.897ms
	Processing time (w/o IO): 24.652ms
	Processing time (w/o IO): 24.646ms
	Processing time (w/o IO): 24.766ms
	Processing time (w/o IO): 24.946ms
	Processing time (w/o IO): 24.753ms
	Processing time (w/o IO): 25.069ms
	Processing time (w/o IO): 25.156ms
	Processing time (w/o IO): 25.66ms
	Processing time (w/o IO): 25.086ms
	Processing time (w/o IO): 24.303ms
	Processing time (w/o IO): 25.77ms
	  Time (mean ± σ):     105.3 ms ±   1.0 ms    [User: 100.1 ms, System: 6.6 ms]
	  Range (min … max):   104.3 ms … 107.4 ms    10 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 13.069ms
	Processing time (w/o IO): 12.416ms
	Processing time (w/o IO): 13.687ms
	Processing time (w/o IO): 13.129ms
	Processing time (w/o IO): 13.089ms
	Processing time (w/o IO): 14.031ms
	Processing time (w/o IO): 12.355ms
	Processing time (w/o IO): 12.461ms
	Processing time (w/o IO): 13.223ms
	Processing time (w/o IO): 13.431ms
	Processing time (w/o IO): 12.917ms
	Processing time (w/o IO): 12.982ms
	Processing time (w/o IO): 12.912ms
	  Time (mean ± σ):      91.4 ms ±   0.9 ms    [User: 104.9 ms, System: 10.5 ms]
	  Range (min … max):    90.3 ms …  92.7 ms    10 runs
	 
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
	  Time (mean ± σ):     231.4 ms ±   2.2 ms    [User: 202.1 ms, System: 29.2 ms]
	  Range (min … max):   228.2 ms … 234.1 ms    10 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 18 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 18 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 19 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 18 ms
	Processing time (w/o IO): 16 ms
	  Time (mean ± σ):     237.1 ms ±   2.1 ms    [User: 246.2 ms, System: 34.3 ms]
	  Range (min … max):   232.6 ms … 240.2 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 1.476s
	Processing time (w/o IO): 1.456s
	Processing time (w/o IO): 1.459s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.481s
	Processing time (w/o IO): 1.466s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.484s
	Processing time (w/o IO): 1.461s
	Processing time (w/o IO): 1.458s
	Processing time (w/o IO): 1.509s
	Processing time (w/o IO): 1.455s
	Processing time (w/o IO): 1.462s
	  Time (mean ± σ):      1.537 s ±  0.017 s    [User: 1.522 s, System: 0.015 s]
	  Range (min … max):    1.522 s …  1.576 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 349.3ms
	Processing time (w/o IO): 352.0ms
	Processing time (w/o IO): 351.5ms
	Processing time (w/o IO): 353.0ms
	Processing time (w/o IO): 352.2ms
	Processing time (w/o IO): 353.4ms
	Processing time (w/o IO): 353.5ms
	Processing time (w/o IO): 358.9ms
	Processing time (w/o IO): 350.8ms
	Processing time (w/o IO): 351.6ms
	Processing time (w/o IO): 352.1ms
	Processing time (w/o IO): 351.4ms
	Processing time (w/o IO): 352.3ms
	  Time (mean ± σ):     643.2 ms ±  12.1 ms    [User: 839.1 ms, System: 417.5 ms]
	  Range (min … max):   636.5 ms … 675.3 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 60.442166ms
	Processing time (w/o IO): 60.166461ms
	Processing time (w/o IO): 60.185761ms
	Processing time (w/o IO): 67.195685ms
	Processing time (w/o IO): 60.536167ms
	Processing time (w/o IO): 60.818272ms
	Processing time (w/o IO): 60.908174ms
	Processing time (w/o IO): 60.587968ms
	Processing time (w/o IO): 60.402165ms
	Processing time (w/o IO): 60.658069ms
	Processing time (w/o IO): 60.491266ms
	Processing time (w/o IO): 60.64287ms
	Processing time (w/o IO): 60.109359ms
	  Time (mean ± σ):     111.8 ms ±   1.7 ms    [User: 99.7 ms, System: 11.8 ms]
	  Range (min … max):   109.6 ms … 115.9 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 29ms
	  Time (mean ± σ):      74.9 ms ±   1.0 ms    [User: 70.9 ms, System: 4.1 ms]
	  Range (min … max):    73.8 ms …  77.5 ms    10 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 31 milliseconds
	  Time (mean ± σ):     478.6 ms ±  14.4 ms    [User: 379.9 ms, System: 202.3 ms]
	  Range (min … max):   461.1 ms … 494.6 ms    10 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	  Time (mean ± σ):      1.004 s ±  0.009 s    [User: 0.872 s, System: 0.235 s]
	  Range (min … max):    0.988 s …  1.021 s    10 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 19 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 17 milliseconds
	  Time (mean ± σ):     465.7 ms ±  15.2 ms    [User: 409.9 ms, System: 207.1 ms]
	  Range (min … max):   453.3 ms … 490.1 ms    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  48.061443ms
	Processing time (w/o IO):  48.000142ms
	Processing time (w/o IO):  48.220346ms
	Processing time (w/o IO):  48.216846ms
	Processing time (w/o IO):  49.065382ms
	Processing time (w/o IO):  48.225668ms
	Processing time (w/o IO):  48.648775ms
	Processing time (w/o IO):  48.391271ms
	Processing time (w/o IO):  48.520373ms
	Processing time (w/o IO):  48.880679ms
	Processing time (w/o IO):  47.824861ms
	Processing time (w/o IO):  48.120665ms
	Processing time (w/o IO):  47.984363ms
	  Time (mean ± σ):     266.6 ms ±   0.6 ms    [User: 259.5 ms, System: 7.0 ms]
	  Range (min … max):   265.5 ms … 267.6 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 48.998ms
	Processing time (w/o IO): 49.089ms
	Processing time (w/o IO): 48.588ms
	Processing time (w/o IO): 48.804ms
	Processing time (w/o IO): 49.140ms
	Processing time (w/o IO): 48.678ms
	Processing time (w/o IO): 49.214ms
	Processing time (w/o IO): 48.883ms
	Processing time (w/o IO): 48.662ms
	Processing time (w/o IO): 48.865ms
	Processing time (w/o IO): 49.158ms
	Processing time (w/o IO): 48.632ms
	Processing time (w/o IO): 49.095ms
	  Time (mean ± σ):     380.7 ms ±  11.5 ms    [User: 347.7 ms, System: 33.0 ms]
	  Range (min … max):   374.6 ms … 412.9 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 168ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 163ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 176ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 169ms
	  Time (mean ± σ):     546.6 ms ±  13.7 ms    [User: 655.9 ms, System: 109.6 ms]
	  Range (min … max):   512.9 ms … 564.4 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 129ms
	Processing time (w/o IO): 129ms
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
	  Time (mean ± σ):     255.3 ms ±   1.8 ms    [User: 239.1 ms, System: 20.3 ms]
	  Range (min … max):   252.9 ms … 258.7 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 51.122069358825684ms
	Processing time (w/o IO): 50.80699920654297ms
	Processing time (w/o IO): 51.34999752044678ms
	Processing time (w/o IO): 50.66204071044922ms
	Processing time (w/o IO): 52.98495292663574ms
	Processing time (w/o IO): 52.38509178161621ms
	Processing time (w/o IO): 50.897955894470215ms
	Processing time (w/o IO): 51.12004280090332ms
	Processing time (w/o IO): 51.01203918457031ms
	Processing time (w/o IO): 50.935983657836914ms
	Processing time (w/o IO): 51.02396011352539ms
	Processing time (w/o IO): 50.852060317993164ms
	Processing time (w/o IO): 51.33402347564697ms
	  Time (mean ± σ):     410.9 ms ±   9.2 ms    [User: 353.0 ms, System: 40.5 ms]
	  Range (min … max):   404.2 ms … 436.0 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 31.243056ms
	Processing time (w/o IO): 31.676363ms
	Processing time (w/o IO): 32.002669ms
	Processing time (w/o IO): 31.584563ms
	Processing time (w/o IO): 31.061453ms
	Processing time (w/o IO): 33.266592ms
	Processing time (w/o IO): 31.010152ms
	Processing time (w/o IO): 31.950668ms
	Processing time (w/o IO): 31.627163ms
	Processing time (w/o IO): 31.839467ms
	Processing time (w/o IO): 32.076571ms
	Processing time (w/o IO): 31.061253ms
	Processing time (w/o IO): 30.827449ms
	  Time (mean ± σ):     413.2 ms ±  50.3 ms    [User: 427.0 ms, System: 41.7 ms]
	  Range (min … max):   389.5 ms … 554.1 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 195ms
	Processing time (w/o IO): 133ms
	Processing time (w/o IO): 184ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 133ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 125ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 133ms
	Processing time (w/o IO): 129ms
	Processing time (w/o IO): 127ms
	  Time (mean ± σ):     310.5 ms ±  18.4 ms    [User: 304.0 ms, System: 60.8 ms]
	  Range (min … max):   300.6 ms … 361.9 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 124ms
	Processing time (w/o IO): 111ms
	Processing time (w/o IO): 117ms
	Processing time (w/o IO): 116ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 118ms
	Processing time (w/o IO): 111ms
	Processing time (w/o IO): 118ms
	Processing time (w/o IO): 119ms
	Processing time (w/o IO): 120ms
	Processing time (w/o IO): 121ms
	Processing time (w/o IO): 119ms
	  Time (mean ± σ):     174.5 ms ±   4.5 ms    [User: 190.2 ms, System: 38.3 ms]
	  Range (min … max):   165.3 ms … 183.4 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 199ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 198ms
	Processing time (w/o IO): 135ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 193ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 194ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 139ms
	  Time (mean ± σ):     222.6 ms ±  28.4 ms    [User: 216.0 ms, System: 31.8 ms]
	  Range (min … max):   203.1 ms … 267.2 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	  Time (mean ± σ):     391.3 ms ±   8.1 ms    [User: 690.9 ms, System: 57.1 ms]
	  Range (min … max):   377.5 ms … 402.0 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	  Time (mean ± σ):     116.2 ms ±   0.7 ms    [User: 100.6 ms, System: 15.6 ms]
	  Range (min … max):   115.1 ms … 117.7 ms    10 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 48 ms
	Processing time (w/o IO): 45 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 48 ms
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 48 ms
	  Time (mean ± σ):      82.0 ms ±   2.6 ms    [User: 144.8 ms, System: 13.3 ms]
	  Range (min … max):    78.2 ms …  85.2 ms    10 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 25.576ms
	Processing time (w/o IO): 24.95ms
	Processing time (w/o IO): 24.969ms
	Processing time (w/o IO): 25.12ms
	Processing time (w/o IO): 25.0ms
	Processing time (w/o IO): 24.952ms
	Processing time (w/o IO): 25.038ms
	Processing time (w/o IO): 25.023ms
	Processing time (w/o IO): 24.949ms
	Processing time (w/o IO): 24.983ms
	Processing time (w/o IO): 24.917ms
	Processing time (w/o IO): 25.07ms
	Processing time (w/o IO): 24.976ms
	  Time (mean ± σ):      50.8 ms ±   0.6 ms    [User: 37.1 ms, System: 13.6 ms]
	  Range (min … max):    50.1 ms …  52.4 ms    10 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 93ms
	Processing time (w/o IO): 91ms
	  Time (mean ± σ):      1.033 s ±  0.006 s    [User: 1.138 s, System: 0.100 s]
	  Range (min … max):    1.024 s …  1.040 s    10 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 24ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	  Time (mean ± σ):     931.4 ms ±   8.0 ms    [User: 1108.8 ms, System: 99.9 ms]
	  Range (min … max):   922.3 ms … 942.5 ms    10 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	  Time (mean ± σ):     717.2 ms ±   2.6 ms    [User: 808.5 ms, System: 86.2 ms]
	  Range (min … max):   714.4 ms … 723.1 ms    10 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	  Time (mean ± σ):     747.6 ms ±   3.2 ms    [User: 717.9 ms, System: 89.8 ms]
	  Range (min … max):   744.4 ms … 754.7 ms    10 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 27.0721ms
	Processing time (w/o IO): 27.137ms
	Processing time (w/o IO): 27.1818ms
	Processing time (w/o IO): 27.7295ms
	Processing time (w/o IO): 27.2651ms
	Processing time (w/o IO): 27.2777ms
	Processing time (w/o IO): 30.4134ms
	Processing time (w/o IO): 28.4991ms
	Processing time (w/o IO): 27.2852ms
	Processing time (w/o IO): 27.3333ms
	Processing time (w/o IO): 27.4301ms
	Processing time (w/o IO): 27.3017ms
	Processing time (w/o IO): 27.1845ms
	  Time (mean ± σ):     212.7 ms ±   6.6 ms    [User: 176.1 ms, System: 31.4 ms]
	  Range (min … max):   199.6 ms … 224.1 ms    10 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 26.3576ms
	Processing time (w/o IO): 26.5636ms
	Processing time (w/o IO): 26.4931ms
	Processing time (w/o IO): 26.4843ms
	Processing time (w/o IO): 26.7805ms
	Processing time (w/o IO): 26.1742ms
	Processing time (w/o IO): 26.3226ms
	Processing time (w/o IO): 26.3732ms
	Processing time (w/o IO): 26.4369ms
	Processing time (w/o IO): 26.3552ms
	Processing time (w/o IO): 26.1505ms
	Processing time (w/o IO): 28.1648ms
	Processing time (w/o IO): 26.3067ms
	  Time (mean ± σ):     103.7 ms ±   1.9 ms    [User: 102.4 ms, System: 18.6 ms]
	  Range (min … max):   101.5 ms … 107.0 ms    10 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 13.585ms
	Processing time (w/o IO): 13.7093ms
	Processing time (w/o IO): 13.5017ms
	Processing time (w/o IO): 15.0037ms
	Processing time (w/o IO): 14.0472ms
	Processing time (w/o IO): 14.3836ms
	Processing time (w/o IO): 13.9059ms
	Processing time (w/o IO): 15.1976ms
	Processing time (w/o IO): 16.7585ms
	Processing time (w/o IO): 14.179ms
	Processing time (w/o IO): 13.8051ms
	Processing time (w/o IO): 14.6317ms
	Processing time (w/o IO): 15.2549ms
	  Time (mean ± σ):     204.1 ms ±   9.5 ms    [User: 211.3 ms, System: 32.9 ms]
	  Range (min … max):   193.9 ms … 224.0 ms    10 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 10.5923ms
	Processing time (w/o IO): 10.7272ms
	Processing time (w/o IO): 10.9824ms
	Processing time (w/o IO): 10.8767ms
	Processing time (w/o IO): 10.6345ms
	Processing time (w/o IO): 10.8636ms
	Processing time (w/o IO): 10.7255ms
	Processing time (w/o IO): 10.5426ms
	Processing time (w/o IO): 10.771ms
	Processing time (w/o IO): 10.8143ms
	Processing time (w/o IO): 10.772ms
	Processing time (w/o IO): 10.7995ms
	Processing time (w/o IO): 10.6194ms
	  Time (mean ± σ):      71.0 ms ±   2.4 ms    [User: 132.6 ms, System: 17.6 ms]
	  Range (min … max):    67.1 ms …  74.3 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	110.80002784729	ms
	Processing time (w/o IO):	87.522983551025	ms
	Processing time (w/o IO):	108.49595069885	ms
	Processing time (w/o IO):	112.07103729248	ms
	Processing time (w/o IO):	89.411973953247	ms
	Processing time (w/o IO):	90.17014503479	ms
	Processing time (w/o IO):	111.38796806335	ms
	Processing time (w/o IO):	105.04508018494	ms
	Processing time (w/o IO):	111.95397377014	ms
	Processing time (w/o IO):	110.69202423096	ms
	Processing time (w/o IO):	111.99808120728	ms
	Processing time (w/o IO):	88.965892791748	ms
	Processing time (w/o IO):	103.5041809082	ms
	  Time (mean ± σ):     345.2 ms ±   8.3 ms    [User: 322.0 ms, System: 23.1 ms]
	  Range (min … max):   329.0 ms … 357.4 ms    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1090.9428596497	ms
	Processing time (w/o IO):	1089.7841453552	ms
	Processing time (w/o IO):	1095.5610275269	ms
	Processing time (w/o IO):	1091.5951728821	ms
	Processing time (w/o IO):	1092.7901268005	ms
	Processing time (w/o IO):	1091.1960601807	ms
	Processing time (w/o IO):	1091.4599895477	ms
	Processing time (w/o IO):	1089.6852016449	ms
	Processing time (w/o IO):	1092.5471782684	ms
	Processing time (w/o IO):	1091.5429592133	ms
	Processing time (w/o IO):	1090.2991294861	ms
	Processing time (w/o IO):	1089.9150371552	ms
	Processing time (w/o IO):	1090.4378890991	ms
	  Time (mean ± σ):      1.519 s ±  0.008 s    [User: 1.500 s, System: 0.017 s]
	  Range (min … max):    1.512 s …  1.539 s    10 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 150ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 146ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 145ms
	Processing time (w/o IO): 145ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 144ms
	Processing time (w/o IO): 144ms
	Processing time (w/o IO): 142ms
	Processing time (w/o IO): 139ms
	  Time (mean ± σ):     232.3 ms ±   4.0 ms    [User: 200.8 ms, System: 31.0 ms]
	  Range (min … max):   225.5 ms … 239.8 ms    10 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 1.182461 s
	Processing time (w/o IO): 1.171084 s
	Processing time (w/o IO): 1.173700 s
	Processing time (w/o IO): 1.176505 s
	Processing time (w/o IO): 1.173015 s
	Processing time (w/o IO): 1.178806 s
	Processing time (w/o IO): 1.177353 s
	Processing time (w/o IO): 1.173218 s
	Processing time (w/o IO): 1.170374 s
	Processing time (w/o IO): 1.173061 s
	Processing time (w/o IO): 1.169069 s
	Processing time (w/o IO): 1.176627 s
	Processing time (w/o IO): 1.178622 s
	  Time (mean ± σ):      1.521 s ±  0.010 s    [User: 1.528 s, System: 0.108 s]
	  Range (min … max):    1.507 s …  1.537 s    10 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 371.511776ms
	Processing time (w/o IO): 373.43111ms
	Processing time (w/o IO): 373.521412ms
	  Time (mean ± σ):     519.1 ms ±   4.3 ms    [User: 515.5 ms, System: 27.6 ms]
	  Range (min … max):   516.1 ms … 522.2 ms    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 163.729678ms
	Processing time (w/o IO): 167.049737ms
	Processing time (w/o IO): 164.478992ms
	  Time (mean ± σ):     321.8 ms ±  21.0 ms    [User: 783.3 ms, System: 37.5 ms]
	  Range (min … max):   306.9 ms … 336.6 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 340.15788ms
	Processing time (w/o IO): 341.134697ms
	Processing time (w/o IO): 340.787392ms
	  Time (mean ± σ):     405.2 ms ±   1.7 ms    [User: 381.8 ms, System: 23.4 ms]
	  Range (min … max):   404.0 ms … 406.4 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 175.996695ms
	Processing time (w/o IO): 174.879274ms
	Processing time (w/o IO): 177.790726ms
	  Time (mean ± σ):     241.4 ms ±   3.4 ms    [User: 376.2 ms, System: 37.4 ms]
	  Range (min … max):   239.0 ms … 243.8 ms    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 314ms
	Processing time (w/o IO): 315.878ms
	Processing time (w/o IO): 314.952ms
	  Time (mean ± σ):     611.5 ms ±   0.4 ms    [User: 582.4 ms, System: 33.6 ms]
	  Range (min … max):   611.3 ms … 611.8 ms    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 123.529ms
	Processing time (w/o IO): 122.117ms
	Processing time (w/o IO): 123.024ms
	  Time (mean ± σ):     425.0 ms ±   0.8 ms    [User: 714.5 ms, System: 29.3 ms]
	  Range (min … max):   424.4 ms … 425.5 ms    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 339 ms
	Processing time (w/o IO): 340 ms
	Processing time (w/o IO): 338 ms
	  Time (mean ± σ):      1.196 s ±  0.008 s    [User: 1.050 s, System: 0.145 s]
	  Range (min … max):    1.191 s …  1.202 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 219 ms
	Processing time (w/o IO): 221 ms
	Processing time (w/o IO): 219 ms
	  Time (mean ± σ):      1.129 s ±  0.004 s    [User: 1.626 s, System: 0.128 s]
	  Range (min … max):    1.126 s …  1.132 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 23.612s
	Processing time (w/o IO): 23.558s
	  Time (abs ≡):        23.734 s               [User: 23.684 s, System: 0.043 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 6.433s
	Processing time (w/o IO): 7.186s
	Processing time (w/o IO): 7.513s
	  Time (mean ± σ):      7.869 s ±  0.226 s    [User: 5.129 s, System: 3.331 s]
	  Range (min … max):    7.710 s …  8.029 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 904.63544ms
	Processing time (w/o IO): 905.580234ms
	Processing time (w/o IO): 903.106989ms
	  Time (mean ± σ):      1.111 s ±  0.001 s    [User: 1.075 s, System: 0.035 s]
	  Range (min … max):    1.111 s …  1.112 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 434ms
	Processing time (w/o IO): 428ms
	Processing time (w/o IO): 427ms
	  Time (mean ± σ):     620.6 ms ±   1.7 ms    [User: 586.3 ms, System: 31.4 ms]
	  Range (min … max):   619.4 ms … 621.7 ms    2 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 481 milliseconds
	Processing time (w/o IO): 480 milliseconds
	Processing time (w/o IO): 481 milliseconds
	  Time (mean ± σ):      1.153 s ±  0.018 s    [User: 0.997 s, System: 0.259 s]
	  Range (min … max):    1.140 s …  1.165 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 56 milliseconds
	Processing time (w/o IO): 54 milliseconds
	Processing time (w/o IO): 54 milliseconds
	  Time (mean ± σ):      1.173 s ±  0.021 s    [User: 1.029 s, System: 0.245 s]
	  Range (min … max):    1.158 s …  1.187 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 221 milliseconds
	Processing time (w/o IO): 222 milliseconds
	Processing time (w/o IO): 223 milliseconds
	  Time (mean ± σ):     880.6 ms ±   4.6 ms    [User: 1402.9 ms, System: 235.2 ms]
	  Range (min … max):   877.3 ms … 883.8 ms    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  575.486921ms
	Processing time (w/o IO):  571.023261ms
	Processing time (w/o IO):  573.127748ms
	  Time (mean ± σ):      1.363 s ±  0.002 s    [User: 1.325 s, System: 0.035 s]
	  Range (min … max):    1.362 s …  1.364 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 741.352ms
	Processing time (w/o IO): 739.606ms
	Processing time (w/o IO): 740.227ms
	  Time (mean ± σ):      9.385 s ±  0.079 s    [User: 9.269 s, System: 0.111 s]
	  Range (min … max):    9.330 s …  9.441 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 2245ms
	Processing time (w/o IO): 2312ms
	Processing time (w/o IO): 2225ms
	  Time (mean ± σ):      2.940 s ±  0.036 s    [User: 3.141 s, System: 0.144 s]
	  Range (min … max):    2.915 s …  2.966 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 2004ms
	Processing time (w/o IO): 2004ms
	Processing time (w/o IO): 2006ms
	  Time (mean ± σ):      2.489 s ±  0.005 s    [User: 2.447 s, System: 0.061 s]
	  Range (min … max):    2.485 s …  2.493 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 715.6310081481934ms
	Processing time (w/o IO): 711.5399837493896ms
	Processing time (w/o IO): 712.9380702972412ms
	  Time (mean ± σ):      2.097 s ±  0.009 s    [User: 1.930 s, System: 0.130 s]
	  Range (min … max):    2.090 s …  2.103 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 393.700104ms
	Processing time (w/o IO): 393.795705ms
	Processing time (w/o IO): 392.700186ms
	  Time (mean ± σ):      1.795 s ±  0.001 s    [User: 2.767 s, System: 0.142 s]
	  Range (min … max):    1.794 s …  1.796 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 2619ms
	Processing time (w/o IO): 2477ms
	Processing time (w/o IO): 2015ms
	  Time (mean ± σ):      2.574 s ±  0.333 s    [User: 2.586 s, System: 0.102 s]
	  Range (min … max):    2.338 s …  2.809 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 1532ms
	Processing time (w/o IO): 1526ms
	Processing time (w/o IO): 1762ms
	  Time (mean ± σ):      1.802 s ±  0.166 s    [User: 1.807 s, System: 0.071 s]
	  Range (min … max):    1.685 s …  1.919 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 1809ms
	Processing time (w/o IO): 1806ms
	Processing time (w/o IO): 1801ms
	  Time (mean ± σ):      1.974 s ±  0.003 s    [User: 1.949 s, System: 0.062 s]
	  Range (min … max):    1.972 s …  1.975 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 744 ms
	Processing time (w/o IO): 744 ms
	Processing time (w/o IO): 743 ms
	  Time (mean ± σ):      1.589 s ±  0.000 s    [User: 1.545 s, System: 0.042 s]
	  Range (min … max):    1.589 s …  1.589 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 460 ms
	Processing time (w/o IO): 461 ms
	Processing time (w/o IO): 459 ms
	  Time (mean ± σ):     560.2 ms ±   0.9 ms    [User: 1282.9 ms, System: 37.7 ms]
	  Range (min … max):   559.5 ms … 560.8 ms    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 349.379ms
	Processing time (w/o IO): 349.986ms
	Processing time (w/o IO): 350.084ms
	  Time (mean ± σ):     449.4 ms ±   0.8 ms    [User: 420.0 ms, System: 29.3 ms]
	  Range (min … max):   448.8 ms … 450.0 ms    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 528ms
	Processing time (w/o IO): 529ms
	Processing time (w/o IO): 526ms
	  Time (mean ± σ):      3.258 s ±  0.003 s    [User: 3.208 s, System: 0.289 s]
	  Range (min … max):    3.256 s …  3.260 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 288ms
	Processing time (w/o IO): 280ms
	Processing time (w/o IO): 281ms
	  Time (mean ± σ):      2.697 s ±  0.001 s    [User: 4.336 s, System: 0.269 s]
	  Range (min … max):    2.696 s …  2.697 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 279ms
	Processing time (w/o IO): 279ms
	Processing time (w/o IO): 278ms
	  Time (mean ± σ):      3.198 s ±  0.011 s    [User: 4.782 s, System: 0.268 s]
	  Range (min … max):    3.190 s …  3.206 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 391ms
	Processing time (w/o IO): 390ms
	Processing time (w/o IO): 391ms
	  Time (mean ± σ):      3.482 s ±  0.026 s    [User: 3.351 s, System: 0.329 s]
	  Range (min … max):    3.463 s …  3.500 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 372.6129ms
	Processing time (w/o IO): 373.1373ms
	Processing time (w/o IO): 375.7628ms
	  Time (mean ± σ):      1.074 s ±  0.005 s    [User: 1.024 s, System: 0.072 s]
	  Range (min … max):    1.071 s …  1.077 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 371.0998ms
	Processing time (w/o IO): 370.4383ms
	Processing time (w/o IO): 373.1527ms
	  Time (mean ± σ):     908.6 ms ±   0.3 ms    [User: 877.0 ms, System: 64.8 ms]
	  Range (min … max):   908.4 ms … 908.9 ms    2 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 122.1399ms
	Processing time (w/o IO): 123.5767ms
	Processing time (w/o IO): 122.4979ms
	  Time (mean ± σ):     580.2 ms ±   3.6 ms    [User: 1192.5 ms, System: 78.0 ms]
	  Range (min … max):   577.6 ms … 582.7 ms    2 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 135.365ms
	Processing time (w/o IO): 138.2037ms
	Processing time (w/o IO): 135.641ms
	  Time (mean ± σ):     438.4 ms ±   2.1 ms    [User: 1169.3 ms, System: 72.8 ms]
	  Range (min … max):   436.9 ms … 439.9 ms    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	1557.1620464325	ms
	Processing time (w/o IO):	1468.6779975891	ms
	Processing time (w/o IO):	1463.1171226501	ms
	  Time (mean ± σ):      2.707 s ±  0.010 s    [User: 2.651 s, System: 0.055 s]
	  Range (min … max):    2.700 s …  2.715 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	16773.139953613	ms
	Processing time (w/o IO):	16705.759048462	ms
	  Time (abs ≡):        18.478 s               [User: 18.411 s, System: 0.063 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 2613ms
	Processing time (w/o IO): 2640ms
	Processing time (w/o IO): 2699ms
	  Time (mean ± σ):      3.086 s ±  0.036 s    [User: 2.937 s, System: 0.147 s]
	  Range (min … max):    3.060 s …  3.111 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 19.088939 s
	Processing time (w/o IO): 19.008143 s
	Processing time (w/o IO): 19.002974 s
	  Time (mean ± σ):     20.079 s ±  0.002 s    [User: 19.964 s, System: 0.275 s]
	  Range (min … max):   20.077 s … 20.080 s    2 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 3.27206472s
	Processing time (w/o IO): 3.280920354s
	Processing time (w/o IO): 3.273492213s
	  Time (mean ± σ):      3.789 s ±  0.006 s    [User: 3.799 s, System: 0.113 s]
	  Range (min … max):    3.784 s …  3.793 s    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1.418303778s
	Processing time (w/o IO): 1.431013864s
	Processing time (w/o IO): 1.41972238s
	  Time (mean ± σ):      1.926 s ±  0.005 s    [User: 6.145 s, System: 0.115 s]
	  Range (min … max):    1.922 s …  1.929 s    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 3.033044272s
	Processing time (w/o IO): 3.032882209s
	Processing time (w/o IO): 3.036827705s
	  Time (mean ± σ):      3.257 s ±  0.004 s    [User: 3.170 s, System: 0.077 s]
	  Range (min … max):    3.254 s …  3.260 s    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 1.520613644s
	Processing time (w/o IO): 1.517783741s
	Processing time (w/o IO): 1.517343518s
	  Time (mean ± σ):      1.727 s ±  0.002 s    [User: 3.161 s, System: 0.071 s]
	  Range (min … max):    1.725 s …  1.729 s    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 2705.7ms
	Processing time (w/o IO): 2703.38ms
	Processing time (w/o IO): 2705.9ms
	  Time (mean ± σ):      3.649 s ±  0.000 s    [User: 3.551 s, System: 0.106 s]
	  Range (min … max):    3.649 s …  3.650 s    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 976.345ms
	Processing time (w/o IO): 973.159ms
	Processing time (w/o IO): 973.087ms
	  Time (mean ± σ):      1.908 s ±  0.013 s    [User: 4.513 s, System: 0.113 s]
	  Range (min … max):    1.899 s …  1.917 s    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 2941 ms
	Processing time (w/o IO): 2927 ms
	Processing time (w/o IO): 2926 ms
	  Time (mean ± σ):      5.611 s ±  0.008 s    [User: 5.100 s, System: 0.315 s]
	  Range (min … max):    5.605 s …  5.616 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 1885 ms
	Processing time (w/o IO): 1884 ms
	Processing time (w/o IO): 1886 ms
	  Time (mean ± σ):      4.636 s ±  0.018 s    [User: 9.765 s, System: 0.341 s]
	  Range (min … max):    4.623 s …  4.648 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 213.483s
	Processing time (w/o IO): 214.769s
	  Time (abs ≡):        215.191 s               [User: 215.023 s, System: 0.143 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 7982.139562ms
	Processing time (w/o IO): 7978.583165ms
	Processing time (w/o IO): 8000.300534ms
	  Time (mean ± σ):      8.698 s ±  0.020 s    [User: 8.600 s, System: 0.090 s]
	  Range (min … max):    8.684 s …  8.712 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 3824ms
	Processing time (w/o IO): 3817ms
	Processing time (w/o IO): 3823ms
	  Time (mean ± σ):      4.415 s ±  0.000 s    [User: 4.347 s, System: 0.059 s]
	  Range (min … max):    4.415 s …  4.415 s    2 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 4235 milliseconds
	Processing time (w/o IO): 4250 milliseconds
	Processing time (w/o IO): 4239 milliseconds
	  Time (mean ± σ):      5.300 s ±  0.033 s    [User: 5.041 s, System: 0.357 s]
	  Range (min … max):    5.277 s …  5.323 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 135 milliseconds
	Processing time (w/o IO): 139 milliseconds
	Processing time (w/o IO): 136 milliseconds
	  Time (mean ± σ):      1.588 s ±  0.013 s    [User: 1.338 s, System: 0.351 s]
	  Range (min … max):    1.579 s …  1.597 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 1941 milliseconds
	Processing time (w/o IO): 1936 milliseconds
	Processing time (w/o IO): 1945 milliseconds
	  Time (mean ± σ):      2.964 s ±  0.028 s    [User: 8.483 s, System: 0.343 s]
	  Range (min … max):    2.945 s …  2.984 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  5.999860109s
	Processing time (w/o IO):  5.972575265s
	Processing time (w/o IO):  6.085237184s
	  Time (mean ± σ):      8.443 s ±  0.089 s    [User: 8.358 s, System: 0.077 s]
	  Range (min … max):    8.380 s …  8.506 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 6.599s
	Processing time (w/o IO): 6.596s
	Processing time (w/o IO): 6.594s
	  Time (mean ± σ):     78.635 s ±  0.140 s    [User: 78.218 s, System: 0.403 s]
	  Range (min … max):   78.535 s … 78.734 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 19682ms
	Processing time (w/o IO): 19680ms
	Processing time (w/o IO): 19670ms
	  Time (mean ± σ):     21.159 s ±  0.003 s    [User: 21.339 s, System: 0.278 s]
	  Range (min … max):   21.157 s … 21.161 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 17895ms
	Processing time (w/o IO): 17833ms
	Processing time (w/o IO): 17885ms
	  Time (mean ± σ):     19.367 s ±  0.022 s    [User: 19.336 s, System: 0.168 s]
	  Range (min … max):   19.351 s … 19.383 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 6221.900939941406ms
	Processing time (w/o IO): 6190.186023712158ms
	Processing time (w/o IO): 6189.530968666077ms
	  Time (mean ± σ):     10.586 s ±  0.006 s    [User: 10.031 s, System: 0.353 s]
	  Range (min … max):   10.582 s … 10.590 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 3459.56644ms
	Processing time (w/o IO): 3493.072266ms
	Processing time (w/o IO): 3459.154675ms
	  Time (mean ± σ):      7.825 s ±  0.071 s    [User: 17.599 s, System: 0.357 s]
	  Range (min … max):    7.775 s …  7.875 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 14271ms
	Processing time (w/o IO): 24051ms
	Processing time (w/o IO): 24095ms
	  Time (mean ± σ):     24.889 s ±  0.036 s    [User: 24.915 s, System: 0.163 s]
	  Range (min … max):   24.863 s … 24.914 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 12928ms
	Processing time (w/o IO): 12996ms
	Processing time (w/o IO): 14261ms
	  Time (mean ± σ):     14.120 s ±  0.898 s    [User: 14.083 s, System: 0.172 s]
	  Range (min … max):   13.485 s … 14.754 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 17885ms
	Processing time (w/o IO): 15891ms
	Processing time (w/o IO): 17893ms
	  Time (mean ± σ):     17.530 s ±  1.284 s    [User: 17.408 s, System: 0.171 s]
	  Range (min … max):   16.623 s … 18.438 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 6542 ms
	Processing time (w/o IO): 6543 ms
	Processing time (w/o IO): 6549 ms
	  Time (mean ± σ):     13.545 s ±  0.011 s    [User: 13.436 s, System: 0.099 s]
	  Range (min … max):   13.538 s … 13.553 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 5441 ms
	Processing time (w/o IO): 5324 ms
	Processing time (w/o IO): 5316 ms
	  Time (mean ± σ):      5.674 s ±  0.011 s    [User: 14.258 s, System: 0.075 s]
	  Range (min … max):    5.667 s …  5.682 s    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 3083.623ms
	Processing time (w/o IO): 3076.181ms
	Processing time (w/o IO): 3076.093ms
	  Time (mean ± σ):      3.413 s ±  0.006 s    [User: 3.316 s, System: 0.090 s]
	  Range (min … max):    3.409 s …  3.418 s    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 4049ms
	Processing time (w/o IO): 4037ms
	Processing time (w/o IO): 4046ms
	  Time (mean ± σ):     13.455 s ±  0.153 s    [User: 14.426 s, System: 0.594 s]
	  Range (min … max):   13.346 s … 13.563 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 2503ms
	Processing time (w/o IO): 2517ms
	Processing time (w/o IO): 2484ms
	  Time (mean ± σ):     10.189 s ±  0.064 s    [User: 26.060 s, System: 0.613 s]
	  Range (min … max):   10.144 s … 10.234 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 2458ms
	Processing time (w/o IO): 2459ms
	Processing time (w/o IO): 2460ms
	  Time (mean ± σ):     13.027 s ±  0.018 s    [User: 29.122 s, System: 0.535 s]
	  Range (min … max):   13.014 s … 13.040 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 3414ms
	Processing time (w/o IO): 3416ms
	Processing time (w/o IO): 3411ms
	  Time (mean ± σ):     15.138 s ±  0.085 s    [User: 16.476 s, System: 0.617 s]
	  Range (min … max):   15.078 s … 15.198 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 3287.279ms
	Processing time (w/o IO): 3257.4405ms
	Processing time (w/o IO): 3278.9708ms
	  Time (mean ± σ):      7.437 s ±  0.032 s    [User: 7.414 s, System: 0.155 s]
	  Range (min … max):    7.415 s …  7.460 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 3255.7032ms
	Processing time (w/o IO): 3234.2615ms
	Processing time (w/o IO): 3240.2958ms
	  Time (mean ± σ):      7.030 s ±  0.011 s    [User: 7.023 s, System: 0.154 s]
	  Range (min … max):    7.022 s …  7.037 s    2 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 1013.3759ms
	Processing time (w/o IO): 1016.5186ms
	Processing time (w/o IO): 1013.1955ms
	  Time (mean ± σ):      2.914 s ±  0.001 s    [User: 8.660 s, System: 0.182 s]
	  Range (min … max):    2.913 s …  2.915 s    2 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 1140.3909ms
	Processing time (w/o IO): 1129.3761ms
	Processing time (w/o IO): 1131.6047ms
	  Time (mean ± σ):      2.767 s ±  0.021 s    [User: 9.308 s, System: 0.175 s]
	  Range (min … max):    2.752 s …  2.782 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	12475.615978241	ms
	Processing time (w/o IO):	12506.453037262	ms
	Processing time (w/o IO):	11962.62717247	ms
	  Time (mean ± σ):     16.382 s ±  0.307 s    [User: 16.175 s, System: 0.175 s]
	  Range (min … max):   16.165 s … 16.599 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	150695.96409798	ms
	Processing time (w/o IO):	149834.72299576	ms
	  Time (abs ≡):        156.063 s               [User: 155.834 s, System: 0.207 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 31742ms
	Processing time (w/o IO): 32258ms
	Processing time (w/o IO): 32325ms
	  Time (mean ± σ):     33.730 s ±  0.065 s    [User: 32.960 s, System: 0.759 s]
	  Range (min … max):   33.684 s … 33.775 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 172.683162 s
	Processing time (w/o IO): 172.223164 s
	Processing time (w/o IO): 172.729942 s
	  Time (mean ± σ):     175.780 s ±  0.380 s    [User: 175.332 s, System: 0.607 s]
	  Range (min … max):   175.511 s … 176.049 s    2 runs
	 
