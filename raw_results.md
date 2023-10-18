Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 24.265011ms
	Processing time (w/o IO): 24.20561ms
	Processing time (w/o IO): 24.031607ms
	Processing time (w/o IO): 24.667518ms
	Processing time (w/o IO): 24.156009ms
	Processing time (w/o IO): 24.179309ms
	Processing time (w/o IO): 24.18971ms
	Processing time (w/o IO): 24.22851ms
	Processing time (w/o IO): 24.098208ms
	Processing time (w/o IO): 24.22071ms
	Processing time (w/o IO): 24.188109ms
	Processing time (w/o IO): 24.168109ms
	Processing time (w/o IO): 24.646417ms
	  Time (mean ± σ):      63.8 ms ±   1.1 ms    [User: 55.0 ms, System: 14.4 ms]
	  Range (min … max):    62.5 ms …  65.7 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 14.608555ms
	Processing time (w/o IO): 12.887725ms
	Processing time (w/o IO): 15.185165ms
	Processing time (w/o IO): 12.643121ms
	Processing time (w/o IO): 14.782358ms
	Processing time (w/o IO): 12.730523ms
	Processing time (w/o IO): 12.887425ms
	Processing time (w/o IO): 12.61322ms
	Processing time (w/o IO): 12.655121ms
	Processing time (w/o IO): 12.685122ms
	Processing time (w/o IO): 13.199131ms
	Processing time (w/o IO): 12.630221ms
	Processing time (w/o IO): 13.564937ms
	  Time (mean ± σ):      51.6 ms ±   1.2 ms    [User: 80.3 ms, System: 10.9 ms]
	  Range (min … max):    49.9 ms …  53.9 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 23.578879ms
	Processing time (w/o IO): 23.420977ms
	Processing time (w/o IO): 23.447978ms
	Processing time (w/o IO): 23.542679ms
	Processing time (w/o IO): 23.412678ms
	Processing time (w/o IO): 23.421277ms
	Processing time (w/o IO): 23.461978ms
	Processing time (w/o IO): 23.494379ms
	Processing time (w/o IO): 23.459578ms
	Processing time (w/o IO): 23.496778ms
	Processing time (w/o IO): 23.397578ms
	Processing time (w/o IO): 23.413677ms
	Processing time (w/o IO): 23.522979ms
	  Time (mean ± σ):      39.1 ms ±   0.2 ms    [User: 32.4 ms, System: 6.7 ms]
	  Range (min … max):    38.8 ms …  39.5 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 12.236397ms
	Processing time (w/o IO): 12.126696ms
	Processing time (w/o IO): 12.170196ms
	Processing time (w/o IO): 12.122995ms
	Processing time (w/o IO): 12.078894ms
	Processing time (w/o IO): 12.151696ms
	Processing time (w/o IO): 12.104495ms
	Processing time (w/o IO): 12.081995ms
	Processing time (w/o IO): 12.120195ms
	Processing time (w/o IO): 12.155496ms
	Processing time (w/o IO): 12.147496ms
	Processing time (w/o IO): 12.179396ms
	Processing time (w/o IO): 12.224797ms
	  Time (mean ± σ):      29.1 ms ±   0.3 ms    [User: 34.3 ms, System: 6.8 ms]
	  Range (min … max):    28.7 ms …  29.5 ms    10 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 25.102ms
	Processing time (w/o IO): 24.999ms
	Processing time (w/o IO): 25.469ms
	Processing time (w/o IO): 24.268ms
	Processing time (w/o IO): 24.299ms
	Processing time (w/o IO): 24.68ms
	Processing time (w/o IO): 24.497ms
	Processing time (w/o IO): 24.738ms
	Processing time (w/o IO): 25.21ms
	Processing time (w/o IO): 25.086ms
	Processing time (w/o IO): 24.296ms
	Processing time (w/o IO): 24.1ms
	Processing time (w/o IO): 24.743ms
	  Time (mean ± σ):     104.9 ms ±   0.6 ms    [User: 97.3 ms, System: 8.9 ms]
	  Range (min … max):   104.2 ms … 106.1 ms    10 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 12.178ms
	Processing time (w/o IO): 12.573ms
	Processing time (w/o IO): 13.807ms
	Processing time (w/o IO): 12.434ms
	Processing time (w/o IO): 13.182ms
	Processing time (w/o IO): 12.776ms
	Processing time (w/o IO): 12.412ms
	Processing time (w/o IO): 12.394ms
	Processing time (w/o IO): 13.271ms
	Processing time (w/o IO): 12.74ms
	Processing time (w/o IO): 12.141ms
	Processing time (w/o IO): 13.002ms
	Processing time (w/o IO): 12.541ms
	  Time (mean ± σ):      90.6 ms ±   1.1 ms    [User: 104.5 ms, System: 9.6 ms]
	  Range (min … max):    89.1 ms …  92.3 ms    10 runs
	 
