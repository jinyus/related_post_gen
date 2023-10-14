Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 24.813793ms
	Processing time (w/o IO): 24.131671ms
	Processing time (w/o IO): 24.488282ms
	Processing time (w/o IO): 24.229874ms
	Processing time (w/o IO): 24.205773ms
	Processing time (w/o IO): 24.689489ms
	Processing time (w/o IO): 24.210673ms
	Processing time (w/o IO): 24.874962ms
	Processing time (w/o IO): 24.675256ms
	Processing time (w/o IO): 24.222744ms
	Processing time (w/o IO): 24.41535ms
	Processing time (w/o IO): 24.218445ms
	Processing time (w/o IO): 24.161743ms
	  Time (mean ± σ):      63.1 ms ±   1.2 ms    [User: 57.4 ms, System: 11.8 ms]
	  Range (min … max):    61.4 ms …  64.9 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 12.596936ms
	Processing time (w/o IO): 12.716039ms
	Processing time (w/o IO): 12.495233ms
	Processing time (w/o IO): 14.841195ms
	Processing time (w/o IO): 14.391283ms
	Processing time (w/o IO): 12.753039ms
	Processing time (w/o IO): 12.950545ms
	Processing time (w/o IO): 12.799141ms
	Processing time (w/o IO): 13.310054ms
	Processing time (w/o IO): 12.994646ms
	Processing time (w/o IO): 13.164451ms
	Processing time (w/o IO): 14.64819ms
	Processing time (w/o IO): 12.688437ms
	  Time (mean ± σ):      50.9 ms ±   1.2 ms    [User: 80.6 ms, System: 10.3 ms]
	  Range (min … max):    49.0 ms …  53.0 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 24.386899ms
	Processing time (w/o IO): 24.114794ms
	Processing time (w/o IO): 23.711086ms
	Processing time (w/o IO): 24.035592ms
	Processing time (w/o IO): 23.796487ms
	Processing time (w/o IO): 23.751686ms
	Processing time (w/o IO): 23.824588ms
	Processing time (w/o IO): 23.771087ms
	Processing time (w/o IO): 23.689285ms
	Processing time (w/o IO): 23.770886ms
	Processing time (w/o IO): 23.767187ms
	Processing time (w/o IO): 23.743186ms
	Processing time (w/o IO): 23.749486ms
	  Time (mean ± σ):      39.7 ms ±   0.5 ms    [User: 33.4 ms, System: 6.2 ms]
	  Range (min … max):    38.8 ms …  40.2 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 21.641293ms
	Processing time (w/o IO): 20.372964ms
	Processing time (w/o IO): 20.319263ms
	Processing time (w/o IO): 20.095157ms
	Processing time (w/o IO): 20.188559ms
	Processing time (w/o IO): 20.382563ms
	Processing time (w/o IO): 19.935353ms
	Processing time (w/o IO): 20.321062ms
	Processing time (w/o IO): 20.164459ms
	Processing time (w/o IO): 19.956354ms
	Processing time (w/o IO): 20.384664ms
	Processing time (w/o IO): 20.261561ms
	Processing time (w/o IO): 20.055156ms
	  Time (mean ± σ):      36.6 ms ±   0.3 ms    [User: 45.5 ms, System: 10.1 ms]
	  Range (min … max):    36.0 ms …  37.0 ms    10 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 23.601ms
	Processing time (w/o IO): 23.62ms
	Processing time (w/o IO): 23.993ms
	Processing time (w/o IO): 23.919ms
	Processing time (w/o IO): 24.437ms
	Processing time (w/o IO): 23.729ms
	Processing time (w/o IO): 23.9ms
	Processing time (w/o IO): 24.463ms
	Processing time (w/o IO): 23.528ms
	Processing time (w/o IO): 23.757ms
	Processing time (w/o IO): 23.594ms
	Processing time (w/o IO): 23.661ms
	Processing time (w/o IO): 23.776ms
	  Time (mean ± σ):     104.7 ms ±   0.8 ms    [User: 96.3 ms, System: 9.6 ms]
	  Range (min … max):   103.7 ms … 106.5 ms    10 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 13.679ms
	Processing time (w/o IO): 15.357ms
	Processing time (w/o IO): 12.836ms
	Processing time (w/o IO): 14.435ms
	Processing time (w/o IO): 14.837ms
	Processing time (w/o IO): 13.634ms
	Processing time (w/o IO): 14.757ms
	Processing time (w/o IO): 15.902ms
	Processing time (w/o IO): 13.773ms
	Processing time (w/o IO): 15.062ms
	Processing time (w/o IO): 15.006ms
	Processing time (w/o IO): 13.262ms
	Processing time (w/o IO): 15.476ms
	  Time (mean ± σ):      96.2 ms ±   1.4 ms    [User: 111.6 ms, System: 12.6 ms]
	  Range (min … max):    94.0 ms …  98.0 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 1.475s
	Processing time (w/o IO): 1.462s
	Processing time (w/o IO): 1.462s
	Processing time (w/o IO): 1.466s
	Processing time (w/o IO): 1.461s
	Processing time (w/o IO): 1.474s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.479s
	Processing time (w/o IO): 1.465s
	Processing time (w/o IO): 1.459s
	Processing time (w/o IO): 1.462s
	Processing time (w/o IO): 1.455s
	Processing time (w/o IO): 1.481s
	  Time (mean ± σ):      1.533 s ±  0.009 s    [User: 1.513 s, System: 0.020 s]
	  Range (min … max):    1.521 s …  1.547 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 446.4ms
	Processing time (w/o IO): 475.2ms
	Processing time (w/o IO): 437.9ms
	Processing time (w/o IO): 450.9ms
	Processing time (w/o IO): 424.3ms
	Processing time (w/o IO): 436.4ms
	Processing time (w/o IO): 422.6ms
	Processing time (w/o IO): 408.9ms
	Processing time (w/o IO): 400.9ms
	Processing time (w/o IO): 408.6ms
	Processing time (w/o IO): 373.2ms
	Processing time (w/o IO): 443.1ms
	Processing time (w/o IO): 367.1ms
	  Time (mean ± σ):     700.8 ms ±  28.3 ms    [User: 829.2 ms, System: 487.6 ms]
	  Range (min … max):   651.4 ms … 738.4 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 58.046769ms
	Processing time (w/o IO): 56.453434ms
	Processing time (w/o IO): 57.229752ms
	Processing time (w/o IO): 56.789142ms
	Processing time (w/o IO): 56.800843ms
	Processing time (w/o IO): 56.681039ms
	Processing time (w/o IO): 56.537137ms
	Processing time (w/o IO): 56.73464ms
	Processing time (w/o IO): 57.236952ms
	Processing time (w/o IO): 56.339233ms
	Processing time (w/o IO): 56.745641ms
	Processing time (w/o IO): 57.12895ms
	Processing time (w/o IO): 56.550537ms
	  Time (mean ± σ):     106.3 ms ±   1.3 ms    [User: 97.5 ms, System: 8.7 ms]
	  Range (min … max):   104.9 ms … 109.0 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	  Time (mean ± σ):      75.3 ms ±   0.4 ms    [User: 71.3 ms, System: 4.1 ms]
	  Range (min … max):    74.8 ms …  75.8 ms    10 runs
	 
