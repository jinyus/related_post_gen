Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 22.702375ms
	Processing time (w/o IO): 22.470571ms
	Processing time (w/o IO): 22.535973ms
	Processing time (w/o IO): 22.741476ms
	Processing time (w/o IO): 22.675574ms
	Processing time (w/o IO): 22.715076ms
	Processing time (w/o IO): 22.626574ms
	Processing time (w/o IO): 22.660874ms
	Processing time (w/o IO): 22.684475ms
	Processing time (w/o IO): 22.500472ms
	Processing time (w/o IO): 23.357185ms
	Processing time (w/o IO): 22.616873ms
	Processing time (w/o IO): 22.647474ms
	  Time (mean ± σ):      62.2 ms ±   2.1 ms    [User: 57.7 ms, System: 12.0 ms]
	  Range (min … max):    59.9 ms …  66.2 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 11.682493ms
	Processing time (w/o IO): 11.640592ms
	Processing time (w/o IO): 11.691393ms
	Processing time (w/o IO): 11.766094ms
	Processing time (w/o IO): 12.171201ms
	Processing time (w/o IO): 12.269803ms
	Processing time (w/o IO): 12.204901ms
	Processing time (w/o IO): 12.264303ms
	Processing time (w/o IO): 11.691394ms
	Processing time (w/o IO): 11.917097ms
	Processing time (w/o IO): 11.690893ms
	Processing time (w/o IO): 11.825095ms
	Processing time (w/o IO): 13.021215ms
	  Time (mean ± σ):      53.5 ms ±   1.3 ms    [User: 77.1 ms, System: 15.1 ms]
	  Range (min … max):    52.1 ms …  56.2 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 23.573775ms
	Processing time (w/o IO): 23.404974ms
	Processing time (w/o IO): 23.523175ms
	Processing time (w/o IO): 23.745678ms
	Processing time (w/o IO): 23.454775ms
	Processing time (w/o IO): 23.466975ms
	Processing time (w/o IO): 23.614276ms
	Processing time (w/o IO): 23.410573ms
	Processing time (w/o IO): 23.467274ms
	Processing time (w/o IO): 23.730977ms
	Processing time (w/o IO): 23.416174ms
	Processing time (w/o IO): 23.633876ms
	Processing time (w/o IO): 23.435474ms
	  Time (mean ± σ):      39.7 ms ±   0.9 ms    [User: 32.8 ms, System: 6.9 ms]
	  Range (min … max):    38.7 ms …  41.3 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 12.774102ms
	Processing time (w/o IO): 12.902804ms
	Processing time (w/o IO): 12.215593ms
	Processing time (w/o IO): 12.093391ms
	Processing time (w/o IO): 12.115891ms
	Processing time (w/o IO): 12.221394ms
	Processing time (w/o IO): 12.195993ms
	Processing time (w/o IO): 12.232394ms
	Processing time (w/o IO): 13.325611ms
	Processing time (w/o IO): 12.427596ms
	Processing time (w/o IO): 12.519899ms
	Processing time (w/o IO): 12.529599ms
	Processing time (w/o IO): 12.6562ms
	  Time (mean ± σ):      30.0 ms ±   0.4 ms    [User: 33.3 ms, System: 8.6 ms]
	  Range (min … max):    29.3 ms …  30.7 ms    10 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 24.569ms
	Processing time (w/o IO): 24.501ms
	Processing time (w/o IO): 24.59ms
	Processing time (w/o IO): 24.921ms
	Processing time (w/o IO): 24.538ms
	Processing time (w/o IO): 24.472ms
	Processing time (w/o IO): 24.533ms
	Processing time (w/o IO): 24.651ms
	Processing time (w/o IO): 25.082ms
	Processing time (w/o IO): 25.338ms
	Processing time (w/o IO): 24.716ms
	Processing time (w/o IO): 24.703ms
	Processing time (w/o IO): 24.812ms
	  Time (mean ± σ):     105.1 ms ±   0.6 ms    [User: 98.5 ms, System: 7.9 ms]
	  Range (min … max):   104.1 ms … 105.9 ms    10 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 13.157ms
	Processing time (w/o IO): 13.783ms
	Processing time (w/o IO): 12.841ms
	Processing time (w/o IO): 12.283ms
	Processing time (w/o IO): 11.863ms
	Processing time (w/o IO): 12.927ms
	Processing time (w/o IO): 13.858ms
	Processing time (w/o IO): 13.983ms
	Processing time (w/o IO): 12.522ms
	Processing time (w/o IO): 13.177ms
	Processing time (w/o IO): 13.34ms
	Processing time (w/o IO): 13.204ms
	Processing time (w/o IO): 13.094ms
	  Time (mean ± σ):      92.2 ms ±   1.2 ms    [User: 104.2 ms, System: 11.9 ms]
	  Range (min … max):    90.8 ms …  94.4 ms    10 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 38 ms
	Processing time (w/o IO): 38 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 38 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 38 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 38 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 37 ms
	  Time (mean ± σ):     239.1 ms ±   1.9 ms    [User: 202.6 ms, System: 35.8 ms]
	  Range (min … max):   234.9 ms … 241.9 ms    10 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 12 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 15 ms
	Processing time (w/o IO): 12 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 12 ms
	  Time (mean ± σ):     230.3 ms ±   1.5 ms    [User: 232.0 ms, System: 32.6 ms]
	  Range (min … max):   227.5 ms … 232.8 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 1.479s
	Processing time (w/o IO): 1.461s
	Processing time (w/o IO): 1.475s
	Processing time (w/o IO): 1.464s
	Processing time (w/o IO): 1.462s
	Processing time (w/o IO): 1.461s
	Processing time (w/o IO): 1.462s
	Processing time (w/o IO): 1.461s
	Processing time (w/o IO): 1.462s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.461s
	Processing time (w/o IO): 1.479s
	Processing time (w/o IO): 1.475s
	  Time (mean ± σ):      1.533 s ±  0.007 s    [User: 1.516 s, System: 0.017 s]
	  Range (min … max):    1.529 s …  1.548 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 350.1ms
	Processing time (w/o IO): 352.1ms
	Processing time (w/o IO): 356.3ms
	Processing time (w/o IO): 354.5ms
	Processing time (w/o IO): 356.3ms
	Processing time (w/o IO): 352.4ms
	Processing time (w/o IO): 349.8ms
	Processing time (w/o IO): 355.8ms
	Processing time (w/o IO): 354.8ms
	Processing time (w/o IO): 352.9ms
	Processing time (w/o IO): 340.2ms
	Processing time (w/o IO): 350.7ms
	Processing time (w/o IO): 352.8ms
	  Time (mean ± σ):     678.4 ms ±  96.4 ms    [User: 827.0 ms, System: 420.6 ms]
	  Range (min … max):   633.6 ms … 950.4 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 60.9648ms
	Processing time (w/o IO): 60.194492ms
	Processing time (w/o IO): 60.261092ms
	Processing time (w/o IO): 60.604596ms
	Processing time (w/o IO): 60.349593ms
	Processing time (w/o IO): 60.372293ms
	Processing time (w/o IO): 61.091701ms
	Processing time (w/o IO): 60.443594ms
	Processing time (w/o IO): 60.768997ms
	Processing time (w/o IO): 60.601095ms
	Processing time (w/o IO): 61.095702ms
	Processing time (w/o IO): 60.509795ms
	Processing time (w/o IO): 60.353593ms
	  Time (mean ± σ):     111.7 ms ±   1.1 ms    [User: 101.1 ms, System: 10.5 ms]
	  Range (min … max):   110.2 ms … 113.5 ms    10 runs
	 
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
	  Time (mean ± σ):      70.2 ms ±   0.4 ms    [User: 65.9 ms, System: 4.3 ms]
	  Range (min … max):    69.8 ms …  71.0 ms    10 runs
	 
