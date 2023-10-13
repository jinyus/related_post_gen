Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 24.335207ms
	Processing time (w/o IO): 24.58241ms
	Processing time (w/o IO): 24.135403ms
	Processing time (w/o IO): 24.757314ms
	Processing time (w/o IO): 24.125203ms
	Processing time (w/o IO): 24.341406ms
	Processing time (w/o IO): 24.200904ms
	Processing time (w/o IO): 24.082903ms
	Processing time (w/o IO): 24.124103ms
	Processing time (w/o IO): 24.246105ms
	Processing time (w/o IO): 23.9934ms
	Processing time (w/o IO): 24.172904ms
	Processing time (w/o IO): 24.147504ms
	  Time (mean ± σ):      62.9 ms ±   0.8 ms    [User: 55.4 ms, System: 13.2 ms]
	  Range (min … max):    61.8 ms …  64.7 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 13.438825ms
	Processing time (w/o IO): 12.466408ms
	Processing time (w/o IO): 12.682512ms
	Processing time (w/o IO): 12.714212ms
	Processing time (w/o IO): 12.923116ms
	Processing time (w/o IO): 15.647162ms
	Processing time (w/o IO): 12.849515ms
	Processing time (w/o IO): 14.775747ms
	Processing time (w/o IO): 12.677812ms
	Processing time (w/o IO): 13.403629ms
	Processing time (w/o IO): 14.606649ms
	Processing time (w/o IO): 12.469813ms
	Processing time (w/o IO): 13.055722ms
	  Time (mean ± σ):      52.4 ms ±   1.9 ms    [User: 79.6 ms, System: 12.3 ms]
	  Range (min … max):    49.8 ms …  55.5 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 23.831312ms
	Processing time (w/o IO): 24.043216ms
	Processing time (w/o IO): 23.71971ms
	Processing time (w/o IO): 23.757411ms
	Processing time (w/o IO): 23.769211ms
	Processing time (w/o IO): 23.759911ms
	Processing time (w/o IO): 23.740611ms
	Processing time (w/o IO): 23.742611ms
	Processing time (w/o IO): 23.770611ms
	Processing time (w/o IO): 23.940914ms
	Processing time (w/o IO): 23.911514ms
	Processing time (w/o IO): 23.748911ms
	Processing time (w/o IO): 23.752611ms
	  Time (mean ± σ):      40.7 ms ±   0.9 ms    [User: 33.5 ms, System: 7.2 ms]
	  Range (min … max):    39.8 ms …  42.4 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 20.765037ms
	Processing time (w/o IO): 20.381431ms
	Processing time (w/o IO): 19.893924ms
	Processing time (w/o IO): 20.368431ms
	Processing time (w/o IO): 20.423432ms
	Processing time (w/o IO): 20.549934ms
	Processing time (w/o IO): 20.30803ms
	Processing time (w/o IO): 20.453332ms
	Processing time (w/o IO): 20.376431ms
	Processing time (w/o IO): 20.29513ms
	Processing time (w/o IO): 20.270129ms
	Processing time (w/o IO): 20.485533ms
	Processing time (w/o IO): 20.547234ms
	  Time (mean ± σ):      38.0 ms ±   0.4 ms    [User: 46.5 ms, System: 10.4 ms]
	  Range (min … max):    37.4 ms …  38.5 ms    10 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 33.024ms
	Processing time (w/o IO): 32.318ms
	Processing time (w/o IO): 32.913ms
	Processing time (w/o IO): 32.627ms
	Processing time (w/o IO): 32.774ms
	Processing time (w/o IO): 32.371ms
	Processing time (w/o IO): 32.612ms
	Processing time (w/o IO): 32.772ms
	Processing time (w/o IO): 33.172ms
	Processing time (w/o IO): 32.445ms
	Processing time (w/o IO): 32.603ms
	Processing time (w/o IO): 32.696ms
	Processing time (w/o IO): 32.828ms
	  Time (mean ± σ):     114.7 ms ±   0.7 ms    [User: 110.3 ms, System: 6.0 ms]
	  Range (min … max):   113.8 ms … 116.3 ms    10 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 17.052ms
	Processing time (w/o IO): 17.162ms
	Processing time (w/o IO): 18.251ms
	Processing time (w/o IO): 18.451ms
	Processing time (w/o IO): 17.572ms
	Processing time (w/o IO): 18.423ms
	Processing time (w/o IO): 17.072ms
	Processing time (w/o IO): 17.923ms
	Processing time (w/o IO): 17.784ms
	Processing time (w/o IO): 18.331ms
	Processing time (w/o IO): 18.78ms
	Processing time (w/o IO): 18.291ms
	Processing time (w/o IO): 19.115ms
	  Time (mean ± σ):      98.8 ms ±   0.6 ms    [User: 125.1 ms, System: 11.8 ms]
	  Range (min … max):    97.6 ms …  99.6 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 1.477s
	Processing time (w/o IO): 1.464s
	Processing time (w/o IO): 1.467s
	Processing time (w/o IO): 1.463s
	Processing time (w/o IO): 1.459s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.465s
	Processing time (w/o IO): 1.461s
	Processing time (w/o IO): 1.478s
	Processing time (w/o IO): 1.463s
	Processing time (w/o IO): 1.463s
	Processing time (w/o IO): 1.473s
	Processing time (w/o IO): 1.458s
	  Time (mean ± σ):      1.531 s ±  0.006 s    [User: 1.515 s, System: 0.016 s]
	  Range (min … max):    1.525 s …  1.545 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 346.9ms
	Processing time (w/o IO): 347.2ms
	Processing time (w/o IO): 348.4ms
	Processing time (w/o IO): 347.9ms
	Processing time (w/o IO): 347.4ms
	Processing time (w/o IO): 347.6ms
	Processing time (w/o IO): 356.4ms
	Processing time (w/o IO): 352.9ms
	Processing time (w/o IO): 347.9ms
	Processing time (w/o IO): 348.0ms
	Processing time (w/o IO): 349.2ms
	Processing time (w/o IO): 347.4ms
	Processing time (w/o IO): 349.5ms
	  Time (mean ± σ):     687.7 ms ± 161.6 ms    [User: 846.3 ms, System: 403.2 ms]
	  Range (min … max):   625.4 ms … 1145.1 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 38.305734ms
	Processing time (w/o IO): 38.63034ms
	Processing time (w/o IO): 38.115431ms
	Processing time (w/o IO): 38.822343ms
	Processing time (w/o IO): 39.243247ms
	Processing time (w/o IO): 38.239393ms
	Processing time (w/o IO): 38.527095ms
	Processing time (w/o IO): 38.370294ms
	Processing time (w/o IO): 38.266793ms
	Processing time (w/o IO): 38.284892ms
	Processing time (w/o IO): 38.819996ms
	Processing time (w/o IO): 38.632995ms
	Processing time (w/o IO): 38.739296ms
	  Time (mean ± σ):      87.6 ms ±   1.3 ms    [User: 76.2 ms, System: 11.3 ms]
	  Range (min … max):    86.3 ms …  90.7 ms    10 runs
	 
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
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 30ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	  Time (mean ± σ):      76.7 ms ±   1.0 ms    [User: 69.6 ms, System: 7.1 ms]
	  Range (min … max):    75.7 ms …  79.0 ms    10 runs
	 
