Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 22.485386ms
	Processing time (w/o IO): 22.627587ms
	Processing time (w/o IO): 22.728389ms
	Processing time (w/o IO): 22.478486ms
	Processing time (w/o IO): 22.874191ms
	Processing time (w/o IO): 22.716789ms
	Processing time (w/o IO): 22.556387ms
	Processing time (w/o IO): 22.652889ms
	Processing time (w/o IO): 22.690788ms
	Processing time (w/o IO): 23.252496ms
	Processing time (w/o IO): 22.717189ms
	Processing time (w/o IO): 23.343497ms
	Processing time (w/o IO): 23.396797ms
	  Time (mean ± σ):      63.0 ms ±   2.1 ms    [User: 59.9 ms, System: 10.6 ms]
	  Range (min … max):    61.2 ms …  68.3 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 11.630948ms
	Processing time (w/o IO): 11.557147ms
	Processing time (w/o IO): 11.776449ms
	Processing time (w/o IO): 12.859264ms
	Processing time (w/o IO): 11.685749ms
	Processing time (w/o IO): 11.761149ms
	Processing time (w/o IO): 11.617248ms
	Processing time (w/o IO): 11.571047ms
	Processing time (w/o IO): 11.735249ms
	Processing time (w/o IO): 11.532947ms
	Processing time (w/o IO): 11.503647ms
	Processing time (w/o IO): 13.38437ms
	Processing time (w/o IO): 11.82975ms
	  Time (mean ± σ):      51.8 ms ±   1.4 ms    [User: 76.3 ms, System: 14.4 ms]
	  Range (min … max):    49.5 ms …  53.6 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 23.481173ms
	Processing time (w/o IO): 23.518474ms
	Processing time (w/o IO): 23.468573ms
	Processing time (w/o IO): 23.708877ms
	Processing time (w/o IO): 23.693377ms
	Processing time (w/o IO): 23.619775ms
	Processing time (w/o IO): 23.475474ms
	Processing time (w/o IO): 23.487274ms
	Processing time (w/o IO): 23.466473ms
	Processing time (w/o IO): 23.476974ms
	Processing time (w/o IO): 23.512474ms
	Processing time (w/o IO): 23.457473ms
	Processing time (w/o IO): 23.652377ms
	  Time (mean ± σ):      38.7 ms ±   1.2 ms    [User: 31.0 ms, System: 7.7 ms]
	  Range (min … max):    37.7 ms …  41.2 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 12.667296ms
	Processing time (w/o IO): 12.425592ms
	Processing time (w/o IO): 12.352892ms
	Processing time (w/o IO): 12.331591ms
	Processing time (w/o IO): 13.391007ms
	Processing time (w/o IO): 12.173488ms
	Processing time (w/o IO): 12.199889ms
	Processing time (w/o IO): 12.174189ms
	Processing time (w/o IO): 12.079887ms
	Processing time (w/o IO): 12.218589ms
	Processing time (w/o IO): 12.627095ms
	Processing time (w/o IO): 12.179589ms
	Processing time (w/o IO): 12.188788ms
	  Time (mean ± σ):      29.1 ms ±   1.1 ms    [User: 31.8 ms, System: 9.1 ms]
	  Range (min … max):    28.2 ms …  32.0 ms    10 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 25.212ms
	Processing time (w/o IO): 24.726ms
	Processing time (w/o IO): 24.661ms
	Processing time (w/o IO): 25.051ms
	Processing time (w/o IO): 24.268ms
	Processing time (w/o IO): 25.32ms
	Processing time (w/o IO): 25.096ms
	Processing time (w/o IO): 25.091ms
	Processing time (w/o IO): 24.63ms
	Processing time (w/o IO): 24.315ms
	Processing time (w/o IO): 24.988ms
	Processing time (w/o IO): 24.989ms
	Processing time (w/o IO): 24.895ms
	  Time (mean ± σ):     104.4 ms ±   0.5 ms    [User: 96.2 ms, System: 9.5 ms]
	  Range (min … max):   103.7 ms … 105.1 ms    10 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 12.582ms
	Processing time (w/o IO): 13.385ms
	Processing time (w/o IO): 13.129ms
	Processing time (w/o IO): 12.269ms
	Processing time (w/o IO): 12.665ms
	Processing time (w/o IO): 13.188ms
	Processing time (w/o IO): 13.057ms
	Processing time (w/o IO): 13.697ms
	Processing time (w/o IO): 12.564ms
	Processing time (w/o IO): 13.594ms
	Processing time (w/o IO): 12.864ms
	Processing time (w/o IO): 11.7ms
	Processing time (w/o IO): 13.206ms
	  Time (mean ± σ):      91.0 ms ±   0.7 ms    [User: 102.0 ms, System: 12.8 ms]
	  Range (min … max):    90.0 ms …  92.2 ms    10 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 22 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 22 ms
	Processing time (w/o IO): 22 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 22 ms
	Processing time (w/o IO): 22 ms
	Processing time (w/o IO): 22 ms
	Processing time (w/o IO): 22 ms
	Processing time (w/o IO): 22 ms
	Processing time (w/o IO): 23 ms
	  Time (mean ± σ):     213.3 ms ±   1.2 ms    [User: 187.3 ms, System: 26.0 ms]
	  Range (min … max):   211.6 ms … 215.5 ms    10 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 12 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 12 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 14 ms
	  Time (mean ± σ):     231.4 ms ±   4.4 ms    [User: 235.4 ms, System: 30.1 ms]
	  Range (min … max):   227.4 ms … 242.2 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 1.481s
	Processing time (w/o IO): 1.516s
	Processing time (w/o IO): 1.461s
	Processing time (w/o IO): 1.465s
	Processing time (w/o IO): 1.459s
	Processing time (w/o IO): 1.462s
	Processing time (w/o IO): 1.466s
	Processing time (w/o IO): 1.468s
	Processing time (w/o IO): 1.464s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.459s
	Processing time (w/o IO): 1.459s
	Processing time (w/o IO): 1.463s
	  Time (mean ± σ):      1.530 s ±  0.003 s    [User: 1.511 s, System: 0.019 s]
	  Range (min … max):    1.526 s …  1.535 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 351.7ms
	Processing time (w/o IO): 351.4ms
	Processing time (w/o IO): 353.3ms
	Processing time (w/o IO): 352.3ms
	Processing time (w/o IO): 351.9ms
	Processing time (w/o IO): 353.2ms
	Processing time (w/o IO): 351.9ms
	Processing time (w/o IO): 352.0ms
	Processing time (w/o IO): 352.5ms
	Processing time (w/o IO): 353.0ms
	Processing time (w/o IO): 356.3ms
	Processing time (w/o IO): 360.6ms
	Processing time (w/o IO): 353.1ms
	  Time (mean ± σ):     636.2 ms ±   7.3 ms    [User: 852.2 ms, System: 397.4 ms]
	  Range (min … max):   629.2 ms … 652.6 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 60.956009ms
	Processing time (w/o IO): 60.353001ms
	Processing time (w/o IO): 60.2448ms
	Processing time (w/o IO): 60.840307ms
	Processing time (w/o IO): 60.128198ms
	Processing time (w/o IO): 60.091398ms
	Processing time (w/o IO): 60.088697ms
	Processing time (w/o IO): 60.169198ms
	Processing time (w/o IO): 61.018309ms
	Processing time (w/o IO): 60.230999ms
	Processing time (w/o IO): 60.2884ms
	Processing time (w/o IO): 60.434202ms
	Processing time (w/o IO): 60.162898ms
	  Time (mean ± σ):     109.0 ms ±   1.4 ms    [User: 96.3 ms, System: 12.5 ms]
	  Range (min … max):   107.5 ms … 111.2 ms    10 runs
	 
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
	  Time (mean ± σ):      69.4 ms ±   0.3 ms    [User: 65.5 ms, System: 4.0 ms]
	  Range (min … max):    69.0 ms …  69.9 ms    10 runs
	 
