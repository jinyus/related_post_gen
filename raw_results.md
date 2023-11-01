Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 23.007049ms
	Processing time (w/o IO): 22.740545ms
	Processing time (w/o IO): 22.571144ms
	Processing time (w/o IO): 22.746846ms
	Processing time (w/o IO): 22.629945ms
	Processing time (w/o IO): 22.609244ms
	Processing time (w/o IO): 22.581944ms
	Processing time (w/o IO): 22.591944ms
	Processing time (w/o IO): 22.709345ms
	Processing time (w/o IO): 22.912147ms
	Processing time (w/o IO): 22.678245ms
	Processing time (w/o IO): 22.804147ms
	Processing time (w/o IO): 22.721045ms
	  Time (mean ± σ):      62.7 ms ±   1.7 ms    [User: 60.4 ms, System: 9.5 ms]
	  Range (min … max):    60.5 ms …  65.9 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 11.714227ms
	Processing time (w/o IO): 11.651926ms
	Processing time (w/o IO): 12.08233ms
	Processing time (w/o IO): 12.206132ms
	Processing time (w/o IO): 12.212732ms
	Processing time (w/o IO): 14.84286ms
	Processing time (w/o IO): 11.824828ms
	Processing time (w/o IO): 12.03573ms
	Processing time (w/o IO): 13.88595ms
	Processing time (w/o IO): 11.416323ms
	Processing time (w/o IO): 11.807927ms
	Processing time (w/o IO): 11.726327ms
	Processing time (w/o IO): 11.860128ms
	  Time (mean ± σ):      53.2 ms ±   1.9 ms    [User: 81.1 ms, System: 11.9 ms]
	  Range (min … max):    50.2 ms …  55.7 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 23.647551ms
	Processing time (w/o IO): 24.218257ms
	Processing time (w/o IO): 23.501549ms
	Processing time (w/o IO): 23.502749ms
	Processing time (w/o IO): 23.474049ms
	Processing time (w/o IO): 24.255357ms
	Processing time (w/o IO): 23.454049ms
	Processing time (w/o IO): 23.47215ms
	Processing time (w/o IO): 23.430448ms
	Processing time (w/o IO): 23.446549ms
	Processing time (w/o IO): 23.420549ms
	Processing time (w/o IO): 23.432849ms
	Processing time (w/o IO): 23.459749ms
	  Time (mean ± σ):      38.9 ms ±   0.5 ms    [User: 33.0 ms, System: 5.8 ms]
	  Range (min … max):    38.5 ms …  40.2 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 12.379117ms
	Processing time (w/o IO): 12.62782ms
	Processing time (w/o IO): 12.595619ms
	Processing time (w/o IO): 12.580819ms
	Processing time (w/o IO): 13.031323ms
	Processing time (w/o IO): 12.165215ms
	Processing time (w/o IO): 12.209015ms
	Processing time (w/o IO): 12.227616ms
	Processing time (w/o IO): 12.235416ms
	Processing time (w/o IO): 12.231515ms
	Processing time (w/o IO): 12.240516ms
	Processing time (w/o IO): 12.159515ms
	Processing time (w/o IO): 12.204315ms
	  Time (mean ± σ):      29.7 ms ±   0.6 ms    [User: 30.4 ms, System: 11.2 ms]
	  Range (min … max):    29.1 ms …  31.0 ms    10 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 25.854ms
	Processing time (w/o IO): 27.3ms
	Processing time (w/o IO): 25.472ms
	Processing time (w/o IO): 25.044ms
	Processing time (w/o IO): 24.979ms
	Processing time (w/o IO): 25.193ms
	Processing time (w/o IO): 27.747ms
	Processing time (w/o IO): 25.827ms
	Processing time (w/o IO): 25.289ms
	Processing time (w/o IO): 24.997ms
	Processing time (w/o IO): 25.063ms
	Processing time (w/o IO): 25.203ms
	Processing time (w/o IO): 24.528ms
	  Time (mean ± σ):     107.2 ms ±   4.7 ms    [User: 97.3 ms, System: 10.6 ms]
	  Range (min … max):   104.5 ms … 119.5 ms    10 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 13.105ms
	Processing time (w/o IO): 12.951ms
	Processing time (w/o IO): 12.513ms
	Processing time (w/o IO): 12.507ms
	Processing time (w/o IO): 13.182ms
	Processing time (w/o IO): 13.173ms
	Processing time (w/o IO): 13.393ms
	Processing time (w/o IO): 13.44ms
	Processing time (w/o IO): 12.567ms
	Processing time (w/o IO): 13.3ms
	Processing time (w/o IO): 14.166ms
	Processing time (w/o IO): 12.799ms
	Processing time (w/o IO): 11.775ms
	  Time (mean ± σ):      91.7 ms ±   0.9 ms    [User: 107.3 ms, System: 8.4 ms]
	  Range (min … max):    90.5 ms …  93.3 ms    10 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 23 ms
	  Time (mean ± σ):     224.2 ms ±   2.0 ms    [User: 194.1 ms, System: 29.9 ms]
	  Range (min … max):   221.2 ms … 227.2 ms    10 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 12 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 12 ms
	Processing time (w/o IO): 12 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 13 ms
	  Time (mean ± σ):     232.7 ms ±   2.4 ms    [User: 233.5 ms, System: 33.5 ms]
	  Range (min … max):   226.9 ms … 235.0 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 1.476s
	Processing time (w/o IO): 1.465s
	Processing time (w/o IO): 1.462s
	Processing time (w/o IO): 1.457s
	Processing time (w/o IO): 1.466s
	Processing time (w/o IO): 1.466s
	Processing time (w/o IO): 1.455s
	Processing time (w/o IO): 1.471s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.463s
	Processing time (w/o IO): 1.462s
	Processing time (w/o IO): 1.464s
	Processing time (w/o IO): 1.462s
	  Time (mean ± σ):      1.531 s ±  0.004 s    [User: 1.514 s, System: 0.017 s]
	  Range (min … max):    1.523 s …  1.539 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 351.1ms
	Processing time (w/o IO): 352.9ms
	Processing time (w/o IO): 352.6ms
	Processing time (w/o IO): 352.2ms
	Processing time (w/o IO): 351.5ms
	Processing time (w/o IO): 352.3ms
	Processing time (w/o IO): 350.4ms
	Processing time (w/o IO): 351.8ms
	Processing time (w/o IO): 351.9ms
	Processing time (w/o IO): 357.6ms
	Processing time (w/o IO): 353.5ms
	Processing time (w/o IO): 353.3ms
	Processing time (w/o IO): 352.0ms
	  Time (mean ± σ):     652.0 ms ±  38.4 ms    [User: 852.2 ms, System: 400.6 ms]
	  Range (min … max):   632.0 ms … 755.5 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 60.206521ms
	Processing time (w/o IO): 60.494623ms
	Processing time (w/o IO): 60.397066ms
	Processing time (w/o IO): 60.312241ms
	Processing time (w/o IO): 60.605645ms
	Processing time (w/o IO): 60.329042ms
	Processing time (w/o IO): 60.215141ms
	Processing time (w/o IO): 60.712646ms
	Processing time (w/o IO): 60.14134ms
	Processing time (w/o IO): 60.292442ms
	Processing time (w/o IO): 59.964039ms
	Processing time (w/o IO): 60.429043ms
	Processing time (w/o IO): 60.762846ms
	  Time (mean ± σ):     110.1 ms ±   1.4 ms    [User: 100.0 ms, System: 10.1 ms]
	  Range (min … max):   108.0 ms … 113.2 ms    10 runs
	 
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
	  Time (mean ± σ):      70.1 ms ±   0.3 ms    [User: 63.4 ms, System: 6.7 ms]
	  Range (min … max):    69.7 ms …  70.9 ms    10 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 24 milliseconds
	Processing time (w/o IO): 24 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 24 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 23 milliseconds
	Processing time (w/o IO): 24 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 24 milliseconds
	Processing time (w/o IO): 24 milliseconds
	  Time (mean ± σ):      3.250 s ±  0.037 s    [User: 3.101 s, System: 0.252 s]
	  Range (min … max):    3.202 s …  3.328 s    10 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
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
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	  Time (mean ± σ):      1.030 s ±  0.026 s    [User: 0.900 s, System: 0.233 s]
	  Range (min … max):    0.999 s …  1.081 s    10 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 15 milliseconds
	Processing time (w/o IO): 13 milliseconds
	Processing time (w/o IO): 15 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 12 milliseconds
	Processing time (w/o IO): 12 milliseconds
	Processing time (w/o IO): 15 milliseconds
	Processing time (w/o IO): 15 milliseconds
	Processing time (w/o IO): 13 milliseconds
	Processing time (w/o IO): 12 milliseconds
	Processing time (w/o IO): 15 milliseconds
	Processing time (w/o IO): 12 milliseconds
	Processing time (w/o IO): 16 milliseconds
	  Time (mean ± σ):      3.445 s ±  0.039 s    [User: 4.847 s, System: 0.280 s]
	  Range (min … max):    3.377 s …  3.497 s    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  48.562127ms
	Processing time (w/o IO):  48.192018ms
	Processing time (w/o IO):  47.86041ms
	Processing time (w/o IO):  48.114317ms
	Processing time (w/o IO):  48.26742ms
	Processing time (w/o IO):  48.032615ms
	Processing time (w/o IO):  48.377123ms
	Processing time (w/o IO):  48.352122ms
	Processing time (w/o IO):  48.006314ms
	Processing time (w/o IO):  47.940412ms
	Processing time (w/o IO):  48.447276ms
	Processing time (w/o IO):  48.578178ms
	Processing time (w/o IO):  48.157872ms
	  Time (mean ± σ):     267.1 ms ±   0.9 ms    [User: 259.2 ms, System: 7.9 ms]
	  Range (min … max):   266.1 ms … 269.2 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 49.198ms
	Processing time (w/o IO): 48.531ms
	Processing time (w/o IO): 49.184ms
	Processing time (w/o IO): 48.512ms
	Processing time (w/o IO): 49.182ms
	Processing time (w/o IO): 49.216ms
	Processing time (w/o IO): 48.579ms
	Processing time (w/o IO): 49.209ms
	Processing time (w/o IO): 49.625ms
	Processing time (w/o IO): 48.637ms
	Processing time (w/o IO): 49.192ms
	Processing time (w/o IO): 48.676ms
	Processing time (w/o IO): 49.346ms
	  Time (mean ± σ):     382.8 ms ±   2.9 ms    [User: 352.4 ms, System: 30.2 ms]
	  Range (min … max):   379.9 ms … 388.9 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 168ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 156ms
	Processing time (w/o IO): 163ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 170ms
	  Time (mean ± σ):     543.9 ms ±   8.4 ms    [User: 638.6 ms, System: 122.0 ms]
	  Range (min … max):   531.0 ms … 555.5 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 129ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 129ms
	Processing time (w/o IO): 129ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	  Time (mean ± σ):     255.2 ms ±   1.4 ms    [User: 237.4 ms, System: 22.2 ms]
	  Range (min … max):   252.9 ms … 257.0 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 50.79495906829834ms
	Processing time (w/o IO): 51.15699768066406ms
	Processing time (w/o IO): 51.02503299713135ms
	Processing time (w/o IO): 50.92298984527588ms
	Processing time (w/o IO): 51.57196521759033ms
	Processing time (w/o IO): 51.52308940887451ms
	Processing time (w/o IO): 51.30207538604736ms
	Processing time (w/o IO): 50.84705352783203ms
	Processing time (w/o IO): 54.11100387573242ms
	Processing time (w/o IO): 51.834940910339355ms
	Processing time (w/o IO): 51.79798603057861ms
	Processing time (w/o IO): 52.14393138885498ms
	Processing time (w/o IO): 56.31899833679199ms
	  Time (mean ± σ):     419.3 ms ±   7.8 ms    [User: 366.0 ms, System: 35.5 ms]
	  Range (min … max):   410.2 ms … 431.7 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 32.812278ms
	Processing time (w/o IO): 31.388261ms
	Processing time (w/o IO): 33.795389ms
	Processing time (w/o IO): 31.363761ms
	Processing time (w/o IO): 32.911878ms
	Processing time (w/o IO): 31.077758ms
	Processing time (w/o IO): 31.441862ms
	Processing time (w/o IO): 32.21087ms
	Processing time (w/o IO): 31.132459ms
	Processing time (w/o IO): 31.514983ms
	Processing time (w/o IO): 30.755368ms
	Processing time (w/o IO): 32.887914ms
	Processing time (w/o IO): 31.902592ms
	  Time (mean ± σ):     396.1 ms ±   4.0 ms    [User: 419.7 ms, System: 46.1 ms]
	  Range (min … max):   391.3 ms … 404.3 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 135ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 133ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 125ms
	  Time (mean ± σ):     316.0 ms ±  24.4 ms    [User: 305.1 ms, System: 67.4 ms]
	  Range (min … max):   298.2 ms … 364.6 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 117ms
	Processing time (w/o IO): 120ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 123ms
	Processing time (w/o IO): 122ms
	Processing time (w/o IO): 119ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 133ms
	Processing time (w/o IO): 118ms
	Processing time (w/o IO): 119ms
	Processing time (w/o IO): 125ms
	Processing time (w/o IO): 120ms
	  Time (mean ± σ):     180.7 ms ±   4.0 ms    [User: 200.3 ms, System: 34.8 ms]
	  Range (min … max):   175.7 ms … 188.9 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 197ms
	Processing time (w/o IO): 190ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 199ms
	Processing time (w/o IO): 139ms
	Processing time (w/o IO): 198ms
	Processing time (w/o IO): 200ms
	Processing time (w/o IO): 199ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 138ms
	  Time (mean ± σ):     232.3 ms ±  31.0 ms    [User: 226.6 ms, System: 30.5 ms]
	  Range (min … max):   206.7 ms … 270.0 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 58 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	  Time (mean ± σ):     398.1 ms ±   6.5 ms    [User: 708.4 ms, System: 53.0 ms]
	  Range (min … max):   388.2 ms … 413.0 ms    10 runs
	 
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
	  Time (mean ± σ):     130.1 ms ±   0.8 ms    [User: 114.4 ms, System: 15.8 ms]
	  Range (min … max):   128.6 ms … 131.7 ms    10 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 45 ms
	Processing time (w/o IO): 49 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 48 ms
	Processing time (w/o IO): 48 ms
	Processing time (w/o IO): 46 ms
	Processing time (w/o IO): 45 ms
	  Time (mean ± σ):      79.2 ms ±   3.4 ms    [User: 140.5 ms, System: 12.7 ms]
	  Range (min … max):    74.5 ms …  83.7 ms    10 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 22.112ms
	Processing time (w/o IO): 22.098ms
	Processing time (w/o IO): 22.2ms
	Processing time (w/o IO): 22.197ms
	Processing time (w/o IO): 22.114ms
	Processing time (w/o IO): 22.082ms
	Processing time (w/o IO): 22.001ms
	Processing time (w/o IO): 22.133ms
	Processing time (w/o IO): 22.082ms
	Processing time (w/o IO): 22.077ms
	Processing time (w/o IO): 22.095ms
	Processing time (w/o IO): 22.001ms
	Processing time (w/o IO): 22.078ms
	  Time (mean ± σ):      50.6 ms ±   1.1 ms    [User: 40.6 ms, System: 10.0 ms]
	  Range (min … max):    49.6 ms …  53.0 ms    10 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 14.615ms
	Processing time (w/o IO): 12.106ms
	Processing time (w/o IO): 13.377ms
	Processing time (w/o IO): 12.082ms
	Processing time (w/o IO): 12.173ms
	Processing time (w/o IO): 12.847ms
	Processing time (w/o IO): 12.14ms
	Processing time (w/o IO): 12.191ms
	Processing time (w/o IO): 12.331ms
	Processing time (w/o IO): 12.16ms
	Processing time (w/o IO): 14.24ms
	Processing time (w/o IO): 13.338ms
	Processing time (w/o IO): 13.095ms
	  Time (mean ± σ):      39.1 ms ±   1.2 ms    [User: 64.2 ms, System: 8.8 ms]
	  Range (min … max):    37.6 ms …  41.1 ms    10 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 93ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	  Time (mean ± σ):      1.030 s ±  0.005 s    [User: 1.131 s, System: 0.105 s]
	  Range (min … max):    1.020 s …  1.037 s    10 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	  Time (mean ± σ):     927.1 ms ±   9.9 ms    [User: 1103.6 ms, System: 100.0 ms]
	  Range (min … max):   909.0 ms … 941.2 ms    10 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	  Time (mean ± σ):     712.1 ms ±   3.9 ms    [User: 785.0 ms, System: 88.4 ms]
	  Range (min … max):   702.9 ms … 717.5 ms    10 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	  Time (mean ± σ):     743.8 ms ±   2.6 ms    [User: 722.0 ms, System: 80.9 ms]
	  Range (min … max):   740.8 ms … 749.8 ms    10 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 27.4487ms
	Processing time (w/o IO): 27.6343ms
	Processing time (w/o IO): 27.2543ms
	Processing time (w/o IO): 28.0415ms
	Processing time (w/o IO): 27.1603ms
	Processing time (w/o IO): 27.3015ms
	Processing time (w/o IO): 27.3875ms
	Processing time (w/o IO): 27.1791ms
	Processing time (w/o IO): 27.1917ms
	Processing time (w/o IO): 27.3728ms
	Processing time (w/o IO): 28.7718ms
	Processing time (w/o IO): 27.3554ms
	Processing time (w/o IO): 27.2491ms
	  Time (mean ± σ):     211.1 ms ±   5.9 ms    [User: 168.2 ms, System: 35.8 ms]
	  Range (min … max):   203.8 ms … 225.8 ms    10 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 26.1594ms
	Processing time (w/o IO): 26.404ms
	Processing time (w/o IO): 26.3001ms
	Processing time (w/o IO): 26.3036ms
	Processing time (w/o IO): 26.2237ms
	Processing time (w/o IO): 26.3104ms
	Processing time (w/o IO): 27.5988ms
	Processing time (w/o IO): 26.3013ms
	Processing time (w/o IO): 26.2976ms
	Processing time (w/o IO): 26.3185ms
	Processing time (w/o IO): 26.4777ms
	Processing time (w/o IO): 26.4586ms
	Processing time (w/o IO): 27.3448ms
	  Time (mean ± σ):     102.5 ms ±   1.5 ms    [User: 94.6 ms, System: 25.1 ms]
	  Range (min … max):    99.6 ms … 104.8 ms    10 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 14.2251ms
	Processing time (w/o IO): 13.7672ms
	Processing time (w/o IO): 14.5257ms
	Processing time (w/o IO): 14.7955ms
	Processing time (w/o IO): 13.9106ms
	Processing time (w/o IO): 14.1609ms
	Processing time (w/o IO): 14.2015ms
	Processing time (w/o IO): 13.9426ms
	Processing time (w/o IO): 15.5717ms
	Processing time (w/o IO): 13.3137ms
	Processing time (w/o IO): 14.5977ms
	Processing time (w/o IO): 13.2453ms
	Processing time (w/o IO): 14.3935ms
	  Time (mean ± σ):     204.0 ms ±  10.4 ms    [User: 208.5 ms, System: 35.7 ms]
	  Range (min … max):   192.3 ms … 223.6 ms    10 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 11.5144ms
	Processing time (w/o IO): 11.4061ms
	Processing time (w/o IO): 11.072ms
	Processing time (w/o IO): 11.326ms
	Processing time (w/o IO): 11.4363ms
	Processing time (w/o IO): 11.1402ms
	Processing time (w/o IO): 11.1875ms
	Processing time (w/o IO): 11.2283ms
	Processing time (w/o IO): 12.8321ms
	Processing time (w/o IO): 11.4141ms
	Processing time (w/o IO): 11.3549ms
	Processing time (w/o IO): 11.3218ms
	Processing time (w/o IO): 11.7113ms
	  Time (mean ± σ):      75.0 ms ±   1.6 ms    [User: 130.6 ms, System: 28.8 ms]
	  Range (min … max):    71.4 ms …  77.7 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	91.509103775024	ms
	Processing time (w/o IO):	91.722965240479	ms
	Processing time (w/o IO):	88.781833648682	ms
	Processing time (w/o IO):	104.56395149231	ms
	Processing time (w/o IO):	88.413000106812	ms
	Processing time (w/o IO):	114.27092552185	ms
	Processing time (w/o IO):	104.76303100586	ms
	Processing time (w/o IO):	106.82916641235	ms
	Processing time (w/o IO):	113.89684677124	ms
	Processing time (w/o IO):	89.204788208008	ms
	Processing time (w/o IO):	104.48002815247	ms
	Processing time (w/o IO):	111.67597770691	ms
	Processing time (w/o IO):	87.728023529053	ms
	  Time (mean ± σ):     342.1 ms ±  10.5 ms    [User: 322.6 ms, System: 19.4 ms]
	  Range (min … max):   327.1 ms … 357.0 ms    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1096.4970588684	ms
	Processing time (w/o IO):	1092.5230979919	ms
	Processing time (w/o IO):	1089.4448757172	ms
	Processing time (w/o IO):	1109.5798015594	ms
	Processing time (w/o IO):	1091.1648273468	ms
	Processing time (w/o IO):	1091.9899940491	ms
	Processing time (w/o IO):	1117.6180839539	ms
	Processing time (w/o IO):	1092.0250415802	ms
	Processing time (w/o IO):	1090.9628868103	ms
	Processing time (w/o IO):	1092.5378799438	ms
	Processing time (w/o IO):	1093.0409431458	ms
	Processing time (w/o IO):	1092.9441452026	ms
	Processing time (w/o IO):	1092.7729606628	ms
	  Time (mean ± σ):      1.526 s ±  0.011 s    [User: 1.512 s, System: 0.013 s]
	  Range (min … max):    1.513 s …  1.545 s    10 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 146ms
	Processing time (w/o IO): 152ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 143ms
	Processing time (w/o IO): 145ms
	Processing time (w/o IO): 144ms
	Processing time (w/o IO): 149ms
	Processing time (w/o IO): 146ms
	Processing time (w/o IO): 146ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 142ms
	Processing time (w/o IO): 141ms
	  Time (mean ± σ):     242.8 ms ±  35.9 ms    [User: 204.4 ms, System: 27.6 ms]
	  Range (min … max):   225.6 ms … 344.5 ms    10 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 0.890477 s
	Processing time (w/o IO): 0.889413 s
	Processing time (w/o IO): 0.895429 s
	Processing time (w/o IO): 0.890569 s
	Processing time (w/o IO): 0.892709 s
	Processing time (w/o IO): 0.899460 s
	Processing time (w/o IO): 0.880493 s
	Processing time (w/o IO): 0.890605 s
	Processing time (w/o IO): 0.894621 s
	Processing time (w/o IO): 0.883641 s
	Processing time (w/o IO): 0.881227 s
	Processing time (w/o IO): 0.887687 s
	Processing time (w/o IO): 0.897362 s
	  Time (mean ± σ):      1.248 s ±  0.010 s    [User: 1.181 s, System: 0.101 s]
	  Range (min … max):    1.235 s …  1.267 s    10 runs
	 