Julia:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 38 milliseconds
	Processing time (w/o IO): 38 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 38 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 31 milliseconds
	  Time (mean ± σ):      3.246 s ±  0.023 s    [User: 3.052 s, System: 0.193 s]
	  Range (min … max):    3.209 s …  3.280 s    10 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads auto related.jl
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 19 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 19 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 18 milliseconds
	  Time (mean ± σ):      3.376 s ±  0.013 s    [User: 4.510 s, System: 0.197 s]
	  Range (min … max):    3.357 s …  3.396 s    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  41.387247ms
	Processing time (w/o IO):  42.192262ms
	Processing time (w/o IO):  41.216845ms
	Processing time (w/o IO):  41.087442ms
	Processing time (w/o IO):  41.098942ms
	Processing time (w/o IO):  41.344547ms
	Processing time (w/o IO):  41.221944ms
	Processing time (w/o IO):  40.675534ms
	Processing time (w/o IO):  41.158343ms
	Processing time (w/o IO):  41.347747ms
	Processing time (w/o IO):  41.379447ms
	Processing time (w/o IO):  41.217844ms
	Processing time (w/o IO):  41.54605ms
	  Time (mean ± σ):     258.1 ms ±   1.1 ms    [User: 249.7 ms, System: 8.3 ms]
	  Range (min … max):   256.4 ms … 259.7 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 51.862ms
	Processing time (w/o IO): 51.317ms
	Processing time (w/o IO): 51.307ms
	Processing time (w/o IO): 51.302ms
	Processing time (w/o IO): 51.405ms
	Processing time (w/o IO): 51.555ms
	Processing time (w/o IO): 51.419ms
	Processing time (w/o IO): 51.704ms
	Processing time (w/o IO): 51.670ms
	Processing time (w/o IO): 51.842ms
	Processing time (w/o IO): 51.344ms
	Processing time (w/o IO): 51.118ms
	Processing time (w/o IO): 51.048ms
	  Time (mean ± σ):     393.6 ms ±   3.3 ms    [User: 364.8 ms, System: 28.6 ms]
	  Range (min … max):   388.1 ms … 398.9 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 136ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 130ms
	  Time (mean ± σ):     511.6 ms ±   7.0 ms    [User: 617.2 ms, System: 114.0 ms]
	  Range (min … max):   503.5 ms … 521.6 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 188ms
	Processing time (w/o IO): 185ms
	  Time (mean ± σ):     313.2 ms ±   1.3 ms    [User: 292.7 ms, System: 24.6 ms]
	  Range (min … max):   311.4 ms … 315.2 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 50.2549409866333ms
	Processing time (w/o IO): 50.52506923675537ms
	Processing time (w/o IO): 50.318002700805664ms
	Processing time (w/o IO): 50.66096782684326ms
	Processing time (w/o IO): 51.10001564025879ms
	Processing time (w/o IO): 50.72605609893799ms
	Processing time (w/o IO): 50.96793174743652ms
	Processing time (w/o IO): 50.979018211364746ms
	Processing time (w/o IO): 51.8571138381958ms
	Processing time (w/o IO): 50.55201053619385ms
	Processing time (w/o IO): 51.02097988128662ms
	Processing time (w/o IO): 50.521016120910645ms
	Processing time (w/o IO): 50.97603797912598ms
	  Time (mean ± σ):     416.3 ms ±  12.3 ms    [User: 359.3 ms, System: 29.2 ms]
	  Range (min … max):   401.4 ms … 441.5 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 31.814882ms
	Processing time (w/o IO): 31.18457ms
	Processing time (w/o IO): 31.561177ms
	Processing time (w/o IO): 32.098286ms
	Processing time (w/o IO): 31.16227ms
	Processing time (w/o IO): 32.930501ms
	Processing time (w/o IO): 31.692779ms
	Processing time (w/o IO): 31.365773ms
	Processing time (w/o IO): 31.060787ms
	Processing time (w/o IO): 31.435593ms
	Processing time (w/o IO): 31.029987ms
	Processing time (w/o IO): 31.049587ms
	Processing time (w/o IO): 31.369192ms
	  Time (mean ± σ):     408.8 ms ±  13.6 ms    [User: 427.6 ms, System: 41.4 ms]
	  Range (min … max):   393.5 ms … 439.5 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 183ms
	Processing time (w/o IO): 183ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 183ms
	Processing time (w/o IO): 174ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 180ms
	Processing time (w/o IO): 183ms
	Processing time (w/o IO): 178ms
	  Time (mean ± σ):     352.4 ms ±   3.3 ms    [User: 358.8 ms, System: 58.6 ms]
	  Range (min … max):   345.4 ms … 357.2 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 636ms
	Processing time (w/o IO): 620ms
	Processing time (w/o IO): 626ms
	Processing time (w/o IO): 624ms
	Processing time (w/o IO): 641ms
	Processing time (w/o IO): 603ms
	Processing time (w/o IO): 621ms
	Processing time (w/o IO): 608ms
	Processing time (w/o IO): 612ms
	Processing time (w/o IO): 619ms
	Processing time (w/o IO): 606ms
	Processing time (w/o IO): 625ms
	Processing time (w/o IO): 611ms
	  Time (mean ± σ):     676.9 ms ±  11.3 ms    [User: 688.7 ms, System: 38.8 ms]
	  Range (min … max):   663.9 ms … 701.5 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 198ms
	Processing time (w/o IO): 194ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 195ms
	Processing time (w/o IO): 198ms
	Processing time (w/o IO): 198ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 190ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 190ms
	  Time (mean ± σ):     259.7 ms ±   4.0 ms    [User: 256.0 ms, System: 26.1 ms]
	  Range (min … max):   255.5 ms … 265.8 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 54 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 52 ms
	  Time (mean ± σ):     386.1 ms ±   8.0 ms    [User: 680.9 ms, System: 56.0 ms]
	  Range (min … max):   376.5 ms … 399.1 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 33 ms
	Processing time (w/o IO): 33 ms
	Processing time (w/o IO): 33 ms
	Processing time (w/o IO): 34 ms
	Processing time (w/o IO): 33 ms
	Processing time (w/o IO): 33 ms
	Processing time (w/o IO): 33 ms
	Processing time (w/o IO): 33 ms
	Processing time (w/o IO): 33 ms
	Processing time (w/o IO): 33 ms
	Processing time (w/o IO): 33 ms
	Processing time (w/o IO): 33 ms
	Processing time (w/o IO): 33 ms
	  Time (mean ± σ):      97.8 ms ±   0.6 ms    [User: 89.1 ms, System: 8.9 ms]
	  Range (min … max):    96.8 ms …  98.6 ms    10 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 38 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 38 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 40 ms
	  Time (mean ± σ):      66.9 ms ±   1.2 ms    [User: 114.3 ms, System: 11.3 ms]
	  Range (min … max):    65.6 ms …  69.6 ms    10 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 43.368ms
	Processing time (w/o IO): 43.1ms
	Processing time (w/o IO): 42.79ms
	Processing time (w/o IO): 42.86ms
	Processing time (w/o IO): 42.902ms
	Processing time (w/o IO): 42.881ms
	Processing time (w/o IO): 42.883ms
	Processing time (w/o IO): 43.222ms
	Processing time (w/o IO): 42.905ms
	Processing time (w/o IO): 42.969ms
	Processing time (w/o IO): 43.12ms
	Processing time (w/o IO): 43.364ms
	Processing time (w/o IO): 43.071ms
	  Time (mean ± σ):      67.8 ms ±   0.7 ms    [User: 55.3 ms, System: 12.5 ms]
	  Range (min … max):    66.7 ms …  69.4 ms    10 runs
	 