Julia:

	Benchmark 1: julia --startup-file=no --project=Related -e "using Related; main()"
	Processing time (w/o IO): 24 milliseconds
	Processing time (w/o IO): 24 milliseconds
	Processing time (w/o IO): 24 milliseconds
	Processing time (w/o IO): 24 milliseconds
	Processing time (w/o IO): 24 milliseconds
	Processing time (w/o IO): 24 milliseconds
	Processing time (w/o IO): 24 milliseconds
	Processing time (w/o IO): 24 milliseconds
	Processing time (w/o IO): 24 milliseconds
	Processing time (w/o IO): 24 milliseconds
	Processing time (w/o IO): 24 milliseconds
	Processing time (w/o IO): 24 milliseconds
	Processing time (w/o IO): 24 milliseconds
	  Time (mean ± σ):      1.010 s ±  0.014 s    [User: 0.894 s, System: 0.220 s]
	  Range (min … max):    0.991 s …  1.029 s    10 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 7 milliseconds
	Processing time (w/o IO): 7 milliseconds
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
	  Time (mean ± σ):     995.7 ms ±  13.7 ms    [User: 876.1 ms, System: 223.3 ms]
	  Range (min … max):   978.5 ms … 1019.1 ms    10 runs
	 
Julia Concurrent:

	Benchmark 1: julia --startup-file=no --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 15 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 17 milliseconds
	  Time (mean ± σ):     994.2 ms ±  14.4 ms    [User: 920.2 ms, System: 226.0 ms]
	  Range (min … max):   981.5 ms … 1021.3 ms    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  48.09185ms
	Processing time (w/o IO):  48.249553ms
	Processing time (w/o IO):  48.677225ms
	Processing time (w/o IO):  48.003115ms
	Processing time (w/o IO):  48.310518ms
	Processing time (w/o IO):  48.043415ms
	Processing time (w/o IO):  48.221017ms
	Processing time (w/o IO):  48.014814ms
	Processing time (w/o IO):  48.260117ms
	Processing time (w/o IO):  48.088615ms
	Processing time (w/o IO):  47.979814ms
	Processing time (w/o IO):  48.096416ms
	Processing time (w/o IO):  48.548921ms
	  Time (mean ± σ):     268.5 ms ±   0.8 ms    [User: 257.1 ms, System: 11.4 ms]
	  Range (min … max):   267.6 ms … 269.9 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 48.958ms
	Processing time (w/o IO): 48.691ms
	Processing time (w/o IO): 49.060ms
	Processing time (w/o IO): 48.478ms
	Processing time (w/o IO): 49.006ms
	Processing time (w/o IO): 48.712ms
	Processing time (w/o IO): 48.535ms
	Processing time (w/o IO): 49.019ms
	Processing time (w/o IO): 48.904ms
	Processing time (w/o IO): 48.816ms
	Processing time (w/o IO): 48.805ms
	Processing time (w/o IO): 48.739ms
	Processing time (w/o IO): 48.371ms
	  Time (mean ± σ):     368.3 ms ±   2.4 ms    [User: 335.9 ms, System: 32.3 ms]
	  Range (min … max):   363.1 ms … 371.3 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 168ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 176ms
	Processing time (w/o IO): 169ms
	  Time (mean ± σ):     543.6 ms ±   9.6 ms    [User: 657.1 ms, System: 101.7 ms]
	  Range (min … max):   533.0 ms … 558.8 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 135ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 129ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 129ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	  Time (mean ± σ):     256.5 ms ±   2.3 ms    [User: 239.4 ms, System: 21.2 ms]
	  Range (min … max):   253.7 ms … 261.8 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 50.66800117492676ms
	Processing time (w/o IO): 50.972938537597656ms
	Processing time (w/o IO): 50.67598819732666ms
	Processing time (w/o IO): 50.63605308532715ms
	Processing time (w/o IO): 50.613999366760254ms
	Processing time (w/o IO): 51.03409290313721ms
	Processing time (w/o IO): 51.10800266265869ms
	Processing time (w/o IO): 50.64594745635986ms
	Processing time (w/o IO): 50.45604705810547ms
	Processing time (w/o IO): 50.60899257659912ms
	Processing time (w/o IO): 50.230979919433594ms
	Processing time (w/o IO): 50.938963890075684ms
	Processing time (w/o IO): 50.81498622894287ms
	  Time (mean ± σ):     408.2 ms ±   5.1 ms    [User: 354.3 ms, System: 35.0 ms]
	  Range (min … max):   402.6 ms … 416.7 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 31.344368ms
	Processing time (w/o IO): 31.157666ms
	Processing time (w/o IO): 31.262367ms
	Processing time (w/o IO): 31.606171ms
	Processing time (w/o IO): 30.981364ms
	Processing time (w/o IO): 30.710961ms
	Processing time (w/o IO): 31.659172ms
	Processing time (w/o IO): 31.197267ms
	Processing time (w/o IO): 30.585259ms
	Processing time (w/o IO): 31.609272ms
	Processing time (w/o IO): 30.894563ms
	Processing time (w/o IO): 31.010165ms
	Processing time (w/o IO): 31.027965ms
	  Time (mean ± σ):     388.2 ms ±   3.2 ms    [User: 419.7 ms, System: 37.7 ms]
	  Range (min … max):   384.2 ms … 393.8 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 136ms
	Processing time (w/o IO): 125ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 129ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 128ms
	Processing time (w/o IO): 132ms
	  Time (mean ± σ):     303.4 ms ±   5.8 ms    [User: 303.2 ms, System: 56.0 ms]
	  Range (min … max):   296.4 ms … 315.8 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 129ms
	Processing time (w/o IO): 119ms
	Processing time (w/o IO): 120ms
	Processing time (w/o IO): 117ms
	Processing time (w/o IO): 116ms
	Processing time (w/o IO): 125ms
	Processing time (w/o IO): 125ms
	Processing time (w/o IO): 118ms
	Processing time (w/o IO): 110ms
	Processing time (w/o IO): 122ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 124ms
	  Time (mean ± σ):     177.8 ms ±   5.8 ms    [User: 197.2 ms, System: 33.6 ms]
	  Range (min … max):   168.7 ms … 187.0 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 197ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 139ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 198ms
	Processing time (w/o IO): 135ms
	Processing time (w/o IO): 198ms
	Processing time (w/o IO): 135ms
	Processing time (w/o IO): 193ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 133ms
	  Time (mean ± σ):     227.7 ms ±  31.0 ms    [User: 221.9 ms, System: 27.8 ms]
	  Range (min … max):   201.8 ms … 267.6 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 52 ms
	  Time (mean ± σ):     387.9 ms ±  23.1 ms    [User: 679.1 ms, System: 45.1 ms]
	  Range (min … max):   369.2 ms … 449.8 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 42 ms
	Processing time (w/o IO): 42 ms
	Processing time (w/o IO): 42 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 42 ms
	Processing time (w/o IO): 42 ms
	Processing time (w/o IO): 42 ms
	Processing time (w/o IO): 42 ms
	Processing time (w/o IO): 42 ms
	Processing time (w/o IO): 42 ms
	Processing time (w/o IO): 42 ms
	Processing time (w/o IO): 42 ms
	Processing time (w/o IO): 43 ms
	  Time (mean ± σ):     114.4 ms ±   0.7 ms    [User: 102.2 ms, System: 12.3 ms]
	  Range (min … max):   113.4 ms … 115.4 ms    10 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 49 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 46 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 48 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 48 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 48 ms
	  Time (mean ± σ):      77.9 ms ±   2.4 ms    [User: 143.9 ms, System: 7.8 ms]
	  Range (min … max):    73.9 ms …  83.1 ms    10 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 22.406ms
	Processing time (w/o IO): 22.071ms
	Processing time (w/o IO): 22.087ms
	Processing time (w/o IO): 22.109ms
	Processing time (w/o IO): 22.196ms
	Processing time (w/o IO): 21.994ms
	Processing time (w/o IO): 22.004ms
	Processing time (w/o IO): 22.179ms
	Processing time (w/o IO): 22.077ms
	Processing time (w/o IO): 22.132ms
	Processing time (w/o IO): 21.984ms
	Processing time (w/o IO): 22.043ms
	Processing time (w/o IO): 22.063ms
	  Time (mean ± σ):      50.6 ms ±   1.0 ms    [User: 42.6 ms, System: 8.0 ms]
	  Range (min … max):    49.8 ms …  53.1 ms    10 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 14.169ms
	Processing time (w/o IO): 12.958ms
	Processing time (w/o IO): 12.106ms
	Processing time (w/o IO): 12.81ms
	Processing time (w/o IO): 12.394ms
	Processing time (w/o IO): 12.239ms
	Processing time (w/o IO): 12.034ms
	Processing time (w/o IO): 12.669ms
	Processing time (w/o IO): 14.871ms
	Processing time (w/o IO): 14.15ms
	Processing time (w/o IO): 13.232ms
	Processing time (w/o IO): 13.295ms
	Processing time (w/o IO): 12.662ms
	  Time (mean ± σ):      39.0 ms ±   1.2 ms    [User: 64.4 ms, System: 9.7 ms]
	  Range (min … max):    37.5 ms …  41.6 ms    10 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 93ms
	Processing time (w/o IO): 93ms
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
	Processing time (w/o IO): 91ms
	  Time (mean ± σ):      1.033 s ±  0.004 s    [User: 1.135 s, System: 0.105 s]
	  Range (min … max):    1.028 s …  1.039 s    10 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 22ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	  Time (mean ± σ):     935.2 ms ±   7.5 ms    [User: 1107.9 ms, System: 98.2 ms]
	  Range (min … max):   921.4 ms … 943.1 ms    10 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 16ms
	  Time (mean ± σ):     710.5 ms ±   3.6 ms    [User: 780.8 ms, System: 86.9 ms]
	  Range (min … max):   702.9 ms … 716.9 ms    10 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	  Time (mean ± σ):     746.0 ms ±   4.3 ms    [User: 721.0 ms, System: 83.9 ms]
	  Range (min … max):   741.9 ms … 754.7 ms    10 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 27.7152ms
	Processing time (w/o IO): 27.4459ms
	Processing time (w/o IO): 28.5454ms
	Processing time (w/o IO): 26.9908ms
	Processing time (w/o IO): 27.1155ms
	Processing time (w/o IO): 27.0333ms
	Processing time (w/o IO): 27.0551ms
	Processing time (w/o IO): 27.3464ms
	Processing time (w/o IO): 27.1213ms
	Processing time (w/o IO): 27.4917ms
	Processing time (w/o IO): 27.2628ms
	Processing time (w/o IO): 26.9596ms
	Processing time (w/o IO): 27.17ms
	  Time (mean ± σ):     209.7 ms ±   6.0 ms    [User: 173.5 ms, System: 29.1 ms]
	  Range (min … max):   203.5 ms … 222.5 ms    10 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 26.2736ms
	Processing time (w/o IO): 26.1079ms
	Processing time (w/o IO): 26.0191ms
	Processing time (w/o IO): 25.9832ms
	Processing time (w/o IO): 26.3669ms
	Processing time (w/o IO): 26.1547ms
	Processing time (w/o IO): 25.9231ms
	Processing time (w/o IO): 26.1686ms
	Processing time (w/o IO): 26.3472ms
	Processing time (w/o IO): 25.9796ms
	Processing time (w/o IO): 27.858ms
	Processing time (w/o IO): 27.2765ms
	Processing time (w/o IO): 26.2479ms
	  Time (mean ± σ):     100.8 ms ±   2.1 ms    [User: 95.1 ms, System: 22.6 ms]
	  Range (min … max):    98.4 ms … 104.7 ms    10 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 13.6709ms
	Processing time (w/o IO): 13.4514ms
	Processing time (w/o IO): 15.1452ms
	Processing time (w/o IO): 16.0525ms
	Processing time (w/o IO): 13.6973ms
	Processing time (w/o IO): 14.1295ms
	Processing time (w/o IO): 13.5886ms
	Processing time (w/o IO): 13.5569ms
	Processing time (w/o IO): 13.895ms
	Processing time (w/o IO): 13.5597ms
	Processing time (w/o IO): 13.9413ms
	Processing time (w/o IO): 13.1388ms
	Processing time (w/o IO): 13.4974ms
	  Time (mean ± σ):     199.8 ms ±   3.7 ms    [User: 206.7 ms, System: 34.4 ms]
	  Range (min … max):   193.9 ms … 206.1 ms    10 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 11.0067ms
	Processing time (w/o IO): 10.6448ms
	Processing time (w/o IO): 10.8202ms
	Processing time (w/o IO): 11.0194ms
	Processing time (w/o IO): 10.5776ms
	Processing time (w/o IO): 10.8448ms
	Processing time (w/o IO): 10.8101ms
	Processing time (w/o IO): 10.7657ms
	Processing time (w/o IO): 11.3257ms
	Processing time (w/o IO): 10.7112ms
	Processing time (w/o IO): 10.8057ms
	Processing time (w/o IO): 10.6385ms
	Processing time (w/o IO): 10.9147ms
	  Time (mean ± σ):      71.6 ms ±   2.7 ms    [User: 117.2 ms, System: 32.5 ms]
	  Range (min … max):    68.2 ms …  77.8 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	113.6519908905	ms
	Processing time (w/o IO):	106.13799095154	ms
	Processing time (w/o IO):	111.16480827332	ms
	Processing time (w/o IO):	111.55414581299	ms
	Processing time (w/o IO):	107.66196250916	ms
	Processing time (w/o IO):	88.760852813721	ms
	Processing time (w/o IO):	102.81491279602	ms
	Processing time (w/o IO):	110.1131439209	ms
	Processing time (w/o IO):	111.13595962524	ms
	Processing time (w/o IO):	112.68019676208	ms
	Processing time (w/o IO):	110.94212532043	ms
	Processing time (w/o IO):	87.082147598267	ms
	Processing time (w/o IO):	87.955951690674	ms
	  Time (mean ± σ):     338.1 ms ±  15.2 ms    [User: 320.9 ms, System: 17.1 ms]
	  Range (min … max):   311.9 ms … 356.6 ms    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1092.3240184784	ms
	Processing time (w/o IO):	1092.9849147797	ms
	Processing time (w/o IO):	1092.148065567	ms
	Processing time (w/o IO):	1091.0000801086	ms
	Processing time (w/o IO):	1092.2200679779	ms
	Processing time (w/o IO):	1090.8000469208	ms
	Processing time (w/o IO):	1087.7728462219	ms
	Processing time (w/o IO):	1091.3610458374	ms
	Processing time (w/o IO):	1089.4589424133	ms
	Processing time (w/o IO):	1092.7109718323	ms
	Processing time (w/o IO):	1094.4199562073	ms
	Processing time (w/o IO):	1092.6339626312	ms
	Processing time (w/o IO):	1088.611125946	ms
	  Time (mean ± σ):      1.512 s ±  0.005 s    [User: 1.499 s, System: 0.012 s]
	  Range (min … max):    1.505 s …  1.522 s    10 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 139ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 136ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 136ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 146ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 137ms
	  Time (mean ± σ):     232.4 ms ±  34.1 ms    [User: 197.8 ms, System: 24.2 ms]
	  Range (min … max):   217.5 ms … 329.1 ms    10 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 0.887403 s
	Processing time (w/o IO): 0.885901 s
	Processing time (w/o IO): 0.887975 s
	Processing time (w/o IO): 0.883691 s
	Processing time (w/o IO): 0.877839 s
	Processing time (w/o IO): 0.887601 s
	Processing time (w/o IO): 0.877745 s
	Processing time (w/o IO): 0.900256 s
	Processing time (w/o IO): 0.888807 s
	Processing time (w/o IO): 0.892131 s
	Processing time (w/o IO): 0.884952 s
	Processing time (w/o IO): 0.893513 s
	Processing time (w/o IO): 0.883356 s
	  Time (mean ± σ):      1.240 s ±  0.006 s    [User: 1.177 s, System: 0.100 s]
	  Range (min … max):    1.231 s …  1.248 s    10 runs
	 