Ruby:

	Benchmark 1: ruby related.rb
	Processing time (w/o IO): 3006ms
	Processing time (w/o IO): 3005ms
	Processing time (w/o IO): 3070ms
	Processing time (w/o IO): 3087ms
	Processing time (w/o IO): 3105ms
	Processing time (w/o IO): 3016ms
	Processing time (w/o IO): 3005ms
	Processing time (w/o IO): 3007ms
	Processing time (w/o IO): 3026ms
	Processing time (w/o IO): 3017ms
	Processing time (w/o IO): 3015ms
	Processing time (w/o IO): 3004ms
	Processing time (w/o IO): 3108ms
	  Time (mean ± σ):      3.157 s ±  0.043 s    [User: 3.131 s, System: 0.026 s]
	  Range (min … max):    3.122 s …  3.226 s    10 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 323.225978ms
	Processing time (w/o IO): 321.454368ms
	Processing time (w/o IO): 320.511163ms
	  Time (mean ± σ):     466.5 ms ±   1.5 ms    [User: 464.8 ms, System: 25.9 ms]
	  Range (min … max):   465.5 ms … 467.6 ms    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 165.736311ms
	Processing time (w/o IO): 165.998713ms
	Processing time (w/o IO): 165.060508ms
	  Time (mean ± σ):     317.1 ms ±   2.3 ms    [User: 787.0 ms, System: 41.7 ms]
	  Range (min … max):   315.4 ms … 318.7 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 340.773375ms
	Processing time (w/o IO): 340.688873ms
	Processing time (w/o IO): 340.786475ms
	  Time (mean ± σ):     404.1 ms ±   1.6 ms    [User: 390.6 ms, System: 13.4 ms]
	  Range (min … max):   402.9 ms … 405.2 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 175.603008ms
	Processing time (w/o IO): 176.100613ms
	Processing time (w/o IO): 174.739ms
	  Time (mean ± σ):     240.7 ms ±   1.0 ms    [User: 389.2 ms, System: 21.6 ms]
	  Range (min … max):   240.0 ms … 241.4 ms    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 313.737ms
	Processing time (w/o IO): 314.316ms
	Processing time (w/o IO): 315.731ms
	  Time (mean ± σ):     611.0 ms ±   0.1 ms    [User: 595.9 ms, System: 19.6 ms]
	  Range (min … max):   610.9 ms … 611.1 ms    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 123.993ms
	Processing time (w/o IO): 124.01ms
	Processing time (w/o IO): 122.117ms
	  Time (mean ± σ):     427.6 ms ±   2.0 ms    [User: 703.4 ms, System: 43.4 ms]
	  Range (min … max):   426.2 ms … 429.0 ms    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 322 ms
	Processing time (w/o IO): 322 ms
	Processing time (w/o IO): 323 ms
	  Time (mean ± σ):      1.173 s ±  0.007 s    [User: 1.069 s, System: 0.104 s]
	  Range (min … max):    1.168 s …  1.177 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 164 ms
	Processing time (w/o IO): 166 ms
	Processing time (w/o IO): 163 ms
	  Time (mean ± σ):      1.064 s ±  0.005 s    [User: 1.418 s, System: 0.125 s]
	  Range (min … max):    1.060 s …  1.067 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 23.591s
	Processing time (w/o IO): 24.320s
	  Time (abs ≡):        24.481 s               [User: 24.421 s, System: 0.056 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 6.368s
	Processing time (w/o IO): 6.630s
	Processing time (w/o IO): 7.470s
	  Time (mean ± σ):      7.585 s ±  0.582 s    [User: 5.210 s, System: 2.956 s]
	  Range (min … max):    7.174 s …  7.996 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 917.245814ms
	Processing time (w/o IO): 917.511617ms
	Processing time (w/o IO): 908.296129ms
	  Time (mean ± σ):      1.142 s ±  0.024 s    [User: 1.084 s, System: 0.041 s]
	  Range (min … max):    1.125 s …  1.159 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 340ms
	Processing time (w/o IO): 339ms
	Processing time (w/o IO): 340ms
	  Time (mean ± σ):     534.3 ms ±   2.0 ms    [User: 506.7 ms, System: 27.6 ms]
	  Range (min … max):   533.0 ms … 535.7 ms    2 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 364 milliseconds
	Processing time (w/o IO): 364 milliseconds
	Processing time (w/o IO): 364 milliseconds
	  Time (mean ± σ):      3.790 s ±  0.008 s    [User: 3.594 s, System: 0.298 s]
	  Range (min … max):    3.785 s …  3.796 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 51 milliseconds
	Processing time (w/o IO): 55 milliseconds
	Processing time (w/o IO): 57 milliseconds
	  Time (mean ± σ):      1.166 s ±  0.026 s    [User: 1.012 s, System: 0.258 s]
	  Range (min … max):    1.148 s …  1.185 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 223 milliseconds
	Processing time (w/o IO): 172 milliseconds
	Processing time (w/o IO): 170 milliseconds
	  Time (mean ± σ):      3.790 s ±  0.012 s    [User: 5.686 s, System: 0.302 s]
	  Range (min … max):    3.781 s …  3.798 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  573.070534ms
	Processing time (w/o IO):  576.999768ms
	Processing time (w/o IO):  574.180944ms
	  Time (mean ± σ):      1.371 s ±  0.001 s    [User: 1.336 s, System: 0.033 s]
	  Range (min … max):    1.370 s …  1.372 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 743.296ms
	Processing time (w/o IO): 742.184ms
	Processing time (w/o IO): 741.521ms
	  Time (mean ± σ):     10.792 s ±  0.084 s    [User: 10.643 s, System: 0.145 s]
	  Range (min … max):   10.732 s … 10.851 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 2261ms
	Processing time (w/o IO): 2242ms
	Processing time (w/o IO): 2059ms
	  Time (mean ± σ):      2.849 s ±  0.123 s    [User: 3.061 s, System: 0.160 s]
	  Range (min … max):    2.761 s …  2.936 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 2003ms
	Processing time (w/o IO): 2013ms
	Processing time (w/o IO): 2015ms
	  Time (mean ± σ):      2.502 s ±  0.002 s    [User: 2.460 s, System: 0.059 s]
	  Range (min … max):    2.500 s …  2.503 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 716.2140607833862ms
	Processing time (w/o IO): 718.7420129776001ms
	Processing time (w/o IO): 716.0060405731201ms
	  Time (mean ± σ):      2.158 s ±  0.014 s    [User: 1.947 s, System: 0.161 s]
	  Range (min … max):    2.148 s …  2.168 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 394.652301ms
	Processing time (w/o IO): 394.089091ms
	Processing time (w/o IO): 393.876942ms
	  Time (mean ± σ):      1.860 s ±  0.005 s    [User: 2.812 s, System: 0.149 s]
	  Range (min … max):    1.857 s …  1.864 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 2614ms
	Processing time (w/o IO): 1654ms
	Processing time (w/o IO): 2615ms
	  Time (mean ± σ):      2.473 s ±  0.673 s    [User: 2.473 s, System: 0.102 s]
	  Range (min … max):    1.998 s …  2.949 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 1418ms
	Processing time (w/o IO): 1528ms
	Processing time (w/o IO): 1527ms
	  Time (mean ± σ):      1.686 s ±  0.002 s    [User: 1.697 s, System: 0.063 s]
	  Range (min … max):    1.684 s …  1.688 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 2030ms
	Processing time (w/o IO): 1808ms
	Processing time (w/o IO): 1805ms
	  Time (mean ± σ):      1.991 s ±  0.015 s    [User: 1.950 s, System: 0.061 s]
	  Range (min … max):    1.980 s …  2.001 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 747 ms
	Processing time (w/o IO): 744 ms
	Processing time (w/o IO): 745 ms
	  Time (mean ± σ):      1.594 s ±  0.004 s    [User: 1.552 s, System: 0.040 s]
	  Range (min … max):    1.591 s …  1.597 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 465 ms
	Processing time (w/o IO): 462 ms
	Processing time (w/o IO): 461 ms
	  Time (mean ± σ):     560.1 ms ±   2.4 ms    [User: 1291.3 ms, System: 31.5 ms]
	  Range (min … max):   558.4 ms … 561.8 ms    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 317.858ms
	Processing time (w/o IO): 317.054ms
	Processing time (w/o IO): 319.269ms
	  Time (mean ± σ):     438.8 ms ±   6.1 ms    [User: 404.1 ms, System: 33.5 ms]
	  Range (min … max):   434.5 ms … 443.1 ms    2 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 172.536ms
	Processing time (w/o IO): 171.188ms
	Processing time (w/o IO): 170.731ms
	  Time (mean ± σ):     281.3 ms ±   1.6 ms    [User: 744.2 ms, System: 35.3 ms]
	  Range (min … max):   280.2 ms … 282.5 ms    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 531ms
	Processing time (w/o IO): 528ms
	Processing time (w/o IO): 528ms
	  Time (mean ± σ):      3.256 s ±  0.005 s    [User: 3.254 s, System: 0.241 s]
	  Range (min … max):    3.253 s …  3.260 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 285ms
	Processing time (w/o IO): 277ms
	Processing time (w/o IO): 278ms
	  Time (mean ± σ):      2.651 s ±  0.005 s    [User: 4.259 s, System: 0.249 s]
	  Range (min … max):    2.647 s …  2.654 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 231ms
	Processing time (w/o IO): 231ms
	Processing time (w/o IO): 232ms
	  Time (mean ± σ):      3.070 s ±  0.003 s    [User: 4.400 s, System: 0.243 s]
	  Range (min … max):    3.068 s …  3.072 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 391ms
	Processing time (w/o IO): 390ms
	Processing time (w/o IO): 390ms
	  Time (mean ± σ):      3.438 s ±  0.001 s    [User: 3.363 s, System: 0.269 s]
	  Range (min … max):    3.438 s …  3.438 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 377.1119ms
	Processing time (w/o IO): 374.9292ms
	Processing time (w/o IO): 373.9491ms
	  Time (mean ± σ):      1.091 s ±  0.004 s    [User: 1.010 s, System: 0.088 s]
	  Range (min … max):    1.087 s …  1.094 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 369.5336ms
	Processing time (w/o IO): 374.5408ms
	Processing time (w/o IO): 371.8048ms
	  Time (mean ± σ):     914.9 ms ±   2.9 ms    [User: 892.4 ms, System: 55.6 ms]
	  Range (min … max):   912.8 ms … 916.9 ms    2 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 123.2136ms
	Processing time (w/o IO): 128.0367ms
	Processing time (w/o IO): 121.865ms
	  Time (mean ± σ):     586.3 ms ±   2.4 ms    [User: 1191.6 ms, System: 75.5 ms]
	  Range (min … max):   584.6 ms … 588.0 ms    2 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 141.7982ms
	Processing time (w/o IO): 141.7808ms
	Processing time (w/o IO): 142.579ms
	  Time (mean ± σ):     452.6 ms ±   1.7 ms    [User: 1232.6 ms, System: 66.8 ms]
	  Range (min … max):   451.4 ms … 453.9 ms    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	1166.5840148926	ms
	Processing time (w/o IO):	1178.0600547791	ms
	Processing time (w/o IO):	1169.8770523071	ms
	  Time (mean ± σ):      2.491 s ±  0.032 s    [User: 2.429 s, System: 0.059 s]
	  Range (min … max):    2.468 s …  2.514 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	16739.398956299	ms
	Processing time (w/o IO):	16757.182121277	ms
	  Time (abs ≡):        18.663 s               [User: 18.597 s, System: 0.063 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 2758ms
	Processing time (w/o IO): 2627ms
	Processing time (w/o IO): 2635ms
	  Time (mean ± σ):      3.044 s ±  0.006 s    [User: 2.911 s, System: 0.132 s]
	  Range (min … max):    3.040 s …  3.049 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 14.491722 s
	Processing time (w/o IO): 14.451996 s
	Processing time (w/o IO): 14.574810 s
	  Time (mean ± σ):     15.562 s ±  0.087 s    [User: 15.365 s, System: 0.246 s]
	  Range (min … max):   15.500 s … 15.623 s    2 runs
	 
Ruby:

	Benchmark 1: ruby related.rb
	Processing time (w/o IO): 47504ms
	Processing time (w/o IO): 47461ms
	Processing time (w/o IO): 47853ms
	  Time (mean ± σ):     47.959 s ±  0.278 s    [User: 47.881 s, System: 0.071 s]
	  Range (min … max):   47.762 s … 48.156 s    2 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 2.854833616s
	Processing time (w/o IO): 2.855201631s
	Processing time (w/o IO): 2.852497347s
	  Time (mean ± σ):      3.367 s ±  0.008 s    [User: 3.389 s, System: 0.104 s]
	  Range (min … max):    3.361 s …  3.373 s    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1.423275017s
	Processing time (w/o IO): 1.414575106s
	Processing time (w/o IO): 1.426015351s
	  Time (mean ± σ):      1.893 s ±  0.020 s    [User: 6.116 s, System: 0.109 s]
	  Range (min … max):    1.878 s …  1.907 s    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 3.030940992s
	Processing time (w/o IO): 3.031815569s
	Processing time (w/o IO): 3.047464363s
	  Time (mean ± σ):      3.249 s ±  0.007 s    [User: 3.159 s, System: 0.082 s]
	  Range (min … max):    3.243 s …  3.254 s    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 1.520579053s
	Processing time (w/o IO): 1.514469963s
	Processing time (w/o IO): 1.516619995s
	  Time (mean ± σ):      1.775 s ±  0.072 s    [User: 3.141 s, System: 0.083 s]
	  Range (min … max):    1.724 s …  1.826 s    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 2701.58ms
	Processing time (w/o IO): 2709.58ms
	Processing time (w/o IO): 2700.61ms
	  Time (mean ± σ):      3.651 s ±  0.014 s    [User: 3.539 s, System: 0.116 s]
	  Range (min … max):    3.641 s …  3.660 s    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 972.278ms
	Processing time (w/o IO): 971.793ms
	Processing time (w/o IO): 969.725ms
	  Time (mean ± σ):      1.901 s ±  0.008 s    [User: 4.503 s, System: 0.107 s]
	  Range (min … max):    1.895 s …  1.906 s    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 2792 ms
	Processing time (w/o IO): 2782 ms
	Processing time (w/o IO): 2785 ms
	  Time (mean ± σ):      5.401 s ±  0.004 s    [User: 4.920 s, System: 0.286 s]
	  Range (min … max):    5.398 s …  5.404 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 1408 ms
	Processing time (w/o IO): 1402 ms
	Processing time (w/o IO): 1405 ms
	  Time (mean ± σ):      4.246 s ±  0.042 s    [User: 7.884 s, System: 0.332 s]
	  Range (min … max):    4.217 s …  4.276 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 213.627s
	Processing time (w/o IO): 215.072s
	  Time (abs ≡):        215.502 s               [User: 215.347 s, System: 0.123 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 8000.874789ms
	Processing time (w/o IO): 7987.847422ms
	Processing time (w/o IO): 7985.37062ms
	  Time (mean ± σ):      8.711 s ±  0.003 s    [User: 8.622 s, System: 0.081 s]
	  Range (min … max):    8.709 s …  8.713 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 3012ms
	Processing time (w/o IO): 3010ms
	Processing time (w/o IO): 3015ms
	  Time (mean ± σ):      3.609 s ±  0.005 s    [User: 3.553 s, System: 0.049 s]
	  Range (min … max):    3.605 s …  3.612 s    2 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 4223 milliseconds
	Processing time (w/o IO): 4215 milliseconds
	Processing time (w/o IO): 4220 milliseconds
	  Time (mean ± σ):      7.946 s ±  0.010 s    [User: 7.701 s, System: 0.340 s]
	  Range (min … max):    7.939 s …  7.954 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 143 milliseconds
	Processing time (w/o IO): 141 milliseconds
	Processing time (w/o IO): 147 milliseconds
	  Time (mean ± σ):      1.701 s ±  0.070 s    [User: 1.397 s, System: 0.345 s]
	  Range (min … max):    1.652 s …  1.750 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 1874 milliseconds
	Processing time (w/o IO): 1906 milliseconds
	Processing time (w/o IO): 1478 milliseconds
	  Time (mean ± σ):      5.656 s ±  0.352 s    [User: 11.814 s, System: 0.395 s]
	  Range (min … max):    5.408 s …  5.905 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  5.044533161s
	Processing time (w/o IO):  5.067190225s
	Processing time (w/o IO):  5.040336101s
	  Time (mean ± σ):      7.440 s ±  0.013 s    [User: 7.346 s, System: 0.085 s]
	  Range (min … max):    7.431 s …  7.450 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 6.585s
	Processing time (w/o IO): 6.585s
	Processing time (w/o IO): 6.586s
	  Time (mean ± σ):     84.122 s ±  0.006 s    [User: 83.700 s, System: 0.408 s]
	  Range (min … max):   84.118 s … 84.127 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 19661ms
	Processing time (w/o IO): 19640ms
	Processing time (w/o IO): 19654ms
	  Time (mean ± σ):     21.136 s ±  0.013 s    [User: 21.370 s, System: 0.224 s]
	  Range (min … max):   21.127 s … 21.146 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 17855ms
	Processing time (w/o IO): 17859ms
	Processing time (w/o IO): 17841ms
	  Time (mean ± σ):     19.373 s ±  0.029 s    [User: 19.355 s, System: 0.151 s]
	  Range (min … max):   19.352 s … 19.393 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 6226.067066192627ms
	Processing time (w/o IO): 6179.121971130371ms
	Processing time (w/o IO): 6183.452010154724ms
	  Time (mean ± σ):     10.523 s ±  0.027 s    [User: 10.011 s, System: 0.337 s]
	  Range (min … max):   10.504 s … 10.541 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 3431.176583ms
	Processing time (w/o IO): 3462.780973ms
	Processing time (w/o IO): 3458.942524ms
	  Time (mean ± σ):      7.855 s ±  0.075 s    [User: 17.549 s, System: 0.382 s]
	  Range (min … max):    7.802 s …  7.908 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 18669ms
	Processing time (w/o IO): 14289ms
	Processing time (w/o IO): 14348ms
	  Time (mean ± σ):     15.141 s ±  0.045 s    [User: 15.130 s, System: 0.194 s]
	  Range (min … max):   15.109 s … 15.172 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 15350ms
	Processing time (w/o IO): 11123ms
	Processing time (w/o IO): 12935ms
	  Time (mean ± σ):     12.470 s ±  1.276 s    [User: 12.475 s, System: 0.134 s]
	  Range (min … max):   11.568 s … 13.372 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 15891ms
	Processing time (w/o IO): 17919ms
	Processing time (w/o IO): 17877ms
	  Time (mean ± σ):     18.544 s ±  0.246 s    [User: 18.396 s, System: 0.176 s]
	  Range (min … max):   18.370 s … 18.717 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 5551 ms
	Processing time (w/o IO): 5558 ms
	Processing time (w/o IO): 5540 ms
	  Time (mean ± σ):     11.595 s ±  0.005 s    [User: 11.471 s, System: 0.115 s]
	  Range (min … max):   11.592 s … 11.599 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 4129 ms
	Processing time (w/o IO): 4121 ms
	Processing time (w/o IO): 4122 ms
	  Time (mean ± σ):      4.477 s ±  0.003 s    [User: 11.040 s, System: 0.114 s]
	  Range (min … max):    4.475 s …  4.479 s    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 2846.723ms
	Processing time (w/o IO): 2843.795ms
	Processing time (w/o IO): 2842.767ms
	  Time (mean ± σ):      3.245 s ±  0.004 s    [User: 3.152 s, System: 0.083 s]
	  Range (min … max):    3.242 s …  3.248 s    2 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 1476.093ms
	Processing time (w/o IO): 1474.345ms
	Processing time (w/o IO): 1475.683ms
	  Time (mean ± σ):      1.851 s ±  0.013 s    [User: 6.122 s, System: 0.105 s]
	  Range (min … max):    1.841 s …  1.860 s    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 4046ms
	Processing time (w/o IO): 4039ms
	Processing time (w/o IO): 4048ms
	  Time (mean ± σ):     13.351 s ±  0.074 s    [User: 14.278 s, System: 0.571 s]
	  Range (min … max):   13.298 s … 13.403 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 2483ms
	Processing time (w/o IO): 2507ms
	Processing time (w/o IO): 2396ms
	  Time (mean ± σ):     10.179 s ±  0.096 s    [User: 25.650 s, System: 0.549 s]
	  Range (min … max):   10.111 s … 10.247 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 2027ms
	Processing time (w/o IO): 2026ms
	Processing time (w/o IO): 2026ms
	  Time (mean ± σ):     12.102 s ±  0.052 s    [User: 25.280 s, System: 0.607 s]
	  Range (min … max):   12.065 s … 12.139 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 3411ms
	Processing time (w/o IO): 3414ms
	Processing time (w/o IO): 3411ms
	  Time (mean ± σ):     15.007 s ±  0.034 s    [User: 16.520 s, System: 0.505 s]
	  Range (min … max):   14.983 s … 15.031 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 3315.7881ms
	Processing time (w/o IO): 3265.3917ms
	Processing time (w/o IO): 3250.5808ms
	  Time (mean ± σ):      7.386 s ±  0.023 s    [User: 7.362 s, System: 0.151 s]
	  Range (min … max):    7.370 s …  7.403 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 3251.5075ms
	Processing time (w/o IO): 3245.3474ms
	Processing time (w/o IO): 3246.3182ms
	  Time (mean ± σ):      7.033 s ±  0.015 s    [User: 6.987 s, System: 0.191 s]
	  Range (min … max):    7.022 s …  7.043 s    2 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 1015.227ms
	Processing time (w/o IO): 1013.6227ms
	Processing time (w/o IO): 1007.4484ms
	  Time (mean ± σ):      2.909 s ±  0.006 s    [User: 8.666 s, System: 0.155 s]
	  Range (min … max):    2.905 s …  2.913 s    2 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 1195.9344ms
	Processing time (w/o IO): 1196.516ms
	Processing time (w/o IO): 1188.095ms
	  Time (mean ± σ):      2.910 s ±  0.008 s    [User: 9.818 s, System: 0.164 s]
	  Range (min … max):    2.904 s …  2.915 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	13067.625999451	ms
	Processing time (w/o IO):	13135.457992554	ms
	Processing time (w/o IO):	9803.722858429	ms
	  Time (mean ± σ):     15.706 s ±  2.237 s    [User: 15.517 s, System: 0.180 s]
	  Range (min … max):   14.124 s … 17.287 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	150035.57491302	ms
	Processing time (w/o IO):	149707.57603645	ms
	  Time (abs ≡):        156.667 s               [User: 156.444 s, System: 0.203 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 36596ms
	Processing time (w/o IO): 36157ms
	Processing time (w/o IO): 36504ms
	  Time (mean ± σ):     37.915 s ±  0.278 s    [User: 37.110 s, System: 0.794 s]
	  Range (min … max):   37.718 s … 38.111 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 137.357316 s
	Processing time (w/o IO): 136.215720 s
	Processing time (w/o IO): 133.322323 s
	  Time (mean ± σ):     138.003 s ±  2.024 s    [User: 137.208 s, System: 0.851 s]
	  Range (min … max):   136.572 s … 139.434 s    2 runs
	 
Ruby:

	Benchmark 1: ruby related.rb
	Processing time (w/o IO): 427663ms
	Processing time (w/o IO): 429837ms
	Processing time (w/o IO): 425916ms
	  Time (mean ± σ):     428.673 s ±  2.787 s    [User: 428.485 s, System: 0.151 s]
	  Range (min … max):   426.703 s … 430.644 s    2 runs
	 