F#:

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 45ms
	Processing time (w/o IO): 45ms
	Processing time (w/o IO): 43ms
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 45ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 45ms
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 45ms
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 46ms
	  Time (mean ± σ):     905.3 ms ±   6.1 ms    [User: 982.8 ms, System: 87.4 ms]
	  Range (min … max):   896.7 ms … 912.6 ms    10 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 42ms
	Processing time (w/o IO): 51ms
	Processing time (w/o IO): 43ms
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 43ms
	Processing time (w/o IO): 43ms
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 42ms
	Processing time (w/o IO): 43ms
	Processing time (w/o IO): 42ms
	Processing time (w/o IO): 43ms
	Processing time (w/o IO): 43ms
	  Time (mean ± σ):     891.9 ms ±  18.6 ms    [User: 1008.7 ms, System: 96.1 ms]
	  Range (min … max):   848.6 ms … 911.6 ms    10 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 33ms
	Processing time (w/o IO): 33ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 33ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 33ms
	Processing time (w/o IO): 32ms
	  Time (mean ± σ):     745.1 ms ±   3.1 ms    [User: 705.2 ms, System: 82.1 ms]
	  Range (min … max):   739.4 ms … 748.4 ms    10 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 57.8961ms
	Processing time (w/o IO): 57.8574ms
	Processing time (w/o IO): 57.7177ms
	Processing time (w/o IO): 57.4006ms
	Processing time (w/o IO): 57.7227ms
	Processing time (w/o IO): 58.0805ms
	Processing time (w/o IO): 58.1368ms
	Processing time (w/o IO): 57.3207ms
	Processing time (w/o IO): 57.9542ms
	Processing time (w/o IO): 57.8067ms
	Processing time (w/o IO): 57.8147ms
	Processing time (w/o IO): 58.3384ms
	Processing time (w/o IO): 57.8348ms
	  Time (mean ± σ):     199.7 ms ±   3.1 ms    [User: 154.2 ms, System: 27.9 ms]
	  Range (min … max):   193.1 ms … 202.8 ms    10 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 42.8445ms
	Processing time (w/o IO): 42.802ms
	Processing time (w/o IO): 42.9396ms
	Processing time (w/o IO): 42.6329ms
	Processing time (w/o IO): 42.96ms
	Processing time (w/o IO): 42.7232ms
	Processing time (w/o IO): 42.773ms
	Processing time (w/o IO): 42.5406ms
	Processing time (w/o IO): 42.5315ms
	Processing time (w/o IO): 42.8031ms
	Processing time (w/o IO): 42.6946ms
	Processing time (w/o IO): 43.0903ms
	Processing time (w/o IO): 42.6187ms
	  Time (mean ± σ):      87.3 ms ±   1.1 ms    [User: 76.5 ms, System: 21.0 ms]
	  Range (min … max):    85.2 ms …  88.3 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	105.35407066345	ms
	Processing time (w/o IO):	104.02798652649	ms
	Processing time (w/o IO):	117.71202087402	ms
	Processing time (w/o IO):	104.77614402771	ms
	Processing time (w/o IO):	109.03000831604	ms
	Processing time (w/o IO):	105.99184036255	ms
	Processing time (w/o IO):	107.28406906128	ms
	Processing time (w/o IO):	87.898969650269	ms
	Processing time (w/o IO):	87.249994277954	ms
	Processing time (w/o IO):	89.063167572021	ms
	Processing time (w/o IO):	107.39803314209	ms
	Processing time (w/o IO):	87.966918945313	ms
	Processing time (w/o IO):	107.16700553894	ms
	  Time (mean ± σ):     336.9 ms ±  14.1 ms    [User: 315.7 ms, System: 21.1 ms]
	  Range (min … max):   320.2 ms … 357.1 ms    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1090.7459259033	ms
	Processing time (w/o IO):	1098.4661579132	ms
	Processing time (w/o IO):	1092.738866806	ms
	Processing time (w/o IO):	1099.8640060425	ms
	Processing time (w/o IO):	1090.0721549988	ms
	Processing time (w/o IO):	1094.6891307831	ms
	Processing time (w/o IO):	1093.4159755707	ms
	Processing time (w/o IO):	1086.886882782	ms
	Processing time (w/o IO):	1129.61602211	ms
	Processing time (w/o IO):	1094.4290161133	ms
	Processing time (w/o IO):	1090.8131599426	ms
	Processing time (w/o IO):	1093.043088913	ms
	Processing time (w/o IO):	1089.9040699005	ms
	  Time (mean ± σ):      1.517 s ±  0.015 s    [User: 1.499 s, System: 0.017 s]
	  Range (min … max):    1.502 s …  1.558 s    10 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 136ms
	Processing time (w/o IO): 139ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 134ms
	Processing time (w/o IO): 139ms
	Processing time (w/o IO): 139ms
	  Time (mean ± σ):     222.0 ms ±   1.7 ms    [User: 195.6 ms, System: 26.3 ms]
	  Range (min … max):   220.0 ms … 225.1 ms    10 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 370.628717ms
	Processing time (w/o IO): 368.960775ms
	Processing time (w/o IO): 371.722745ms
	  Time (mean ± σ):     521.0 ms ±   2.6 ms    [User: 512.1 ms, System: 45.5 ms]
	  Range (min … max):   519.1 ms … 522.9 ms    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 168.114372ms
	Processing time (w/o IO): 165.811213ms
	Processing time (w/o IO): 165.648409ms
	  Time (mean ± σ):     305.2 ms ±   0.6 ms    [User: 776.4 ms, System: 37.4 ms]
	  Range (min … max):   304.8 ms … 305.7 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 386.849729ms
	Processing time (w/o IO): 386.412223ms
	Processing time (w/o IO): 388.650862ms
	  Time (mean ± σ):     457.2 ms ±   2.6 ms    [User: 431.7 ms, System: 25.4 ms]
	  Range (min … max):   455.4 ms … 459.1 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 304.913669ms
	Processing time (w/o IO): 307.558514ms
	Processing time (w/o IO): 305.827085ms
	  Time (mean ± σ):     373.6 ms ±   1.9 ms    [User: 648.1 ms, System: 27.4 ms]
	  Range (min … max):   372.2 ms … 374.9 ms    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 304.478ms
	Processing time (w/o IO): 301.107ms
	Processing time (w/o IO): 301.445ms
	  Time (mean ± σ):     600.3 ms ±   1.0 ms    [User: 584.6 ms, System: 19.6 ms]
	  Range (min … max):   599.5 ms … 601.0 ms    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 143.968ms
	Processing time (w/o IO): 142.321ms
	Processing time (w/o IO): 146.66ms
	  Time (mean ± σ):     444.7 ms ±   2.9 ms    [User: 788.1 ms, System: 29.4 ms]
	  Range (min … max):   442.7 ms … 446.7 ms    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 23.574s
	Processing time (w/o IO): 23.581s
	  Time (abs ≡):        23.735 s               [User: 23.669 s, System: 0.056 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 6.674s
	Processing time (w/o IO): 7.023s
	Processing time (w/o IO): 6.955s
	  Time (mean ± σ):      7.497 s ±  0.050 s    [User: 5.019 s, System: 3.062 s]
	  Range (min … max):    7.461 s …  7.533 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 841.555434ms
	Processing time (w/o IO): 837.672235ms
	Processing time (w/o IO): 837.936841ms
	  Time (mean ± σ):      1.052 s ±  0.003 s    [User: 1.026 s, System: 0.026 s]
	  Range (min … max):    1.049 s …  1.054 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 429ms
	Processing time (w/o IO): 426ms
	Processing time (w/o IO): 427ms
	  Time (mean ± σ):     621.6 ms ±   1.1 ms    [User: 601.3 ms, System: 17.7 ms]
	  Range (min … max):   620.8 ms … 622.4 ms    2 runs
	 
Julia:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 574 milliseconds
	Processing time (w/o IO): 575 milliseconds
	Processing time (w/o IO): 573 milliseconds
	  Time (mean ± σ):      4.447 s ±  0.005 s    [User: 4.205 s, System: 0.237 s]
	  Range (min … max):    4.443 s …  4.450 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads auto related.jl
	Processing time (w/o IO): 252 milliseconds
	Processing time (w/o IO): 251 milliseconds
	Processing time (w/o IO): 252 milliseconds
	  Time (mean ± σ):      3.946 s ±  0.007 s    [User: 6.398 s, System: 0.228 s]
	  Range (min … max):    3.941 s …  3.950 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  576.585252ms
	Processing time (w/o IO):  577.212442ms
	Processing time (w/o IO):  572.56174ms
	  Time (mean ± σ):      1.365 s ±  0.007 s    [User: 1.334 s, System: 0.029 s]
	  Range (min … max):    1.361 s …  1.370 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 755.508ms
	Processing time (w/o IO): 754.638ms
	Processing time (w/o IO): 756.013ms
	  Time (mean ± σ):      9.042 s ±  0.679 s    [User: 8.915 s, System: 0.121 s]
	  Range (min … max):    8.561 s …  9.522 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 2100ms
	Processing time (w/o IO): 2346ms
	Processing time (w/o IO): 2387ms
	  Time (mean ± σ):      3.040 s ±  0.043 s    [User: 3.256 s, System: 0.140 s]
	  Range (min … max):    3.010 s …  3.071 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 2884ms
	Processing time (w/o IO): 2887ms
	Processing time (w/o IO): 2878ms
	  Time (mean ± σ):      3.374 s ±  0.005 s    [User: 3.319 s, System: 0.072 s]
	  Range (min … max):    3.371 s …  3.378 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 708.3029747009277ms
	Processing time (w/o IO): 705.6900262832642ms
	Processing time (w/o IO): 711.962103843689ms
	  Time (mean ± σ):      2.113 s ±  0.003 s    [User: 1.943 s, System: 0.114 s]
	  Range (min … max):    2.111 s …  2.115 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 392.35125ms
	Processing time (w/o IO): 393.870984ms
	Processing time (w/o IO): 394.178491ms
	  Time (mean ± σ):      1.840 s ±  0.005 s    [User: 2.789 s, System: 0.129 s]
	  Range (min … max):    1.836 s …  1.844 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 2426ms
	Processing time (w/o IO): 2428ms
	Processing time (w/o IO): 2430ms
	  Time (mean ± σ):      2.754 s ±  0.002 s    [User: 2.761 s, System: 0.102 s]
	  Range (min … max):    2.753 s …  2.755 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 11861ms
	Processing time (w/o IO): 12169ms
	Processing time (w/o IO): 12143ms
	  Time (mean ± σ):     12.314 s ±  0.021 s    [User: 12.335 s, System: 0.082 s]
	  Range (min … max):   12.300 s … 12.329 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 2258ms
	Processing time (w/o IO): 2256ms
	Processing time (w/o IO): 2261ms
	  Time (mean ± σ):      2.614 s ±  0.063 s    [User: 2.435 s, System: 0.073 s]
	  Range (min … max):    2.569 s …  2.658 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 755 ms
	Processing time (w/o IO): 749 ms
	Processing time (w/o IO): 749 ms
	  Time (mean ± σ):      1.893 s ±  0.008 s    [User: 2.487 s, System: 0.091 s]
	  Range (min … max):    1.887 s …  1.899 s    2 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 495 ms
	Processing time (w/o IO): 495 ms
	Processing time (w/o IO): 496 ms
	  Time (mean ± σ):      1.088 s ±  0.003 s    [User: 1.043 s, System: 0.044 s]
	  Range (min … max):    1.086 s …  1.090 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 466 ms
	Processing time (w/o IO): 480 ms
	Processing time (w/o IO): 462 ms
	  Time (mean ± σ):     571.3 ms ±  12.9 ms    [User: 1313.0 ms, System: 31.4 ms]
	  Range (min … max):   562.2 ms … 580.4 ms    2 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 399.395ms
	Processing time (w/o IO): 397.638ms
	Processing time (w/o IO): 397.219ms
	  Time (mean ± σ):     492.5 ms ±   0.7 ms    [User: 460.6 ms, System: 31.8 ms]
	  Range (min … max):   492.0 ms … 493.1 ms    2 runs
	 
F#:

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 622ms
	Processing time (w/o IO): 625ms
	Processing time (w/o IO): 624ms
	  Time (mean ± σ):      3.330 s ±  0.008 s    [User: 3.198 s, System: 0.316 s]
	  Range (min … max):    3.324 s …  3.335 s    2 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 427ms
	Processing time (w/o IO): 428ms
	Processing time (w/o IO): 434ms
	  Time (mean ± σ):      2.603 s ±  0.006 s    [User: 3.658 s, System: 0.307 s]
	  Range (min … max):    2.599 s …  2.607 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 487ms
	Processing time (w/o IO): 486ms
	Processing time (w/o IO): 487ms
	  Time (mean ± σ):      4.039 s ±  0.005 s    [User: 4.222 s, System: 0.448 s]
	  Range (min … max):    4.035 s …  4.042 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 773.486ms
	Processing time (w/o IO): 771.8339ms
	Processing time (w/o IO): 768.8744ms
	  Time (mean ± σ):      1.087 s ±  0.000 s    [User: 1.030 s, System: 0.084 s]
	  Range (min … max):    1.087 s …  1.087 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 616.0291ms
	Processing time (w/o IO): 617.9694ms
	Processing time (w/o IO): 616.2306ms
	  Time (mean ± σ):     795.8 ms ±   8.0 ms    [User: 780.7 ms, System: 57.6 ms]
	  Range (min … max):   790.1 ms … 801.4 ms    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	1549.3409633636	ms
	Processing time (w/o IO):	1487.7490997314	ms
	Processing time (w/o IO):	1164.3640995026	ms
	  Time (mean ± σ):      2.558 s ±  0.254 s    [User: 2.481 s, System: 0.076 s]
	  Range (min … max):    2.379 s …  2.738 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	16753.883838654	ms
	Processing time (w/o IO):	16732.457876205	ms
	  Time (abs ≡):        18.527 s               [User: 18.453 s, System: 0.068 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 2631ms
	Processing time (w/o IO): 2662ms
	Processing time (w/o IO): 2723ms
	  Time (mean ± σ):      3.098 s ±  0.048 s    [User: 2.903 s, System: 0.193 s]
	  Range (min … max):    3.064 s …  3.131 s    2 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 3.273856193s
	Processing time (w/o IO): 3.27864175s
	Processing time (w/o IO): 3.279166964s
	  Time (mean ± σ):      3.748 s ±  0.004 s    [User: 3.773 s, System: 0.108 s]
	  Range (min … max):    3.745 s …  3.751 s    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1.426405848s
	Processing time (w/o IO): 1.423743038s
	Processing time (w/o IO): 1.428556879s
	  Time (mean ± σ):      1.888 s ±  0.003 s    [User: 6.106 s, System: 0.111 s]
	  Range (min … max):    1.886 s …  1.891 s    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 3.450116654s
	Processing time (w/o IO): 3.44655353s
	Processing time (w/o IO): 3.442361181s
	  Time (mean ± σ):      3.685 s ±  0.006 s    [User: 3.605 s, System: 0.074 s]
	  Range (min … max):    3.681 s …  3.690 s    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 2.736345195s
	Processing time (w/o IO): 2.724038333s
	Processing time (w/o IO): 2.728393106s
	  Time (mean ± σ):      2.970 s ±  0.006 s    [User: 5.591 s, System: 0.088 s]
	  Range (min … max):    2.966 s …  2.974 s    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 2621.61ms
	Processing time (w/o IO): 2628.51ms
	Processing time (w/o IO): 2629.14ms
	  Time (mean ± σ):      3.598 s ±  0.004 s    [User: 3.491 s, System: 0.111 s]
	  Range (min … max):    3.595 s …  3.601 s    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1160.03ms
	Processing time (w/o IO): 1170.67ms
	Processing time (w/o IO): 1170.35ms
	  Time (mean ± σ):      2.113 s ±  0.014 s    [User: 5.344 s, System: 0.091 s]
	  Range (min … max):    2.103 s …  2.124 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 217.319s
	Processing time (w/o IO): 214.577s
	  Time (abs ≡):        215.053 s               [User: 214.859 s, System: 0.147 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 7480.222066ms
	Processing time (w/o IO): 7454.507239ms
	Processing time (w/o IO): 7438.6991ms
	  Time (mean ± σ):      8.139 s ±  0.005 s    [User: 8.031 s, System: 0.099 s]
	  Range (min … max):    8.136 s …  8.142 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 3823ms
	Processing time (w/o IO): 3823ms
	Processing time (w/o IO): 3820ms
	  Time (mean ± σ):      4.433 s ±  0.000 s    [User: 4.321 s, System: 0.101 s]
	  Range (min … max):    4.433 s …  4.433 s    2 runs
	 
Julia:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 5051 milliseconds
	Processing time (w/o IO): 5045 milliseconds
	Processing time (w/o IO): 5041 milliseconds
	  Time (mean ± σ):     13.782 s ±  0.046 s    [User: 13.494 s, System: 0.280 s]
	  Range (min … max):   13.750 s … 13.814 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads auto related.jl
	Processing time (w/o IO): 2125 milliseconds
	Processing time (w/o IO): 2130 milliseconds
	Processing time (w/o IO): 2135 milliseconds
	  Time (mean ± σ):      8.027 s ±  0.027 s    [User: 21.448 s, System: 0.254 s]
	  Range (min … max):    8.008 s …  8.047 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  6.06047148s
	Processing time (w/o IO):  6.068610376s
	Processing time (w/o IO):  6.076415598s
	  Time (mean ± σ):      8.440 s ±  0.007 s    [User: 8.350 s, System: 0.081 s]
	  Range (min … max):    8.435 s …  8.445 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 6.671s
	Processing time (w/o IO): 6.665s
	Processing time (w/o IO): 6.674s
	  Time (mean ± σ):     75.921 s ±  0.549 s    [User: 75.479 s, System: 0.413 s]
	  Range (min … max):   75.533 s … 76.310 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 21087ms
	Processing time (w/o IO): 21056ms
	Processing time (w/o IO): 21258ms
	  Time (mean ± σ):     22.629 s ±  0.114 s    [User: 22.842 s, System: 0.250 s]
	  Range (min … max):   22.549 s … 22.710 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 25802ms
	Processing time (w/o IO): 25833ms
	Processing time (w/o IO): 25807ms
	  Time (mean ± σ):     27.309 s ±  0.025 s    [User: 27.275 s, System: 0.141 s]
	  Range (min … max):   27.292 s … 27.327 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 6185.328960418701ms
	Processing time (w/o IO): 6194.739937782288ms
	Processing time (w/o IO): 6195.626020431519ms
	  Time (mean ± σ):     10.560 s ±  0.080 s    [User: 10.005 s, System: 0.379 s]
	  Range (min … max):   10.503 s … 10.616 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 3459.823464ms
	Processing time (w/o IO): 3468.667207ms
	Processing time (w/o IO): 3434.028893ms
	  Time (mean ± σ):      7.800 s ±  0.035 s    [User: 17.462 s, System: 0.362 s]
	  Range (min … max):    7.775 s …  7.824 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 21793ms
	Processing time (w/o IO): 21310ms
	Processing time (w/o IO): 24497ms
	  Time (mean ± σ):     23.734 s ±  2.258 s    [User: 23.844 s, System: 0.162 s]
	  Range (min … max):   22.137 s … 25.331 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 106354ms
	Processing time (w/o IO): 105557ms
	Processing time (w/o IO): 105377ms
	  Time (mean ± σ):     105.937 s ±  0.129 s    [User: 105.926 s, System: 0.161 s]
	  Range (min … max):   105.846 s … 106.029 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 19984ms
	Processing time (w/o IO): 20101ms
	Processing time (w/o IO): 20234ms
	  Time (mean ± σ):     20.697 s ±  0.016 s    [User: 20.638 s, System: 0.182 s]
	  Range (min … max):   20.686 s … 20.708 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 6434 ms
	Processing time (w/o IO): 6491 ms
	Processing time (w/o IO): 6416 ms
	  Time (mean ± σ):     13.706 s ±  0.197 s    [User: 14.585 s, System: 0.125 s]
	  Range (min … max):   13.567 s … 13.846 s    2 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 5288 ms
	Processing time (w/o IO): 5291 ms
	Processing time (w/o IO): 5293 ms
	  Time (mean ± σ):     11.046 s ±  0.007 s    [User: 10.929 s, System: 0.107 s]
	  Range (min … max):   11.041 s … 11.051 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 5301 ms
	Processing time (w/o IO): 5303 ms
	Processing time (w/o IO): 5327 ms
	  Time (mean ± σ):      5.692 s ±  0.026 s    [User: 14.210 s, System: 0.131 s]
	  Range (min … max):    5.673 s …  5.710 s    2 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 4953.266ms
	Processing time (w/o IO): 4962.137ms
	Processing time (w/o IO): 4961.053ms
	  Time (mean ± σ):      5.358 s ±  0.003 s    [User: 5.244 s, System: 0.103 s]
	  Range (min … max):    5.356 s …  5.360 s    2 runs
	 
F#:

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 5516ms
	Processing time (w/o IO): 5519ms
	Processing time (w/o IO): 5533ms
	  Time (mean ± σ):     16.609 s ±  0.025 s    [User: 17.338 s, System: 0.645 s]
	  Range (min … max):   16.591 s … 16.627 s    2 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 3536ms
	Processing time (w/o IO): 3533ms
	Processing time (w/o IO): 3293ms
	  Time (mean ± σ):      8.956 s ±  0.097 s    [User: 19.752 s, System: 0.642 s]
	  Range (min … max):    8.888 s …  9.025 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 4160ms
	Processing time (w/o IO): 4125ms
	Processing time (w/o IO): 4146ms
	  Time (mean ± σ):     16.543 s ±  0.000 s    [User: 17.705 s, System: 0.658 s]
	  Range (min … max):   16.543 s … 16.543 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 6795.1711ms
	Processing time (w/o IO): 6935.8837ms
	Processing time (w/o IO): 6790.8389ms
	  Time (mean ± σ):      7.779 s ±  0.112 s    [User: 7.831 s, System: 0.141 s]
	  Range (min … max):    7.700 s …  7.858 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 5421.3416ms
	Processing time (w/o IO): 5413.5685ms
	Processing time (w/o IO): 5412.2877ms
	  Time (mean ± σ):      5.973 s ±  0.007 s    [User: 5.964 s, System: 0.167 s]
	  Range (min … max):    5.968 s …  5.978 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	12077.577829361	ms
	Processing time (w/o IO):	9918.6000823975	ms
	Processing time (w/o IO):	13293.537855148	ms
	  Time (mean ± σ):     15.890 s ±  2.501 s    [User: 15.665 s, System: 0.214 s]
	  Range (min … max):   14.122 s … 17.659 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	150124.46689606	ms
	Processing time (w/o IO):	150078.73487473	ms
	  Time (abs ≡):        156.396 s               [User: 156.180 s, System: 0.179 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 34421ms
	Processing time (w/o IO): 33746ms
	Processing time (w/o IO): 32882ms
	  Time (mean ± σ):     34.810 s ±  0.614 s    [User: 34.005 s, System: 0.789 s]
	  Range (min … max):   34.375 s … 35.244 s    2 runs
	 