Julia:

	Benchmark 1: julia --startup-file=no --project=Related -e "using Related; main()"
	Processing time (w/o IO): 32 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 32 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 31 milliseconds
	  Time (mean ± σ):      1.020 s ±  0.012 s    [User: 0.893 s, System: 0.231 s]
	  Range (min … max):    0.998 s …  1.035 s    10 runs
	 
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
	  Time (mean ± σ):      1.002 s ±  0.017 s    [User: 0.882 s, System: 0.224 s]
	  Range (min … max):    0.985 s …  1.040 s    10 runs
	 
Julia Concurrent:

	Benchmark 1: julia --startup-file=no --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 29 milliseconds
	Processing time (w/o IO): 19 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 17 milliseconds
	  Time (mean ± σ):     996.1 ms ±  22.2 ms    [User: 923.0 ms, System: 226.0 ms]
	  Range (min … max):   974.7 ms … 1040.8 ms    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  41.938261ms
	Processing time (w/o IO):  40.98615ms
	Processing time (w/o IO):  42.009161ms
	Processing time (w/o IO):  41.116552ms
	Processing time (w/o IO):  41.905298ms
	Processing time (w/o IO):  40.912586ms
	Processing time (w/o IO):  41.092889ms
	Processing time (w/o IO):  41.25909ms
	Processing time (w/o IO):  41.23839ms
	Processing time (w/o IO):  41.029587ms
	Processing time (w/o IO):  41.513193ms
	Processing time (w/o IO):  40.973086ms
	Processing time (w/o IO):  40.937187ms
	  Time (mean ± σ):     260.2 ms ±   0.4 ms    [User: 251.3 ms, System: 8.8 ms]
	  Range (min … max):   259.7 ms … 260.7 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 48.812ms
	Processing time (w/o IO): 49.105ms
	Processing time (w/o IO): 48.663ms
	Processing time (w/o IO): 49.105ms
	Processing time (w/o IO): 48.679ms
	Processing time (w/o IO): 48.980ms
	Processing time (w/o IO): 49.080ms
	Processing time (w/o IO): 48.503ms
	Processing time (w/o IO): 48.444ms
	Processing time (w/o IO): 48.840ms
	Processing time (w/o IO): 48.748ms
	Processing time (w/o IO): 48.700ms
	Processing time (w/o IO): 48.702ms
	  Time (mean ± σ):     353.2 ms ±   1.8 ms    [User: 328.2 ms, System: 24.9 ms]
	  Range (min … max):   350.4 ms … 355.8 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 168ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 168ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 176ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 139ms
	  Time (mean ± σ):     540.0 ms ±  12.9 ms    [User: 642.8 ms, System: 111.9 ms]
	  Range (min … max):   511.8 ms … 555.0 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 129ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 129ms
	Processing time (w/o IO): 129ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 129ms
	Processing time (w/o IO): 130ms
	  Time (mean ± σ):     254.9 ms ±   1.5 ms    [User: 243.9 ms, System: 15.2 ms]
	  Range (min … max):   253.7 ms … 258.0 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 51.81300640106201ms
	Processing time (w/o IO): 52.152037620544434ms
	Processing time (w/o IO): 51.79393291473389ms
	Processing time (w/o IO): 51.96499824523926ms
	Processing time (w/o IO): 52.11198329925537ms
	Processing time (w/o IO): 51.99098587036133ms
	Processing time (w/o IO): 51.33402347564697ms
	Processing time (w/o IO): 51.73802375793457ms
	Processing time (w/o IO): 51.766037940979004ms
	Processing time (w/o IO): 51.76198482513428ms
	Processing time (w/o IO): 51.57196521759033ms
	Processing time (w/o IO): 52.06799507141113ms
	Processing time (w/o IO): 51.67388916015625ms
	  Time (mean ± σ):     415.2 ms ±   4.8 ms    [User: 359.5 ms, System: 38.7 ms]
	  Range (min … max):   409.2 ms … 427.1 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 31.189494ms
	Processing time (w/o IO): 33.124311ms
	Processing time (w/o IO): 31.404495ms
	Processing time (w/o IO): 31.588397ms
	Processing time (w/o IO): 32.633407ms
	Processing time (w/o IO): 32.390504ms
	Processing time (w/o IO): 33.05981ms
	Processing time (w/o IO): 31.671398ms
	Processing time (w/o IO): 32.167203ms
	Processing time (w/o IO): 31.9564ms
	Processing time (w/o IO): 32.152602ms
	Processing time (w/o IO): 32.046701ms
	Processing time (w/o IO): 32.397404ms
	  Time (mean ± σ):     399.6 ms ±   4.5 ms    [User: 430.6 ms, System: 39.3 ms]
	  Range (min … max):   393.8 ms … 405.7 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 135ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 128ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 125ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 128ms
	Processing time (w/o IO): 126ms
	  Time (mean ± σ):     303.5 ms ±   2.7 ms    [User: 291.8 ms, System: 65.1 ms]
	  Range (min … max):   299.2 ms … 307.5 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 124ms
	Processing time (w/o IO): 118ms
	Processing time (w/o IO): 125ms
	Processing time (w/o IO): 120ms
	Processing time (w/o IO): 105ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 120ms
	Processing time (w/o IO): 125ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 119ms
	  Time (mean ± σ):     180.3 ms ±   8.0 ms    [User: 199.5 ms, System: 34.8 ms]
	  Range (min … max):   161.2 ms … 186.9 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 194ms
	Processing time (w/o IO): 194ms
	Processing time (w/o IO): 139ms
	Processing time (w/o IO): 139ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 194ms
	Processing time (w/o IO): 139ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 195ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 195ms
	Processing time (w/o IO): 139ms
	  Time (mean ± σ):     225.6 ms ±  27.2 ms    [User: 216.0 ms, System: 32.6 ms]
	  Range (min … max):   205.3 ms … 265.8 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 54 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 56 ms
	  Time (mean ± σ):     384.5 ms ±   9.0 ms    [User: 691.2 ms, System: 43.8 ms]
	  Range (min … max):   375.9 ms … 400.7 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	  Time (mean ± σ):     129.6 ms ±   2.0 ms    [User: 119.2 ms, System: 10.6 ms]
	  Range (min … max):   128.2 ms … 134.9 ms    10 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 48 ms
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 49 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 46 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 46 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 49 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 46 ms
	Processing time (w/o IO): 47 ms
	  Time (mean ± σ):      79.8 ms ±   2.5 ms    [User: 142.1 ms, System: 11.5 ms]
	  Range (min … max):    76.9 ms …  83.9 ms    10 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 22.322ms
	Processing time (w/o IO): 22.214ms
	Processing time (w/o IO): 22.213ms
	Processing time (w/o IO): 22.168ms
	Processing time (w/o IO): 22.063ms
	Processing time (w/o IO): 22.174ms
	Processing time (w/o IO): 22.022ms
	Processing time (w/o IO): 22.03ms
	Processing time (w/o IO): 22.248ms
	Processing time (w/o IO): 22.244ms
	Processing time (w/o IO): 22.017ms
	Processing time (w/o IO): 22.125ms
	Processing time (w/o IO): 22.117ms
	  Time (mean ± σ):      51.1 ms ±   0.5 ms    [User: 40.6 ms, System: 10.4 ms]
	  Range (min … max):    50.5 ms …  52.1 ms    10 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 12.162ms
	Processing time (w/o IO): 13.757ms
	Processing time (w/o IO): 12.117ms
	Processing time (w/o IO): 13.163ms
	Processing time (w/o IO): 12.853ms
	Processing time (w/o IO): 12.216ms
	Processing time (w/o IO): 14.246ms
	Processing time (w/o IO): 12.238ms
	Processing time (w/o IO): 13.511ms
	Processing time (w/o IO): 12.093ms
	Processing time (w/o IO): 12.902ms
	Processing time (w/o IO): 12.167ms
	Processing time (w/o IO): 12.185ms
	  Time (mean ± σ):      39.7 ms ±   0.9 ms    [User: 61.3 ms, System: 12.9 ms]
	  Range (min … max):    38.4 ms …  41.3 ms    10 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 92ms
	  Time (mean ± σ):      1.028 s ±  0.007 s    [User: 1.134 s, System: 0.106 s]
	  Range (min … max):    1.016 s …  1.034 s    10 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 22ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 25ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 21ms
	  Time (mean ± σ):     925.3 ms ±  18.3 ms    [User: 1087.1 ms, System: 106.9 ms]
	  Range (min … max):   874.8 ms … 939.9 ms    10 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 15ms
	  Time (mean ± σ):     713.7 ms ±   2.7 ms    [User: 783.7 ms, System: 88.6 ms]
	  Range (min … max):   708.9 ms … 717.1 ms    10 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	  Time (mean ± σ):     745.4 ms ±   3.1 ms    [User: 718.9 ms, System: 85.7 ms]
	  Range (min … max):   741.1 ms … 749.9 ms    10 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 27.3469ms
	Processing time (w/o IO): 27.8042ms
	Processing time (w/o IO): 27.5138ms
	Processing time (w/o IO): 27.627ms
	Processing time (w/o IO): 27.209ms
	Processing time (w/o IO): 27.2931ms
	Processing time (w/o IO): 27.511ms
	Processing time (w/o IO): 28.2274ms
	Processing time (w/o IO): 28.4603ms
	Processing time (w/o IO): 27.2278ms
	Processing time (w/o IO): 27.3551ms
	Processing time (w/o IO): 27.0178ms
	Processing time (w/o IO): 27.1809ms
	  Time (mean ± σ):     210.8 ms ±   4.0 ms    [User: 171.2 ms, System: 31.5 ms]
	  Range (min … max):   205.8 ms … 217.9 ms    10 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 26.1672ms
	Processing time (w/o IO): 26.5927ms
	Processing time (w/o IO): 26.153ms
	Processing time (w/o IO): 26.3792ms
	Processing time (w/o IO): 26.3254ms
	Processing time (w/o IO): 26.4495ms
	Processing time (w/o IO): 26.2501ms
	Processing time (w/o IO): 26.5379ms
	Processing time (w/o IO): 26.4098ms
	Processing time (w/o IO): 26.2262ms
	Processing time (w/o IO): 26.3334ms
	Processing time (w/o IO): 26.5319ms
	Processing time (w/o IO): 26.018ms
	  Time (mean ± σ):     102.3 ms ±   1.5 ms    [User: 98.6 ms, System: 20.8 ms]
	  Range (min … max):    99.2 ms … 104.5 ms    10 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 13.1967ms
	Processing time (w/o IO): 15.7636ms
	Processing time (w/o IO): 13.6336ms
	Processing time (w/o IO): 15.8169ms
	Processing time (w/o IO): 13.7353ms
	Processing time (w/o IO): 15.0468ms
	Processing time (w/o IO): 13.7741ms
	Processing time (w/o IO): 14.1358ms
	Processing time (w/o IO): 13.5931ms
	Processing time (w/o IO): 14.0056ms
	Processing time (w/o IO): 14.3687ms
	Processing time (w/o IO): 13.6881ms
	Processing time (w/o IO): 13.787ms
	  Time (mean ± σ):     204.1 ms ±   4.5 ms    [User: 199.2 ms, System: 43.8 ms]
	  Range (min … max):   197.4 ms … 213.0 ms    10 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 11.2841ms
	Processing time (w/o IO): 10.9952ms
	Processing time (w/o IO): 11.1377ms
	Processing time (w/o IO): 11.028ms
	Processing time (w/o IO): 10.9975ms
	Processing time (w/o IO): 11.3579ms
	Processing time (w/o IO): 11.0986ms
	Processing time (w/o IO): 10.9905ms
	Processing time (w/o IO): 11.0352ms
	Processing time (w/o IO): 11.0966ms
	Processing time (w/o IO): 11.0154ms
	Processing time (w/o IO): 13.2272ms
	Processing time (w/o IO): 11.0299ms
	  Time (mean ± σ):      72.0 ms ±   2.4 ms    [User: 125.9 ms, System: 26.6 ms]
	  Range (min … max):    68.9 ms …  75.9 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	112.89882659912	ms
	Processing time (w/o IO):	90.441942214966	ms
	Processing time (w/o IO):	111.55700683594	ms
	Processing time (w/o IO):	88.510036468506	ms
	Processing time (w/o IO):	112.38598823547	ms
	Processing time (w/o IO):	105.80492019653	ms
	Processing time (w/o IO):	88.330984115601	ms
	Processing time (w/o IO):	104.49981689453	ms
	Processing time (w/o IO):	89.405059814453	ms
	Processing time (w/o IO):	103.93309593201	ms
	Processing time (w/o IO):	112.88714408875	ms
	Processing time (w/o IO):	111.3018989563	ms
	Processing time (w/o IO):	112.02788352966	ms
	  Time (mean ± σ):     345.9 ms ±  12.4 ms    [User: 329.3 ms, System: 16.6 ms]
	  Range (min … max):   328.5 ms … 363.9 ms    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1095.5941677094	ms
	Processing time (w/o IO):	1109.7419261932	ms
	Processing time (w/o IO):	1093.1959152222	ms
	Processing time (w/o IO):	1091.933965683	ms
	Processing time (w/o IO):	1093.4419631958	ms
	Processing time (w/o IO):	1094.3510532379	ms
	Processing time (w/o IO):	1091.9098854065	ms
	Processing time (w/o IO):	1113.1618022919	ms
	Processing time (w/o IO):	1091.1800861359	ms
	Processing time (w/o IO):	1091.3031101227	ms
	Processing time (w/o IO):	1093.5759544373	ms
	Processing time (w/o IO):	1091.6619300842	ms
	Processing time (w/o IO):	1090.772151947	ms
	  Time (mean ± σ):      1.520 s ±  0.009 s    [User: 1.500 s, System: 0.018 s]
	  Range (min … max):    1.510 s …  1.536 s    10 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 144ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 143ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 136ms
	Processing time (w/o IO): 142ms
	Processing time (w/o IO): 142ms
	Processing time (w/o IO): 145ms
	Processing time (w/o IO): 145ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 146ms
	Processing time (w/o IO): 149ms
	  Time (mean ± σ):     236.0 ms ±  18.4 ms    [User: 206.6 ms, System: 24.3 ms]
	  Range (min … max):   219.0 ms … 286.2 ms    10 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 0.885573 s
	Processing time (w/o IO): 0.886671 s
	Processing time (w/o IO): 0.892696 s
	Processing time (w/o IO): 0.888726 s
	Processing time (w/o IO): 0.895208 s
	Processing time (w/o IO): 0.888267 s
	Processing time (w/o IO): 0.892523 s
	Processing time (w/o IO): 0.887912 s
	Processing time (w/o IO): 0.880074 s
	Processing time (w/o IO): 0.877691 s
	Processing time (w/o IO): 0.878434 s
	Processing time (w/o IO): 0.899115 s
	Processing time (w/o IO): 0.889698 s
	  Time (mean ± σ):      1.244 s ±  0.009 s    [User: 1.190 s, System: 0.090 s]
	  Range (min … max):    1.230 s …  1.256 s    10 runs
	 
