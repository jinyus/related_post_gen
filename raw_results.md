Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 24.32709ms
	Processing time (w/o IO): 25.07012ms
	Processing time (w/o IO): 24.213685ms
	Processing time (w/o IO): 24.380692ms
	Processing time (w/o IO): 24.491996ms
	Processing time (w/o IO): 25.282728ms
	Processing time (w/o IO): 24.417994ms
	Processing time (w/o IO): 24.362891ms
	Processing time (w/o IO): 24.415293ms
	Processing time (w/o IO): 23.992976ms
	Processing time (w/o IO): 24.279588ms
	Processing time (w/o IO): 24.370991ms
	Processing time (w/o IO): 24.517097ms
	  Time (mean ± σ):      63.5 ms ±   1.2 ms    [User: 61.7 ms, System: 9.0 ms]
	  Range (min … max):    61.6 ms …  65.7 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 11.591972ms
	Processing time (w/o IO): 11.704976ms
	Processing time (w/o IO): 12.239298ms
	Processing time (w/o IO): 11.754278ms
	Processing time (w/o IO): 11.824081ms
	Processing time (w/o IO): 13.867064ms
	Processing time (w/o IO): 11.80848ms
	Processing time (w/o IO): 11.747578ms
	Processing time (w/o IO): 13.705858ms
	Processing time (w/o IO): 11.723477ms
	Processing time (w/o IO): 11.657474ms
	Processing time (w/o IO): 11.774379ms
	Processing time (w/o IO): 11.599171ms
	  Time (mean ± σ):      51.2 ms ±   1.6 ms    [User: 80.1 ms, System: 10.5 ms]
	  Range (min … max):    48.6 ms …  54.3 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 23.761893ms
	Processing time (w/o IO): 23.494281ms
	Processing time (w/o IO): 24.063805ms
	Processing time (w/o IO): 23.46618ms
	Processing time (w/o IO): 23.478781ms
	Processing time (w/o IO): 23.466481ms
	Processing time (w/o IO): 23.370076ms
	Processing time (w/o IO): 23.419478ms
	Processing time (w/o IO): 23.420278ms
	Processing time (w/o IO): 23.398577ms
	Processing time (w/o IO): 23.416478ms
	Processing time (w/o IO): 23.43998ms
	Processing time (w/o IO): 23.388477ms
	  Time (mean ± σ):      38.5 ms ±   1.1 ms    [User: 35.0 ms, System: 3.7 ms]
	  Range (min … max):    37.2 ms …  40.1 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 12.742581ms
	Processing time (w/o IO): 12.094757ms
	Processing time (w/o IO): 12.16526ms
	Processing time (w/o IO): 12.18386ms
	Processing time (w/o IO): 12.151059ms
	Processing time (w/o IO): 12.155459ms
	Processing time (w/o IO): 12.142059ms
	Processing time (w/o IO): 12.202261ms
	Processing time (w/o IO): 12.152859ms
	Processing time (w/o IO): 12.095457ms
	Processing time (w/o IO): 12.17796ms
	Processing time (w/o IO): 12.062056ms
	Processing time (w/o IO): 12.135658ms
	  Time (mean ± σ):      28.9 ms ±   0.3 ms    [User: 30.5 ms, System: 10.1 ms]
	  Range (min … max):    28.4 ms …  29.5 ms    10 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 25.561ms
	Processing time (w/o IO): 24.582ms
	Processing time (w/o IO): 24.867ms
	Processing time (w/o IO): 24.922ms
	Processing time (w/o IO): 24.799ms
	Processing time (w/o IO): 24.363ms
	Processing time (w/o IO): 24.407ms
	Processing time (w/o IO): 24.53ms
	Processing time (w/o IO): 24.477ms
	Processing time (w/o IO): 24.773ms
	Processing time (w/o IO): 24.718ms
	Processing time (w/o IO): 24.89ms
	Processing time (w/o IO): 24.96ms
	  Time (mean ± σ):     104.8 ms ±   1.2 ms    [User: 93.7 ms, System: 12.3 ms]
	  Range (min … max):   103.6 ms … 107.3 ms    10 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 13.428ms
	Processing time (w/o IO): 13.059ms
	Processing time (w/o IO): 13.114ms
	Processing time (w/o IO): 13.128ms
	Processing time (w/o IO): 13.397ms
	Processing time (w/o IO): 13.564ms
	Processing time (w/o IO): 12.881ms
	Processing time (w/o IO): 12.914ms
	Processing time (w/o IO): 13.601ms
	Processing time (w/o IO): 13.329ms
	Processing time (w/o IO): 13.374ms
	Processing time (w/o IO): 12.824ms
	Processing time (w/o IO): 13.236ms
	  Time (mean ± σ):      91.7 ms ±   1.0 ms    [User: 104.5 ms, System: 12.0 ms]
	  Range (min … max):    90.5 ms …  93.8 ms    10 runs
	 
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
	  Time (mean ± σ):     230.3 ms ±   3.6 ms    [User: 198.8 ms, System: 31.4 ms]
	  Range (min … max):   225.2 ms … 234.5 ms    10 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 12 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 12 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 12 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 14 ms
	  Time (mean ± σ):     230.1 ms ±   2.8 ms    [User: 228.4 ms, System: 36.2 ms]
	  Range (min … max):   227.0 ms … 234.6 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 1.524s
	Processing time (w/o IO): 1.465s
	Processing time (w/o IO): 1.458s
	Processing time (w/o IO): 1.465s
	Processing time (w/o IO): 1.461s
	Processing time (w/o IO): 1.456s
	Processing time (w/o IO): 1.458s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.459s
	Processing time (w/o IO): 1.455s
	Processing time (w/o IO): 1.462s
	Processing time (w/o IO): 1.454s
	Processing time (w/o IO): 1.466s
	  Time (mean ± σ):      1.527 s ±  0.004 s    [User: 1.507 s, System: 0.021 s]
	  Range (min … max):    1.521 s …  1.533 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 351.4ms
	Processing time (w/o IO): 351.1ms
	Processing time (w/o IO): 351.3ms
	Processing time (w/o IO): 351.3ms
	Processing time (w/o IO): 350.7ms
	Processing time (w/o IO): 370.4ms
	Processing time (w/o IO): 352.7ms
	Processing time (w/o IO): 350.8ms
	Processing time (w/o IO): 351.6ms
	Processing time (w/o IO): 352.4ms
	Processing time (w/o IO): 352.2ms
	Processing time (w/o IO): 351.8ms
	Processing time (w/o IO): 350.1ms
	  Time (mean ± σ):     677.1 ms ± 146.6 ms    [User: 821.2 ms, System: 427.8 ms]
	  Range (min … max):   628.8 ms … 1094.4 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 60.863208ms
	Processing time (w/o IO): 60.026387ms
	Processing time (w/o IO): 60.137989ms
	Processing time (w/o IO): 60.210091ms
	Processing time (w/o IO): 60.226191ms
	Processing time (w/o IO): 59.920884ms
	Processing time (w/o IO): 60.440997ms
	Processing time (w/o IO): 60.19089ms
	Processing time (w/o IO): 59.859783ms
	Processing time (w/o IO): 60.280293ms
	Processing time (w/o IO): 60.482698ms
	Processing time (w/o IO): 60.425196ms
	Processing time (w/o IO): 60.218392ms
	  Time (mean ± σ):     108.2 ms ±   0.7 ms    [User: 96.2 ms, System: 11.9 ms]
	  Range (min … max):   107.3 ms … 109.3 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 29ms
	  Time (mean ± σ):      73.8 ms ±   0.2 ms    [User: 66.9 ms, System: 7.0 ms]
	  Range (min … max):    73.5 ms …  74.2 ms    10 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	  Time (mean ± σ):     483.9 ms ±  14.9 ms    [User: 376.6 ms, System: 210.9 ms]
	  Range (min … max):   460.3 ms … 502.2 ms    10 runs
	 
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
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 8 milliseconds
	  Time (mean ± σ):      1.004 s ±  0.016 s    [User: 0.882 s, System: 0.225 s]
	  Range (min … max):    0.990 s …  1.034 s    10 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 19 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 16 milliseconds
	  Time (mean ± σ):     480.2 ms ±  19.4 ms    [User: 408.0 ms, System: 222.9 ms]
	  Range (min … max):   456.0 ms … 512.3 ms    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  41.34585ms
	Processing time (w/o IO):  40.891342ms
	Processing time (w/o IO):  41.588954ms
	Processing time (w/o IO):  40.970944ms
	Processing time (w/o IO):  41.244248ms
	Processing time (w/o IO):  41.130146ms
	Processing time (w/o IO):  41.522154ms
	Processing time (w/o IO):  41.125512ms
	Processing time (w/o IO):  40.97561ms
	Processing time (w/o IO):  41.391915ms
	Processing time (w/o IO):  40.820309ms
	Processing time (w/o IO):  41.534416ms
	Processing time (w/o IO):  41.359114ms
	  Time (mean ± σ):     259.3 ms ±   1.0 ms    [User: 249.8 ms, System: 9.5 ms]
	  Range (min … max):   258.3 ms … 261.8 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 48.817ms
	Processing time (w/o IO): 48.450ms
	Processing time (w/o IO): 48.598ms
	Processing time (w/o IO): 48.968ms
	Processing time (w/o IO): 49.067ms
	Processing time (w/o IO): 48.550ms
	Processing time (w/o IO): 49.102ms
	Processing time (w/o IO): 48.894ms
	Processing time (w/o IO): 48.907ms
	Processing time (w/o IO): 48.905ms
	Processing time (w/o IO): 48.933ms
	Processing time (w/o IO): 49.053ms
	Processing time (w/o IO): 48.488ms
	  Time (mean ± σ):     375.0 ms ±   2.1 ms    [User: 348.7 ms, System: 26.1 ms]
	  Range (min … max):   371.5 ms … 378.4 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 168ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 173ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 156ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 169ms
	  Time (mean ± σ):     543.7 ms ±  10.1 ms    [User: 649.0 ms, System: 109.9 ms]
	  Range (min … max):   531.6 ms … 566.6 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 129ms
	Processing time (w/o IO): 129ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 129ms
	  Time (mean ± σ):     254.2 ms ±   1.5 ms    [User: 240.0 ms, System: 18.5 ms]
	  Range (min … max):   252.7 ms … 256.6 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 50.897955894470215ms
	Processing time (w/o IO): 50.35293102264404ms
	Processing time (w/o IO): 50.91893672943115ms
	Processing time (w/o IO): 50.56297779083252ms
	Processing time (w/o IO): 50.20499229431152ms
	Processing time (w/o IO): 51.17595195770264ms
	Processing time (w/o IO): 50.256967544555664ms
	Processing time (w/o IO): 50.729990005493164ms
	Processing time (w/o IO): 50.39501190185547ms
	Processing time (w/o IO): 50.99499225616455ms
	Processing time (w/o IO): 51.12600326538086ms
	Processing time (w/o IO): 50.75991153717041ms
	Processing time (w/o IO): 51.32102966308594ms
	  Time (mean ± σ):     406.1 ms ±   6.6 ms    [User: 351.5 ms, System: 37.7 ms]
	  Range (min … max):   398.5 ms … 415.3 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 31.930696ms
	Processing time (w/o IO): 30.736785ms
	Processing time (w/o IO): 31.180789ms
	Processing time (w/o IO): 31.239589ms
	Processing time (w/o IO): 30.567383ms
	Processing time (w/o IO): 30.944486ms
	Processing time (w/o IO): 32.477201ms
	Processing time (w/o IO): 31.430291ms
	Processing time (w/o IO): 31.375291ms
	Processing time (w/o IO): 30.731584ms
	Processing time (w/o IO): 31.27629ms
	Processing time (w/o IO): 30.820286ms
	Processing time (w/o IO): 30.842186ms
	  Time (mean ± σ):     388.2 ms ±   3.7 ms    [User: 419.7 ms, System: 38.5 ms]
	  Range (min … max):   381.0 ms … 392.7 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 129ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 128ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 134ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 126ms
	  Time (mean ± σ):     303.5 ms ±   3.6 ms    [User: 293.0 ms, System: 63.8 ms]
	  Range (min … max):   298.1 ms … 309.0 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 103ms
	Processing time (w/o IO): 114ms
	Processing time (w/o IO): 107ms
	Processing time (w/o IO): 128ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 119ms
	Processing time (w/o IO): 125ms
	Processing time (w/o IO): 104ms
	Processing time (w/o IO): 118ms
	Processing time (w/o IO): 118ms
	Processing time (w/o IO): 118ms
	Processing time (w/o IO): 119ms
	Processing time (w/o IO): 123ms
	  Time (mean ± σ):     177.2 ms ±   7.8 ms    [User: 193.0 ms, System: 38.3 ms]
	  Range (min … max):   159.5 ms … 188.7 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 193ms
	Processing time (w/o IO): 135ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 136ms
	Processing time (w/o IO): 196ms
	Processing time (w/o IO): 136ms
	Processing time (w/o IO): 198ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 199ms
	Processing time (w/o IO): 198ms
	  Time (mean ± σ):     229.3 ms ±  32.2 ms    [User: 225.3 ms, System: 29.4 ms]
	  Range (min … max):   203.1 ms … 269.9 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 56 ms
	  Time (mean ± σ):     396.8 ms ±   8.1 ms    [User: 705.9 ms, System: 53.5 ms]
	  Range (min … max):   379.6 ms … 408.1 ms    10 runs
	 
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
	  Time (mean ± σ):     130.6 ms ±   0.8 ms    [User: 117.9 ms, System: 12.8 ms]
	  Range (min … max):   129.2 ms … 132.0 ms    10 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 38 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 38 ms
	Processing time (w/o IO): 39 ms
	  Time (mean ± σ):      67.9 ms ±   1.3 ms    [User: 111.9 ms, System: 14.4 ms]
	  Range (min … max):    66.0 ms …  69.7 ms    10 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 25.23ms
	Processing time (w/o IO): 24.921ms
	Processing time (w/o IO): 24.931ms
	Processing time (w/o IO): 25.054ms
	Processing time (w/o IO): 24.771ms
	Processing time (w/o IO): 25.155ms
	Processing time (w/o IO): 24.932ms
	Processing time (w/o IO): 24.997ms
	Processing time (w/o IO): 24.856ms
	Processing time (w/o IO): 24.981ms
	Processing time (w/o IO): 25.027ms
	Processing time (w/o IO): 25.067ms
	Processing time (w/o IO): 24.866ms
	  Time (mean ± σ):      51.1 ms ±   0.8 ms    [User: 40.3 ms, System: 10.8 ms]
	  Range (min … max):    49.7 ms …  52.2 ms    10 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 17.933ms
	Processing time (w/o IO): 16.577ms
	Processing time (w/o IO): 15.747ms
	Processing time (w/o IO): 16.584ms
	Processing time (w/o IO): 15.667ms
	Processing time (w/o IO): 15.629ms
	Processing time (w/o IO): 15.635ms
	Processing time (w/o IO): 16.575ms
	Processing time (w/o IO): 15.642ms
	Processing time (w/o IO): 16.542ms
	Processing time (w/o IO): 15.651ms
	Processing time (w/o IO): 16.603ms
	Processing time (w/o IO): 17.78ms
	  Time (mean ± σ):      43.3 ms ±   1.2 ms    [User: 78.0 ms, System: 8.9 ms]
	  Range (min … max):    40.8 ms …  45.0 ms    10 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 95ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	  Time (mean ± σ):      1.033 s ±  0.006 s    [User: 1.144 s, System: 0.100 s]
	  Range (min … max):    1.023 s …  1.041 s    10 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
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
	Processing time (w/o IO): 24ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	  Time (mean ± σ):     936.2 ms ±   6.6 ms    [User: 1118.2 ms, System: 99.5 ms]
	  Range (min … max):   926.4 ms … 946.9 ms    10 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	  Time (mean ± σ):     718.0 ms ±   2.4 ms    [User: 808.1 ms, System: 87.7 ms]
	  Range (min … max):   715.6 ms … 723.4 ms    10 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	  Time (mean ± σ):     746.9 ms ±   1.7 ms    [User: 728.0 ms, System: 78.6 ms]
	  Range (min … max):   744.8 ms … 749.6 ms    10 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 27.0973ms
	Processing time (w/o IO): 27.2844ms
	Processing time (w/o IO): 27.1817ms
	Processing time (w/o IO): 26.9815ms
	Processing time (w/o IO): 27.1218ms
	Processing time (w/o IO): 27.1522ms
	Processing time (w/o IO): 27.1149ms
	Processing time (w/o IO): 27.1135ms
	Processing time (w/o IO): 27.1529ms
	Processing time (w/o IO): 27.2409ms
	Processing time (w/o IO): 27.1125ms
	Processing time (w/o IO): 27.3047ms
	Processing time (w/o IO): 27.0289ms
	  Time (mean ± σ):     213.2 ms ±   7.4 ms    [User: 168.7 ms, System: 35.6 ms]
	  Range (min … max):   203.3 ms … 229.8 ms    10 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 26.6337ms
	Processing time (w/o IO): 26.2022ms
	Processing time (w/o IO): 26.2064ms
	Processing time (w/o IO): 26.0563ms
	Processing time (w/o IO): 26.2552ms
	Processing time (w/o IO): 26.0911ms
	Processing time (w/o IO): 26.115ms
	Processing time (w/o IO): 27.7696ms
	Processing time (w/o IO): 26.0431ms
	Processing time (w/o IO): 26.4706ms
	Processing time (w/o IO): 26.0611ms
	Processing time (w/o IO): 26.1049ms
	Processing time (w/o IO): 25.9674ms
	  Time (mean ± σ):     100.8 ms ±   1.7 ms    [User: 92.5 ms, System: 25.1 ms]
	  Range (min … max):    98.5 ms … 103.6 ms    10 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 13.5624ms
	Processing time (w/o IO): 14.0209ms
	Processing time (w/o IO): 13.7095ms
	Processing time (w/o IO): 13.855ms
	Processing time (w/o IO): 14.4383ms
	Processing time (w/o IO): 13.534ms
	Processing time (w/o IO): 13.6506ms
	Processing time (w/o IO): 13.9517ms
	Processing time (w/o IO): 13.8196ms
	Processing time (w/o IO): 13.6528ms
	Processing time (w/o IO): 14.7706ms
	Processing time (w/o IO): 14.1298ms
	Processing time (w/o IO): 13.7252ms
	  Time (mean ± σ):     199.3 ms ±   4.6 ms    [User: 199.1 ms, System: 40.1 ms]
	  Range (min … max):   193.3 ms … 206.5 ms    10 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 10.8825ms
	Processing time (w/o IO): 10.7194ms
	Processing time (w/o IO): 10.8312ms
	Processing time (w/o IO): 10.8378ms
	Processing time (w/o IO): 10.7407ms
	Processing time (w/o IO): 10.8715ms
	Processing time (w/o IO): 10.7316ms
	Processing time (w/o IO): 10.7375ms
	Processing time (w/o IO): 10.6084ms
	Processing time (w/o IO): 11.6311ms
	Processing time (w/o IO): 10.6913ms
	Processing time (w/o IO): 10.7702ms
	Processing time (w/o IO): 10.8219ms
	  Time (mean ± σ):      70.9 ms ±   1.3 ms    [User: 120.3 ms, System: 29.9 ms]
	  Range (min … max):    69.2 ms …  73.2 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	88.989973068237	ms
	Processing time (w/o IO):	104.74300384521	ms
	Processing time (w/o IO):	110.76498031616	ms
	Processing time (w/o IO):	110.83102226257	ms
	Processing time (w/o IO):	111.09805107117	ms
	Processing time (w/o IO):	110.90898513794	ms
	Processing time (w/o IO):	107.38492012024	ms
	Processing time (w/o IO):	110.74900627136	ms
	Processing time (w/o IO):	103.39903831482	ms
	Processing time (w/o IO):	104.03800010681	ms
	Processing time (w/o IO):	111.11688613892	ms
	Processing time (w/o IO):	103.71589660645	ms
	Processing time (w/o IO):	106.33993148804	ms
	  Time (mean ± σ):     342.8 ms ±   4.3 ms    [User: 324.8 ms, System: 18.0 ms]
	  Range (min … max):   334.3 ms … 347.6 ms    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1090.8689498901	ms
	Processing time (w/o IO):	1104.4771671295	ms
	Processing time (w/o IO):	1091.8350219727	ms
	Processing time (w/o IO):	1090.9929275513	ms
	Processing time (w/o IO):	1107.9180240631	ms
	Processing time (w/o IO):	1090.106010437	ms
	Processing time (w/o IO):	1090.5039310455	ms
	Processing time (w/o IO):	1091.4180278778	ms
	Processing time (w/o IO):	1088.7770652771	ms
	Processing time (w/o IO):	1095.1900482178	ms
	Processing time (w/o IO):	1091.8850898743	ms
	Processing time (w/o IO):	1091.1331176758	ms
	Processing time (w/o IO):	1093.3609008789	ms
	  Time (mean ± σ):      1.518 s ±  0.007 s    [User: 1.500 s, System: 0.017 s]
	  Range (min … max):    1.511 s …  1.532 s    10 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 145ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 139ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 143ms
	Processing time (w/o IO): 143ms
	Processing time (w/o IO): 149ms
	Processing time (w/o IO): 142ms
	Processing time (w/o IO): 145ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 142ms
	  Time (mean ± σ):     235.3 ms ±  26.5 ms    [User: 208.8 ms, System: 19.4 ms]
	  Range (min … max):   221.4 ms … 310.4 ms    10 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 0.889794 s
	Processing time (w/o IO): 0.892626 s
	Processing time (w/o IO): 0.888731 s
	Processing time (w/o IO): 0.886551 s
	Processing time (w/o IO): 0.888628 s
	Processing time (w/o IO): 0.889060 s
	Processing time (w/o IO): 0.886090 s
	Processing time (w/o IO): 0.884175 s
	Processing time (w/o IO): 0.882384 s
	Processing time (w/o IO): 0.891517 s
	Processing time (w/o IO): 0.882771 s
	Processing time (w/o IO): 0.878347 s
	Processing time (w/o IO): 0.891926 s
	  Time (mean ± σ):      1.239 s ±  0.007 s    [User: 1.183 s, System: 0.092 s]
	  Range (min … max):    1.229 s …  1.247 s    10 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 373.549739ms
	Processing time (w/o IO): 372.251033ms
	Processing time (w/o IO): 373.264738ms
	  Time (mean ± σ):     517.1 ms ±   2.3 ms    [User: 502.6 ms, System: 38.4 ms]
	  Range (min … max):   515.4 ms … 518.7 ms    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 166.903832ms
	Processing time (w/o IO): 164.09422ms
	Processing time (w/o IO): 163.629578ms
	  Time (mean ± σ):     308.0 ms ±   0.5 ms    [User: 768.6 ms, System: 45.7 ms]
	  Range (min … max):   307.6 ms … 308.3 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 341.660771ms
	Processing time (w/o IO): 340.396817ms
	Processing time (w/o IO): 341.329857ms
	  Time (mean ± σ):     403.2 ms ±   0.1 ms    [User: 375.7 ms, System: 27.3 ms]
	  Range (min … max):   403.1 ms … 403.3 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 176.080909ms
	Processing time (w/o IO): 178.264003ms
	Processing time (w/o IO): 175.843399ms
	  Time (mean ± σ):     240.1 ms ±   1.3 ms    [User: 382.3 ms, System: 29.7 ms]
	  Range (min … max):   239.2 ms … 241.1 ms    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 315.17ms
	Processing time (w/o IO): 314.743ms
	Processing time (w/o IO): 311.664ms
	  Time (mean ± σ):     611.1 ms ±   0.1 ms    [User: 595.8 ms, System: 19.6 ms]
	  Range (min … max):   611.0 ms … 611.2 ms    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 123.361ms
	Processing time (w/o IO): 124.789ms
	Processing time (w/o IO): 122.875ms
	  Time (mean ± σ):     426.8 ms ±   0.7 ms    [User: 708.0 ms, System: 41.3 ms]
	  Range (min … max):   426.4 ms … 427.3 ms    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 339 ms
	Processing time (w/o IO): 339 ms
	Processing time (w/o IO): 340 ms
	  Time (mean ± σ):      1.190 s ±  0.007 s    [User: 1.062 s, System: 0.125 s]
	  Range (min … max):    1.185 s …  1.195 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 164 ms
	Processing time (w/o IO): 164 ms
	Processing time (w/o IO): 166 ms
	  Time (mean ± σ):      1.055 s ±  0.005 s    [User: 1.395 s, System: 0.136 s]
	  Range (min … max):    1.052 s …  1.059 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 23.547s
	Processing time (w/o IO): 23.545s
	  Time (abs ≡):        23.700 s               [User: 23.627 s, System: 0.064 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 6.323s
	Processing time (w/o IO): 6.772s
	Processing time (w/o IO): 7.074s
	  Time (mean ± σ):      7.441 s ±  0.216 s    [User: 5.140 s, System: 2.888 s]
	  Range (min … max):    7.288 s …  7.593 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 917.860317ms
	Processing time (w/o IO): 906.192699ms
	Processing time (w/o IO): 918.533833ms
	  Time (mean ± σ):      1.118 s ±  0.012 s    [User: 1.087 s, System: 0.031 s]
	  Range (min … max):    1.109 s …  1.127 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 430ms
	Processing time (w/o IO): 431ms
	Processing time (w/o IO): 430ms
	  Time (mean ± σ):     616.6 ms ±   0.8 ms    [User: 587.2 ms, System: 29.3 ms]
	  Range (min … max):   616.0 ms … 617.2 ms    2 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 481 milliseconds
	Processing time (w/o IO): 481 milliseconds
	Processing time (w/o IO): 482 milliseconds
	  Time (mean ± σ):      1.139 s ±  0.007 s    [User: 1.020 s, System: 0.223 s]
	  Range (min … max):    1.135 s …  1.144 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 54 milliseconds
	Processing time (w/o IO): 51 milliseconds
	Processing time (w/o IO): 52 milliseconds
	  Time (mean ± σ):      1.163 s ±  0.004 s    [User: 1.001 s, System: 0.266 s]
	  Range (min … max):    1.160 s …  1.167 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 221 milliseconds
	Processing time (w/o IO): 222 milliseconds
	Processing time (w/o IO): 223 milliseconds
	  Time (mean ± σ):     897.9 ms ±  19.4 ms    [User: 1436.7 ms, System: 219.5 ms]
	  Range (min … max):   884.1 ms … 911.6 ms    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  579.227809ms
	Processing time (w/o IO):  576.857806ms
	Processing time (w/o IO):  573.629265ms
	  Time (mean ± σ):      1.364 s ±  0.001 s    [User: 1.322 s, System: 0.038 s]
	  Range (min … max):    1.363 s …  1.364 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 742.564ms
	Processing time (w/o IO): 742.827ms
	Processing time (w/o IO): 742.348ms
	  Time (mean ± σ):      8.129 s ±  1.011 s    [User: 8.010 s, System: 0.111 s]
	  Range (min … max):    7.414 s …  8.843 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 2223ms
	Processing time (w/o IO): 2250ms
	Processing time (w/o IO): 2062ms
	  Time (mean ± σ):      2.822 s ±  0.152 s    [User: 2.985 s, System: 0.177 s]
	  Range (min … max):    2.715 s …  2.929 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 2005ms
	Processing time (w/o IO): 2008ms
	Processing time (w/o IO): 2002ms
	  Time (mean ± σ):      2.490 s ±  0.007 s    [User: 2.458 s, System: 0.055 s]
	  Range (min … max):    2.485 s …  2.495 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 714.1400575637817ms
	Processing time (w/o IO): 715.3019905090332ms
	Processing time (w/o IO): 719.2970514297485ms
	  Time (mean ± σ):      2.100 s ±  0.011 s    [User: 1.919 s, System: 0.143 s]
	  Range (min … max):    2.092 s …  2.107 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 395.646852ms
	Processing time (w/o IO): 392.052209ms
	Processing time (w/o IO): 393.981038ms
	  Time (mean ± σ):      1.796 s ±  0.006 s    [User: 2.787 s, System: 0.122 s]
	  Range (min … max):    1.792 s …  1.800 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 2606ms
	Processing time (w/o IO): 2610ms
	Processing time (w/o IO): 2476ms
	  Time (mean ± σ):      2.875 s ±  0.095 s    [User: 2.886 s, System: 0.099 s]
	  Range (min … max):    2.809 s …  2.942 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 1421ms
	Processing time (w/o IO): 1529ms
	Processing time (w/o IO): 1415ms
	  Time (mean ± σ):      1.629 s ±  0.083 s    [User: 1.628 s, System: 0.075 s]
	  Range (min … max):    1.570 s …  1.688 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 1808ms
	Processing time (w/o IO): 1808ms
	Processing time (w/o IO): 1805ms
	  Time (mean ± σ):      2.062 s ±  0.087 s    [User: 1.940 s, System: 0.076 s]
	  Range (min … max):    2.001 s …  2.123 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 853 ms
	Processing time (w/o IO): 853 ms
	Processing time (w/o IO): 853 ms
	  Time (mean ± σ):      1.807 s ±  0.000 s    [User: 1.759 s, System: 0.045 s]
	  Range (min … max):    1.807 s …  1.808 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 478 ms
	Processing time (w/o IO): 463 ms
	Processing time (w/o IO): 464 ms
	  Time (mean ± σ):     566.3 ms ±   1.9 ms    [User: 1304.0 ms, System: 29.5 ms]
	  Range (min … max):   565.0 ms … 567.6 ms    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 351.208ms
	Processing time (w/o IO): 348.343ms
	Processing time (w/o IO): 349.6ms
	  Time (mean ± σ):     453.8 ms ±   4.9 ms    [User: 420.2 ms, System: 33.5 ms]
	  Range (min … max):   450.3 ms … 457.3 ms    2 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 225.087ms
	Processing time (w/o IO): 224.375ms
	Processing time (w/o IO): 224.851ms
	  Time (mean ± σ):     337.3 ms ±   0.3 ms    [User: 959.5 ms, System: 31.4 ms]
	  Range (min … max):   337.1 ms … 337.5 ms    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 529ms
	Processing time (w/o IO): 531ms
	Processing time (w/o IO): 529ms
	  Time (mean ± σ):      3.342 s ±  0.010 s    [User: 3.341 s, System: 0.277 s]
	  Range (min … max):    3.335 s …  3.348 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 279ms
	Processing time (w/o IO): 273ms
	Processing time (w/o IO): 282ms
	  Time (mean ± σ):      2.666 s ±  0.039 s    [User: 4.288 s, System: 0.244 s]
	  Range (min … max):    2.638 s …  2.693 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 279ms
	Processing time (w/o IO): 279ms
	Processing time (w/o IO): 279ms
	  Time (mean ± σ):      3.188 s ±  0.003 s    [User: 4.785 s, System: 0.260 s]
	  Range (min … max):    3.185 s …  3.190 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 391ms
	Processing time (w/o IO): 391ms
	Processing time (w/o IO): 392ms
	  Time (mean ± σ):      3.475 s ±  0.004 s    [User: 3.401 s, System: 0.255 s]
	  Range (min … max):    3.472 s …  3.477 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 378.7328ms
	Processing time (w/o IO): 373.7798ms
	Processing time (w/o IO): 374.6183ms
	  Time (mean ± σ):      1.073 s ±  0.000 s    [User: 1.018 s, System: 0.072 s]
	  Range (min … max):    1.073 s …  1.073 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 370.8213ms
	Processing time (w/o IO): 372.7958ms
	Processing time (w/o IO): 372.6232ms
	  Time (mean ± σ):     912.5 ms ±   1.4 ms    [User: 898.0 ms, System: 47.3 ms]
	  Range (min … max):   911.5 ms … 913.5 ms    2 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 124.1571ms
	Processing time (w/o IO): 122.4386ms
	Processing time (w/o IO): 122.1194ms
	  Time (mean ± σ):     588.9 ms ±   2.3 ms    [User: 1191.9 ms, System: 87.9 ms]
	  Range (min … max):   587.2 ms … 590.5 ms    2 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 136.5971ms
	Processing time (w/o IO): 135.644ms
	Processing time (w/o IO): 135.9075ms
	  Time (mean ± σ):     437.6 ms ±   0.2 ms    [User: 1173.8 ms, System: 67.8 ms]
	  Range (min … max):   437.4 ms … 437.7 ms    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	1183.2990646362	ms
	Processing time (w/o IO):	1169.3370342255	ms
	Processing time (w/o IO):	1167.2210693359	ms
	  Time (mean ± σ):      2.462 s ±  0.009 s    [User: 2.386 s, System: 0.074 s]
	  Range (min … max):    2.456 s …  2.468 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	16745.777130127	ms
	Processing time (w/o IO):	16740.381002426	ms
	  Time (abs ≡):        18.576 s               [User: 18.511 s, System: 0.063 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 2680ms
	Processing time (w/o IO): 2651ms
	Processing time (w/o IO): 2694ms
	  Time (mean ± σ):      3.084 s ±  0.034 s    [User: 2.943 s, System: 0.139 s]
	  Range (min … max):    3.060 s …  3.108 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 14.346207 s
	Processing time (w/o IO): 14.333086 s
	Processing time (w/o IO): 14.332529 s
	  Time (mean ± σ):     15.377 s ±  0.000 s    [User: 15.166 s, System: 0.260 s]
	  Range (min … max):   15.377 s … 15.377 s    2 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 3.264516076s
	Processing time (w/o IO): 3.270333404s
	Processing time (w/o IO): 3.273506572s
	  Time (mean ± σ):      3.780 s ±  0.002 s    [User: 3.802 s, System: 0.119 s]
	  Range (min … max):    3.778 s …  3.782 s    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1.42068959s
	Processing time (w/o IO): 1.415014941s
	Processing time (w/o IO): 1.425130579s
	  Time (mean ± σ):      1.901 s ±  0.012 s    [User: 6.134 s, System: 0.099 s]
	  Range (min … max):    1.892 s …  1.910 s    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 3.033862567s
	Processing time (w/o IO): 3.033987472s
	Processing time (w/o IO): 3.035837083s
	  Time (mean ± σ):      3.248 s ±  0.000 s    [User: 3.172 s, System: 0.071 s]
	  Range (min … max):    3.248 s …  3.248 s    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 1.513761033s
	Processing time (w/o IO): 1.514805922s
	Processing time (w/o IO): 1.514135348s
	  Time (mean ± σ):      1.714 s ±  0.006 s    [User: 3.136 s, System: 0.079 s]
	  Range (min … max):    1.710 s …  1.719 s    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 2696.31ms
	Processing time (w/o IO): 2706.48ms
	Processing time (w/o IO): 2714.76ms
	  Time (mean ± σ):      3.652 s ±  0.007 s    [User: 3.547 s, System: 0.107 s]
	  Range (min … max):    3.647 s …  3.657 s    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 969.907ms
	Processing time (w/o IO): 969.838ms
	Processing time (w/o IO): 969.998ms
	  Time (mean ± σ):      1.890 s ±  0.013 s    [User: 4.502 s, System: 0.099 s]
	  Range (min … max):    1.881 s …  1.899 s    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 2913 ms
	Processing time (w/o IO): 2924 ms
	Processing time (w/o IO): 2918 ms
	  Time (mean ± σ):      5.644 s ±  0.012 s    [User: 5.078 s, System: 0.396 s]
	  Range (min … max):    5.636 s …  5.653 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 1405 ms
	Processing time (w/o IO): 1397 ms
	Processing time (w/o IO): 1396 ms
	  Time (mean ± σ):      4.106 s ±  0.144 s    [User: 7.818 s, System: 0.340 s]
	  Range (min … max):    4.004 s …  4.207 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 214.174s
	Processing time (w/o IO): 213.560s
	  Time (abs ≡):        214.018 s               [User: 213.820 s, System: 0.167 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 7976.828064ms
	Processing time (w/o IO): 7981.781405ms
	Processing time (w/o IO): 7995.348728ms
	  Time (mean ± σ):      8.704 s ±  0.012 s    [User: 8.602 s, System: 0.094 s]
	  Range (min … max):    8.696 s …  8.713 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 3783ms
	Processing time (w/o IO): 3781ms
	Processing time (w/o IO): 3796ms
	  Time (mean ± σ):      4.374 s ±  0.010 s    [User: 4.292 s, System: 0.074 s]
	  Range (min … max):    4.367 s …  4.381 s    2 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 4231 milliseconds
	Processing time (w/o IO): 4228 milliseconds
	Processing time (w/o IO): 4237 milliseconds
	  Time (mean ± σ):      5.264 s ±  0.032 s    [User: 5.043 s, System: 0.316 s]
	  Range (min … max):    5.241 s …  5.287 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 147 milliseconds
	Processing time (w/o IO): 141 milliseconds
	Processing time (w/o IO): 145 milliseconds
	  Time (mean ± σ):      1.617 s ±  0.018 s    [User: 1.407 s, System: 0.314 s]
	  Range (min … max):    1.605 s …  1.630 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 1939 milliseconds
	Processing time (w/o IO): 1940 milliseconds
	Processing time (w/o IO): 1948 milliseconds
	  Time (mean ± σ):      2.961 s ±  0.010 s    [User: 8.539 s, System: 0.300 s]
	  Range (min … max):    2.954 s …  2.968 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  5.975880247s
	Processing time (w/o IO):  6.038743053s
	Processing time (w/o IO):  5.971726167s
	  Time (mean ± σ):      8.398 s ±  0.049 s    [User: 8.303 s, System: 0.086 s]
	  Range (min … max):    8.364 s …  8.433 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 6.585s
	Processing time (w/o IO): 6.588s
	Processing time (w/o IO): 6.594s
	  Time (mean ± σ):     76.026 s ±  1.917 s    [User: 75.588 s, System: 0.409 s]
	  Range (min … max):   74.670 s … 77.381 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 19649ms
	Processing time (w/o IO): 19683ms
	Processing time (w/o IO): 19662ms
	  Time (mean ± σ):     21.185 s ±  0.010 s    [User: 21.381 s, System: 0.267 s]
	  Range (min … max):   21.177 s … 21.192 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 17845ms
	Processing time (w/o IO): 17834ms
	Processing time (w/o IO): 17803ms
	  Time (mean ± σ):     19.310 s ±  0.039 s    [User: 19.257 s, System: 0.187 s]
	  Range (min … max):   19.282 s … 19.338 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 6149.814963340759ms
	Processing time (w/o IO): 6147.333025932312ms
	Processing time (w/o IO): 6163.532018661499ms
	  Time (mean ± σ):     10.369 s ±  0.030 s    [User: 9.855 s, System: 0.349 s]
	  Range (min … max):   10.348 s … 10.390 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 3454.063156ms
	Processing time (w/o IO): 3476.093289ms
	Processing time (w/o IO): 3438.662587ms
	  Time (mean ± σ):      7.810 s ±  0.090 s    [User: 17.517 s, System: 0.383 s]
	  Range (min … max):    7.747 s …  7.873 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 14287ms
	Processing time (w/o IO): 21703ms
	Processing time (w/o IO): 22906ms
	  Time (mean ± σ):     23.136 s ±  0.856 s    [User: 23.127 s, System: 0.194 s]
	  Range (min … max):   22.531 s … 23.742 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 11352ms
	Processing time (w/o IO): 12177ms
	Processing time (w/o IO): 12225ms
	  Time (mean ± σ):     12.693 s ±  0.032 s    [User: 12.669 s, System: 0.160 s]
	  Range (min … max):   12.670 s … 12.716 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 17821ms
	Processing time (w/o IO): 17870ms
	Processing time (w/o IO): 17826ms
	  Time (mean ± σ):     18.476 s ±  0.119 s    [User: 18.353 s, System: 0.181 s]
	  Range (min … max):   18.392 s … 18.560 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 7504 ms
	Processing time (w/o IO): 7506 ms
	Processing time (w/o IO): 7505 ms
	  Time (mean ± σ):     15.480 s ±  0.003 s    [User: 15.336 s, System: 0.137 s]
	  Range (min … max):   15.478 s … 15.482 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 4110 ms
	Processing time (w/o IO): 4366 ms
	Processing time (w/o IO): 4107 ms
	  Time (mean ± σ):      4.585 s ±  0.198 s    [User: 11.290 s, System: 0.093 s]
	  Range (min … max):    4.445 s …  4.725 s    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 3058.979ms
	Processing time (w/o IO): 3056.604ms
	Processing time (w/o IO): 3055.98ms
	  Time (mean ± σ):      3.411 s ±  0.006 s    [User: 3.305 s, System: 0.097 s]
	  Range (min … max):    3.407 s …  3.416 s    2 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 2001.136ms
	Processing time (w/o IO): 2008.802ms
	Processing time (w/o IO): 2005.746ms
	  Time (mean ± σ):      2.375 s ±  0.015 s    [User: 8.196 s, System: 0.096 s]
	  Range (min … max):    2.364 s …  2.385 s    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 4038ms
	Processing time (w/o IO): 4033ms
	Processing time (w/o IO): 4040ms
	  Time (mean ± σ):     13.422 s ±  0.017 s    [User: 14.456 s, System: 0.460 s]
	  Range (min … max):   13.410 s … 13.433 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 2479ms
	Processing time (w/o IO): 2403ms
	Processing time (w/o IO): 2488ms
	  Time (mean ± σ):     10.105 s ±  0.191 s    [User: 25.490 s, System: 0.609 s]
	  Range (min … max):    9.970 s … 10.240 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 2456ms
	Processing time (w/o IO): 2456ms
	Processing time (w/o IO): 2466ms
	  Time (mean ± σ):     12.957 s ±  0.068 s    [User: 28.965 s, System: 0.575 s]
	  Range (min … max):   12.909 s … 13.005 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 3411ms
	Processing time (w/o IO): 3405ms
	Processing time (w/o IO): 3396ms
	  Time (mean ± σ):     14.989 s ±  0.130 s    [User: 16.307 s, System: 0.602 s]
	  Range (min … max):   14.897 s … 15.081 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 3243.6054ms
	Processing time (w/o IO): 3248.3408ms
	Processing time (w/o IO): 3241.9273ms
	  Time (mean ± σ):      7.365 s ±  0.014 s    [User: 7.300 s, System: 0.183 s]
	  Range (min … max):    7.355 s …  7.374 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 3243.0203ms
	Processing time (w/o IO): 3235.6886ms
	Processing time (w/o IO): 3243.1031ms
	  Time (mean ± σ):      7.021 s ±  0.037 s    [User: 6.969 s, System: 0.173 s]
	  Range (min … max):    6.994 s …  7.047 s    2 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 1011.7825ms
	Processing time (w/o IO): 1006.7632ms
	Processing time (w/o IO): 1008.8243ms
	  Time (mean ± σ):      2.908 s ±  0.007 s    [User: 8.636 s, System: 0.176 s]
	  Range (min … max):    2.903 s …  2.912 s    2 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 1129.0121ms
	Processing time (w/o IO): 1127.6409ms
	Processing time (w/o IO): 1133.3738ms
	  Time (mean ± σ):      2.792 s ±  0.012 s    [User: 9.334 s, System: 0.164 s]
	  Range (min … max):    2.784 s …  2.800 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	9746.9339370728	ms
	Processing time (w/o IO):	12295.125007629	ms
	Processing time (w/o IO):	11853.267908096	ms
	  Time (mean ± σ):     16.108 s ±  0.221 s    [User: 15.932 s, System: 0.163 s]
	  Range (min … max):   15.952 s … 16.264 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	149943.64190102	ms
	Processing time (w/o IO):	149934.69810486	ms
	  Time (abs ≡):        156.225 s               [User: 156.004 s, System: 0.203 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 32012ms
	Processing time (w/o IO): 32140ms
	Processing time (w/o IO): 32132ms
	  Time (mean ± σ):     33.556 s ±  0.045 s    [User: 33.110 s, System: 0.434 s]
	  Range (min … max):   33.524 s … 33.588 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 134.327325 s
	Processing time (w/o IO): 134.545381 s
	Processing time (w/o IO): 137.306253 s
	  Time (mean ± σ):     138.804 s ±  2.004 s    [User: 138.087 s, System: 0.775 s]
	  Range (min … max):   137.387 s … 140.222 s    2 runs
	 