C++:

	Benchmark 1: ./main
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
	  Time (mean ± σ):     237.3 ms ±   1.6 ms    [User: 206.4 ms, System: 30.8 ms]
	  Range (min … max):   234.5 ms … 239.3 ms    10 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 18 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 15 ms
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 17 ms
	  Time (mean ± σ):     229.5 ms ±   2.6 ms    [User: 234.1 ms, System: 36.6 ms]
	  Range (min … max):   226.9 ms … 234.8 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 1.476s
	Processing time (w/o IO): 1.455s
	Processing time (w/o IO): 1.473s
	Processing time (w/o IO): 1.479s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.454s
	Processing time (w/o IO): 1.463s
	Processing time (w/o IO): 1.462s
	Processing time (w/o IO): 1.458s
	Processing time (w/o IO): 1.464s
	Processing time (w/o IO): 1.479s
	Processing time (w/o IO): 1.464s
	Processing time (w/o IO): 1.473s
	  Time (mean ± σ):      1.533 s ±  0.009 s    [User: 1.512 s, System: 0.021 s]
	  Range (min … max):    1.521 s …  1.549 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 352.8ms
	Processing time (w/o IO): 354.0ms
	Processing time (w/o IO): 352.1ms
	Processing time (w/o IO): 351.4ms
	Processing time (w/o IO): 351.9ms
	Processing time (w/o IO): 352.7ms
	Processing time (w/o IO): 354.4ms
	Processing time (w/o IO): 352.4ms
	Processing time (w/o IO): 352.1ms
	Processing time (w/o IO): 352.6ms
	Processing time (w/o IO): 354.8ms
	Processing time (w/o IO): 353.1ms
	Processing time (w/o IO): 351.3ms
	  Time (mean ± σ):     642.9 ms ±  10.8 ms    [User: 823.6 ms, System: 433.6 ms]
	  Range (min … max):   636.9 ms … 672.6 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 60.528124ms
	Processing time (w/o IO): 60.596525ms
	Processing time (w/o IO): 60.610825ms
	Processing time (w/o IO): 65.050823ms
	Processing time (w/o IO): 60.512523ms
	Processing time (w/o IO): 60.256918ms
	Processing time (w/o IO): 60.512223ms
	Processing time (w/o IO): 60.615926ms
	Processing time (w/o IO): 60.505324ms
	Processing time (w/o IO): 60.554325ms
	Processing time (w/o IO): 60.160316ms
	Processing time (w/o IO): 60.439222ms
	Processing time (w/o IO): 60.492596ms
	  Time (mean ± σ):     110.6 ms ±   1.9 ms    [User: 101.9 ms, System: 8.7 ms]
	  Range (min … max):   108.9 ms … 115.8 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 29ms
	  Time (mean ± σ):      75.3 ms ±   1.0 ms    [User: 65.3 ms, System: 10.0 ms]
	  Range (min … max):    74.6 ms …  77.4 ms    10 runs
	 
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
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	  Time (mean ± σ):     482.9 ms ±  10.0 ms    [User: 380.4 ms, System: 206.2 ms]
	  Range (min … max):   466.7 ms … 492.2 ms    10 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 9 milliseconds
	  Time (mean ± σ):      1.018 s ±  0.012 s    [User: 0.885 s, System: 0.237 s]
	  Range (min … max):    0.996 s …  1.034 s    10 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 17 milliseconds
	  Time (mean ± σ):     471.6 ms ±  16.9 ms    [User: 403.1 ms, System: 219.0 ms]
	  Range (min … max):   448.0 ms … 491.2 ms    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  47.78613ms
	Processing time (w/o IO):  47.951845ms
	Processing time (w/o IO):  47.764442ms
	Processing time (w/o IO):  47.763743ms
	Processing time (w/o IO):  47.678242ms
	Processing time (w/o IO):  47.702242ms
	Processing time (w/o IO):  47.391138ms
	Processing time (w/o IO):  47.902144ms
	Processing time (w/o IO):  47.883344ms
	Processing time (w/o IO):  47.223836ms
	Processing time (w/o IO):  47.414339ms
	Processing time (w/o IO):  47.619142ms
	Processing time (w/o IO):  47.46174ms
	  Time (mean ± σ):     268.3 ms ±   1.2 ms    [User: 259.8 ms, System: 8.4 ms]
	  Range (min … max):   266.8 ms … 270.4 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 48.967ms
	Processing time (w/o IO): 48.706ms
	Processing time (w/o IO): 48.442ms
	Processing time (w/o IO): 49.098ms
	Processing time (w/o IO): 48.835ms
	Processing time (w/o IO): 49.023ms
	Processing time (w/o IO): 49.288ms
	Processing time (w/o IO): 48.691ms
	Processing time (w/o IO): 48.766ms
	Processing time (w/o IO): 48.941ms
	Processing time (w/o IO): 49.182ms
	Processing time (w/o IO): 49.056ms
	Processing time (w/o IO): 49.130ms
	  Time (mean ± σ):     382.8 ms ±   1.7 ms    [User: 359.4 ms, System: 23.3 ms]
	  Range (min … max):   380.5 ms … 385.6 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 168ms
	Processing time (w/o IO): 176ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 164ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 168ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 131ms
	  Time (mean ± σ):     543.5 ms ±  13.3 ms    [User: 648.6 ms, System: 112.9 ms]
	  Range (min … max):   516.6 ms … 562.3 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	  Time (mean ± σ):     256.1 ms ±   1.7 ms    [User: 237.6 ms, System: 22.9 ms]
	  Range (min … max):   253.9 ms … 258.8 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 50.76301097869873ms
	Processing time (w/o IO): 51.036953926086426ms
	Processing time (w/o IO): 50.949931144714355ms
	Processing time (w/o IO): 51.684021949768066ms
	Processing time (w/o IO): 51.43296718597412ms
	Processing time (w/o IO): 51.2700080871582ms
	Processing time (w/o IO): 51.12302303314209ms
	Processing time (w/o IO): 50.93395709991455ms
	Processing time (w/o IO): 51.23496055603027ms
	Processing time (w/o IO): 51.40793323516846ms
	Processing time (w/o IO): 51.606059074401855ms
	Processing time (w/o IO): 50.88496208190918ms
	Processing time (w/o IO): 50.99296569824219ms
	  Time (mean ± σ):     416.5 ms ±   6.5 ms    [User: 356.5 ms, System: 35.6 ms]
	  Range (min … max):   407.8 ms … 428.5 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 31.119764ms
	Processing time (w/o IO): 32.618881ms
	Processing time (w/o IO): 31.068563ms
	Processing time (w/o IO): 32.015075ms
	Processing time (w/o IO): 31.733871ms
	Processing time (w/o IO): 30.936962ms
	Processing time (w/o IO): 31.603769ms
	Processing time (w/o IO): 31.915873ms
	Processing time (w/o IO): 30.905361ms
	Processing time (w/o IO): 30.779859ms
	Processing time (w/o IO): 32.432179ms
	Processing time (w/o IO): 32.035274ms
	Processing time (w/o IO): 32.20688ms
	  Time (mean ± σ):     398.5 ms ±   4.2 ms    [User: 426.5 ms, System: 37.6 ms]
	  Range (min … max):   390.4 ms … 404.8 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 125ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 133ms
	  Time (mean ± σ):     302.6 ms ±   3.4 ms    [User: 292.0 ms, System: 64.5 ms]
	  Range (min … max):   298.3 ms … 308.1 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 124ms
	Processing time (w/o IO): 117ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 105ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 123ms
	Processing time (w/o IO): 118ms
	Processing time (w/o IO): 123ms
	Processing time (w/o IO): 118ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 125ms
	Processing time (w/o IO): 132ms
	  Time (mean ± σ):     179.9 ms ±   7.2 ms    [User: 200.8 ms, System: 33.5 ms]
	  Range (min … max):   164.9 ms … 189.6 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 144ms
	Processing time (w/o IO): 199ms
	Processing time (w/o IO): 196ms
	Processing time (w/o IO): 136ms
	Processing time (w/o IO): 197ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 193ms
	Processing time (w/o IO): 198ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 201ms
	Processing time (w/o IO): 146ms
	Processing time (w/o IO): 196ms
	Processing time (w/o IO): 140ms
	  Time (mean ± σ):     243.2 ms ±  29.1 ms    [User: 234.7 ms, System: 35.2 ms]
	  Range (min … max):   204.6 ms … 269.6 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 52 ms
	  Time (mean ± σ):     394.2 ms ±   6.7 ms    [User: 709.6 ms, System: 46.0 ms]
	  Range (min … max):   378.2 ms … 399.2 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	  Time (mean ± σ):     143.3 ms ±   0.7 ms    [User: 131.3 ms, System: 12.1 ms]
	  Range (min … max):   142.5 ms … 144.5 ms    10 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 38 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 40 ms
	  Time (mean ± σ):      69.6 ms ±   1.6 ms    [User: 117.0 ms, System: 11.5 ms]
	  Range (min … max):    68.1 ms …  73.4 ms    10 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 30.643ms
	Processing time (w/o IO): 30.469ms
	Processing time (w/o IO): 30.355ms
	Processing time (w/o IO): 30.438ms
	Processing time (w/o IO): 30.315ms
	Processing time (w/o IO): 30.306ms
	Processing time (w/o IO): 30.482ms
	Processing time (w/o IO): 30.247ms
	Processing time (w/o IO): 30.255ms
	Processing time (w/o IO): 30.368ms
	Processing time (w/o IO): 30.422ms
	Processing time (w/o IO): 30.429ms
	Processing time (w/o IO): 30.379ms
	  Time (mean ± σ):      55.9 ms ±   0.4 ms    [User: 43.7 ms, System: 12.1 ms]
	  Range (min … max):    55.0 ms …  56.3 ms    10 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 100ms
	Processing time (w/o IO): 95ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 96ms
	Processing time (w/o IO): 92ms
	  Time (mean ± σ):      1.039 s ±  0.008 s    [User: 1.155 s, System: 0.098 s]
	  Range (min … max):    1.027 s …  1.051 s    10 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	  Time (mean ± σ):     938.8 ms ±  21.2 ms    [User: 1091.2 ms, System: 111.1 ms]
	  Range (min … max):   885.0 ms … 959.1 ms    10 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	  Time (mean ± σ):     726.8 ms ±   6.0 ms    [User: 811.5 ms, System: 95.4 ms]
	  Range (min … max):   719.2 ms … 741.0 ms    10 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 27ms
	  Time (mean ± σ):     741.3 ms ±   2.1 ms    [User: 720.2 ms, System: 79.7 ms]
	  Range (min … max):   738.3 ms … 744.5 ms    10 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 27.0415ms
	Processing time (w/o IO): 27.2091ms
	Processing time (w/o IO): 27.0278ms
	Processing time (w/o IO): 27.1248ms
	Processing time (w/o IO): 27.0977ms
	Processing time (w/o IO): 27.1268ms
	Processing time (w/o IO): 27.1089ms
	Processing time (w/o IO): 27.2049ms
	Processing time (w/o IO): 28.563ms
	Processing time (w/o IO): 27.1424ms
	Processing time (w/o IO): 27.5614ms
	Processing time (w/o IO): 27.0909ms
	Processing time (w/o IO): 27.3476ms
	  Time (mean ± σ):     215.2 ms ±   4.2 ms    [User: 177.2 ms, System: 28.0 ms]
	  Range (min … max):   208.0 ms … 221.2 ms    10 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 26.2683ms
	Processing time (w/o IO): 26.5004ms
	Processing time (w/o IO): 26.1208ms
	Processing time (w/o IO): 27.0373ms
	Processing time (w/o IO): 26.44ms
	Processing time (w/o IO): 27.4589ms
	Processing time (w/o IO): 26.4057ms
	Processing time (w/o IO): 26.258ms
	Processing time (w/o IO): 26.5213ms
	Processing time (w/o IO): 26.5185ms
	Processing time (w/o IO): 26.1966ms
	Processing time (w/o IO): 26.3143ms
	Processing time (w/o IO): 26.4226ms
	  Time (mean ± σ):     102.9 ms ±   1.4 ms    [User: 97.8 ms, System: 22.4 ms]
	  Range (min … max):   100.4 ms … 105.7 ms    10 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 22.0251ms
	Processing time (w/o IO): 21.1906ms
	Processing time (w/o IO): 22.4021ms
	Processing time (w/o IO): 23.657ms
	Processing time (w/o IO): 29.03ms
	Processing time (w/o IO): 23.2456ms
	Processing time (w/o IO): 23.6163ms
	Processing time (w/o IO): 25.4718ms
	Processing time (w/o IO): 25.9057ms
	Processing time (w/o IO): 23.1544ms
	Processing time (w/o IO): 31.3003ms
	Processing time (w/o IO): 26.4057ms
	Processing time (w/o IO): 22.0041ms
	  Time (mean ± σ):     244.2 ms ±  11.7 ms    [User: 216.0 ms, System: 63.4 ms]
	  Range (min … max):   232.1 ms … 271.3 ms    10 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 14.4596ms
	Processing time (w/o IO): 21.3789ms
	Processing time (w/o IO): 15.6931ms
	Processing time (w/o IO): 18.9209ms
	Processing time (w/o IO): 15.9245ms
	Processing time (w/o IO): 15.2912ms
	Processing time (w/o IO): 17.9826ms
	Processing time (w/o IO): 19.6812ms
	Processing time (w/o IO): 21.3803ms
	Processing time (w/o IO): 14.8722ms
	Processing time (w/o IO): 19.9639ms
	Processing time (w/o IO): 15.2809ms
	Processing time (w/o IO): 19.2413ms
	  Time (mean ± σ):      93.6 ms ±   4.4 ms    [User: 132.2 ms, System: 57.5 ms]
	  Range (min … max):    87.7 ms …  98.9 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	91.239929199219	ms
	Processing time (w/o IO):	110.96596717834	ms
	Processing time (w/o IO):	89.301824569702	ms
	Processing time (w/o IO):	108.32381248474	ms
	Processing time (w/o IO):	89.359045028687	ms
	Processing time (w/o IO):	90.088129043579	ms
	Processing time (w/o IO):	104.88104820251	ms
	Processing time (w/o IO):	112.59007453918	ms
	Processing time (w/o IO):	111.74297332764	ms
	Processing time (w/o IO):	111.83905601501	ms
	Processing time (w/o IO):	107.29289054871	ms
	Processing time (w/o IO):	111.83881759644	ms
	Processing time (w/o IO):	111.97090148926	ms
	  Time (mean ± σ):     351.0 ms ±   9.5 ms    [User: 334.8 ms, System: 16.2 ms]
	  Range (min … max):   334.9 ms … 368.9 ms    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1093.878030777	ms
	Processing time (w/o IO):	1100.7850170135	ms
	Processing time (w/o IO):	1091.2170410156	ms
	Processing time (w/o IO):	1106.5020561218	ms
	Processing time (w/o IO):	1099.4510650635	ms
	Processing time (w/o IO):	1092.5970077515	ms
	Processing time (w/o IO):	1091.6709899902	ms
	Processing time (w/o IO):	1092.6940441132	ms
	Processing time (w/o IO):	1092.7350521088	ms
	Processing time (w/o IO):	1091.903924942	ms
	Processing time (w/o IO):	1094.6447849274	ms
	Processing time (w/o IO):	1089.6661281586	ms
	Processing time (w/o IO):	1092.561006546	ms
	  Time (mean ± σ):      1.520 s ±  0.008 s    [User: 1.498 s, System: 0.020 s]
	  Range (min … max):    1.511 s …  1.535 s    10 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 142ms
	Processing time (w/o IO): 142ms
	Processing time (w/o IO): 143ms
	Processing time (w/o IO): 145ms
	Processing time (w/o IO): 144ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 145ms
	Processing time (w/o IO): 146ms
	Processing time (w/o IO): 145ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 145ms
	Processing time (w/o IO): 149ms
	Processing time (w/o IO): 144ms
	  Time (mean ± σ):     234.9 ms ±   6.3 ms    [User: 204.7 ms, System: 29.2 ms]
	  Range (min … max):   229.8 ms … 251.0 ms    10 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 1.522954 s
	Processing time (w/o IO): 1.516230 s
	Processing time (w/o IO): 1.531196 s
	Processing time (w/o IO): 1.523421 s
	Processing time (w/o IO): 1.521287 s
	Processing time (w/o IO): 1.511423 s
	Processing time (w/o IO): 1.523222 s
	Processing time (w/o IO): 1.516022 s
	Processing time (w/o IO): 1.527484 s
	Processing time (w/o IO): 1.524702 s
	Processing time (w/o IO): 1.514805 s
	Processing time (w/o IO): 1.512768 s
	Processing time (w/o IO): 1.516956 s
	  Time (mean ± σ):      1.867 s ±  0.007 s    [User: 1.875 s, System: 0.111 s]
	  Range (min … max):    1.858 s …  1.876 s    10 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 371.086739ms
	Processing time (w/o IO): 381.544238ms
	Processing time (w/o IO): 371.471047ms
	  Time (mean ± σ):     524.7 ms ±   2.9 ms    [User: 516.6 ms, System: 41.6 ms]
	  Range (min … max):   522.7 ms … 526.8 ms    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 166.953267ms
	Processing time (w/o IO): 167.033769ms
	Processing time (w/o IO): 166.952067ms
	  Time (mean ± σ):     309.0 ms ±   0.1 ms    [User: 783.1 ms, System: 37.2 ms]
	  Range (min … max):   308.9 ms … 309.0 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 340.156652ms
	Processing time (w/o IO): 341.193972ms
	Processing time (w/o IO): 340.660405ms
	  Time (mean ± σ):     404.7 ms ±   0.4 ms    [User: 381.0 ms, System: 23.6 ms]
	  Range (min … max):   404.4 ms … 404.9 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 181.326603ms
	Processing time (w/o IO): 173.72386ms
	Processing time (w/o IO): 173.748761ms
	  Time (mean ± σ):     238.2 ms ±   0.0 ms    [User: 381.3 ms, System: 27.5 ms]
	  Range (min … max):   238.2 ms … 238.2 ms    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 316.61ms
	Processing time (w/o IO): 314.975ms
	Processing time (w/o IO): 314.611ms
	  Time (mean ± σ):     611.5 ms ±   0.2 ms    [User: 588.6 ms, System: 27.0 ms]
	  Range (min … max):   611.4 ms … 611.7 ms    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 122.134ms
	Processing time (w/o IO): 121.879ms
	Processing time (w/o IO): 120.171ms
	  Time (mean ± σ):     422.1 ms ±   2.7 ms    [User: 706.4 ms, System: 29.3 ms]
	  Range (min … max):   420.2 ms … 424.0 ms    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 518 ms
	Processing time (w/o IO): 519 ms
	Processing time (w/o IO): 519 ms
	  Time (mean ± σ):      1.349 s ±  0.002 s    [User: 1.222 s, System: 0.127 s]
	  Range (min … max):    1.347 s …  1.351 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 205 ms
	Processing time (w/o IO): 204 ms
	Processing time (w/o IO): 208 ms
	  Time (mean ± σ):      1.085 s ±  0.013 s    [User: 1.547 s, System: 0.119 s]
	  Range (min … max):    1.076 s …  1.094 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 23.654s
	Processing time (w/o IO): 23.654s
	  Time (abs ≡):        23.820 s               [User: 23.748 s, System: 0.068 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 6.403s
	Processing time (w/o IO): 6.995s
	Processing time (w/o IO): 7.509s
	  Time (mean ± σ):      7.791 s ±  0.368 s    [User: 5.136 s, System: 3.245 s]
	  Range (min … max):    7.531 s …  8.051 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 908.544079ms
	Processing time (w/o IO): 915.547994ms
	Processing time (w/o IO): 908.388799ms
	  Time (mean ± σ):      1.142 s ±  0.002 s    [User: 1.103 s, System: 0.037 s]
	  Range (min … max):    1.141 s …  1.144 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 431ms
	Processing time (w/o IO): 429ms
	Processing time (w/o IO): 431ms
	  Time (mean ± σ):     630.1 ms ±   2.1 ms    [User: 602.7 ms, System: 27.2 ms]
	  Range (min … max):   628.6 ms … 631.5 ms    2 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 479 milliseconds
	Processing time (w/o IO): 479 milliseconds
	Processing time (w/o IO): 479 milliseconds
	  Time (mean ± σ):      1.245 s ±  0.003 s    [User: 1.111 s, System: 0.237 s]
	  Range (min … max):    1.243 s …  1.247 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 66 milliseconds
	Processing time (w/o IO): 66 milliseconds
	Processing time (w/o IO): 64 milliseconds
	  Time (mean ± σ):      1.256 s ±  0.016 s    [User: 1.098 s, System: 0.262 s]
	  Range (min … max):    1.245 s …  1.267 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 227 milliseconds
	Processing time (w/o IO): 225 milliseconds
	Processing time (w/o IO): 224 milliseconds
	  Time (mean ± σ):     953.6 ms ±  16.3 ms    [User: 1480.9 ms, System: 237.3 ms]
	  Range (min … max):   942.1 ms … 965.1 ms    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  577.703343ms
	Processing time (w/o IO):  577.563741ms
	Processing time (w/o IO):  575.982643ms
	  Time (mean ± σ):      1.387 s ±  0.000 s    [User: 1.353 s, System: 0.031 s]
	  Range (min … max):    1.387 s …  1.387 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 742.869ms
	Processing time (w/o IO): 744.032ms
	Processing time (w/o IO): 756.463ms
	  Time (mean ± σ):     10.366 s ±  0.194 s    [User: 10.215 s, System: 0.147 s]
	  Range (min … max):   10.229 s … 10.503 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 2050ms
	Processing time (w/o IO): 2306ms
	Processing time (w/o IO): 2209ms
	  Time (mean ± σ):      2.988 s ±  0.037 s    [User: 3.188 s, System: 0.176 s]
	  Range (min … max):    2.961 s …  3.014 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 2009ms
	Processing time (w/o IO): 2003ms
	Processing time (w/o IO): 2002ms
	  Time (mean ± σ):      2.492 s ±  0.001 s    [User: 2.455 s, System: 0.060 s]
	  Range (min … max):    2.491 s …  2.492 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 715.7928943634033ms
	Processing time (w/o IO): 714.3900394439697ms
	Processing time (w/o IO): 715.8440351486206ms
	  Time (mean ± σ):      2.138 s ±  0.018 s    [User: 1.939 s, System: 0.131 s]
	  Range (min … max):    2.125 s …  2.151 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 395.029346ms
	Processing time (w/o IO): 393.873349ms
	Processing time (w/o IO): 394.959663ms
	  Time (mean ± σ):      1.849 s ±  0.019 s    [User: 2.798 s, System: 0.158 s]
	  Range (min … max):    1.836 s …  1.863 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 1641ms
	Processing time (w/o IO): 2490ms
	Processing time (w/o IO): 2611ms
	  Time (mean ± σ):      2.887 s ±  0.086 s    [User: 2.898 s, System: 0.099 s]
	  Range (min … max):    2.826 s …  2.948 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 1527ms
	Processing time (w/o IO): 1419ms
	Processing time (w/o IO): 1536ms
	  Time (mean ± σ):      1.678 s ±  0.120 s    [User: 1.667 s, System: 0.070 s]
	  Range (min … max):    1.593 s …  1.763 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 2037ms
	Processing time (w/o IO): 1822ms
	Processing time (w/o IO): 1687ms
	  Time (mean ± σ):      2.063 s ±  0.228 s    [User: 1.914 s, System: 0.081 s]
	  Range (min … max):    1.902 s …  2.225 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 634 ms
	Processing time (w/o IO): 634 ms
	Processing time (w/o IO): 634 ms
	  Time (mean ± σ):      1.369 s ±  0.001 s    [User: 1.326 s, System: 0.040 s]
	  Range (min … max):    1.368 s …  1.369 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 595 ms
	Processing time (w/o IO): 596 ms
	Processing time (w/o IO): 599 ms
	  Time (mean ± σ):     698.0 ms ±   2.1 ms    [User: 1647.0 ms, System: 33.3 ms]
	  Range (min … max):   696.5 ms … 699.5 ms    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 433.051ms
	Processing time (w/o IO): 434.098ms
	Processing time (w/o IO): 433.922ms
	  Time (mean ± σ):     535.8 ms ±   2.0 ms    [User: 504.1 ms, System: 31.5 ms]
	  Range (min … max):   534.3 ms … 537.2 ms    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 527ms
	Processing time (w/o IO): 528ms
	Processing time (w/o IO): 531ms
	  Time (mean ± σ):      3.306 s ±  0.048 s    [User: 3.249 s, System: 0.300 s]
	  Range (min … max):    3.272 s …  3.339 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 294ms
	Processing time (w/o IO): 293ms
	Processing time (w/o IO): 275ms
	  Time (mean ± σ):      2.666 s ±  0.041 s    [User: 4.293 s, System: 0.249 s]
	  Range (min … max):    2.638 s …  2.695 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 278ms
	Processing time (w/o IO): 278ms
	Processing time (w/o IO): 278ms
	  Time (mean ± σ):      3.226 s ±  0.019 s    [User: 4.794 s, System: 0.299 s]
	  Range (min … max):    3.213 s …  3.239 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 391ms
	Processing time (w/o IO): 390ms
	Processing time (w/o IO): 390ms
	  Time (mean ± σ):      3.464 s ±  0.005 s    [User: 3.379 s, System: 0.267 s]
	  Range (min … max):    3.461 s …  3.468 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 372.077ms
	Processing time (w/o IO): 371.4806ms
	Processing time (w/o IO): 370.6501ms
	  Time (mean ± σ):      1.072 s ±  0.006 s    [User: 1.020 s, System: 0.070 s]
	  Range (min … max):    1.068 s …  1.077 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 370.3025ms
	Processing time (w/o IO): 369.5405ms
	Processing time (w/o IO): 371.1596ms
	  Time (mean ± σ):     905.2 ms ±   3.0 ms    [User: 872.7 ms, System: 65.0 ms]
	  Range (min … max):   903.1 ms … 907.3 ms    2 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 169.1345ms
	Processing time (w/o IO): 164.1746ms
	Processing time (w/o IO): 166.4835ms
	  Time (mean ± σ):     799.1 ms ±  12.9 ms    [User: 1529.4 ms, System: 357.6 ms]
	  Range (min … max):   789.9 ms … 808.2 ms    2 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 168.1012ms
	Processing time (w/o IO): 163.5418ms
	Processing time (w/o IO): 167.6529ms
	  Time (mean ± σ):     630.3 ms ±   6.8 ms    [User: 1413.2 ms, System: 337.1 ms]
	  Range (min … max):   625.4 ms … 635.1 ms    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	1532.0551395416	ms
	Processing time (w/o IO):	1472.7869033813	ms
	Processing time (w/o IO):	1475.5058288574	ms
	  Time (mean ± σ):      2.734 s ±  0.053 s    [User: 2.658 s, System: 0.073 s]
	  Range (min … max):    2.696 s …  2.772 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	16729.98714447	ms
	Processing time (w/o IO):	17034.698009491	ms
	  Time (abs ≡):        18.857 s               [User: 18.772 s, System: 0.083 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 2673ms
	Processing time (w/o IO): 2632ms
	Processing time (w/o IO): 2642ms
	  Time (mean ± σ):      3.067 s ±  0.010 s    [User: 2.930 s, System: 0.134 s]
	  Range (min … max):    3.060 s …  3.074 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 24.346061 s
	Processing time (w/o IO): 24.507258 s
	Processing time (w/o IO): 24.450551 s
	  Time (mean ± σ):     25.514 s ±  0.039 s    [User: 25.385 s, System: 0.272 s]
	  Range (min … max):   25.487 s … 25.542 s    2 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 3.285084926s
	Processing time (w/o IO): 3.279380463s
	Processing time (w/o IO): 3.277181093s
	  Time (mean ± σ):      3.748 s ±  0.005 s    [User: 3.772 s, System: 0.100 s]
	  Range (min … max):    3.745 s …  3.751 s    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1.419361779s
	Processing time (w/o IO): 1.421843006s
	Processing time (w/o IO): 1.42789918s
	  Time (mean ± σ):      1.894 s ±  0.021 s    [User: 6.111 s, System: 0.098 s]
	  Range (min … max):    1.879 s …  1.909 s    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 3.036543602s
	Processing time (w/o IO): 3.040796813s
	Processing time (w/o IO): 3.04266125s
	  Time (mean ± σ):      3.249 s ±  0.004 s    [User: 3.173 s, System: 0.071 s]
	  Range (min … max):    3.247 s …  3.252 s    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 1.51812663s
	Processing time (w/o IO): 1.52358389s
	Processing time (w/o IO): 1.518433429s
	  Time (mean ± σ):      1.728 s ±  0.007 s    [User: 3.148 s, System: 0.085 s]
	  Range (min … max):    1.723 s …  1.733 s    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 2713.57ms
	Processing time (w/o IO): 2713.16ms
	Processing time (w/o IO): 2711.99ms
	  Time (mean ± σ):      3.662 s ±  0.003 s    [User: 3.546 s, System: 0.123 s]
	  Range (min … max):    3.660 s …  3.664 s    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 954.329ms
	Processing time (w/o IO): 954.279ms
	Processing time (w/o IO): 960.403ms
	  Time (mean ± σ):      1.861 s ±  0.007 s    [User: 4.399 s, System: 0.121 s]
	  Range (min … max):    1.856 s …  1.866 s    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 4580 ms
	Processing time (w/o IO): 4581 ms
	Processing time (w/o IO): 4577 ms
	  Time (mean ± σ):      7.096 s ±  0.034 s    [User: 6.693 s, System: 0.336 s]
	  Range (min … max):    7.071 s …  7.120 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 1760 ms
	Processing time (w/o IO): 1761 ms
	Processing time (w/o IO): 1759 ms
	  Time (mean ± σ):      4.527 s ±  0.016 s    [User: 9.168 s, System: 0.336 s]
	  Range (min … max):    4.516 s …  4.539 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 214.999s
	Processing time (w/o IO): 215.408s
	  Time (abs ≡):        215.877 s               [User: 215.699 s, System: 0.155 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 8010.131842ms
	Processing time (w/o IO): 8022.858266ms
	Processing time (w/o IO): 8020.00068ms
	  Time (mean ± σ):      8.745 s ±  0.007 s    [User: 8.621 s, System: 0.113 s]
	  Range (min … max):    8.740 s …  8.750 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 3820ms
	Processing time (w/o IO): 3817ms
	Processing time (w/o IO): 3822ms
	  Time (mean ± σ):      4.398 s ±  0.003 s    [User: 4.328 s, System: 0.064 s]
	  Range (min … max):    4.396 s …  4.400 s    2 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 4217 milliseconds
	Processing time (w/o IO): 4221 milliseconds
	Processing time (w/o IO): 4217 milliseconds
	  Time (mean ± σ):      5.203 s ±  0.009 s    [User: 5.014 s, System: 0.285 s]
	  Range (min … max):    5.197 s …  5.209 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 143 milliseconds
	Processing time (w/o IO): 141 milliseconds
	Processing time (w/o IO): 148 milliseconds
	  Time (mean ± σ):      1.598 s ±  0.005 s    [User: 1.400 s, System: 0.299 s]
	  Range (min … max):    1.594 s …  1.602 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 1944 milliseconds
	Processing time (w/o IO): 1940 milliseconds
	Processing time (w/o IO): 1955 milliseconds
	  Time (mean ± σ):      2.939 s ±  0.007 s    [User: 8.488 s, System: 0.313 s]
	  Range (min … max):    2.934 s …  2.943 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  6.073147334s
	Processing time (w/o IO):  6.05664797s
	Processing time (w/o IO):  6.077659188s
	  Time (mean ± σ):      8.451 s ±  0.013 s    [User: 8.362 s, System: 0.082 s]
	  Range (min … max):    8.443 s …  8.460 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 6.595s
	Processing time (w/o IO): 6.595s
	Processing time (w/o IO): 6.600s
	  Time (mean ± σ):     79.290 s ±  0.674 s    [User: 78.864 s, System: 0.411 s]
	  Range (min … max):   78.814 s … 79.767 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 19683ms
	Processing time (w/o IO): 19701ms
	Processing time (w/o IO): 18136ms
	  Time (mean ± σ):     20.389 s ±  1.104 s    [User: 20.601 s, System: 0.241 s]
	  Range (min … max):   19.608 s … 21.169 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 17876ms
	Processing time (w/o IO): 17885ms
	Processing time (w/o IO): 17859ms
	  Time (mean ± σ):     19.364 s ±  0.018 s    [User: 19.362 s, System: 0.130 s]
	  Range (min … max):   19.351 s … 19.377 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 6161.213994026184ms
	Processing time (w/o IO): 6194.416046142578ms
	Processing time (w/o IO): 6207.779049873352ms
	  Time (mean ± σ):     10.456 s ±  0.017 s    [User: 9.904 s, System: 0.360 s]
	  Range (min … max):   10.444 s … 10.468 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 3432.352249ms
	Processing time (w/o IO): 3423.891513ms
	Processing time (w/o IO): 3436.23498ms
	  Time (mean ± σ):      7.827 s ±  0.035 s    [User: 17.400 s, System: 0.365 s]
	  Range (min … max):    7.803 s …  7.852 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 19236ms
	Processing time (w/o IO): 14265ms
	Processing time (w/o IO): 14284ms
	  Time (mean ± σ):     15.076 s ±  0.008 s    [User: 15.069 s, System: 0.184 s]
	  Range (min … max):   15.070 s … 15.081 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 12236ms
	Processing time (w/o IO): 15424ms
	Processing time (w/o IO): 12949ms
	  Time (mean ± σ):     14.642 s ±  1.747 s    [User: 14.623 s, System: 0.158 s]
	  Range (min … max):   13.407 s … 15.877 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 17877ms
	Processing time (w/o IO): 17916ms
	Processing time (w/o IO): 15892ms
	  Time (mean ± σ):     17.500 s ±  1.352 s    [User: 17.422 s, System: 0.152 s]
	  Range (min … max):   16.544 s … 18.456 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 7524 ms
	Processing time (w/o IO): 7516 ms
	Processing time (w/o IO): 7526 ms
	  Time (mean ± σ):     15.503 s ±  0.003 s    [User: 15.377 s, System: 0.120 s]
	  Range (min … max):   15.500 s … 15.505 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 5399 ms
	Processing time (w/o IO): 5331 ms
	Processing time (w/o IO): 5329 ms
	  Time (mean ± σ):      5.684 s ±  0.003 s    [User: 14.236 s, System: 0.117 s]
	  Range (min … max):    5.682 s …  5.686 s    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 3826.516ms
	Processing time (w/o IO): 3828.812ms
	Processing time (w/o IO): 3836.693ms
	  Time (mean ± σ):      4.181 s ±  0.008 s    [User: 4.051 s, System: 0.121 s]
	  Range (min … max):    4.175 s …  4.187 s    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 4045ms
	Processing time (w/o IO): 4050ms
	Processing time (w/o IO): 4045ms
	  Time (mean ± σ):     13.511 s ±  0.020 s    [User: 14.440 s, System: 0.567 s]
	  Range (min … max):   13.496 s … 13.525 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 2502ms
	Processing time (w/o IO): 2489ms
	Processing time (w/o IO): 2406ms
	  Time (mean ± σ):     10.116 s ±  0.138 s    [User: 25.558 s, System: 0.569 s]
	  Range (min … max):   10.018 s … 10.214 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 2462ms
	Processing time (w/o IO): 2468ms
	Processing time (w/o IO): 2459ms
	  Time (mean ± σ):     13.079 s ±  0.102 s    [User: 29.082 s, System: 0.573 s]
	  Range (min … max):   13.007 s … 13.151 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 3427ms
	Processing time (w/o IO): 3410ms
	Processing time (w/o IO): 3419ms
	  Time (mean ± σ):     15.051 s ±  0.050 s    [User: 16.450 s, System: 0.595 s]
	  Range (min … max):   15.016 s … 15.086 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 3256.8512ms
	Processing time (w/o IO): 3265.5471ms
	Processing time (w/o IO): 3259.0904ms
	  Time (mean ± σ):      7.393 s ±  0.016 s    [User: 7.339 s, System: 0.177 s]
	  Range (min … max):    7.382 s …  7.405 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 3250.2373ms
	Processing time (w/o IO): 3249.0686ms
	Processing time (w/o IO): 3246.9832ms
	  Time (mean ± σ):      7.034 s ±  0.002 s    [User: 7.032 s, System: 0.150 s]
	  Range (min … max):    7.033 s …  7.035 s    2 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 1284.1416ms
	Processing time (w/o IO): 1282.2788ms
	Processing time (w/o IO): 1284.7433ms
	  Time (mean ± σ):      3.777 s ±  0.003 s    [User: 10.757 s, System: 0.888 s]
	  Range (min … max):    3.775 s …  3.778 s    2 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 1415.5107ms
	Processing time (w/o IO): 1399.9164ms
	Processing time (w/o IO): 1413.505ms
	  Time (mean ± σ):      3.604 s ±  0.013 s    [User: 11.131 s, System: 0.851 s]
	  Range (min … max):    3.595 s …  3.613 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	12046.10490799	ms
	Processing time (w/o IO):	13183.197021484	ms
	Processing time (w/o IO):	13220.216989517	ms
	  Time (mean ± σ):     17.281 s ±  0.035 s    [User: 17.090 s, System: 0.184 s]
	  Range (min … max):   17.256 s … 17.306 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	150136.3761425	ms
	Processing time (w/o IO):	151928.87806892	ms
	  Time (abs ≡):        158.329 s               [User: 158.100 s, System: 0.208 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 32792ms
	Processing time (w/o IO): 31753ms
	Processing time (w/o IO): 32107ms
	  Time (mean ± σ):     33.427 s ±  0.221 s    [User: 32.876 s, System: 0.537 s]
	  Range (min … max):   33.271 s … 33.584 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 227.378873 s
	Processing time (w/o IO): 224.989744 s
	Processing time (w/o IO): 226.132905 s
	  Time (mean ± σ):     228.792 s ±  0.751 s    [User: 228.413 s, System: 0.544 s]
	  Range (min … max):   228.261 s … 229.323 s    2 runs
	 
