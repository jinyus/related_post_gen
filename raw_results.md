Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 24.259399ms
	Processing time (w/o IO): 24.405701ms
	Processing time (w/o IO): 24.381401ms
	Processing time (w/o IO): 24.283599ms
	Processing time (w/o IO): 24.254699ms
	Processing time (w/o IO): 24.147997ms
	Processing time (w/o IO): 24.233399ms
	Processing time (w/o IO): 24.229198ms
	Processing time (w/o IO): 24.260499ms
	Processing time (w/o IO): 24.291899ms
	Processing time (w/o IO): 25.880826ms
	Processing time (w/o IO): 24.035595ms
	Processing time (w/o IO): 24.3073ms
	  Time (mean ± σ):      64.3 ms ±   1.0 ms    [User: 60.4 ms, System: 11.5 ms]
	  Range (min … max):    62.8 ms …  66.0 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 13.686625ms
	Processing time (w/o IO): 11.800794ms
	Processing time (w/o IO): 11.713993ms
	Processing time (w/o IO): 11.646892ms
	Processing time (w/o IO): 11.643191ms
	Processing time (w/o IO): 11.503389ms
	Processing time (w/o IO): 11.453688ms
	Processing time (w/o IO): 11.648891ms
	Processing time (w/o IO): 11.706392ms
	Processing time (w/o IO): 11.701792ms
	Processing time (w/o IO): 11.726593ms
	Processing time (w/o IO): 13.615023ms
	Processing time (w/o IO): 12.174901ms
	  Time (mean ± σ):      51.1 ms ±   1.7 ms    [User: 81.5 ms, System: 8.9 ms]
	  Range (min … max):    48.4 ms …  54.0 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 23.466303ms
	Processing time (w/o IO): 23.431603ms
	Processing time (w/o IO): 23.445002ms
	Processing time (w/o IO): 23.394802ms
	Processing time (w/o IO): 23.938812ms
	Processing time (w/o IO): 23.412903ms
	Processing time (w/o IO): 23.450503ms
	Processing time (w/o IO): 23.444803ms
	Processing time (w/o IO): 23.593205ms
	Processing time (w/o IO): 23.526304ms
	Processing time (w/o IO): 23.330701ms
	Processing time (w/o IO): 23.363602ms
	Processing time (w/o IO): 23.447702ms
	  Time (mean ± σ):      38.3 ms ±   0.5 ms    [User: 31.8 ms, System: 6.5 ms]
	  Range (min … max):    37.7 ms …  39.3 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 12.289515ms
	Processing time (w/o IO): 12.950427ms
	Processing time (w/o IO): 12.151013ms
	Processing time (w/o IO): 12.136313ms
	Processing time (w/o IO): 12.221914ms
	Processing time (w/o IO): 12.096812ms
	Processing time (w/o IO): 12.096212ms
	Processing time (w/o IO): 12.161513ms
	Processing time (w/o IO): 12.116813ms
	Processing time (w/o IO): 12.179513ms
	Processing time (w/o IO): 12.178413ms
	Processing time (w/o IO): 12.109412ms
	Processing time (w/o IO): 12.189814ms
	  Time (mean ± σ):      28.2 ms ±   0.4 ms    [User: 28.8 ms, System: 11.2 ms]
	  Range (min … max):    27.6 ms …  29.0 ms    10 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 25.099ms
	Processing time (w/o IO): 25.49ms
	Processing time (w/o IO): 24.292ms
	Processing time (w/o IO): 25.094ms
	Processing time (w/o IO): 24.901ms
	Processing time (w/o IO): 24.909ms
	Processing time (w/o IO): 25.178ms
	Processing time (w/o IO): 25.006ms
	Processing time (w/o IO): 24.26ms
	Processing time (w/o IO): 24.971ms
	Processing time (w/o IO): 25.112ms
	Processing time (w/o IO): 25.279ms
	Processing time (w/o IO): 24.093ms
	  Time (mean ± σ):     104.7 ms ±   0.8 ms    [User: 96.1 ms, System: 9.8 ms]
	  Range (min … max):   103.5 ms … 105.8 ms    10 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 12.884ms
	Processing time (w/o IO): 12.639ms
	Processing time (w/o IO): 13.249ms
	Processing time (w/o IO): 12.828ms
	Processing time (w/o IO): 14.014ms
	Processing time (w/o IO): 13.682ms
	Processing time (w/o IO): 12.32ms
	Processing time (w/o IO): 13.282ms
	Processing time (w/o IO): 14.101ms
	Processing time (w/o IO): 12.988ms
	Processing time (w/o IO): 12.8ms
	Processing time (w/o IO): 12.692ms
	Processing time (w/o IO): 13.253ms
	  Time (mean ± σ):      92.1 ms ±   1.3 ms    [User: 105.4 ms, System: 10.9 ms]
	  Range (min … max):    90.5 ms …  94.4 ms    10 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	  Time (mean ± σ):     225.2 ms ±   1.6 ms    [User: 195.5 ms, System: 29.6 ms]
	  Range (min … max):   222.6 ms … 228.7 ms    10 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 18 ms
	Processing time (w/o IO): 18 ms
	Processing time (w/o IO): 21 ms
	Processing time (w/o IO): 18 ms
	Processing time (w/o IO): 18 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 18 ms
	Processing time (w/o IO): 19 ms
	Processing time (w/o IO): 18 ms
	Processing time (w/o IO): 18 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 18 ms
	  Time (mean ± σ):     231.8 ms ±   6.3 ms    [User: 248.6 ms, System: 27.1 ms]
	  Range (min … max):   227.2 ms … 248.1 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 1.464s
	Processing time (w/o IO): 1.475s
	Processing time (w/o IO): 1.459s
	Processing time (w/o IO): 1.459s
	Processing time (w/o IO): 1.463s
	Processing time (w/o IO): 1.464s
	Processing time (w/o IO): 1.459s
	Processing time (w/o IO): 1.464s
	Processing time (w/o IO): 1.458s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.460s
	  Time (mean ± σ):      1.527 s ±  0.002 s    [User: 1.510 s, System: 0.017 s]
	  Range (min … max):    1.524 s …  1.531 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 351.1ms
	Processing time (w/o IO): 351.5ms
	Processing time (w/o IO): 353.5ms
	Processing time (w/o IO): 350.4ms
	Processing time (w/o IO): 350.9ms
	Processing time (w/o IO): 350.9ms
	Processing time (w/o IO): 356.5ms
	Processing time (w/o IO): 356.9ms
	Processing time (w/o IO): 350.8ms
	Processing time (w/o IO): 348.5ms
	Processing time (w/o IO): 351.2ms
	Processing time (w/o IO): 351.2ms
	Processing time (w/o IO): 350.2ms
	  Time (mean ± σ):     638.8 ms ±   5.2 ms    [User: 850.6 ms, System: 399.7 ms]
	  Range (min … max):   633.6 ms … 649.8 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 60.411058ms
	Processing time (w/o IO): 60.614865ms
	Processing time (w/o IO): 60.284962ms
	Processing time (w/o IO): 60.228961ms
	Processing time (w/o IO): 60.197261ms
	Processing time (w/o IO): 60.461164ms
	Processing time (w/o IO): 60.433763ms
	Processing time (w/o IO): 60.628265ms
	Processing time (w/o IO): 60.438563ms
	Processing time (w/o IO): 60.11516ms
	Processing time (w/o IO): 60.13296ms
	Processing time (w/o IO): 60.530964ms
	Processing time (w/o IO): 60.10816ms
	  Time (mean ± σ):     109.8 ms ±   0.9 ms    [User: 102.1 ms, System: 7.6 ms]
	  Range (min … max):   108.6 ms … 111.6 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 29ms
	  Time (mean ± σ):      74.8 ms ±   0.5 ms    [User: 68.9 ms, System: 5.9 ms]
	  Range (min … max):    73.9 ms …  75.7 ms    10 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 30 milliseconds
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
	Processing time (w/o IO): 31 milliseconds
	  Time (mean ± σ):     474.1 ms ±  16.7 ms    [User: 364.9 ms, System: 212.8 ms]
	  Range (min … max):   448.7 ms … 501.1 ms    10 runs
	 
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
	  Time (mean ± σ):     987.9 ms ±  15.2 ms    [User: 874.8 ms, System: 216.7 ms]
	  Range (min … max):   964.7 ms … 1010.5 ms    10 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 15 milliseconds
	Processing time (w/o IO): 17 milliseconds
	  Time (mean ± σ):     457.7 ms ±  13.9 ms    [User: 404.3 ms, System: 204.2 ms]
	  Range (min … max):   436.3 ms … 475.3 ms    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  48.265002ms
	Processing time (w/o IO):  48.212701ms
	Processing time (w/o IO):  48.066798ms
	Processing time (w/o IO):  47.947697ms
	Processing time (w/o IO):  47.996097ms
	Processing time (w/o IO):  48.055398ms
	Processing time (w/o IO):  48.362004ms
	Processing time (w/o IO):  47.966497ms
	Processing time (w/o IO):  47.823795ms
	Processing time (w/o IO):  48.093899ms
	Processing time (w/o IO):  48.1435ms
	Processing time (w/o IO):  48.139197ms
	Processing time (w/o IO):  47.781291ms
	  Time (mean ± σ):     266.4 ms ±   0.9 ms    [User: 255.3 ms, System: 11.0 ms]
	  Range (min … max):   265.3 ms … 268.3 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 49.531ms
	Processing time (w/o IO): 48.667ms
	Processing time (w/o IO): 48.683ms
	Processing time (w/o IO): 48.928ms
	Processing time (w/o IO): 48.959ms
	Processing time (w/o IO): 48.584ms
	Processing time (w/o IO): 49.039ms
	Processing time (w/o IO): 48.903ms
	Processing time (w/o IO): 48.704ms
	Processing time (w/o IO): 48.136ms
	Processing time (w/o IO): 49.079ms
	Processing time (w/o IO): 48.590ms
	Processing time (w/o IO): 48.602ms
	  Time (mean ± σ):     367.6 ms ±   2.7 ms    [User: 339.9 ms, System: 27.5 ms]
	  Range (min … max):   363.7 ms … 374.4 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 163ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 176ms
	Processing time (w/o IO): 162ms
	Processing time (w/o IO): 176ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 175ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 168ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 176ms
	  Time (mean ± σ):     535.0 ms ±   6.9 ms    [User: 645.1 ms, System: 99.7 ms]
	  Range (min … max):   522.9 ms … 545.6 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
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
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 129ms
	Processing time (w/o IO): 129ms
	  Time (mean ± σ):     253.6 ms ±   2.5 ms    [User: 236.4 ms, System: 21.1 ms]
	  Range (min … max):   248.0 ms … 257.5 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 50.28796195983887ms
	Processing time (w/o IO): 50.778985023498535ms
	Processing time (w/o IO): 50.981998443603516ms
	Processing time (w/o IO): 50.379037857055664ms
	Processing time (w/o IO): 50.55105686187744ms
	Processing time (w/o IO): 50.51302909851074ms
	Processing time (w/o IO): 50.48203468322754ms
	Processing time (w/o IO): 50.552964210510254ms
	Processing time (w/o IO): 50.428032875061035ms
	Processing time (w/o IO): 50.46498775482178ms
	Processing time (w/o IO): 51.177978515625ms
	Processing time (w/o IO): 50.83608627319336ms
	Processing time (w/o IO): 51.167964935302734ms
	  Time (mean ± σ):     399.6 ms ±   6.9 ms    [User: 348.0 ms, System: 32.3 ms]
	  Range (min … max):   390.4 ms … 410.5 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 31.028328ms
	Processing time (w/o IO): 31.558137ms
	Processing time (w/o IO): 31.008625ms
	Processing time (w/o IO): 31.480233ms
	Processing time (w/o IO): 31.716437ms
	Processing time (w/o IO): 30.636618ms
	Processing time (w/o IO): 31.007025ms
	Processing time (w/o IO): 30.975124ms
	Processing time (w/o IO): 31.059225ms
	Processing time (w/o IO): 31.460433ms
	Processing time (w/o IO): 31.194028ms
	Processing time (w/o IO): 30.974425ms
	Processing time (w/o IO): 31.757837ms
	  Time (mean ± σ):     386.7 ms ±   5.2 ms    [User: 422.4 ms, System: 33.3 ms]
	  Range (min … max):   379.2 ms … 395.3 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 199ms
	Processing time (w/o IO): 124ms
	Processing time (w/o IO): 129ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 125ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 125ms
	Processing time (w/o IO): 127ms
	  Time (mean ± σ):     301.1 ms ±   4.2 ms    [User: 294.4 ms, System: 59.3 ms]
	  Range (min … max):   296.6 ms … 307.5 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 117ms
	Processing time (w/o IO): 103ms
	Processing time (w/o IO): 112ms
	Processing time (w/o IO): 118ms
	Processing time (w/o IO): 125ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 120ms
	Processing time (w/o IO): 118ms
	Processing time (w/o IO): 119ms
	Processing time (w/o IO): 118ms
	Processing time (w/o IO): 118ms
	  Time (mean ± σ):     176.4 ms ±   4.2 ms    [User: 202.1 ms, System: 30.3 ms]
	  Range (min … max):   169.3 ms … 183.6 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 203ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 198ms
	Processing time (w/o IO): 198ms
	Processing time (w/o IO): 135ms
	Processing time (w/o IO): 194ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 194ms
	Processing time (w/o IO): 197ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 194ms
	Processing time (w/o IO): 135ms
	  Time (mean ± σ):     237.4 ms ±  30.6 ms    [User: 237.0 ms, System: 24.5 ms]
	  Range (min … max):   200.8 ms … 264.9 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 55 ms
	  Time (mean ± σ):     388.5 ms ±   9.0 ms    [User: 685.7 ms, System: 55.9 ms]
	  Range (min … max):   376.6 ms … 402.8 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 42 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 42 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 42 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 42 ms
	Processing time (w/o IO): 42 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 42 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 42 ms
	  Time (mean ± σ):     113.9 ms ±   1.0 ms    [User: 102.1 ms, System: 11.9 ms]
	  Range (min … max):   112.5 ms … 115.9 ms    10 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 46 ms
	Processing time (w/o IO): 49 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 48 ms
	Processing time (w/o IO): 46 ms
	Processing time (w/o IO): 46 ms
	Processing time (w/o IO): 48 ms
	Processing time (w/o IO): 46 ms
	Processing time (w/o IO): 47 ms
	  Time (mean ± σ):      78.3 ms ±   2.2 ms    [User: 139.5 ms, System: 12.5 ms]
	  Range (min … max):    75.2 ms …  82.2 ms    10 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 25.341ms
	Processing time (w/o IO): 24.952ms
	Processing time (w/o IO): 24.957ms
	Processing time (w/o IO): 24.952ms
	Processing time (w/o IO): 24.944ms
	Processing time (w/o IO): 25.174ms
	Processing time (w/o IO): 24.792ms
	Processing time (w/o IO): 24.905ms
	Processing time (w/o IO): 24.846ms
	Processing time (w/o IO): 24.787ms
	Processing time (w/o IO): 25.012ms
	Processing time (w/o IO): 24.878ms
	Processing time (w/o IO): 24.903ms
	  Time (mean ± σ):      49.0 ms ±   0.6 ms    [User: 38.1 ms, System: 10.9 ms]
	  Range (min … max):    48.2 ms …  50.2 ms    10 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 17.991ms
	Processing time (w/o IO): 19.451ms
	Processing time (w/o IO): 18.06ms
	Processing time (w/o IO): 19.416ms
	Processing time (w/o IO): 18.894ms
	Processing time (w/o IO): 17.667ms
	Processing time (w/o IO): 17.715ms
	Processing time (w/o IO): 19.224ms
	Processing time (w/o IO): 20.183ms
	Processing time (w/o IO): 18.328ms
	Processing time (w/o IO): 17.733ms
	Processing time (w/o IO): 20.033ms
	Processing time (w/o IO): 17.877ms
	  Time (mean ± σ):      44.2 ms ±   1.4 ms    [User: 82.4 ms, System: 11.8 ms]
	  Range (min … max):    41.8 ms …  46.8 ms    10 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 94ms
	  Time (mean ± σ):      1.024 s ±  0.006 s    [User: 1.128 s, System: 0.101 s]
	  Range (min … max):    1.017 s …  1.035 s    10 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	  Time (mean ± σ):     917.9 ms ±  19.0 ms    [User: 1072.4 ms, System: 101.9 ms]
	  Range (min … max):   867.5 ms … 933.9 ms    10 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	  Time (mean ± σ):     710.3 ms ±   2.8 ms    [User: 791.7 ms, System: 95.5 ms]
	  Range (min … max):   704.0 ms … 713.5 ms    10 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	  Time (mean ± σ):     739.3 ms ±   2.3 ms    [User: 716.8 ms, System: 79.9 ms]
	  Range (min … max):   735.4 ms … 742.9 ms    10 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 26.9227ms
	Processing time (w/o IO): 27.0522ms
	Processing time (w/o IO): 27.1056ms
	Processing time (w/o IO): 27.5704ms
	Processing time (w/o IO): 27.0695ms
	Processing time (w/o IO): 27.043ms
	Processing time (w/o IO): 27.1099ms
	Processing time (w/o IO): 27.1505ms
	Processing time (w/o IO): 27.1234ms
	Processing time (w/o IO): 27.042ms
	Processing time (w/o IO): 27.0466ms
	Processing time (w/o IO): 26.7613ms
	Processing time (w/o IO): 26.8949ms
	  Time (mean ± σ):     210.2 ms ±   3.9 ms    [User: 165.5 ms, System: 35.9 ms]
	  Range (min … max):   205.9 ms … 217.2 ms    10 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 26.1853ms
	Processing time (w/o IO): 26.1536ms
	Processing time (w/o IO): 26.4898ms
	Processing time (w/o IO): 27.5267ms
	Processing time (w/o IO): 25.9991ms
	Processing time (w/o IO): 26.0419ms
	Processing time (w/o IO): 26.2361ms
	Processing time (w/o IO): 26.6613ms
	Processing time (w/o IO): 27.7027ms
	Processing time (w/o IO): 26.0999ms
	Processing time (w/o IO): 26.2121ms
	Processing time (w/o IO): 27.8275ms
	Processing time (w/o IO): 26.372ms
	  Time (mean ± σ):     101.6 ms ±   1.6 ms    [User: 94.8 ms, System: 24.0 ms]
	  Range (min … max):    99.1 ms … 103.7 ms    10 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 14.165ms
	Processing time (w/o IO): 13.8003ms
	Processing time (w/o IO): 13.73ms
	Processing time (w/o IO): 14.2833ms
	Processing time (w/o IO): 13.9161ms
	Processing time (w/o IO): 13.9555ms
	Processing time (w/o IO): 13.4822ms
	Processing time (w/o IO): 14.2386ms
	Processing time (w/o IO): 13.4476ms
	Processing time (w/o IO): 13.3762ms
	Processing time (w/o IO): 14.5458ms
	Processing time (w/o IO): 14.7162ms
	Processing time (w/o IO): 11.2043ms
	  Time (mean ± σ):     202.1 ms ±   9.2 ms    [User: 203.6 ms, System: 37.4 ms]
	  Range (min … max):   191.4 ms … 222.4 ms    10 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 10.6136ms
	Processing time (w/o IO): 10.8682ms
	Processing time (w/o IO): 10.774ms
	Processing time (w/o IO): 10.8168ms
	Processing time (w/o IO): 10.6612ms
	Processing time (w/o IO): 10.8172ms
	Processing time (w/o IO): 10.9611ms
	Processing time (w/o IO): 10.9975ms
	Processing time (w/o IO): 11.0456ms
	Processing time (w/o IO): 10.9478ms
	Processing time (w/o IO): 10.8247ms
	Processing time (w/o IO): 10.849ms
	Processing time (w/o IO): 10.7422ms
	  Time (mean ± σ):      72.9 ms ±   3.3 ms    [User: 125.1 ms, System: 26.8 ms]
	  Range (min … max):    68.5 ms …  78.1 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	112.94198036194	ms
	Processing time (w/o IO):	111.5128993988	ms
	Processing time (w/o IO):	113.56401443481	ms
	Processing time (w/o IO):	104.67195510864	ms
	Processing time (w/o IO):	103.69396209717	ms
	Processing time (w/o IO):	112.64181137085	ms
	Processing time (w/o IO):	89.589834213257	ms
	Processing time (w/o IO):	111.11783981323	ms
	Processing time (w/o IO):	111.68098449707	ms
	Processing time (w/o IO):	104.69579696655	ms
	Processing time (w/o IO):	111.39988899231	ms
	Processing time (w/o IO):	89.246988296509	ms
	Processing time (w/o IO):	112.29109764099	ms
	  Time (mean ± σ):     345.1 ms ±   8.8 ms    [User: 324.2 ms, System: 20.7 ms]
	  Range (min … max):   327.6 ms … 354.0 ms    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1092.8349494934	ms
	Processing time (w/o IO):	1093.7139987946	ms
	Processing time (w/o IO):	1091.8328762054	ms
	Processing time (w/o IO):	1099.9569892883	ms
	Processing time (w/o IO):	1090.5661582947	ms
	Processing time (w/o IO):	1094.3350791931	ms
	Processing time (w/o IO):	1092.6740169525	ms
	Processing time (w/o IO):	1093.8618183136	ms
	Processing time (w/o IO):	1100.7130146027	ms
	Processing time (w/o IO):	1093.8730239868	ms
	Processing time (w/o IO):	1091.3650989532	ms
	Processing time (w/o IO):	1090.9960269928	ms
	Processing time (w/o IO):	1099.1020202637	ms
	  Time (mean ± σ):      1.522 s ±  0.010 s    [User: 1.508 s, System: 0.013 s]
	  Range (min … max):    1.510 s …  1.545 s    10 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 136ms
	Processing time (w/o IO): 143ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 145ms
	Processing time (w/o IO): 143ms
	  Time (mean ± σ):     225.2 ms ±   3.7 ms    [User: 201.8 ms, System: 22.5 ms]
	  Range (min … max):   220.9 ms … 231.0 ms    10 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 0.878087 s
	Processing time (w/o IO): 0.879222 s
	Processing time (w/o IO): 0.885726 s
	Processing time (w/o IO): 0.879243 s
	Processing time (w/o IO): 0.894026 s
	Processing time (w/o IO): 0.888767 s
	Processing time (w/o IO): 0.887615 s
	Processing time (w/o IO): 0.885306 s
	Processing time (w/o IO): 0.892085 s
	Processing time (w/o IO): 0.888992 s
	Processing time (w/o IO): 0.878576 s
	Processing time (w/o IO): 0.889153 s
	Processing time (w/o IO): 0.887010 s
	  Time (mean ± σ):      1.240 s ±  0.004 s    [User: 1.178 s, System: 0.096 s]
	  Range (min … max):    1.232 s …  1.245 s    10 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 370.470942ms
	Processing time (w/o IO): 370.846549ms
	Processing time (w/o IO): 369.899033ms
	  Time (mean ± σ):     514.7 ms ±   4.3 ms    [User: 512.8 ms, System: 29.3 ms]
	  Range (min … max):   511.7 ms … 517.7 ms    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 163.93083ms
	Processing time (w/o IO): 164.525639ms
	Processing time (w/o IO): 163.28502ms
	  Time (mean ± σ):     310.3 ms ±   3.7 ms    [User: 775.8 ms, System: 41.2 ms]
	  Range (min … max):   307.7 ms … 313.0 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 345.507742ms
	Processing time (w/o IO): 340.659264ms
	Processing time (w/o IO): 340.356659ms
	  Time (mean ± σ):     403.4 ms ±   1.1 ms    [User: 377.8 ms, System: 25.5 ms]
	  Range (min … max):   402.7 ms … 404.2 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 175.019908ms
	Processing time (w/o IO): 176.582233ms
	Processing time (w/o IO): 177.420146ms
	  Time (mean ± σ):     241.3 ms ±   0.0 ms    [User: 382.2 ms, System: 31.3 ms]
	  Range (min … max):   241.3 ms … 241.3 ms    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 315.662ms
	Processing time (w/o IO): 314.577ms
	Processing time (w/o IO): 314.269ms
	  Time (mean ± σ):     610.5 ms ±   0.6 ms    [User: 589.1 ms, System: 25.6 ms]
	  Range (min … max):   610.1 ms … 610.9 ms    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 122.332ms
	Processing time (w/o IO): 123.273ms
	Processing time (w/o IO): 123.49ms
	  Time (mean ± σ):     425.9 ms ±   2.7 ms    [User: 718.6 ms, System: 27.0 ms]
	  Range (min … max):   424.0 ms … 427.8 ms    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 339 ms
	Processing time (w/o IO): 339 ms
	Processing time (w/o IO): 339 ms
	  Time (mean ± σ):      1.174 s ±  0.003 s    [User: 1.064 s, System: 0.109 s]
	  Range (min … max):    1.172 s …  1.176 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 221 ms
	Processing time (w/o IO): 220 ms
	Processing time (w/o IO): 219 ms
	  Time (mean ± σ):      1.102 s ±  0.002 s    [User: 1.618 s, System: 0.115 s]
	  Range (min … max):    1.101 s …  1.103 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 23.585s
	Processing time (w/o IO): 23.520s
	  Time (abs ≡):        23.690 s               [User: 23.651 s, System: 0.031 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 6.057s
	Processing time (w/o IO): 6.757s
	Processing time (w/o IO): 7.680s
	  Time (mean ± σ):      7.733 s ±  0.642 s    [User: 5.177 s, System: 3.135 s]
	  Range (min … max):    7.279 s …  8.187 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 910.88095ms
	Processing time (w/o IO): 904.154842ms
	Processing time (w/o IO): 906.603781ms
	  Time (mean ± σ):      1.110 s ±  0.005 s    [User: 1.071 s, System: 0.039 s]
	  Range (min … max):    1.107 s …  1.114 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 426ms
	Processing time (w/o IO): 426ms
	Processing time (w/o IO): 426ms
	  Time (mean ± σ):     612.9 ms ±   0.9 ms    [User: 593.3 ms, System: 19.6 ms]
	  Range (min … max):   612.3 ms … 613.6 ms    2 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 477 milliseconds
	Processing time (w/o IO): 478 milliseconds
	Processing time (w/o IO): 478 milliseconds
	  Time (mean ± σ):      1.164 s ±  0.001 s    [User: 0.999 s, System: 0.269 s]
	  Range (min … max):    1.164 s …  1.165 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 53 milliseconds
	Processing time (w/o IO): 51 milliseconds
	Processing time (w/o IO): 51 milliseconds
	  Time (mean ± σ):      1.152 s ±  0.023 s    [User: 0.965 s, System: 0.290 s]
	  Range (min … max):    1.135 s …  1.168 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 221 milliseconds
	Processing time (w/o IO): 224 milliseconds
	Processing time (w/o IO): 223 milliseconds
	  Time (mean ± σ):     876.4 ms ±   7.8 ms    [User: 1363.3 ms, System: 270.4 ms]
	  Range (min … max):   870.9 ms … 881.9 ms    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  575.481999ms
	Processing time (w/o IO):  570.857742ms
	Processing time (w/o IO):  574.637954ms
	  Time (mean ± σ):      1.354 s ±  0.002 s    [User: 1.324 s, System: 0.030 s]
	  Range (min … max):    1.353 s …  1.356 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 740.141ms
	Processing time (w/o IO): 740.653ms
	Processing time (w/o IO): 740.756ms
	  Time (mean ± σ):     10.503 s ±  0.048 s    [User: 10.387 s, System: 0.112 s]
	  Range (min … max):   10.469 s … 10.537 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 2056ms
	Processing time (w/o IO): 2058ms
	Processing time (w/o IO): 2148ms
	  Time (mean ± σ):      2.791 s ±  0.039 s    [User: 2.981 s, System: 0.170 s]
	  Range (min … max):    2.763 s …  2.819 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 2001ms
	Processing time (w/o IO): 2002ms
	Processing time (w/o IO): 2001ms
	  Time (mean ± σ):      2.483 s ±  0.011 s    [User: 2.437 s, System: 0.070 s]
	  Range (min … max):    2.475 s …  2.491 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 713.8220071792603ms
	Processing time (w/o IO): 713.0540609359741ms
	Processing time (w/o IO): 713.5659456253052ms
	  Time (mean ± σ):      2.135 s ±  0.013 s    [User: 1.964 s, System: 0.135 s]
	  Range (min … max):    2.126 s …  2.145 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 392.167744ms
	Processing time (w/o IO): 395.019521ms
	Processing time (w/o IO): 395.355027ms
	  Time (mean ± σ):      1.834 s ±  0.010 s    [User: 2.787 s, System: 0.141 s]
	  Range (min … max):    1.827 s …  1.842 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 2496ms
	Processing time (w/o IO): 2776ms
	Processing time (w/o IO): 2612ms
	  Time (mean ± σ):      3.022 s ±  0.112 s    [User: 3.036 s, System: 0.091 s]
	  Range (min … max):    2.943 s …  3.101 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 1496ms
	Processing time (w/o IO): 1522ms
	Processing time (w/o IO): 1524ms
	  Time (mean ± σ):      1.682 s ±  0.001 s    [User: 1.686 s, System: 0.069 s]
	  Range (min … max):    1.681 s …  1.683 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 1804ms
	Processing time (w/o IO): 1806ms
	Processing time (w/o IO): 1807ms
	  Time (mean ± σ):      2.077 s ±  0.137 s    [User: 1.937 s, System: 0.071 s]
	  Range (min … max):    1.981 s …  2.174 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 636 ms
	Processing time (w/o IO): 634 ms
	Processing time (w/o IO): 633 ms
	  Time (mean ± σ):      1.375 s ±  0.003 s    [User: 1.348 s, System: 0.024 s]
	  Range (min … max):    1.373 s …  1.377 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 605 ms
	Processing time (w/o IO): 597 ms
	Processing time (w/o IO): 598 ms
	  Time (mean ± σ):     700.1 ms ±   1.3 ms    [User: 1652.0 ms, System: 29.6 ms]
	  Range (min … max):   699.2 ms … 701.0 ms    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 349.806ms
	Processing time (w/o IO): 349.785ms
	Processing time (w/o IO): 349.112ms
	  Time (mean ± σ):     448.8 ms ±   2.1 ms    [User: 407.1 ms, System: 41.5 ms]
	  Range (min … max):   447.3 ms … 450.3 ms    2 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 241.178ms
	Processing time (w/o IO): 240.796ms
	Processing time (w/o IO): 245.175ms
	  Time (mean ± σ):     351.7 ms ±   7.4 ms    [User: 1019.1 ms, System: 37.5 ms]
	  Range (min … max):   346.4 ms … 356.9 ms    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 528ms
	Processing time (w/o IO): 530ms
	Processing time (w/o IO): 528ms
	  Time (mean ± σ):      3.271 s ±  0.027 s    [User: 3.270 s, System: 0.268 s]
	  Range (min … max):    3.252 s …  3.290 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 287ms
	Processing time (w/o IO): 277ms
	Processing time (w/o IO): 272ms
	  Time (mean ± σ):      2.688 s ±  0.001 s    [User: 4.275 s, System: 0.297 s]
	  Range (min … max):    2.687 s …  2.689 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 278ms
	Processing time (w/o IO): 279ms
	Processing time (w/o IO): 277ms
	  Time (mean ± σ):      3.206 s ±  0.017 s    [User: 4.775 s, System: 0.283 s]
	  Range (min … max):    3.194 s …  3.218 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 393ms
	Processing time (w/o IO): 390ms
	Processing time (w/o IO): 408ms
	  Time (mean ± σ):      3.496 s ±  0.030 s    [User: 3.417 s, System: 0.293 s]
	  Range (min … max):    3.474 s …  3.517 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 374.5127ms
	Processing time (w/o IO): 372.3194ms
	Processing time (w/o IO): 376.3905ms
	  Time (mean ± σ):      1.077 s ±  0.000 s    [User: 1.012 s, System: 0.080 s]
	  Range (min … max):    1.077 s …  1.077 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 369.603ms
	Processing time (w/o IO): 369.8751ms
	Processing time (w/o IO): 370.2113ms
	  Time (mean ± σ):     910.4 ms ±   0.9 ms    [User: 868.6 ms, System: 75.0 ms]
	  Range (min … max):   909.7 ms … 911.0 ms    2 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 124.5787ms
	Processing time (w/o IO): 122.015ms
	Processing time (w/o IO): 120.9072ms
	  Time (mean ± σ):     578.8 ms ±   4.7 ms    [User: 1173.6 ms, System: 81.6 ms]
	  Range (min … max):   575.5 ms … 582.1 ms    2 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 135.4909ms
	Processing time (w/o IO): 135.5934ms
	Processing time (w/o IO): 135.7071ms
	  Time (mean ± σ):     442.5 ms ±   0.6 ms    [User: 1177.0 ms, System: 69.7 ms]
	  Range (min … max):   442.1 ms … 442.9 ms    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	1491.6300773621	ms
	Processing time (w/o IO):	1472.4950790405	ms
	Processing time (w/o IO):	1550.0419139862	ms
	  Time (mean ± σ):      2.779 s ±  0.046 s    [User: 2.712 s, System: 0.064 s]
	  Range (min … max):    2.746 s …  2.811 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	16740.925073624	ms
	Processing time (w/o IO):	16752.835988998	ms
	  Time (abs ≡):        18.515 s               [User: 18.484 s, System: 0.027 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 2633ms
	Processing time (w/o IO): 2669ms
	Processing time (w/o IO): 2648ms
	  Time (mean ± σ):      3.068 s ±  0.017 s    [User: 2.898 s, System: 0.168 s]
	  Range (min … max):    3.056 s …  3.080 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 14.457827 s
	Processing time (w/o IO): 14.441191 s
	Processing time (w/o IO): 14.453474 s
	  Time (mean ± σ):     15.491 s ±  0.006 s    [User: 15.289 s, System: 0.257 s]
	  Range (min … max):   15.487 s … 15.495 s    2 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 3.276792503s
	Processing time (w/o IO): 3.270173348s
	Processing time (w/o IO): 3.272997936s
	  Time (mean ± σ):      3.766 s ±  0.004 s    [User: 3.779 s, System: 0.125 s]
	  Range (min … max):    3.763 s …  3.769 s    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1.430291763s
	Processing time (w/o IO): 1.426866668s
	Processing time (w/o IO): 1.418139163s
	  Time (mean ± σ):      1.911 s ±  0.008 s    [User: 6.135 s, System: 0.110 s]
	  Range (min … max):    1.906 s …  1.917 s    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 3.036835881s
	Processing time (w/o IO): 3.035637132s
	Processing time (w/o IO): 3.033104143s
	  Time (mean ± σ):      3.241 s ±  0.003 s    [User: 3.151 s, System: 0.079 s]
	  Range (min … max):    3.239 s …  3.243 s    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 1.516299017s
	Processing time (w/o IO): 1.51927936s
	Processing time (w/o IO): 1.514574153s
	  Time (mean ± σ):      1.723 s ±  0.003 s    [User: 3.134 s, System: 0.085 s]
	  Range (min … max):    1.721 s …  1.725 s    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 2696.78ms
	Processing time (w/o IO): 2701.12ms
	Processing time (w/o IO): 2702.89ms
	  Time (mean ± σ):      3.647 s ±  0.008 s    [User: 3.532 s, System: 0.118 s]
	  Range (min … max):    3.642 s …  3.653 s    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 969.37ms
	Processing time (w/o IO): 970.265ms
	Processing time (w/o IO): 971.828ms
	  Time (mean ± σ):      1.894 s ±  0.011 s    [User: 4.467 s, System: 0.131 s]
	  Range (min … max):    1.886 s …  1.902 s    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 2918 ms
	Processing time (w/o IO): 2923 ms
	Processing time (w/o IO): 2905 ms
	  Time (mean ± σ):      5.533 s ±  0.077 s    [User: 5.051 s, System: 0.339 s]
	  Range (min … max):    5.478 s …  5.587 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 1884 ms
	Processing time (w/o IO): 1885 ms
	Processing time (w/o IO): 1885 ms
	  Time (mean ± σ):      4.686 s ±  0.009 s    [User: 9.719 s, System: 0.343 s]
	  Range (min … max):    4.680 s …  4.692 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 215.500s
	Processing time (w/o IO): 220.167s
	  Time (abs ≡):        220.613 s               [User: 220.443 s, System: 0.147 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 8005.884389ms
	Processing time (w/o IO): 7990.036491ms
	Processing time (w/o IO): 7988.654066ms
	  Time (mean ± σ):      8.700 s ±  0.003 s    [User: 8.582 s, System: 0.113 s]
	  Range (min … max):    8.698 s …  8.702 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 3785ms
	Processing time (w/o IO): 3784ms
	Processing time (w/o IO): 3787ms
	  Time (mean ± σ):      4.369 s ±  0.005 s    [User: 4.308 s, System: 0.052 s]
	  Range (min … max):    4.366 s …  4.373 s    2 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 4217 milliseconds
	Processing time (w/o IO): 4214 milliseconds
	Processing time (w/o IO): 4210 milliseconds
	  Time (mean ± σ):      5.186 s ±  0.009 s    [User: 4.984 s, System: 0.299 s]
	  Range (min … max):    5.179 s …  5.192 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 135 milliseconds
	Processing time (w/o IO): 135 milliseconds
	Processing time (w/o IO): 133 milliseconds
	  Time (mean ± σ):      1.546 s ±  0.018 s    [User: 1.328 s, System: 0.318 s]
	  Range (min … max):    1.533 s …  1.559 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 1936 milliseconds
	Processing time (w/o IO): 1938 milliseconds
	Processing time (w/o IO): 1935 milliseconds
	  Time (mean ± σ):      2.917 s ±  0.012 s    [User: 8.473 s, System: 0.309 s]
	  Range (min … max):    2.908 s …  2.926 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  6.06878738s
	Processing time (w/o IO):  6.079387373s
	Processing time (w/o IO):  6.152566808s
	  Time (mean ± σ):      8.522 s ±  0.069 s    [User: 8.440 s, System: 0.075 s]
	  Range (min … max):    8.473 s …  8.572 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 6.591s
	Processing time (w/o IO): 6.587s
	Processing time (w/o IO): 6.588s
	  Time (mean ± σ):     78.606 s ±  2.606 s    [User: 78.182 s, System: 0.410 s]
	  Range (min … max):   76.763 s … 80.449 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 19668ms
	Processing time (w/o IO): 19709ms
	Processing time (w/o IO): 19716ms
	  Time (mean ± σ):     21.205 s ±  0.001 s    [User: 21.407 s, System: 0.250 s]
	  Range (min … max):   21.205 s … 21.206 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 17856ms
	Processing time (w/o IO): 17861ms
	Processing time (w/o IO): 17858ms
	  Time (mean ± σ):     19.326 s ±  0.005 s    [User: 19.278 s, System: 0.176 s]
	  Range (min … max):   19.323 s … 19.329 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 6159.044981002808ms
	Processing time (w/o IO): 6162.090063095093ms
	Processing time (w/o IO): 6179.280996322632ms
	  Time (mean ± σ):     10.423 s ±  0.029 s    [User: 9.904 s, System: 0.351 s]
	  Range (min … max):   10.402 s … 10.443 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 3436.057033ms
	Processing time (w/o IO): 3406.891424ms
	Processing time (w/o IO): 3418.59724ms
	  Time (mean ± σ):      7.792 s ±  0.113 s    [User: 17.353 s, System: 0.360 s]
	  Range (min … max):    7.712 s …  7.872 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 14322ms
	Processing time (w/o IO): 18645ms
	Processing time (w/o IO): 18654ms
	  Time (mean ± σ):     19.450 s ±  0.011 s    [User: 19.463 s, System: 0.177 s]
	  Range (min … max):   19.442 s … 19.457 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 13001ms
	Processing time (w/o IO): 12216ms
	Processing time (w/o IO): 14246ms
	  Time (mean ± σ):     13.664 s ±  1.435 s    [User: 13.666 s, System: 0.143 s]
	  Range (min … max):   12.649 s … 14.679 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 15897ms
	Processing time (w/o IO): 15874ms
	Processing time (w/o IO): 17863ms
	  Time (mean ± σ):     17.350 s ±  1.407 s    [User: 17.357 s, System: 0.174 s]
	  Range (min … max):   16.355 s … 18.345 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 6545 ms
	Processing time (w/o IO): 6545 ms
	Processing time (w/o IO): 6547 ms
	  Time (mean ± σ):     13.536 s ±  0.005 s    [User: 13.425 s, System: 0.100 s]
	  Range (min … max):   13.532 s … 13.540 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 5321 ms
	Processing time (w/o IO): 5317 ms
	Processing time (w/o IO): 5325 ms
	  Time (mean ± σ):      5.669 s ±  0.010 s    [User: 14.172 s, System: 0.141 s]
	  Range (min … max):    5.662 s …  5.676 s    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 3063.967ms
	Processing time (w/o IO): 3059.038ms
	Processing time (w/o IO): 3063.379ms
	  Time (mean ± σ):      3.402 s ±  0.002 s    [User: 3.301 s, System: 0.092 s]
	  Range (min … max):    3.400 s …  3.404 s    2 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 2141.275ms
	Processing time (w/o IO): 2145.365ms
	Processing time (w/o IO): 2143.684ms
	  Time (mean ± σ):      2.483 s ±  0.001 s    [User: 8.727 s, System: 0.106 s]
	  Range (min … max):    2.482 s …  2.484 s    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 4046ms
	Processing time (w/o IO): 4040ms
	Processing time (w/o IO): 4041ms
	  Time (mean ± σ):     13.389 s ±  0.040 s    [User: 14.284 s, System: 0.620 s]
	  Range (min … max):   13.361 s … 13.418 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 2484ms
	Processing time (w/o IO): 2400ms
	Processing time (w/o IO): 2404ms
	  Time (mean ± σ):     10.063 s ±  0.000 s    [User: 25.282 s, System: 0.551 s]
	  Range (min … max):   10.063 s … 10.063 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 2461ms
	Processing time (w/o IO): 2458ms
	Processing time (w/o IO): 2462ms
	  Time (mean ± σ):     13.121 s ±  0.003 s    [User: 29.267 s, System: 0.600 s]
	  Range (min … max):   13.119 s … 13.123 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 3409ms
	Processing time (w/o IO): 3406ms
	Processing time (w/o IO): 3417ms
	  Time (mean ± σ):     15.100 s ±  0.013 s    [User: 16.341 s, System: 0.596 s]
	  Range (min … max):   15.091 s … 15.110 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 3272.1135ms
	Processing time (w/o IO): 3269.309ms
	Processing time (w/o IO): 3250.5048ms
	  Time (mean ± σ):      7.392 s ±  0.018 s    [User: 7.354 s, System: 0.160 s]
	  Range (min … max):    7.379 s …  7.405 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 3252.0687ms
	Processing time (w/o IO): 3251.284ms
	Processing time (w/o IO): 3242.3086ms
	  Time (mean ± σ):      7.037 s ±  0.004 s    [User: 6.987 s, System: 0.176 s]
	  Range (min … max):    7.034 s …  7.039 s    2 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 1012.2462ms
	Processing time (w/o IO): 1011.5179ms
	Processing time (w/o IO): 1009.3874ms
	  Time (mean ± σ):      2.901 s ±  0.001 s    [User: 8.646 s, System: 0.176 s]
	  Range (min … max):    2.900 s …  2.902 s    2 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 1129.1306ms
	Processing time (w/o IO): 1134.2867ms
	Processing time (w/o IO): 1130.447ms
	  Time (mean ± σ):      2.802 s ±  0.008 s    [User: 9.342 s, System: 0.179 s]
	  Range (min … max):    2.797 s …  2.807 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	13185.433149338	ms
	Processing time (w/o IO):	13194.137811661	ms
	Processing time (w/o IO):	12441.159009933	ms
	  Time (mean ± σ):     16.927 s ±  0.541 s    [User: 16.731 s, System: 0.187 s]
	  Range (min … max):   16.545 s … 17.310 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	150088.10687065	ms
	Processing time (w/o IO):	149848.05512428	ms
	  Time (abs ≡):        156.361 s               [User: 156.143 s, System: 0.196 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 33822ms
	Processing time (w/o IO): 34394ms
	Processing time (w/o IO): 34296ms
	  Time (mean ± σ):     35.806 s ±  0.061 s    [User: 35.028 s, System: 0.768 s]
	  Range (min … max):   35.763 s … 35.849 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 133.104135 s
	Processing time (w/o IO): 129.904814 s
	Processing time (w/o IO): 130.356659 s
	  Time (mean ± σ):     133.253 s ±  0.327 s    [User: 132.375 s, System: 0.926 s]
	  Range (min … max):   133.021 s … 133.484 s    2 runs
	 