Ruby:

	Benchmark 1: ruby related.rb
	Processing time (w/o IO): 3002ms
	Processing time (w/o IO): 3013ms
	Processing time (w/o IO): 3044ms
	Processing time (w/o IO): 3186ms
	Processing time (w/o IO): 3047ms
	Processing time (w/o IO): 3005ms
	Processing time (w/o IO): 3075ms
	Processing time (w/o IO): 3011ms
	Processing time (w/o IO): 3024ms
	Processing time (w/o IO): 3052ms
	Processing time (w/o IO): 3005ms
	Processing time (w/o IO): 3127ms
	Processing time (w/o IO): 3027ms
	  Time (mean ± σ):      3.173 s ±  0.059 s    [User: 3.146 s, System: 0.026 s]
	  Range (min … max):    3.122 s …  3.304 s    10 runs
	 
daScript:

	Benchmark 1: das related.das
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 322.852398ms
	Processing time (w/o IO): 323.145804ms
	Processing time (w/o IO): 322.590993ms
	  Time (mean ± σ):     468.6 ms ±   0.4 ms    [User: 465.1 ms, System: 27.9 ms]
	  Range (min … max):   468.3 ms … 468.8 ms    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 165.262166ms
	Processing time (w/o IO): 163.883042ms
	Processing time (w/o IO): 164.127646ms
	  Time (mean ± σ):     307.4 ms ±   2.4 ms    [User: 777.7 ms, System: 35.7 ms]
	  Range (min … max):   305.7 ms … 309.1 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 340.416203ms
	Processing time (w/o IO): 340.702808ms
	Processing time (w/o IO): 340.611706ms
	  Time (mean ± σ):     402.3 ms ±   1.7 ms    [User: 374.9 ms, System: 27.2 ms]
	  Range (min … max):   401.1 ms … 403.5 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 177.865149ms
	Processing time (w/o IO): 174.476199ms
	Processing time (w/o IO): 173.702188ms
	  Time (mean ± σ):     236.9 ms ±   0.1 ms    [User: 384.0 ms, System: 23.7 ms]
	  Range (min … max):   236.9 ms … 237.0 ms    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 314.391ms
	Processing time (w/o IO): 316.916ms
	Processing time (w/o IO): 315.663ms
	  Time (mean ± σ):     613.3 ms ±   0.2 ms    [User: 592.2 ms, System: 25.4 ms]
	  Range (min … max):   613.1 ms … 613.4 ms    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 123.442ms
	Processing time (w/o IO): 122.539ms
	Processing time (w/o IO): 123.304ms
	  Time (mean ± σ):     433.5 ms ±   1.3 ms    [User: 726.9 ms, System: 27.7 ms]
	  Range (min … max):   432.6 ms … 434.4 ms    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 559 ms
	Processing time (w/o IO): 559 ms
	Processing time (w/o IO): 556 ms
	  Time (mean ± σ):      1.389 s ±  0.001 s    [User: 1.266 s, System: 0.116 s]
	  Range (min … max):    1.388 s …  1.389 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 164 ms
	Processing time (w/o IO): 164 ms
	Processing time (w/o IO): 167 ms
	  Time (mean ± σ):      1.057 s ±  0.010 s    [User: 1.416 s, System: 0.117 s]
	  Range (min … max):    1.049 s …  1.064 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 23.288s
	Processing time (w/o IO): 23.555s
	  Time (abs ≡):        23.718 s               [User: 23.679 s, System: 0.036 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 6.000s
	Processing time (w/o IO): 6.443s
	Processing time (w/o IO): 7.682s
	  Time (mean ± σ):      7.577 s ±  0.869 s    [User: 5.140 s, System: 3.031 s]
	  Range (min … max):    6.962 s …  8.191 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 912.33044ms
	Processing time (w/o IO): 914.139268ms
	Processing time (w/o IO): 906.142149ms
	  Time (mean ± σ):      1.118 s ±  0.008 s    [User: 1.076 s, System: 0.040 s]
	  Range (min … max):    1.112 s …  1.123 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 337ms
	Processing time (w/o IO): 336ms
	Processing time (w/o IO): 338ms
	  Time (mean ± σ):     528.1 ms ±   1.7 ms    [User: 500.6 ms, System: 27.4 ms]
	  Range (min … max):   526.9 ms … 529.3 ms    2 runs
	 
Julia:

	Benchmark 1: julia --startup-file=no --project=Related -e "using Related; main()"
	Processing time (w/o IO): 501 milliseconds
	Processing time (w/o IO): 502 milliseconds
	Processing time (w/o IO): 501 milliseconds
	  Time (mean ± σ):      1.613 s ±  0.001 s    [User: 1.454 s, System: 0.260 s]
	  Range (min … max):    1.612 s …  1.614 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 54 milliseconds
	Processing time (w/o IO): 55 milliseconds
	Processing time (w/o IO): 53 milliseconds
	  Time (mean ± σ):      1.136 s ±  0.002 s    [User: 0.977 s, System: 0.263 s]
	  Range (min … max):    1.135 s …  1.138 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --startup-file=no --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 223 milliseconds
	Processing time (w/o IO): 224 milliseconds
	Processing time (w/o IO): 224 milliseconds
	  Time (mean ± σ):      1.319 s ±  0.005 s    [User: 1.814 s, System: 0.263 s]
	  Range (min … max):    1.316 s …  1.323 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  686.629566ms
	Processing time (w/o IO):  688.406191ms
	Processing time (w/o IO):  684.264834ms
	  Time (mean ± σ):      1.475 s ±  0.002 s    [User: 1.447 s, System: 0.025 s]
	  Range (min … max):    1.474 s …  1.476 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 741.345ms
	Processing time (w/o IO): 740.335ms
	Processing time (w/o IO): 740.684ms
	  Time (mean ± σ):     10.181 s ±  0.591 s    [User: 10.054 s, System: 0.123 s]
	  Range (min … max):    9.763 s … 10.599 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 2237ms
	Processing time (w/o IO): 2225ms
	Processing time (w/o IO): 2070ms
	  Time (mean ± σ):      2.805 s ±  0.105 s    [User: 2.991 s, System: 0.147 s]
	  Range (min … max):    2.731 s …  2.879 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 2005ms
	Processing time (w/o IO): 2005ms
	Processing time (w/o IO): 2006ms
	  Time (mean ± σ):      2.490 s ±  0.008 s    [User: 2.458 s, System: 0.055 s]
	  Range (min … max):    2.485 s …  2.496 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 732.7680587768555ms
	Processing time (w/o IO): 713.5080099105835ms
	Processing time (w/o IO): 716.2829637527466ms
	  Time (mean ± σ):      2.118 s ±  0.017 s    [User: 1.920 s, System: 0.165 s]
	  Range (min … max):    2.106 s …  2.130 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 394.496561ms
	Processing time (w/o IO): 393.650795ms
	Processing time (w/o IO): 392.615205ms
	  Time (mean ± σ):      1.817 s ±  0.003 s    [User: 2.784 s, System: 0.147 s]
	  Range (min … max):    1.815 s …  1.819 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 2620ms
	Processing time (w/o IO): 1642ms
	Processing time (w/o IO): 1729ms
	  Time (mean ± σ):      2.029 s ±  0.036 s    [User: 2.011 s, System: 0.096 s]
	  Range (min … max):    2.003 s …  2.055 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 1533ms
	Processing time (w/o IO): 1524ms
	Processing time (w/o IO): 1527ms
	  Time (mean ± σ):      1.676 s ±  0.007 s    [User: 1.676 s, System: 0.073 s]
	  Range (min … max):    1.672 s …  1.681 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 1813ms
	Processing time (w/o IO): 1802ms
	Processing time (w/o IO): 1816ms
	  Time (mean ± σ):      2.242 s ±  0.038 s    [User: 1.942 s, System: 0.076 s]
	  Range (min … max):    2.215 s …  2.268 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 852 ms
	Processing time (w/o IO): 852 ms
	Processing time (w/o IO): 852 ms
	  Time (mean ± σ):      1.803 s ±  0.001 s    [User: 1.761 s, System: 0.039 s]
	  Range (min … max):    1.803 s …  1.804 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 593 ms
	Processing time (w/o IO): 598 ms
	Processing time (w/o IO): 598 ms
	  Time (mean ± σ):     696.2 ms ±   0.1 ms    [User: 1643.5 ms, System: 37.5 ms]
	  Range (min … max):   696.1 ms … 696.2 ms    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 317.201ms
	Processing time (w/o IO): 317.651ms
	Processing time (w/o IO): 318.047ms
	  Time (mean ± σ):     433.7 ms ±   0.5 ms    [User: 396.0 ms, System: 37.6 ms]
	  Range (min … max):   433.3 ms … 434.0 ms    2 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 172.968ms
	Processing time (w/o IO): 172.714ms
	Processing time (w/o IO): 171.358ms
	  Time (mean ± σ):     281.1 ms ±   4.7 ms    [User: 749.1 ms, System: 31.5 ms]
	  Range (min … max):   277.8 ms … 284.5 ms    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 536ms
	Processing time (w/o IO): 529ms
	Processing time (w/o IO): 532ms
	  Time (mean ± σ):      3.317 s ±  0.005 s    [User: 3.355 s, System: 0.212 s]
	  Range (min … max):    3.314 s …  3.320 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 282ms
	Processing time (w/o IO): 275ms
	Processing time (w/o IO): 275ms
	  Time (mean ± σ):      2.678 s ±  0.021 s    [User: 4.296 s, System: 0.247 s]
	  Range (min … max):    2.663 s …  2.693 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 231ms
	Processing time (w/o IO): 231ms
	Processing time (w/o IO): 231ms
	  Time (mean ± σ):      3.130 s ±  0.001 s    [User: 4.455 s, System: 0.280 s]
	  Range (min … max):    3.129 s …  3.130 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 395ms
	Processing time (w/o IO): 389ms
	Processing time (w/o IO): 392ms
	  Time (mean ± σ):      3.486 s ±  0.000 s    [User: 3.439 s, System: 0.253 s]
	  Range (min … max):    3.486 s …  3.486 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 380.0865ms
	Processing time (w/o IO): 377.1947ms
	Processing time (w/o IO): 373.2503ms
	  Time (mean ± σ):      1.121 s ±  0.012 s    [User: 1.034 s, System: 0.082 s]
	  Range (min … max):    1.113 s …  1.130 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 372.9087ms
	Processing time (w/o IO): 375.0028ms
	Processing time (w/o IO): 371.926ms
	  Time (mean ± σ):     917.9 ms ±   4.4 ms    [User: 893.4 ms, System: 56.8 ms]
	  Range (min … max):   914.8 ms … 921.0 ms    2 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 124.025ms
	Processing time (w/o IO): 124.5455ms
	Processing time (w/o IO): 123.7379ms
	  Time (mean ± σ):     599.2 ms ±   5.5 ms    [User: 1212.4 ms, System: 66.1 ms]
	  Range (min … max):   595.3 ms … 603.1 ms    2 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 143.2126ms
	Processing time (w/o IO): 144.7292ms
	Processing time (w/o IO): 142.3909ms
	  Time (mean ± σ):     460.6 ms ±   7.4 ms    [User: 1245.2 ms, System: 65.9 ms]
	  Range (min … max):   455.4 ms … 465.9 ms    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	1485.5799674988	ms
	Processing time (w/o IO):	1480.0310134888	ms
	Processing time (w/o IO):	1167.1929359436	ms
	  Time (mean ± σ):      2.590 s ±  0.278 s    [User: 2.537 s, System: 0.051 s]
	  Range (min … max):    2.393 s …  2.787 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	16738.779067993	ms
	Processing time (w/o IO):	16843.276023865	ms
	  Time (abs ≡):        18.752 s               [User: 18.696 s, System: 0.051 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 2813ms
	Processing time (w/o IO): 2903ms
	Processing time (w/o IO): 2885ms
	  Time (mean ± σ):      3.316 s ±  0.018 s    [User: 3.146 s, System: 0.168 s]
	  Range (min … max):    3.303 s …  3.329 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 14.436985 s
	Processing time (w/o IO): 14.500175 s
	Processing time (w/o IO): 14.445184 s
	  Time (mean ± σ):     15.490 s ±  0.064 s    [User: 15.256 s, System: 0.279 s]
	  Range (min … max):   15.444 s … 15.535 s    2 runs
	 
Ruby:

	Benchmark 1: ruby related.rb
	Processing time (w/o IO): 47804ms
	Processing time (w/o IO): 47771ms
	Processing time (w/o IO): 49071ms
	  Time (mean ± σ):     48.729 s ±  0.923 s    [User: 48.652 s, System: 0.071 s]
	  Range (min … max):   48.076 s … 49.382 s    2 runs
	 
daScript:

	Benchmark 1: das related.das
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 2.867695131s
	Processing time (w/o IO): 2.86006094s
	Processing time (w/o IO): 2.857462877s
	  Time (mean ± σ):      3.362 s ±  0.007 s    [User: 3.397 s, System: 0.094 s]
	  Range (min … max):    3.357 s …  3.367 s    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1.423596159s
	Processing time (w/o IO): 1.413356302s
	Processing time (w/o IO): 1.433535385s
	  Time (mean ± σ):      1.918 s ±  0.028 s    [User: 6.121 s, System: 0.130 s]
	  Range (min … max):    1.898 s …  1.938 s    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 3.032578489s
	Processing time (w/o IO): 3.035740537s
	Processing time (w/o IO): 3.03539239s
	  Time (mean ± σ):      3.249 s ±  0.002 s    [User: 3.170 s, System: 0.071 s]
	  Range (min … max):    3.248 s …  3.251 s    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 1.516466773s
	Processing time (w/o IO): 1.517319388s
	Processing time (w/o IO): 1.514357783s
	  Time (mean ± σ):      1.728 s ±  0.009 s    [User: 3.162 s, System: 0.066 s]
	  Range (min … max):    1.721 s …  1.734 s    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 2709.19ms
	Processing time (w/o IO): 2695.98ms
	Processing time (w/o IO): 2698.94ms
	  Time (mean ± σ):      3.650 s ±  0.002 s    [User: 3.546 s, System: 0.105 s]
	  Range (min … max):    3.649 s …  3.651 s    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 972.077ms
	Processing time (w/o IO): 985.601ms
	Processing time (w/o IO): 984.233ms
	  Time (mean ± σ):      1.915 s ±  0.003 s    [User: 4.544 s, System: 0.118 s]
	  Range (min … max):    1.913 s …  1.916 s    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 4914 ms
	Processing time (w/o IO): 4912 ms
	Processing time (w/o IO): 4909 ms
	  Time (mean ± σ):      7.644 s ±  0.014 s    [User: 7.017 s, System: 0.364 s]
	  Range (min … max):    7.635 s …  7.654 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 1401 ms
	Processing time (w/o IO): 1407 ms
	Processing time (w/o IO): 1402 ms
	  Time (mean ± σ):      4.276 s ±  0.070 s    [User: 7.829 s, System: 0.367 s]
	  Range (min … max):    4.227 s …  4.326 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 215.235s
	Processing time (w/o IO): 215.065s
	  Time (abs ≡):        215.504 s               [User: 215.318 s, System: 0.155 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 8011.312013ms
	Processing time (w/o IO): 7967.577281ms
	Processing time (w/o IO): 8002.411424ms
	  Time (mean ± σ):      8.729 s ±  0.048 s    [User: 8.621 s, System: 0.102 s]
	  Range (min … max):    8.695 s …  8.763 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 2993ms
	Processing time (w/o IO): 2990ms
	Processing time (w/o IO): 2992ms
	  Time (mean ± σ):      3.603 s ±  0.004 s    [User: 3.516 s, System: 0.076 s]
	  Range (min … max):    3.599 s …  3.606 s    2 runs
	 
Julia:

	Benchmark 1: julia --startup-file=no --project=Related -e "using Related; main()"
	Processing time (w/o IO): 4252 milliseconds
	Processing time (w/o IO): 4228 milliseconds
	Processing time (w/o IO): 4240 milliseconds
	  Time (mean ± σ):      5.697 s ±  0.041 s    [User: 5.432 s, System: 0.361 s]
	  Range (min … max):    5.668 s …  5.726 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 140 milliseconds
	Processing time (w/o IO): 139 milliseconds
	Processing time (w/o IO): 135 milliseconds
	  Time (mean ± σ):      1.596 s ±  0.003 s    [User: 1.335 s, System: 0.356 s]
	  Range (min … max):    1.594 s …  1.598 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --startup-file=no --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 1915 milliseconds
	Processing time (w/o IO): 1915 milliseconds
	Processing time (w/o IO): 1907 milliseconds
	  Time (mean ± σ):      3.360 s ±  0.005 s    [User: 8.774 s, System: 0.348 s]
	  Range (min … max):    3.357 s …  3.364 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  6.083080906s
	Processing time (w/o IO):  6.090845751s
	Processing time (w/o IO):  6.0780876s
	  Time (mean ± σ):      8.462 s ±  0.014 s    [User: 8.366 s, System: 0.089 s]
	  Range (min … max):    8.451 s …  8.472 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 6.589s
	Processing time (w/o IO): 6.592s
	Processing time (w/o IO): 6.595s
	  Time (mean ± σ):     86.078 s ±  0.419 s    [User: 85.642 s, System: 0.419 s]
	  Range (min … max):   85.782 s … 86.375 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 19645ms
	Processing time (w/o IO): 19650ms
	Processing time (w/o IO): 17828ms
	  Time (mean ± σ):     20.266 s ±  1.296 s    [User: 20.490 s, System: 0.235 s]
	  Range (min … max):   19.349 s … 21.182 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 17898ms
	Processing time (w/o IO): 17822ms
	Processing time (w/o IO): 17831ms
	  Time (mean ± σ):     19.345 s ±  0.016 s    [User: 19.341 s, System: 0.137 s]
	  Range (min … max):   19.334 s … 19.356 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 6229.2420864105225ms
	Processing time (w/o IO): 6211.288928985596ms
	Processing time (w/o IO): 6187.211036682129ms
	  Time (mean ± σ):     10.475 s ±  0.034 s    [User: 10.008 s, System: 0.323 s]
	  Range (min … max):   10.452 s … 10.499 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 3419.133656ms
	Processing time (w/o IO): 3459.017667ms
	Processing time (w/o IO): 3463.008835ms
	  Time (mean ± σ):      7.793 s ±  0.002 s    [User: 17.492 s, System: 0.381 s]
	  Range (min … max):    7.792 s …  7.794 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 24096ms
	Processing time (w/o IO): 18552ms
	Processing time (w/o IO): 18695ms
	  Time (mean ± σ):     19.450 s ±  0.088 s    [User: 19.445 s, System: 0.195 s]
	  Range (min … max):   19.387 s … 19.512 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 15354ms
	Processing time (w/o IO): 13183ms
	Processing time (w/o IO): 13235ms
	  Time (mean ± σ):     13.711 s ±  0.030 s    [User: 13.673 s, System: 0.183 s]
	  Range (min … max):   13.689 s … 13.732 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 17895ms
	Processing time (w/o IO): 15881ms
	Processing time (w/o IO): 17873ms
	  Time (mean ± σ):     17.364 s ±  1.401 s    [User: 17.357 s, System: 0.184 s]
	  Range (min … max):   16.373 s … 18.354 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 7516 ms
	Processing time (w/o IO): 7511 ms
	Processing time (w/o IO): 7509 ms
	  Time (mean ± σ):     15.478 s ±  0.002 s    [User: 15.370 s, System: 0.101 s]
	  Range (min … max):   15.477 s … 15.480 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 4115 ms
	Processing time (w/o IO): 4121 ms
	Processing time (w/o IO): 4117 ms
	  Time (mean ± σ):      4.495 s ±  0.005 s    [User: 11.045 s, System: 0.121 s]
	  Range (min … max):    4.492 s …  4.498 s    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 2844.305ms
	Processing time (w/o IO): 2841.094ms
	Processing time (w/o IO): 2841.587ms
	  Time (mean ± σ):      3.246 s ±  0.004 s    [User: 3.154 s, System: 0.081 s]
	  Range (min … max):    3.243 s …  3.248 s    2 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 1475.029ms
	Processing time (w/o IO): 1477.809ms
	Processing time (w/o IO): 1474.034ms
	  Time (mean ± σ):      1.857 s ±  0.007 s    [User: 6.145 s, System: 0.091 s]
	  Range (min … max):    1.852 s …  1.861 s    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 4045ms
	Processing time (w/o IO): 4042ms
	Processing time (w/o IO): 4044ms
	  Time (mean ± σ):     13.434 s ±  0.099 s    [User: 14.583 s, System: 0.502 s]
	  Range (min … max):   13.364 s … 13.505 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 2502ms
	Processing time (w/o IO): 2507ms
	Processing time (w/o IO): 2401ms
	  Time (mean ± σ):     10.168 s ±  0.181 s    [User: 25.746 s, System: 0.572 s]
	  Range (min … max):   10.040 s … 10.296 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 2029ms
	Processing time (w/o IO): 2027ms
	Processing time (w/o IO): 2027ms
	  Time (mean ± σ):     12.186 s ±  0.045 s    [User: 25.555 s, System: 0.549 s]
	  Range (min … max):   12.155 s … 12.218 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 3417ms
	Processing time (w/o IO): 3423ms
	Processing time (w/o IO): 3422ms
	  Time (mean ± σ):     15.139 s ±  0.072 s    [User: 16.365 s, System: 0.599 s]
	  Range (min … max):   15.088 s … 15.189 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 3256.0476ms
	Processing time (w/o IO): 3251.8059ms
	Processing time (w/o IO): 3274.3941ms
	  Time (mean ± σ):      7.396 s ±  0.023 s    [User: 7.362 s, System: 0.168 s]
	  Range (min … max):    7.380 s …  7.412 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 3244.2148ms
	Processing time (w/o IO): 3253.7156ms
	Processing time (w/o IO): 3267.489ms
	  Time (mean ± σ):      7.047 s ±  0.032 s    [User: 7.027 s, System: 0.158 s]
	  Range (min … max):    7.024 s …  7.069 s    2 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 1013.1621ms
	Processing time (w/o IO): 1011.5595ms
	Processing time (w/o IO): 1017.9603ms
	  Time (mean ± σ):      2.909 s ±  0.005 s    [User: 8.670 s, System: 0.160 s]
	  Range (min … max):    2.905 s …  2.913 s    2 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 1193.6508ms
	Processing time (w/o IO): 1189.327ms
	Processing time (w/o IO): 1189.4738ms
	  Time (mean ± σ):      2.913 s ±  0.008 s    [User: 9.786 s, System: 0.185 s]
	  Range (min … max):    2.907 s …  2.918 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	9784.6970558167	ms
	Processing time (w/o IO):	13147.366046906	ms
	Processing time (w/o IO):	13139.05787468	ms
	  Time (mean ± σ):     17.628 s ±  0.032 s    [User: 17.417 s, System: 0.201 s]
	  Range (min … max):   17.605 s … 17.651 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	150181.91194534	ms
	Processing time (w/o IO):	149818.02487373	ms
	  Time (abs ≡):        156.264 s               [User: 156.018 s, System: 0.232 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 33211ms
	Processing time (w/o IO): 32136ms
	Processing time (w/o IO): 32667ms
	  Time (mean ± σ):     33.961 s ±  0.347 s    [User: 33.299 s, System: 0.651 s]
	  Range (min … max):   33.715 s … 34.206 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 132.094127 s
	Processing time (w/o IO): 135.836390 s
	Processing time (w/o IO): 131.697059 s
	  Time (mean ± σ):     136.763 s ±  2.846 s    [User: 135.983 s, System: 0.830 s]
	  Range (min … max):   134.750 s … 138.775 s    2 runs
	 
Ruby:

	Benchmark 1: ruby related.rb
	Processing time (w/o IO): 426566ms
	Processing time (w/o IO): 428784ms
	Processing time (w/o IO): 430207ms
	  Time (mean ± σ):     430.295 s ±  1.031 s    [User: 430.134 s, System: 0.126 s]
	  Range (min … max):   429.566 s … 431.025 s    2 runs
	 
daScript:

	Benchmark 1: das related.das