Julia:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 39 milliseconds
	Processing time (w/o IO): 38 milliseconds
	Processing time (w/o IO): 38 milliseconds
	Processing time (w/o IO): 38 milliseconds
	Processing time (w/o IO): 38 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 38 milliseconds
	Processing time (w/o IO): 38 milliseconds
	Processing time (w/o IO): 38 milliseconds
	Processing time (w/o IO): 38 milliseconds
	Processing time (w/o IO): 38 milliseconds
	Processing time (w/o IO): 38 milliseconds
	  Time (mean ± σ):      3.246 s ±  0.022 s    [User: 3.057 s, System: 0.188 s]
	  Range (min … max):    3.214 s …  3.288 s    10 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads auto related.jl
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 19 milliseconds
	Processing time (w/o IO): 19 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 19 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 18 milliseconds
	  Time (mean ± σ):      3.354 s ±  0.030 s    [User: 4.486 s, System: 0.197 s]
	  Range (min … max):    3.313 s …  3.409 s    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  48.367255ms
	Processing time (w/o IO):  48.043651ms
	Processing time (w/o IO):  47.99625ms
	Processing time (w/o IO):  48.171653ms
	Processing time (w/o IO):  48.03215ms
	Processing time (w/o IO):  48.278854ms
	Processing time (w/o IO):  48.042551ms
	Processing time (w/o IO):  49.073365ms
	Processing time (w/o IO):  48.171852ms
	Processing time (w/o IO):  48.076451ms
	Processing time (w/o IO):  48.092851ms
	Processing time (w/o IO):  48.755761ms
	Processing time (w/o IO):  47.961149ms
	  Time (mean ± σ):     268.1 ms ±   1.4 ms    [User: 259.9 ms, System: 8.2 ms]
	  Range (min … max):   266.9 ms … 270.9 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 52.230ms
	Processing time (w/o IO): 51.418ms
	Processing time (w/o IO): 51.244ms
	Processing time (w/o IO): 51.442ms
	Processing time (w/o IO): 51.184ms
	Processing time (w/o IO): 51.418ms
	Processing time (w/o IO): 51.615ms
	Processing time (w/o IO): 51.437ms
	Processing time (w/o IO): 51.700ms
	Processing time (w/o IO): 51.965ms
	Processing time (w/o IO): 51.803ms
	Processing time (w/o IO): 51.380ms
	Processing time (w/o IO): 51.355ms
	  Time (mean ± σ):     387.7 ms ±   2.4 ms    [User: 359.4 ms, System: 28.2 ms]
	  Range (min … max):   383.3 ms … 391.0 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 133ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 130ms
	  Time (mean ± σ):     513.8 ms ±  13.9 ms    [User: 620.6 ms, System: 112.3 ms]
	  Range (min … max):   499.4 ms … 541.7 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 187ms
	Processing time (w/o IO): 188ms
	Processing time (w/o IO): 187ms
	  Time (mean ± σ):     314.6 ms ±   1.4 ms    [User: 296.9 ms, System: 21.8 ms]
	  Range (min … max):   312.8 ms … 316.2 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 51.14102363586426ms
	Processing time (w/o IO): 51.32007598876953ms
	Processing time (w/o IO): 50.6749153137207ms
	Processing time (w/o IO): 50.80306529998779ms
	Processing time (w/o IO): 50.7889986038208ms
	Processing time (w/o IO): 50.801992416381836ms
	Processing time (w/o IO): 51.50198936462402ms
	Processing time (w/o IO): 50.70900917053223ms
	Processing time (w/o IO): 50.547003746032715ms
	Processing time (w/o IO): 50.87101459503174ms
	Processing time (w/o IO): 51.15306377410889ms
	Processing time (w/o IO): 50.938963890075684ms
	Processing time (w/o IO): 50.689101219177246ms
	  Time (mean ± σ):     411.5 ms ±   2.8 ms    [User: 350.9 ms, System: 39.5 ms]
	  Range (min … max):   408.3 ms … 416.9 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 31.420187ms
	Processing time (w/o IO): 30.744877ms
	Processing time (w/o IO): 31.558589ms
	Processing time (w/o IO): 31.003481ms
	Processing time (w/o IO): 32.412503ms
	Processing time (w/o IO): 31.073982ms
	Processing time (w/o IO): 31.975491ms
	Processing time (w/o IO): 31.561184ms
	Processing time (w/o IO): 30.965775ms
	Processing time (w/o IO): 31.495083ms
	Processing time (w/o IO): 31.101478ms
	Processing time (w/o IO): 31.871589ms
	Processing time (w/o IO): 30.863474ms
	  Time (mean ± σ):     401.5 ms ±   5.1 ms    [User: 421.1 ms, System: 44.9 ms]
	  Range (min … max):   395.8 ms … 410.3 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 180ms
	Processing time (w/o IO): 182ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 181ms
	Processing time (w/o IO): 183ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 184ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 183ms
	  Time (mean ± σ):     354.9 ms ±   4.1 ms    [User: 363.1 ms, System: 59.4 ms]
	  Range (min … max):   348.9 ms … 360.2 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 759ms
	Processing time (w/o IO): 764ms
	Processing time (w/o IO): 765ms
	Processing time (w/o IO): 788ms
	Processing time (w/o IO): 800ms
	Processing time (w/o IO): 754ms
	Processing time (w/o IO): 774ms
	Processing time (w/o IO): 767ms
	Processing time (w/o IO): 802ms
	Processing time (w/o IO): 786ms
	Processing time (w/o IO): 794ms
	Processing time (w/o IO): 748ms
	Processing time (w/o IO): 784ms
	  Time (mean ± σ):     837.2 ms ±  18.8 ms    [User: 852.1 ms, System: 42.1 ms]
	  Range (min … max):   805.4 ms … 861.4 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 198ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 193ms
	Processing time (w/o IO): 196ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 198ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 191ms
	  Time (mean ± σ):     260.5 ms ±   3.2 ms    [User: 252.1 ms, System: 31.3 ms]
	  Range (min … max):   257.3 ms … 266.3 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 52 ms
	  Time (mean ± σ):     391.3 ms ±   5.0 ms    [User: 698.9 ms, System: 51.6 ms]
	  Range (min … max):   380.6 ms … 396.4 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 33 ms
	Processing time (w/o IO): 34 ms
	Processing time (w/o IO): 34 ms
	Processing time (w/o IO): 33 ms
	Processing time (w/o IO): 33 ms
	Processing time (w/o IO): 33 ms
	Processing time (w/o IO): 33 ms
	Processing time (w/o IO): 33 ms
	Processing time (w/o IO): 34 ms
	Processing time (w/o IO): 33 ms
	Processing time (w/o IO): 34 ms
	Processing time (w/o IO): 33 ms
	Processing time (w/o IO): 33 ms
	  Time (mean ± σ):      96.4 ms ±   0.4 ms    [User: 85.5 ms, System: 11.0 ms]
	  Range (min … max):    95.8 ms …  97.0 ms    10 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 49 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 46 ms
	Processing time (w/o IO): 48 ms
	Processing time (w/o IO): 49 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 46 ms
	Processing time (w/o IO): 50 ms
	  Time (mean ± σ):      79.3 ms ±   2.5 ms    [User: 141.8 ms, System: 12.0 ms]
	  Range (min … max):    75.6 ms …  83.9 ms    10 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 31ms
	Processing time (w/o IO): 31ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 31ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 34ms
	Processing time (w/o IO): 31ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 31ms
	Processing time (w/o IO): 31ms
	Processing time (w/o IO): 31ms
	  Time (mean ± σ):      58.3 ms ±   1.2 ms    [User: 45.9 ms, System: 12.3 ms]
	  Range (min … max):    56.9 ms …  60.6 ms    10 runs
	 