Ruby:

	Benchmark 1: ruby related.rb
	Processing time (w/o IO): 3020ms
	Processing time (w/o IO): 3012ms
	Processing time (w/o IO): 3024ms
	Processing time (w/o IO): 3075ms
	Processing time (w/o IO): 3027ms
	Processing time (w/o IO): 3032ms
	Processing time (w/o IO): 3059ms
	Processing time (w/o IO): 3011ms
	Processing time (w/o IO): 2999ms
	Processing time (w/o IO): 3006ms
	Processing time (w/o IO): 3006ms
	Processing time (w/o IO): 3008ms
	Processing time (w/o IO): 3066ms
	  Time (mean ± σ):      3.146 s ±  0.028 s    [User: 3.118 s, System: 0.027 s]
	  Range (min … max):    3.115 s …  3.192 s    10 runs
	 
daScript:

	Benchmark 1: das related.das
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 323.780134ms
	Processing time (w/o IO): 321.923007ms
	Processing time (w/o IO): 322.531416ms
	  Time (mean ± σ):     472.1 ms ±   5.0 ms    [User: 456.3 ms, System: 41.5 ms]
	  Range (min … max):   468.5 ms … 475.6 ms    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 163.360888ms
	Processing time (w/o IO): 163.634791ms
	Processing time (w/o IO): 164.514803ms
	  Time (mean ± σ):     312.3 ms ±   1.6 ms    [User: 784.5 ms, System: 37.5 ms]
	  Range (min … max):   311.2 ms … 313.4 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 340.156062ms
	Processing time (w/o IO): 340.280164ms
	Processing time (w/o IO): 340.757272ms
	  Time (mean ± σ):     403.1 ms ±   0.1 ms    [User: 373.8 ms, System: 29.3 ms]
	  Range (min … max):   403.0 ms … 403.2 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 175.460457ms
	Processing time (w/o IO): 174.335241ms
	Processing time (w/o IO): 173.778333ms
	  Time (mean ± σ):     237.6 ms ±   3.0 ms    [User: 384.8 ms, System: 23.5 ms]
	  Range (min … max):   235.5 ms … 239.7 ms    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 317.648ms
	Processing time (w/o IO): 313.218ms
	Processing time (w/o IO): 312.246ms
	  Time (mean ± σ):     610.4 ms ±   2.9 ms    [User: 589.1 ms, System: 25.3 ms]
	  Range (min … max):   608.3 ms … 612.4 ms    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 123.16ms
	Processing time (w/o IO): 122.819ms
	Processing time (w/o IO): 122.338ms
	  Time (mean ± σ):     432.1 ms ±   9.0 ms    [User: 724.6 ms, System: 25.5 ms]
	  Range (min … max):   425.7 ms … 438.4 ms    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 317 ms
	Processing time (w/o IO): 320 ms
	Processing time (w/o IO): 320 ms
	  Time (mean ± σ):      1.116 s ±  0.000 s    [User: 1.003 s, System: 0.112 s]
	  Range (min … max):    1.116 s …  1.116 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 162 ms
	Processing time (w/o IO): 163 ms
	Processing time (w/o IO): 164 ms
	  Time (mean ± σ):      1.046 s ±  0.006 s    [User: 1.390 s, System: 0.126 s]
	  Range (min … max):    1.042 s …  1.051 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 23.541s
	Processing time (w/o IO): 23.561s
	  Time (abs ≡):        23.728 s               [User: 23.676 s, System: 0.047 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 6.061s
	Processing time (w/o IO): 6.734s
	Processing time (w/o IO): 7.475s
	  Time (mean ± σ):      7.635 s ±  0.513 s    [User: 5.116 s, System: 3.093 s]
	  Range (min … max):    7.272 s …  7.998 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 908.221058ms
	Processing time (w/o IO): 910.123488ms
	Processing time (w/o IO): 909.723882ms
	  Time (mean ± σ):      1.113 s ±  0.000 s    [User: 1.087 s, System: 0.026 s]
	  Range (min … max):    1.112 s …  1.113 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 339ms
	Processing time (w/o IO): 338ms
	Processing time (w/o IO): 340ms
	  Time (mean ± σ):     530.1 ms ±   1.7 ms    [User: 504.6 ms, System: 25.4 ms]
	  Range (min … max):   528.8 ms … 531.3 ms    2 runs
	 
Julia:

	Benchmark 1: julia --startup-file=no --project=Related -e "using Related; main()"
	Processing time (w/o IO): 364 milliseconds
	Processing time (w/o IO): 366 milliseconds
	Processing time (w/o IO): 368 milliseconds
	  Time (mean ± σ):      1.477 s ±  0.018 s    [User: 1.320 s, System: 0.257 s]
	  Range (min … max):    1.464 s …  1.490 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 55 milliseconds
	Processing time (w/o IO): 54 milliseconds
	Processing time (w/o IO): 55 milliseconds
	  Time (mean ± σ):      1.165 s ±  0.017 s    [User: 0.998 s, System: 0.268 s]
	  Range (min … max):    1.153 s …  1.177 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --startup-file=no --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 216 milliseconds
	Processing time (w/o IO): 217 milliseconds
	Processing time (w/o IO): 218 milliseconds
	  Time (mean ± σ):      1.329 s ±  0.009 s    [User: 1.794 s, System: 0.273 s]
	  Range (min … max):    1.323 s …  1.336 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  577.555001ms
	Processing time (w/o IO):  574.568063ms
	Processing time (w/o IO):  571.320921ms
	  Time (mean ± σ):      1.374 s ±  0.006 s    [User: 1.348 s, System: 0.023 s]
	  Range (min … max):    1.369 s …  1.378 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 741.760ms
	Processing time (w/o IO): 740.116ms
	Processing time (w/o IO): 740.962ms
	  Time (mean ± σ):      9.312 s ±  0.043 s    [User: 9.178 s, System: 0.131 s]
	  Range (min … max):    9.281 s …  9.343 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 2239ms
	Processing time (w/o IO): 2241ms
	Processing time (w/o IO): 2239ms
	  Time (mean ± σ):      2.910 s ±  0.007 s    [User: 3.099 s, System: 0.154 s]
	  Range (min … max):    2.905 s …  2.915 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 2005ms
	Processing time (w/o IO): 2000ms
	Processing time (w/o IO): 2008ms
	  Time (mean ± σ):      2.482 s ±  0.009 s    [User: 2.444 s, System: 0.055 s]
	  Range (min … max):    2.475 s …  2.489 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 714.3809795379639ms
	Processing time (w/o IO): 715.6989574432373ms
	Processing time (w/o IO): 717.2009944915771ms
	  Time (mean ± σ):      2.143 s ±  0.014 s    [User: 1.990 s, System: 0.119 s]
	  Range (min … max):    2.133 s …  2.153 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 394.011938ms
	Processing time (w/o IO): 392.20472ms
	Processing time (w/o IO): 394.552843ms
	  Time (mean ± σ):      1.825 s ±  0.020 s    [User: 2.810 s, System: 0.125 s]
	  Range (min … max):    1.811 s …  1.839 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 2481ms
	Processing time (w/o IO): 2481ms
	Processing time (w/o IO): 2607ms
	  Time (mean ± σ):      2.871 s ±  0.089 s    [User: 2.891 s, System: 0.088 s]
	  Range (min … max):    2.808 s …  2.933 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 1531ms
	Processing time (w/o IO): 1527ms
	Processing time (w/o IO): 1528ms
	  Time (mean ± σ):      1.703 s ±  0.006 s    [User: 1.694 s, System: 0.085 s]
	  Range (min … max):    1.699 s …  1.707 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 1816ms
	Processing time (w/o IO): 1814ms
	Processing time (w/o IO): 1801ms
	  Time (mean ± σ):      2.158 s ±  0.243 s    [User: 1.955 s, System: 0.061 s]
	  Range (min … max):    1.987 s …  2.330 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 852 ms
	Processing time (w/o IO): 855 ms
	Processing time (w/o IO): 853 ms
	  Time (mean ± σ):      1.811 s ±  0.002 s    [User: 1.782 s, System: 0.025 s]
	  Range (min … max):    1.810 s …  1.813 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 484 ms
	Processing time (w/o IO): 470 ms
	Processing time (w/o IO): 466 ms
	  Time (mean ± σ):     567.6 ms ±   2.6 ms    [User: 1311.0 ms, System: 23.3 ms]
	  Range (min … max):   565.8 ms … 569.4 ms    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 316.848ms
	Processing time (w/o IO): 317.353ms
	Processing time (w/o IO): 316.926ms
	  Time (mean ± σ):     434.3 ms ±   3.8 ms    [User: 410.8 ms, System: 23.4 ms]
	  Range (min … max):   431.6 ms … 437.0 ms    2 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 172.431ms
	Processing time (w/o IO): 172.69ms
	Processing time (w/o IO): 171.46ms
	  Time (mean ± σ):     291.7 ms ±   0.8 ms    [User: 758.2 ms, System: 35.6 ms]
	  Range (min … max):   291.1 ms … 292.3 ms    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 529ms
	Processing time (w/o IO): 530ms
	Processing time (w/o IO): 529ms
	  Time (mean ± σ):      3.254 s ±  0.023 s    [User: 3.304 s, System: 0.234 s]
	  Range (min … max):    3.238 s …  3.270 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 279ms
	Processing time (w/o IO): 277ms
	Processing time (w/o IO): 277ms
	  Time (mean ± σ):      2.705 s ±  0.053 s    [User: 4.309 s, System: 0.266 s]
	  Range (min … max):    2.667 s …  2.742 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 230ms
	Processing time (w/o IO): 231ms
	Processing time (w/o IO): 231ms
	  Time (mean ± σ):      3.072 s ±  0.001 s    [User: 4.380 s, System: 0.266 s]
	  Range (min … max):    3.071 s …  3.073 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 389ms
	Processing time (w/o IO): 389ms
	Processing time (w/o IO): 391ms
	  Time (mean ± σ):      3.445 s ±  0.002 s    [User: 3.411 s, System: 0.234 s]
	  Range (min … max):    3.444 s …  3.447 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 371.1481ms
	Processing time (w/o IO): 381.4837ms
	Processing time (w/o IO): 371.7883ms
	  Time (mean ± σ):      1.078 s ±  0.009 s    [User: 1.027 s, System: 0.070 s]
	  Range (min … max):    1.071 s …  1.084 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 370.8832ms
	Processing time (w/o IO): 369.4722ms
	Processing time (w/o IO): 369.9007ms
	  Time (mean ± σ):     905.3 ms ±   1.3 ms    [User: 887.4 ms, System: 51.7 ms]
	  Range (min … max):   904.4 ms … 906.2 ms    2 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 121.6773ms
	Processing time (w/o IO): 122.2364ms
	Processing time (w/o IO): 123.3289ms
	  Time (mean ± σ):     579.0 ms ±   4.9 ms    [User: 1188.3 ms, System: 71.8 ms]
	  Range (min … max):   575.5 ms … 582.5 ms    2 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 135.5972ms
	Processing time (w/o IO): 135.9962ms
	Processing time (w/o IO): 135.4362ms
	  Time (mean ± σ):     437.4 ms ±   0.7 ms    [User: 1181.2 ms, System: 57.7 ms]
	  Range (min … max):   436.9 ms … 437.9 ms    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	1419.0020561218	ms
	Processing time (w/o IO):	1550.849199295	ms
	Processing time (w/o IO):	1425.9910583496	ms
	  Time (mean ± σ):      2.713 s ±  0.058 s    [User: 2.652 s, System: 0.056 s]
	  Range (min … max):    2.672 s …  2.754 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	16724.770069122	ms
	Processing time (w/o IO):	16745.020151138	ms
	  Time (abs ≡):        18.554 s               [User: 18.490 s, System: 0.059 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 2609ms
	Processing time (w/o IO): 2562ms
	Processing time (w/o IO): 2689ms
	  Time (mean ± σ):      3.038 s ±  0.102 s    [User: 2.934 s, System: 0.102 s]
	  Range (min … max):    2.966 s …  3.110 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 15.351126 s
	Processing time (w/o IO): 14.958858 s
	Processing time (w/o IO): 15.189657 s
	  Time (mean ± σ):     16.124 s ±  0.163 s    [User: 15.934 s, System: 0.245 s]
	  Range (min … max):   16.009 s … 16.239 s    2 runs
	 
Ruby:

	Benchmark 1: ruby related.rb
	Processing time (w/o IO): 47470ms
	Processing time (w/o IO): 47928ms
	Processing time (w/o IO): 47626ms
	  Time (mean ± σ):     48.079 s ±  0.207 s    [User: 48.018 s, System: 0.053 s]
	  Range (min … max):   47.932 s … 48.225 s    2 runs
	 
daScript:

	Benchmark 1: das related.das
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 2.859508623s
	Processing time (w/o IO): 2.858118904s
	Processing time (w/o IO): 2.864001612s
	  Time (mean ± σ):      3.373 s ±  0.012 s    [User: 3.416 s, System: 0.118 s]
	  Range (min … max):    3.364 s …  3.381 s    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1.420438951s
	Processing time (w/o IO): 1.41698875s
	Processing time (w/o IO): 1.417505582s
	  Time (mean ± σ):      1.924 s ±  0.018 s    [User: 6.129 s, System: 0.126 s]
	  Range (min … max):    1.911 s …  1.937 s    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 3.040753043s
	Processing time (w/o IO): 3.034902186s
	Processing time (w/o IO): 3.03587031s
	  Time (mean ± σ):      3.247 s ±  0.003 s    [User: 3.155 s, System: 0.082 s]
	  Range (min … max):    3.245 s …  3.249 s    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 1.518252431s
	Processing time (w/o IO): 1.519290547s
	Processing time (w/o IO): 1.518453825s
	  Time (mean ± σ):      1.739 s ±  0.004 s    [User: 3.158 s, System: 0.079 s]
	  Range (min … max):    1.736 s …  1.742 s    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 2706.02ms
	Processing time (w/o IO): 2700.9ms
	Processing time (w/o IO): 2712.55ms
	  Time (mean ± σ):      3.657 s ±  0.006 s    [User: 3.564 s, System: 0.095 s]
	  Range (min … max):    3.652 s …  3.661 s    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 970.556ms
	Processing time (w/o IO): 970.691ms
	Processing time (w/o IO): 971.775ms
	  Time (mean ± σ):      1.884 s ±  0.001 s    [User: 4.505 s, System: 0.096 s]
	  Range (min … max):    1.884 s …  1.885 s    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 2800 ms
	Processing time (w/o IO): 2795 ms
	Processing time (w/o IO): 2779 ms
	  Time (mean ± σ):      5.223 s ±  0.101 s    [User: 4.874 s, System: 0.286 s]
	  Range (min … max):    5.152 s …  5.295 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 1404 ms
	Processing time (w/o IO): 1418 ms
	Processing time (w/o IO): 1406 ms
	  Time (mean ± σ):      4.194 s ±  0.048 s    [User: 7.831 s, System: 0.368 s]
	  Range (min … max):    4.160 s …  4.228 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 215.253s
	Processing time (w/o IO): 214.439s
	  Time (abs ≡):        214.894 s               [User: 214.731 s, System: 0.135 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 7981.885967ms
	Processing time (w/o IO): 7936.220204ms
	Processing time (w/o IO): 8011.775759ms
	  Time (mean ± σ):      8.722 s ±  0.049 s    [User: 8.612 s, System: 0.099 s]
	  Range (min … max):    8.687 s …  8.756 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 3014ms
	Processing time (w/o IO): 3026ms
	Processing time (w/o IO): 3016ms
	  Time (mean ± σ):      3.610 s ±  0.005 s    [User: 3.545 s, System: 0.054 s]
	  Range (min … max):    3.607 s …  3.613 s    2 runs
	 
Julia:

	Benchmark 1: julia --startup-file=no --project=Related -e "using Related; main()"
	Processing time (w/o IO): 3165 milliseconds
	Processing time (w/o IO): 3166 milliseconds
	Processing time (w/o IO): 3166 milliseconds
	  Time (mean ± σ):      4.681 s ±  0.030 s    [User: 4.416 s, System: 0.361 s]
	  Range (min … max):    4.659 s …  4.702 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 141 milliseconds
	Processing time (w/o IO): 137 milliseconds
	Processing time (w/o IO): 147 milliseconds
	  Time (mean ± σ):      1.675 s ±  0.002 s    [User: 1.372 s, System: 0.401 s]
	  Range (min … max):    1.674 s …  1.676 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --startup-file=no --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 1866 milliseconds
	Processing time (w/o IO): 1873 milliseconds
	Processing time (w/o IO): 1881 milliseconds
	  Time (mean ± σ):      3.361 s ±  0.002 s    [User: 8.662 s, System: 0.344 s]
	  Range (min … max):    3.359 s …  3.362 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  5.986430671s
	Processing time (w/o IO):  5.973029745s
	Processing time (w/o IO):  5.957467508s
	  Time (mean ± σ):      8.355 s ±  0.007 s    [User: 8.245 s, System: 0.099 s]
	  Range (min … max):    8.351 s …  8.360 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 6.594s
	Processing time (w/o IO): 6.598s
	Processing time (w/o IO): 6.604s
	  Time (mean ± σ):     80.529 s ±  0.241 s    [User: 80.137 s, System: 0.375 s]
	  Range (min … max):   80.359 s … 80.700 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 19656ms
	Processing time (w/o IO): 19695ms
	Processing time (w/o IO): 19664ms
	  Time (mean ± σ):     21.179 s ±  0.015 s    [User: 21.395 s, System: 0.251 s]
	  Range (min … max):   21.168 s … 21.190 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 17851ms
	Processing time (w/o IO): 17831ms
	Processing time (w/o IO): 17890ms
	  Time (mean ± σ):     19.365 s ±  0.051 s    [User: 19.336 s, System: 0.159 s]
	  Range (min … max):   19.329 s … 19.401 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 6166.846990585327ms
	Processing time (w/o IO): 6225.759983062744ms
	Processing time (w/o IO): 6178.067088127136ms
	  Time (mean ± σ):     10.499 s ±  0.068 s    [User: 9.943 s, System: 0.390 s]
	  Range (min … max):   10.451 s … 10.547 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 3444.298123ms
	Processing time (w/o IO): 3436.283612ms
	Processing time (w/o IO): 3444.934411ms
	  Time (mean ± σ):      7.895 s ±  0.290 s    [User: 17.611 s, System: 0.325 s]
	  Range (min … max):    7.690 s …  8.100 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 22940ms
	Processing time (w/o IO): 24537ms
	Processing time (w/o IO): 23084ms
	  Time (mean ± σ):     24.634 s ±  1.033 s    [User: 24.623 s, System: 0.196 s]
	  Range (min … max):   23.903 s … 25.364 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 12949ms
	Processing time (w/o IO): 13314ms
	Processing time (w/o IO): 15385ms
	  Time (mean ± σ):     14.856 s ±  1.473 s    [User: 14.796 s, System: 0.196 s]
	  Range (min … max):   13.815 s … 15.898 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 17841ms
	Processing time (w/o IO): 17913ms
	Processing time (w/o IO): 17785ms
	  Time (mean ± σ):     18.331 s ±  0.090 s    [User: 18.347 s, System: 0.167 s]
	  Range (min … max):   18.267 s … 18.395 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 7511 ms
	Processing time (w/o IO): 7512 ms
	Processing time (w/o IO): 7510 ms
	  Time (mean ± σ):     15.492 s ±  0.008 s    [User: 15.375 s, System: 0.106 s]
	  Range (min … max):   15.486 s … 15.497 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 5368 ms
	Processing time (w/o IO): 5592 ms
	Processing time (w/o IO): 5295 ms
	  Time (mean ± σ):      5.806 s ±  0.230 s    [User: 14.468 s, System: 0.111 s]
	  Range (min … max):    5.644 s …  5.969 s    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 2847.22ms
	Processing time (w/o IO): 2854.294ms
	Processing time (w/o IO): 2855.556ms
	  Time (mean ± σ):      3.241 s ±  0.011 s    [User: 3.150 s, System: 0.087 s]
	  Range (min … max):    3.233 s …  3.249 s    2 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 1477.976ms
	Processing time (w/o IO): 1479.657ms
	Processing time (w/o IO): 1478.258ms
	  Time (mean ± σ):      1.851 s ±  0.002 s    [User: 6.132 s, System: 0.107 s]
	  Range (min … max):    1.849 s …  1.853 s    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 4034ms
	Processing time (w/o IO): 4038ms
	Processing time (w/o IO): 4088ms
	  Time (mean ± σ):     13.431 s ±  0.073 s    [User: 14.415 s, System: 0.562 s]
	  Range (min … max):   13.379 s … 13.483 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 2491ms
	Processing time (w/o IO): 2401ms
	Processing time (w/o IO): 2541ms
	  Time (mean ± σ):     10.105 s ±  0.082 s    [User: 25.322 s, System: 0.618 s]
	  Range (min … max):   10.047 s … 10.163 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 2027ms
	Processing time (w/o IO): 2034ms
	Processing time (w/o IO): 2066ms
	  Time (mean ± σ):     12.331 s ±  0.284 s    [User: 25.745 s, System: 0.599 s]
	  Range (min … max):   12.130 s … 12.532 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 3410ms
	Processing time (w/o IO): 3420ms
	Processing time (w/o IO): 3417ms
	  Time (mean ± σ):     15.200 s ±  0.057 s    [User: 16.486 s, System: 0.564 s]
	  Range (min … max):   15.159 s … 15.240 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 3273.5999ms
	Processing time (w/o IO): 3257.1887ms
	Processing time (w/o IO): 3256.077ms
	  Time (mean ± σ):      7.441 s ±  0.010 s    [User: 7.395 s, System: 0.176 s]
	  Range (min … max):    7.434 s …  7.447 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 3252.9524ms
	Processing time (w/o IO): 3255.3085ms
	Processing time (w/o IO): 3265.9918ms
	  Time (mean ± σ):      7.091 s ±  0.003 s    [User: 7.075 s, System: 0.167 s]
	  Range (min … max):    7.089 s …  7.093 s    2 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 1012.8014ms
	Processing time (w/o IO): 1012.1282ms
	Processing time (w/o IO): 1016.5289ms
	  Time (mean ± σ):      2.956 s ±  0.020 s    [User: 8.666 s, System: 0.228 s]
	  Range (min … max):    2.942 s …  2.970 s    2 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 1136.6102ms
	Processing time (w/o IO): 1144.2709ms
	Processing time (w/o IO): 1142.5027ms
	  Time (mean ± σ):      2.868 s ±  0.002 s    [User: 9.441 s, System: 0.189 s]
	  Range (min … max):    2.867 s …  2.870 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	12051.742076874	ms
	Processing time (w/o IO):	12561.897039413	ms
	Processing time (w/o IO):	9856.2059402466	ms
	  Time (mean ± σ):     15.752 s ±  1.929 s    [User: 15.576 s, System: 0.168 s]
	  Range (min … max):   14.388 s … 17.116 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	149832.00001717	ms
	Processing time (w/o IO):	149915.85183144	ms
	  Time (abs ≡):        156.750 s               [User: 156.523 s, System: 0.200 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 35505ms
	Processing time (w/o IO): 35767ms
	Processing time (w/o IO): 34966ms
	  Time (mean ± σ):     36.867 s ±  0.525 s    [User: 35.766 s, System: 1.091 s]
	  Range (min … max):   36.495 s … 37.238 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 138.478970 s
	Processing time (w/o IO): 140.715096 s
	Processing time (w/o IO): 138.311560 s
	  Time (mean ± σ):     143.019 s ±  1.740 s    [User: 142.164 s, System: 0.909 s]
	  Range (min … max):   141.789 s … 144.250 s    2 runs
	 
Ruby:

	Benchmark 1: ruby related.rb
	Processing time (w/o IO): 426512ms
	Processing time (w/o IO): 428609ms
	Processing time (w/o IO): 426286ms
	  Time (mean ± σ):     428.273 s ±  1.633 s    [User: 428.083 s, System: 0.146 s]
	  Range (min … max):   427.119 s … 429.428 s    2 runs
	 
daScript:

	Benchmark 1: das related.das