F#:

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 45ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 45ms
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 45ms
	  Time (mean ± σ):     914.4 ms ±   6.0 ms    [User: 991.9 ms, System: 90.3 ms]
	  Range (min … max):   908.0 ms … 927.0 ms    10 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 43ms
	Processing time (w/o IO): 42ms
	Processing time (w/o IO): 43ms
	Processing time (w/o IO): 43ms
	Processing time (w/o IO): 43ms
	Processing time (w/o IO): 43ms
	Processing time (w/o IO): 43ms
	Processing time (w/o IO): 42ms
	Processing time (w/o IO): 43ms
	Processing time (w/o IO): 43ms
	Processing time (w/o IO): 42ms
	Processing time (w/o IO): 43ms
	Processing time (w/o IO): 43ms
	  Time (mean ± σ):     905.2 ms ±  14.0 ms    [User: 1038.0 ms, System: 84.5 ms]
	  Range (min … max):   893.1 ms … 942.6 ms    10 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	  Time (mean ± σ):     762.9 ms ±   2.1 ms    [User: 727.0 ms, System: 78.4 ms]
	  Range (min … max):   760.1 ms … 766.3 ms    10 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 49.7868ms
	Processing time (w/o IO): 50.1376ms
	Processing time (w/o IO): 50.0216ms
	Processing time (w/o IO): 49.8263ms
	Processing time (w/o IO): 49.7189ms
	Processing time (w/o IO): 50.0801ms
	Processing time (w/o IO): 49.739ms
	Processing time (w/o IO): 49.4452ms
	Processing time (w/o IO): 49.6604ms
	Processing time (w/o IO): 49.7014ms
	Processing time (w/o IO): 49.8196ms
	Processing time (w/o IO): 49.482ms
	Processing time (w/o IO): 49.8845ms
	  Time (mean ± σ):     192.5 ms ±   3.3 ms    [User: 145.2 ms, System: 29.7 ms]
	  Range (min … max):   189.7 ms … 200.5 ms    10 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 82.6495ms
	Processing time (w/o IO): 82.6264ms
	Processing time (w/o IO): 82.6272ms
	Processing time (w/o IO): 82.6978ms
	Processing time (w/o IO): 82.6697ms
	Processing time (w/o IO): 82.8634ms
	Processing time (w/o IO): 82.713ms
	Processing time (w/o IO): 82.6192ms
	Processing time (w/o IO): 83.1719ms
	Processing time (w/o IO): 82.9614ms
	Processing time (w/o IO): 82.7625ms
	Processing time (w/o IO): 83.053ms
	Processing time (w/o IO): 82.8745ms
	  Time (mean ± σ):     127.3 ms ±   1.1 ms    [User: 119.4 ms, System: 18.1 ms]
	  Range (min … max):   126.2 ms … 129.6 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	89.488983154297	ms
	Processing time (w/o IO):	114.13288116455	ms
	Processing time (w/o IO):	89.367151260376	ms
	Processing time (w/o IO):	89.148998260498	ms
	Processing time (w/o IO):	89.087009429932	ms
	Processing time (w/o IO):	112.61892318726	ms
	Processing time (w/o IO):	115.03911018372	ms
	Processing time (w/o IO):	90.133905410767	ms
	Processing time (w/o IO):	114.00699615479	ms
	Processing time (w/o IO):	112.75506019592	ms
	Processing time (w/o IO):	111.39106750488	ms
	Processing time (w/o IO):	112.23602294922	ms
	Processing time (w/o IO):	111.83094978333	ms
	  Time (mean ± σ):     352.0 ms ±  11.1 ms    [User: 334.4 ms, System: 17.6 ms]
	  Range (min … max):   335.6 ms … 370.9 ms    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1093.0058956146	ms
	Processing time (w/o IO):	1091.9330120087	ms
	Processing time (w/o IO):	1091.9449329376	ms
	Processing time (w/o IO):	1112.4289035797	ms
	Processing time (w/o IO):	1094.7527885437	ms
	Processing time (w/o IO):	1093.918800354	ms
	Processing time (w/o IO):	1096.3799953461	ms
	Processing time (w/o IO):	1094.9590206146	ms
	Processing time (w/o IO):	1090.4450416565	ms
	Processing time (w/o IO):	1096.2519645691	ms
	Processing time (w/o IO):	1099.408864975	ms
	Processing time (w/o IO):	1093.4720039368	ms
	Processing time (w/o IO):	1093.6651229858	ms
	  Time (mean ± σ):      1.526 s ±  0.008 s    [User: 1.512 s, System: 0.013 s]
	  Range (min … max):    1.518 s …  1.542 s    10 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 150ms
	Processing time (w/o IO): 149ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 149ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 149ms
	Processing time (w/o IO): 149ms
	Processing time (w/o IO): 149ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 148ms
	  Time (mean ± σ):     238.7 ms ±   3.0 ms    [User: 213.4 ms, System: 24.6 ms]
	  Range (min … max):   236.0 ms … 246.8 ms    10 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 374.998906ms
	Processing time (w/o IO): 372.63007ms
	Processing time (w/o IO): 371.33685ms
	  Time (mean ± σ):     521.9 ms ±   3.2 ms    [User: 526.3 ms, System: 30.2 ms]
	  Range (min … max):   519.6 ms … 524.1 ms    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 168.533809ms
	Processing time (w/o IO): 169.334922ms
	Processing time (w/o IO): 166.735081ms
	  Time (mean ± σ):     313.2 ms ±   2.6 ms    [User: 788.7 ms, System: 37.6 ms]
	  Range (min … max):   311.4 ms … 315.0 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 386.865591ms
	Processing time (w/o IO): 386.844364ms
	Processing time (w/o IO): 386.346405ms
	  Time (mean ± σ):     460.1 ms ±   0.6 ms    [User: 438.5 ms, System: 21.4 ms]
	  Range (min … max):   459.7 ms … 460.6 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 308.100006ms
	Processing time (w/o IO): 307.441495ms
	Processing time (w/o IO): 309.41693ms
	  Time (mean ± σ):     378.8 ms ±   1.9 ms    [User: 659.7 ms, System: 21.4 ms]
	  Range (min … max):   377.4 ms … 380.1 ms    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 447.959ms
	Processing time (w/o IO): 451.482ms
	Processing time (w/o IO): 446.9ms
	  Time (mean ± σ):     756.0 ms ±   1.1 ms    [User: 737.0 ms, System: 21.7 ms]
	  Range (min … max):   755.3 ms … 756.8 ms    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 207.104ms
	Processing time (w/o IO): 199.282ms
	Processing time (w/o IO): 211.423ms
	  Time (mean ± σ):     509.4 ms ±   0.1 ms    [User: 1009.7 ms, System: 25.2 ms]
	  Range (min … max):   509.3 ms … 509.5 ms    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 23.602s
	Processing time (w/o IO): 23.301s
	  Time (abs ≡):        23.460 s               [User: 23.392 s, System: 0.059 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 5.808s
	Processing time (w/o IO): 5.913s
	Processing time (w/o IO): 5.971s
	  Time (mean ± σ):      6.417 s ±  0.031 s    [User: 4.979 s, System: 2.030 s]
	  Range (min … max):    6.395 s …  6.439 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 554.491737ms
	Processing time (w/o IO): 550.967497ms
	Processing time (w/o IO): 554.053232ms
	  Time (mean ± σ):     765.1 ms ±   0.3 ms    [User: 737.9 ms, System: 27.2 ms]
	  Range (min … max):   764.9 ms … 765.3 ms    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 431ms
	Processing time (w/o IO): 432ms
	Processing time (w/o IO): 433ms
	  Time (mean ± σ):     625.3 ms ±   2.2 ms    [User: 601.6 ms, System: 23.6 ms]
	  Range (min … max):   623.8 ms … 626.9 ms    2 runs
	 
Julia:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 575 milliseconds
	Processing time (w/o IO): 575 milliseconds
	Processing time (w/o IO): 574 milliseconds
	  Time (mean ± σ):      4.426 s ±  0.006 s    [User: 4.186 s, System: 0.237 s]
	  Range (min … max):    4.421 s …  4.430 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads auto related.jl
	Processing time (w/o IO): 249 milliseconds
	Processing time (w/o IO): 257 milliseconds
	Processing time (w/o IO): 248 milliseconds
	  Time (mean ± σ):      3.951 s ±  0.008 s    [User: 6.413 s, System: 0.200 s]
	  Range (min … max):    3.945 s …  3.957 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  689.388825ms
	Processing time (w/o IO):  689.690829ms
	Processing time (w/o IO):  690.637044ms
	  Time (mean ± σ):      1.480 s ±  0.000 s    [User: 1.449 s, System: 0.031 s]
	  Range (min … max):    1.480 s …  1.481 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 757.664ms
	Processing time (w/o IO): 756.758ms
	Processing time (w/o IO): 760.552ms
	  Time (mean ± σ):      8.993 s ±  0.258 s    [User: 8.873 s, System: 0.116 s]
	  Range (min … max):    8.811 s …  9.175 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 2396ms
	Processing time (w/o IO): 2512ms
	Processing time (w/o IO): 2352ms
	  Time (mean ± σ):      3.088 s ±  0.112 s    [User: 3.261 s, System: 0.165 s]
	  Range (min … max):    3.009 s …  3.168 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 2886ms
	Processing time (w/o IO): 2887ms
	Processing time (w/o IO): 2896ms
	  Time (mean ± σ):      3.391 s ±  0.013 s    [User: 3.335 s, System: 0.073 s]
	  Range (min … max):    3.382 s …  3.401 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 714.8239612579346ms
	Processing time (w/o IO): 709.7910642623901ms
	Processing time (w/o IO): 714.290976524353ms
	  Time (mean ± σ):      2.118 s ±  0.011 s    [User: 1.962 s, System: 0.120 s]
	  Range (min … max):    2.110 s …  2.126 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 393.267977ms
	Processing time (w/o IO): 393.093873ms
	Processing time (w/o IO): 393.445575ms
	  Time (mean ± σ):      1.824 s ±  0.005 s    [User: 2.815 s, System: 0.115 s]
	  Range (min … max):    1.820 s …  1.827 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 2424ms
	Processing time (w/o IO): 2423ms
	Processing time (w/o IO): 2440ms
	  Time (mean ± σ):      2.762 s ±  0.011 s    [User: 2.766 s, System: 0.100 s]
	  Range (min … max):    2.755 s …  2.770 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 11865ms
	Processing time (w/o IO): 12244ms
	Processing time (w/o IO): 11652ms
	  Time (mean ± σ):     12.104 s ±  0.416 s    [User: 12.138 s, System: 0.079 s]
	  Range (min … max):   11.810 s … 12.399 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 2272ms
	Processing time (w/o IO): 2259ms
	Processing time (w/o IO): 2264ms
	  Time (mean ± σ):      2.701 s ±  0.335 s    [User: 2.438 s, System: 0.086 s]
	  Range (min … max):    2.464 s …  2.938 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 749 ms
	Processing time (w/o IO): 748 ms
	Processing time (w/o IO): 775 ms
	  Time (mean ± σ):      1.913 s ±  0.033 s    [User: 2.484 s, System: 0.098 s]
	  Range (min … max):    1.889 s …  1.936 s    2 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 495 ms
	Processing time (w/o IO): 495 ms
	Processing time (w/o IO): 495 ms
	  Time (mean ± σ):      1.088 s ±  0.011 s    [User: 1.040 s, System: 0.040 s]
	  Range (min … max):    1.080 s …  1.096 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 594 ms
	Processing time (w/o IO): 593 ms
	Processing time (w/o IO): 593 ms
	  Time (mean ± σ):     697.7 ms ±   1.9 ms    [User: 1653.8 ms, System: 21.5 ms]
	  Range (min … max):   696.4 ms … 699.1 ms    2 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 781ms
	Processing time (w/o IO): 780ms
	Processing time (w/o IO): 782ms
	  Time (mean ± σ):     886.7 ms ±   3.1 ms    [User: 840.0 ms, System: 45.5 ms]
	  Range (min … max):   884.5 ms … 888.8 ms    2 runs
	 
F#:

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 624ms
	Processing time (w/o IO): 624ms
	Processing time (w/o IO): 624ms
	  Time (mean ± σ):      3.356 s ±  0.010 s    [User: 3.206 s, System: 0.348 s]
	  Range (min … max):    3.350 s …  3.363 s    2 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 398ms
	Processing time (w/o IO): 426ms
	Processing time (w/o IO): 406ms
	  Time (mean ± σ):      2.587 s ±  0.003 s    [User: 3.593 s, System: 0.315 s]
	  Range (min … max):    2.584 s …  2.589 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 606ms
	Processing time (w/o IO): 606ms
	Processing time (w/o IO): 607ms
	  Time (mean ± σ):      4.323 s ±  0.002 s    [User: 4.528 s, System: 0.438 s]
	  Range (min … max):    4.322 s …  4.324 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 897.4236ms
	Processing time (w/o IO): 890.8283ms
	Processing time (w/o IO): 894.1056ms
	  Time (mean ± σ):      1.216 s ±  0.005 s    [User: 1.167 s, System: 0.070 s]
	  Range (min … max):    1.212 s …  1.220 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 1259.607ms
	Processing time (w/o IO): 1259.211ms
	Processing time (w/o IO): 1261.2443ms
	  Time (mean ± σ):      1.431 s ±  0.001 s    [User: 1.424 s, System: 0.051 s]
	  Range (min … max):    1.430 s …  1.432 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	1159.8770618439	ms
	Processing time (w/o IO):	1457.1619033813	ms
	Processing time (w/o IO):	1447.1700191498	ms
	  Time (mean ± σ):      2.704 s ±  0.001 s    [User: 2.641 s, System: 0.063 s]
	  Range (min … max):    2.704 s …  2.705 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	16789.535999298	ms
	Processing time (w/o IO):	16776.393175125	ms
	  Time (abs ≡):        18.614 s               [User: 18.551 s, System: 0.059 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 2670ms
	Processing time (w/o IO): 2750ms
	Processing time (w/o IO): 2654ms
	  Time (mean ± σ):      3.132 s ±  0.052 s    [User: 3.010 s, System: 0.118 s]
	  Range (min … max):    3.095 s …  3.169 s    2 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 3.279198886s
	Processing time (w/o IO): 3.274156902s
	Processing time (w/o IO): 3.281911245s
	  Time (mean ± σ):      3.752 s ±  0.003 s    [User: 3.752 s, System: 0.130 s]
	  Range (min … max):    3.750 s …  3.754 s    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1.419339083s
	Processing time (w/o IO): 1.425512496s
	Processing time (w/o IO): 1.421278919s
	  Time (mean ± σ):      1.894 s ±  0.005 s    [User: 6.112 s, System: 0.101 s]
	  Range (min … max):    1.891 s …  1.898 s    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 3.449326086s
	Processing time (w/o IO): 3.454589522s
	Processing time (w/o IO): 3.457243872s
	  Time (mean ± σ):      3.699 s ±  0.006 s    [User: 3.616 s, System: 0.079 s]
	  Range (min … max):    3.695 s …  3.704 s    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 2.72798404s
	Processing time (w/o IO): 2.73030716s
	Processing time (w/o IO): 2.731173681s
	  Time (mean ± σ):      2.970 s ±  0.000 s    [User: 5.608 s, System: 0.077 s]
	  Range (min … max):    2.970 s …  2.970 s    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 3904.46ms
	Processing time (w/o IO): 3903.78ms
	Processing time (w/o IO): 3903.21ms
	  Time (mean ± σ):      4.870 s ±  0.003 s    [User: 4.782 s, System: 0.094 s]
	  Range (min … max):    4.868 s …  4.872 s    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1649.51ms
	Processing time (w/o IO): 1644.87ms
	Processing time (w/o IO): 1657.65ms
	  Time (mean ± σ):      2.616 s ±  0.010 s    [User: 7.264 s, System: 0.107 s]
	  Range (min … max):    2.609 s …  2.623 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 215.548s
	Processing time (w/o IO): 215.407s
	  Time (abs ≡):        215.888 s               [User: 215.660 s, System: 0.183 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 4870.064913ms
	Processing time (w/o IO): 4876.513048ms
	Processing time (w/o IO): 4877.506536ms
	  Time (mean ± σ):      5.584 s ±  0.000 s    [User: 5.463 s, System: 0.112 s]
	  Range (min … max):    5.584 s …  5.585 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 3855ms
	Processing time (w/o IO): 3852ms
	Processing time (w/o IO): 3858ms
	  Time (mean ± σ):      4.452 s ±  0.003 s    [User: 4.383 s, System: 0.062 s]
	  Range (min … max):    4.450 s …  4.454 s    2 runs
	 
Julia:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 5055 milliseconds
	Processing time (w/o IO): 5049 milliseconds
	Processing time (w/o IO): 5046 milliseconds
	  Time (mean ± σ):     13.782 s ±  0.056 s    [User: 13.464 s, System: 0.310 s]
	  Range (min … max):   13.742 s … 13.822 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads auto related.jl
	Processing time (w/o IO): 2101 milliseconds
	Processing time (w/o IO): 2191 milliseconds
	Processing time (w/o IO): 2111 milliseconds
	  Time (mean ± σ):      8.097 s ±  0.096 s    [User: 21.702 s, System: 0.290 s]
	  Range (min … max):    8.030 s …  8.165 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  5.063152656s
	Processing time (w/o IO):  5.044769098s
	Processing time (w/o IO):  5.067880987s
	  Time (mean ± σ):      7.461 s ±  0.007 s    [User: 7.371 s, System: 0.081 s]
	  Range (min … max):    7.456 s …  7.466 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 6.669s
	Processing time (w/o IO): 6.669s
	Processing time (w/o IO): 6.673s
	  Time (mean ± σ):     81.379 s ±  0.150 s    [User: 80.978 s, System: 0.385 s]
	  Range (min … max):   81.273 s … 81.485 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 21083ms
	Processing time (w/o IO): 21091ms
	Processing time (w/o IO): 21009ms
	  Time (mean ± σ):     22.553 s ±  0.046 s    [User: 22.738 s, System: 0.268 s]
	  Range (min … max):   22.520 s … 22.586 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 25812ms
	Processing time (w/o IO): 25899ms
	Processing time (w/o IO): 25840ms
	  Time (mean ± σ):     27.373 s ±  0.055 s    [User: 27.314 s, System: 0.164 s]
	  Range (min … max):   27.334 s … 27.412 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 6228.744983673096ms
	Processing time (w/o IO): 6213.4329080581665ms
	Processing time (w/o IO): 6197.250008583069ms
	  Time (mean ± σ):     10.524 s ±  0.027 s    [User: 9.961 s, System: 0.375 s]
	  Range (min … max):   10.505 s … 10.543 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 3480.441969ms
	Processing time (w/o IO): 3459.455093ms
	Processing time (w/o IO): 3455.324459ms
	  Time (mean ± σ):      7.876 s ±  0.040 s    [User: 17.564 s, System: 0.379 s]
	  Range (min … max):    7.848 s …  7.905 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 24475ms
	Processing time (w/o IO): 24452ms
	Processing time (w/o IO): 24502ms
	  Time (mean ± σ):     25.302 s ±  0.037 s    [User: 25.378 s, System: 0.195 s]
	  Range (min … max):   25.276 s … 25.328 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 106505ms
	Processing time (w/o IO): 108986ms
	Processing time (w/o IO): 107298ms
	  Time (mean ± σ):     108.578 s ±  1.189 s    [User: 108.604 s, System: 0.133 s]
	  Range (min … max):   107.737 s … 109.419 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 19905ms
	Processing time (w/o IO): 19943ms
	Processing time (w/o IO): 19917ms
	  Time (mean ± σ):     20.529 s ±  0.168 s    [User: 20.421 s, System: 0.159 s]
	  Range (min … max):   20.410 s … 20.648 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 6432 ms
	Processing time (w/o IO): 6503 ms
	Processing time (w/o IO): 6437 ms
	  Time (mean ± σ):     13.661 s ±  0.129 s    [User: 14.415 s, System: 0.134 s]
	  Range (min … max):   13.569 s … 13.752 s    2 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 4218 ms
	Processing time (w/o IO): 4219 ms
	Processing time (w/o IO): 4219 ms
	  Time (mean ± σ):      8.887 s ±  0.004 s    [User: 8.747 s, System: 0.131 s]
	  Range (min … max):    8.884 s …  8.890 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 4132 ms
	Processing time (w/o IO): 4432 ms
	Processing time (w/o IO): 4161 ms
	  Time (mean ± σ):      4.642 s ±  0.195 s    [User: 11.873 s, System: 0.113 s]
	  Range (min … max):    4.504 s …  4.779 s    2 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 7278ms
	Processing time (w/o IO): 7269ms
	Processing time (w/o IO): 7267ms
	  Time (mean ± σ):      7.608 s ±  0.006 s    [User: 7.508 s, System: 0.093 s]
	  Range (min … max):    7.604 s …  7.612 s    2 runs
	 
F#:

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 5500ms
	Processing time (w/o IO): 5496ms
	Processing time (w/o IO): 5498ms
	  Time (mean ± σ):     16.310 s ±  0.137 s    [User: 17.076 s, System: 0.596 s]
	  Range (min … max):   16.212 s … 16.407 s    2 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 3271ms
	Processing time (w/o IO): 3511ms
	Processing time (w/o IO): 3267ms
	  Time (mean ± σ):      8.768 s ±  0.058 s    [User: 19.402 s, System: 0.609 s]
	  Range (min … max):    8.726 s …  8.809 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 5185ms
	Processing time (w/o IO): 5190ms
	Processing time (w/o IO): 5191ms
	  Time (mean ± σ):     18.463 s ±  0.065 s    [User: 19.567 s, System: 0.571 s]
	  Range (min … max):   18.417 s … 18.510 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 7854.514ms
	Processing time (w/o IO): 7853.4408ms
	Processing time (w/o IO): 7841.1481ms
	  Time (mean ± σ):      8.706 s ±  0.021 s    [User: 8.686 s, System: 0.172 s]
	  Range (min … max):    8.692 s …  8.721 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 11209.1021ms
	Processing time (w/o IO): 11206.266ms
	Processing time (w/o IO): 11223.2978ms
	  Time (mean ± σ):     11.708 s ±  0.013 s    [User: 11.616 s, System: 0.137 s]
	  Range (min … max):   11.698 s … 11.717 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	9836.9450569153	ms
	Processing time (w/o IO):	12031.471014023	ms
	Processing time (w/o IO):	12045.30787468	ms
	  Time (mean ± σ):     16.116 s ±  0.076 s    [User: 15.910 s, System: 0.195 s]
	  Range (min … max):   16.063 s … 16.170 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	150364.66598511	ms
	Processing time (w/o IO):	150255.17511368	ms
	  Time (abs ≡):        156.639 s               [User: 156.409 s, System: 0.203 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 32670ms
	Processing time (w/o IO): 33581ms
	Processing time (w/o IO): 33241ms
	  Time (mean ± σ):     34.824 s ±  0.259 s    [User: 34.216 s, System: 0.597 s]
	  Range (min … max):   34.641 s … 35.007 s    2 runs
	 
