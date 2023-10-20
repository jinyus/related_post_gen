Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 24.282013ms
	Processing time (w/o IO): 24.484717ms
	Processing time (w/o IO): 24.838622ms
	Processing time (w/o IO): 24.167611ms
	Processing time (w/o IO): 24.544718ms
	Processing time (w/o IO): 24.166511ms
	Processing time (w/o IO): 24.244213ms
	Processing time (w/o IO): 24.053909ms
	Processing time (w/o IO): 24.177511ms
	Processing time (w/o IO): 24.402815ms
	Processing time (w/o IO): 24.199912ms
	Processing time (w/o IO): 24.369514ms
	Processing time (w/o IO): 24.599619ms
	  Time (mean ± σ):      64.1 ms ±   1.8 ms    [User: 60.5 ms, System: 10.9 ms]
	  Range (min … max):    61.5 ms …  67.5 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 13.367928ms
	Processing time (w/o IO): 12.400912ms
	Processing time (w/o IO): 13.852036ms
	Processing time (w/o IO): 11.7138ms
	Processing time (w/o IO): 11.865403ms
	Processing time (w/o IO): 11.7228ms
	Processing time (w/o IO): 13.787735ms
	Processing time (w/o IO): 11.636398ms
	Processing time (w/o IO): 11.779001ms
	Processing time (w/o IO): 13.641533ms
	Processing time (w/o IO): 11.831202ms
	Processing time (w/o IO): 11.7685ms
	Processing time (w/o IO): 11.653899ms
	  Time (mean ± σ):      52.0 ms ±   1.6 ms    [User: 79.1 ms, System: 12.4 ms]
	  Range (min … max):    49.4 ms …  54.3 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 23.605993ms
	Processing time (w/o IO): 23.40639ms
	Processing time (w/o IO): 23.873197ms
	Processing time (w/o IO): 23.459091ms
	Processing time (w/o IO): 24.374806ms
	Processing time (w/o IO): 24.171802ms
	Processing time (w/o IO): 24.098301ms
	Processing time (w/o IO): 23.402889ms
	Processing time (w/o IO): 23.354089ms
	Processing time (w/o IO): 23.41819ms
	Processing time (w/o IO): 23.43579ms
	Processing time (w/o IO): 23.41619ms
	Processing time (w/o IO): 23.506991ms
	  Time (mean ± σ):      38.9 ms ±   1.2 ms    [User: 30.5 ms, System: 8.3 ms]
	  Range (min … max):    37.7 ms …  41.5 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 13.051119ms
	Processing time (w/o IO): 12.196504ms
	Processing time (w/o IO): 12.193104ms
	Processing time (w/o IO): 12.137204ms
	Processing time (w/o IO): 12.249904ms
	Processing time (w/o IO): 12.193104ms
	Processing time (w/o IO): 12.222605ms
	Processing time (w/o IO): 12.269805ms
	Processing time (w/o IO): 12.143103ms
	Processing time (w/o IO): 12.347506ms
	Processing time (w/o IO): 12.271405ms
	Processing time (w/o IO): 12.189504ms
	Processing time (w/o IO): 12.216004ms
	  Time (mean ± σ):      30.0 ms ±   0.4 ms    [User: 32.1 ms, System: 9.8 ms]
	  Range (min … max):    29.4 ms …  30.5 ms    10 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 25.03ms
	Processing time (w/o IO): 25.358ms
	Processing time (w/o IO): 26.42ms
	Processing time (w/o IO): 25.119ms
	Processing time (w/o IO): 25.087ms
	Processing time (w/o IO): 24.743ms
	Processing time (w/o IO): 25.313ms
	Processing time (w/o IO): 25.117ms
	Processing time (w/o IO): 24.749ms
	Processing time (w/o IO): 25.15ms
	Processing time (w/o IO): 25.148ms
	Processing time (w/o IO): 25.059ms
	Processing time (w/o IO): 24.985ms
	  Time (mean ± σ):     105.7 ms ±   1.0 ms    [User: 98.5 ms, System: 8.7 ms]
	  Range (min … max):   104.1 ms … 107.6 ms    10 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 13.191ms
	Processing time (w/o IO): 13.041ms
	Processing time (w/o IO): 13.084ms
	Processing time (w/o IO): 12.305ms
	Processing time (w/o IO): 12.65ms
	Processing time (w/o IO): 12.342ms
	Processing time (w/o IO): 13.653ms
	Processing time (w/o IO): 13.287ms
	Processing time (w/o IO): 12.939ms
	Processing time (w/o IO): 13.64ms
	Processing time (w/o IO): 13.115ms
	Processing time (w/o IO): 13.541ms
	Processing time (w/o IO): 12.797ms
	  Time (mean ± σ):      91.1 ms ±   0.7 ms    [User: 107.0 ms, System: 8.1 ms]
	  Range (min … max):    90.2 ms …  92.5 ms    10 runs
	 
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
	  Time (mean ± σ):     231.0 ms ±   1.6 ms    [User: 195.1 ms, System: 35.8 ms]
	  Range (min … max):   227.9 ms … 233.7 ms    10 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 18 ms
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 18 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 22 ms
	Processing time (w/o IO): 18 ms
	Processing time (w/o IO): 19 ms
	Processing time (w/o IO): 18 ms
	Processing time (w/o IO): 19 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 19 ms
	Processing time (w/o IO): 20 ms
	  Time (mean ± σ):     239.6 ms ±   3.1 ms    [User: 245.3 ms, System: 38.8 ms]
	  Range (min … max):   234.6 ms … 244.0 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 1.495s
	Processing time (w/o IO): 1.474s
	Processing time (w/o IO): 1.472s
	Processing time (w/o IO): 1.459s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.455s
	Processing time (w/o IO): 1.485s
	Processing time (w/o IO): 1.462s
	Processing time (w/o IO): 1.474s
	Processing time (w/o IO): 1.459s
	Processing time (w/o IO): 1.475s
	Processing time (w/o IO): 1.464s
	  Time (mean ± σ):      1.532 s ±  0.009 s    [User: 1.514 s, System: 0.018 s]
	  Range (min … max):    1.522 s …  1.552 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 352.4ms
	Processing time (w/o IO): 353.1ms
	Processing time (w/o IO): 351.8ms
	Processing time (w/o IO): 355.0ms
	Processing time (w/o IO): 351.7ms
	Processing time (w/o IO): 359.7ms
	Processing time (w/o IO): 351.2ms
	Processing time (w/o IO): 357.0ms
	Processing time (w/o IO): 351.2ms
	Processing time (w/o IO): 350.2ms
	Processing time (w/o IO): 352.6ms
	Processing time (w/o IO): 352.7ms
	Processing time (w/o IO): 353.3ms
	  Time (mean ± σ):     647.2 ms ±  16.1 ms    [User: 820.0 ms, System: 428.6 ms]
	  Range (min … max):   632.4 ms … 681.1 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 60.529872ms
	Processing time (w/o IO): 60.327569ms
	Processing time (w/o IO): 60.744876ms
	Processing time (w/o IO): 60.560673ms
	Processing time (w/o IO): 60.851378ms
	Processing time (w/o IO): 60.382169ms
	Processing time (w/o IO): 60.97808ms
	Processing time (w/o IO): 61.02308ms
	Processing time (w/o IO): 60.327369ms
	Processing time (w/o IO): 60.155966ms
	Processing time (w/o IO): 61.03668ms
	Processing time (w/o IO): 60.543873ms
	Processing time (w/o IO): 60.479071ms
	  Time (mean ± σ):     111.3 ms ±   1.4 ms    [User: 98.9 ms, System: 12.4 ms]
	  Range (min … max):   109.0 ms … 113.3 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 29ms
	  Time (mean ± σ):      75.2 ms ±   1.1 ms    [User: 70.6 ms, System: 4.7 ms]
	  Range (min … max):    74.4 ms …  78.2 ms    10 runs
	 
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
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	  Time (mean ± σ):     477.7 ms ±  16.7 ms    [User: 385.8 ms, System: 195.4 ms]
	  Range (min … max):   456.8 ms … 495.4 ms    10 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
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
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 8 milliseconds
	  Time (mean ± σ):      1.019 s ±  0.014 s    [User: 0.878 s, System: 0.244 s]
	  Range (min … max):    1.000 s …  1.042 s    10 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 16 milliseconds
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
	Processing time (w/o IO): 15 milliseconds
	Processing time (w/o IO): 18 milliseconds
	  Time (mean ± σ):     478.3 ms ±  11.9 ms    [User: 410.0 ms, System: 218.6 ms]
	  Range (min … max):   456.8 ms … 492.8 ms    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  47.290551ms
	Processing time (w/o IO):  47.26495ms
	Processing time (w/o IO):  47.487054ms
	Processing time (w/o IO):  47.179948ms
	Processing time (w/o IO):  48.353768ms
	Processing time (w/o IO):  47.645756ms
	Processing time (w/o IO):  47.244049ms
	Processing time (w/o IO):  47.21145ms
	Processing time (w/o IO):  47.26355ms
	Processing time (w/o IO):  47.657056ms
	Processing time (w/o IO):  47.376351ms
	Processing time (w/o IO):  47.350951ms
	Processing time (w/o IO):  47.935335ms
	  Time (mean ± σ):     265.0 ms ±   0.8 ms    [User: 253.9 ms, System: 11.0 ms]
	  Range (min … max):   263.7 ms … 266.1 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 49.057ms
	Processing time (w/o IO): 48.650ms
	Processing time (w/o IO): 49.165ms
	Processing time (w/o IO): 49.237ms
	Processing time (w/o IO): 49.574ms
	Processing time (w/o IO): 48.999ms
	Processing time (w/o IO): 49.653ms
	Processing time (w/o IO): 49.489ms
	Processing time (w/o IO): 49.084ms
	Processing time (w/o IO): 49.621ms
	Processing time (w/o IO): 48.977ms
	Processing time (w/o IO): 48.412ms
	Processing time (w/o IO): 49.545ms
	  Time (mean ± σ):     374.0 ms ±   2.1 ms    [User: 346.2 ms, System: 27.7 ms]
	  Range (min … max):   371.8 ms … 377.6 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 176ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 176ms
	Processing time (w/o IO): 176ms
	  Time (mean ± σ):     552.9 ms ±  12.2 ms    [User: 657.9 ms, System: 116.4 ms]
	  Range (min … max):   534.9 ms … 576.0 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 129ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	  Time (mean ± σ):     256.1 ms ±   0.9 ms    [User: 240.6 ms, System: 19.4 ms]
	  Range (min … max):   254.3 ms … 257.4 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 51.886916160583496ms
	Processing time (w/o IO): 51.095008850097656ms
	Processing time (w/o IO): 51.354050636291504ms
	Processing time (w/o IO): 51.434993743896484ms
	Processing time (w/o IO): 50.83608627319336ms
	Processing time (w/o IO): 50.92000961303711ms
	Processing time (w/o IO): 51.02705955505371ms
	Processing time (w/o IO): 51.185011863708496ms
	Processing time (w/o IO): 51.80501937866211ms
	Processing time (w/o IO): 51.910996437072754ms
	Processing time (w/o IO): 52.26099491119385ms
	Processing time (w/o IO): 52.17301845550537ms
	Processing time (w/o IO): 52.253007888793945ms
	  Time (mean ± σ):     411.2 ms ±   6.2 ms    [User: 355.3 ms, System: 38.2 ms]
	  Range (min … max):   402.0 ms … 423.8 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 32.531619ms
	Processing time (w/o IO): 31.672805ms
	Processing time (w/o IO): 30.991094ms
	Processing time (w/o IO): 31.155897ms
	Processing time (w/o IO): 31.846408ms
	Processing time (w/o IO): 31.991411ms
	Processing time (w/o IO): 31.707906ms
	Processing time (w/o IO): 32.050911ms
	Processing time (w/o IO): 32.023511ms
	Processing time (w/o IO): 31.95241ms
	Processing time (w/o IO): 31.89941ms
	Processing time (w/o IO): 31.425302ms
	Processing time (w/o IO): 36.539883ms
	  Time (mean ± σ):     413.0 ms ±  48.6 ms    [User: 424.6 ms, System: 42.6 ms]
	  Range (min … max):   388.7 ms … 549.9 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 128ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 128ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 134ms
	Processing time (w/o IO): 128ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 132ms
	  Time (mean ± σ):     308.0 ms ±   4.5 ms    [User: 299.6 ms, System: 62.7 ms]
	  Range (min … max):   304.1 ms … 318.9 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 120ms
	Processing time (w/o IO): 119ms
	Processing time (w/o IO): 120ms
	Processing time (w/o IO): 118ms
	Processing time (w/o IO): 123ms
	Processing time (w/o IO): 119ms
	Processing time (w/o IO): 123ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 117ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 99ms
	  Time (mean ± σ):     175.6 ms ±   8.1 ms    [User: 194.2 ms, System: 36.1 ms]
	  Range (min … max):   155.9 ms … 187.4 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 198ms
	Processing time (w/o IO): 197ms
	Processing time (w/o IO): 199ms
	Processing time (w/o IO): 193ms
	Processing time (w/o IO): 200ms
	Processing time (w/o IO): 201ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 136ms
	Processing time (w/o IO): 136ms
	Processing time (w/o IO): 200ms
	  Time (mean ± σ):     249.8 ms ±  30.0 ms    [User: 242.6 ms, System: 33.1 ms]
	  Range (min … max):   206.2 ms … 272.6 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 59 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 55 ms
	  Time (mean ± σ):     399.0 ms ±  12.1 ms    [User: 694.7 ms, System: 58.7 ms]
	  Range (min … max):   380.0 ms … 422.6 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	  Time (mean ± σ):     144.3 ms ±   0.6 ms    [User: 132.6 ms, System: 11.8 ms]
	  Range (min … max):   143.6 ms … 145.3 ms    10 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 38 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 40 ms
	  Time (mean ± σ):      68.8 ms ±   1.6 ms    [User: 118.8 ms, System: 9.5 ms]
	  Range (min … max):    65.7 ms …  71.4 ms    10 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 25.421ms
	Processing time (w/o IO): 25.067ms
	Processing time (w/o IO): 25.09ms
	Processing time (w/o IO): 25.212ms
	Processing time (w/o IO): 24.999ms
	Processing time (w/o IO): 25.197ms
	Processing time (w/o IO): 25.071ms
	Processing time (w/o IO): 25.261ms
	Processing time (w/o IO): 25.083ms
	Processing time (w/o IO): 25.252ms
	Processing time (w/o IO): 25.304ms
	Processing time (w/o IO): 25.072ms
	Processing time (w/o IO): 25.029ms
	  Time (mean ± σ):      51.0 ms ±   1.1 ms    [User: 36.3 ms, System: 14.7 ms]
	  Range (min … max):    50.2 ms …  53.8 ms    10 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	  Time (mean ± σ):      1.029 s ±  0.007 s    [User: 1.138 s, System: 0.097 s]
	  Range (min … max):    1.014 s …  1.036 s    10 runs
	 
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
	  Time (mean ± σ):     931.5 ms ±  13.0 ms    [User: 1112.2 ms, System: 96.5 ms]
	  Range (min … max):   911.5 ms … 950.2 ms    10 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
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
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 16ms
	  Time (mean ± σ):     721.3 ms ±   3.9 ms    [User: 790.6 ms, System: 90.9 ms]
	  Range (min … max):   714.4 ms … 729.7 ms    10 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	  Time (mean ± σ):     746.1 ms ±   7.8 ms    [User: 724.0 ms, System: 81.6 ms]
	  Range (min … max):   740.1 ms … 763.8 ms    10 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 27.1035ms
	Processing time (w/o IO): 28.8318ms
	Processing time (w/o IO): 27.0301ms
	Processing time (w/o IO): 27.1636ms
	Processing time (w/o IO): 27.4687ms
	Processing time (w/o IO): 27.0503ms
	Processing time (w/o IO): 27.0277ms
	Processing time (w/o IO): 29.5324ms
	Processing time (w/o IO): 27.3358ms
	Processing time (w/o IO): 27.1894ms
	Processing time (w/o IO): 27.4612ms
	Processing time (w/o IO): 27.0479ms
	Processing time (w/o IO): 27.266ms
	  Time (mean ± σ):     210.9 ms ±   7.0 ms    [User: 168.2 ms, System: 34.6 ms]
	  Range (min … max):   200.8 ms … 228.2 ms    10 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 26.2991ms
	Processing time (w/o IO): 26.3214ms
	Processing time (w/o IO): 26.5035ms
	Processing time (w/o IO): 26.6278ms
	Processing time (w/o IO): 26.5645ms
	Processing time (w/o IO): 26.3392ms
	Processing time (w/o IO): 26.7855ms
	Processing time (w/o IO): 26.9325ms
	Processing time (w/o IO): 26.972ms
	Processing time (w/o IO): 26.2232ms
	Processing time (w/o IO): 28.0272ms
	Processing time (w/o IO): 26.3974ms
	Processing time (w/o IO): 26.6281ms
	  Time (mean ± σ):     102.3 ms ±   0.7 ms    [User: 94.9 ms, System: 24.4 ms]
	  Range (min … max):   101.2 ms … 103.3 ms    10 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 14.4348ms
	Processing time (w/o IO): 15.8902ms
	Processing time (w/o IO): 14.5498ms
	Processing time (w/o IO): 13.3401ms
	Processing time (w/o IO): 14.3736ms
	Processing time (w/o IO): 11.0355ms
	Processing time (w/o IO): 15.0523ms
	Processing time (w/o IO): 13.6287ms
	Processing time (w/o IO): 14.2676ms
	Processing time (w/o IO): 13.7995ms
	Processing time (w/o IO): 13.908ms
	Processing time (w/o IO): 13.5008ms
	Processing time (w/o IO): 16.0984ms
	  Time (mean ± σ):     202.8 ms ±   7.7 ms    [User: 209.8 ms, System: 34.6 ms]
	  Range (min … max):   194.5 ms … 220.0 ms    10 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 10.9383ms
	Processing time (w/o IO): 10.7085ms
	Processing time (w/o IO): 11.0279ms
	Processing time (w/o IO): 10.8353ms
	Processing time (w/o IO): 11.3608ms
	Processing time (w/o IO): 11.0483ms
	Processing time (w/o IO): 10.7964ms
	Processing time (w/o IO): 11.0059ms
	Processing time (w/o IO): 10.7835ms
	Processing time (w/o IO): 10.8321ms
	Processing time (w/o IO): 11.5708ms
	Processing time (w/o IO): 10.6534ms
	Processing time (w/o IO): 11.4453ms
	  Time (mean ± σ):      73.7 ms ±   1.4 ms    [User: 125.6 ms, System: 26.5 ms]
	  Range (min … max):    71.3 ms …  75.9 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	105.04007339478	ms
	Processing time (w/o IO):	89.223861694336	ms
	Processing time (w/o IO):	112.94507980347	ms
	Processing time (w/o IO):	112.17188835144	ms
	Processing time (w/o IO):	89.234113693237	ms
	Processing time (w/o IO):	104.73680496216	ms
	Processing time (w/o IO):	88.433027267456	ms
	Processing time (w/o IO):	111.95087432861	ms
	Processing time (w/o IO):	117.71702766418	ms
	Processing time (w/o IO):	116.94002151489	ms
	Processing time (w/o IO):	111.42206192017	ms
	Processing time (w/o IO):	114.15410041809	ms
	Processing time (w/o IO):	87.286949157715	ms
	  Time (mean ± σ):     354.1 ms ±  20.0 ms    [User: 335.6 ms, System: 18.5 ms]
	  Range (min … max):   326.5 ms … 382.8 ms    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1092.8289890289	ms
	Processing time (w/o IO):	1093.6141014099	ms
	Processing time (w/o IO):	1092.679977417	ms
	Processing time (w/o IO):	1107.3930263519	ms
	Processing time (w/o IO):	1093.2381153107	ms
	Processing time (w/o IO):	1094.3820476532	ms
	Processing time (w/o IO):	1092.1461582184	ms
	Processing time (w/o IO):	1096.1399078369	ms
	Processing time (w/o IO):	1092.5948619843	ms
	Processing time (w/o IO):	1093.5950279236	ms
	Processing time (w/o IO):	1092.5831794739	ms
	Processing time (w/o IO):	1089.3230438232	ms
	Processing time (w/o IO):	1092.6151275635	ms
	  Time (mean ± σ):      1.523 s ±  0.007 s    [User: 1.508 s, System: 0.014 s]
	  Range (min … max):    1.514 s …  1.540 s    10 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 145ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 146ms
	Processing time (w/o IO): 144ms
	Processing time (w/o IO): 144ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 149ms
	Processing time (w/o IO): 149ms
	Processing time (w/o IO): 151ms
	Processing time (w/o IO): 153ms
	Processing time (w/o IO): 146ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 145ms
	  Time (mean ± σ):     239.8 ms ±  12.1 ms    [User: 210.5 ms, System: 25.9 ms]
	  Range (min … max):   231.1 ms … 270.7 ms    10 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 1.170652 s
	Processing time (w/o IO): 1.175377 s
	Processing time (w/o IO): 1.175720 s
	Processing time (w/o IO): 1.174802 s
	Processing time (w/o IO): 1.168262 s
	Processing time (w/o IO): 1.177347 s
	Processing time (w/o IO): 1.176507 s
	Processing time (w/o IO): 1.171319 s
	Processing time (w/o IO): 1.172157 s
	Processing time (w/o IO): 1.173060 s
	Processing time (w/o IO): 1.181113 s
	Processing time (w/o IO): 1.183255 s
	Processing time (w/o IO): 1.178571 s
	  Time (mean ± σ):      1.527 s ±  0.009 s    [User: 1.544 s, System: 0.103 s]
	  Range (min … max):    1.516 s …  1.539 s    10 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 371.356747ms
	Processing time (w/o IO): 373.048778ms
	Processing time (w/o IO): 371.974658ms
	  Time (mean ± σ):     520.2 ms ±   1.1 ms    [User: 514.7 ms, System: 31.4 ms]
	  Range (min … max):   519.4 ms … 521.0 ms    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 168.451861ms
	Processing time (w/o IO): 164.446588ms
	Processing time (w/o IO): 165.533607ms
	  Time (mean ± σ):     314.4 ms ±   2.4 ms    [User: 784.8 ms, System: 40.9 ms]
	  Range (min … max):   312.7 ms … 316.1 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 341.096797ms
	Processing time (w/o IO): 340.668669ms
	Processing time (w/o IO): 341.066764ms
	  Time (mean ± σ):     403.4 ms ±   0.9 ms    [User: 377.8 ms, System: 25.5 ms]
	  Range (min … max):   402.8 ms … 404.0 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 173.931116ms
	Processing time (w/o IO): 174.38172ms
	Processing time (w/o IO): 173.760514ms
	  Time (mean ± σ):     236.7 ms ±   1.3 ms    [User: 376.3 ms, System: 31.6 ms]
	  Range (min … max):   235.8 ms … 237.6 ms    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 323.385ms
	Processing time (w/o IO): 315.524ms
	Processing time (w/o IO): 315.946ms
	  Time (mean ± σ):     613.3 ms ±   2.4 ms    [User: 594.5 ms, System: 23.1 ms]
	  Range (min … max):   611.7 ms … 615.0 ms    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 124.471ms
	Processing time (w/o IO): 124.606ms
	Processing time (w/o IO): 125.633ms
	  Time (mean ± σ):     430.5 ms ±   0.7 ms    [User: 726.8 ms, System: 29.4 ms]
	  Range (min … max):   430.1 ms … 431.0 ms    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 336 ms
	Processing time (w/o IO): 340 ms
	Processing time (w/o IO): 339 ms
	  Time (mean ± σ):      1.174 s ±  0.001 s    [User: 1.062 s, System: 0.107 s]
	  Range (min … max):    1.173 s …  1.175 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 221 ms
	Processing time (w/o IO): 220 ms
	Processing time (w/o IO): 221 ms
	  Time (mean ± σ):      1.088 s ±  0.002 s    [User: 1.604 s, System: 0.118 s]
	  Range (min … max):    1.087 s …  1.090 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 23.319s
	Processing time (w/o IO): 23.582s
	  Time (abs ≡):        23.745 s               [User: 23.662 s, System: 0.075 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 6.757s
	Processing time (w/o IO): 7.655s
	Processing time (w/o IO): 7.805s
	  Time (mean ± σ):      8.259 s ±  0.100 s    [User: 5.218 s, System: 3.638 s]
	  Range (min … max):    8.188 s …  8.329 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 921.860919ms
	Processing time (w/o IO): 919.283318ms
	Processing time (w/o IO): 920.362058ms
	  Time (mean ± σ):      1.132 s ±  0.005 s    [User: 1.104 s, System: 0.027 s]
	  Range (min … max):    1.128 s …  1.135 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 429ms
	Processing time (w/o IO): 431ms
	Processing time (w/o IO): 429ms
	  Time (mean ± σ):     620.0 ms ±   3.1 ms    [User: 588.2 ms, System: 31.6 ms]
	  Range (min … max):   617.8 ms … 622.1 ms    2 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 480 milliseconds
	Processing time (w/o IO): 480 milliseconds
	Processing time (w/o IO): 479 milliseconds
	  Time (mean ± σ):      1.169 s ±  0.009 s    [User: 1.039 s, System: 0.233 s]
	  Range (min … max):    1.162 s …  1.176 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 60 milliseconds
	Processing time (w/o IO): 58 milliseconds
	Processing time (w/o IO): 52 milliseconds
	  Time (mean ± σ):      1.185 s ±  0.011 s    [User: 1.027 s, System: 0.262 s]
	  Range (min … max):    1.177 s …  1.193 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 223 milliseconds
	Processing time (w/o IO): 222 milliseconds
	Processing time (w/o IO): 221 milliseconds
	  Time (mean ± σ):     898.0 ms ±  32.9 ms    [User: 1403.1 ms, System: 249.6 ms]
	  Range (min … max):   874.8 ms … 921.3 ms    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  578.149538ms
	Processing time (w/o IO):  575.511793ms
	Processing time (w/o IO):  575.702209ms
	  Time (mean ± σ):      1.380 s ±  0.002 s    [User: 1.355 s, System: 0.023 s]
	  Range (min … max):    1.378 s …  1.381 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 741.590ms
	Processing time (w/o IO): 740.140ms
	Processing time (w/o IO): 742.494ms
	  Time (mean ± σ):     10.193 s ±  0.119 s    [User: 10.066 s, System: 0.123 s]
	  Range (min … max):   10.109 s … 10.278 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 2225ms
	Processing time (w/o IO): 2224ms
	Processing time (w/o IO): 2241ms
	  Time (mean ± σ):      2.920 s ±  0.008 s    [User: 3.112 s, System: 0.165 s]
	  Range (min … max):    2.915 s …  2.926 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 2004ms
	Processing time (w/o IO): 2006ms
	Processing time (w/o IO): 2009ms
	  Time (mean ± σ):      2.492 s ±  0.003 s    [User: 2.435 s, System: 0.078 s]
	  Range (min … max):    2.490 s …  2.494 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 714.6691083908081ms
	Processing time (w/o IO): 717.2360420227051ms
	Processing time (w/o IO): 718.5189723968506ms
	  Time (mean ± σ):      2.135 s ±  0.011 s    [User: 1.948 s, System: 0.142 s]
	  Range (min … max):    2.127 s …  2.143 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 393.416481ms
	Processing time (w/o IO): 394.722438ms
	Processing time (w/o IO): 394.14025ms
	  Time (mean ± σ):      1.840 s ±  0.001 s    [User: 2.792 s, System: 0.158 s]
	  Range (min … max):    1.839 s …  1.841 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 2488ms
	Processing time (w/o IO): 2476ms
	Processing time (w/o IO): 2627ms
	  Time (mean ± σ):      2.890 s ±  0.114 s    [User: 2.906 s, System: 0.097 s]
	  Range (min … max):    2.810 s …  2.971 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 1220ms
	Processing time (w/o IO): 1531ms
	Processing time (w/o IO): 1413ms
	  Time (mean ± σ):      1.652 s ±  0.089 s    [User: 1.630 s, System: 0.095 s]
	  Range (min … max):    1.589 s …  1.715 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 2469ms
	Processing time (w/o IO): 1804ms
	Processing time (w/o IO): 1810ms
	  Time (mean ± σ):      2.069 s ±  0.102 s    [User: 1.935 s, System: 0.075 s]
	  Range (min … max):    1.997 s …  2.141 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 743 ms
	Processing time (w/o IO): 744 ms
	Processing time (w/o IO): 743 ms
	  Time (mean ± σ):      1.588 s ±  0.001 s    [User: 1.558 s, System: 0.027 s]
	  Range (min … max):    1.587 s …  1.589 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 464 ms
	Processing time (w/o IO): 464 ms
	Processing time (w/o IO): 464 ms
	  Time (mean ± σ):     561.8 ms ±   0.4 ms    [User: 1293.6 ms, System: 35.5 ms]
	  Range (min … max):   561.5 ms … 562.1 ms    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 352.909ms
	Processing time (w/o IO): 352.761ms
	Processing time (w/o IO): 353.836ms
	  Time (mean ± σ):     452.8 ms ±   0.1 ms    [User: 421.2 ms, System: 31.5 ms]
	  Range (min … max):   452.7 ms … 452.8 ms    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 527ms
	Processing time (w/o IO): 528ms
	Processing time (w/o IO): 531ms
	  Time (mean ± σ):      3.285 s ±  0.015 s    [User: 3.290 s, System: 0.264 s]
	  Range (min … max):    3.275 s …  3.296 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 279ms
	Processing time (w/o IO): 289ms
	Processing time (w/o IO): 279ms
	  Time (mean ± σ):      2.710 s ±  0.023 s    [User: 4.359 s, System: 0.246 s]
	  Range (min … max):    2.693 s …  2.726 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 231ms
	Processing time (w/o IO): 241ms
	Processing time (w/o IO): 231ms
	  Time (mean ± σ):      3.168 s ±  0.054 s    [User: 4.474 s, System: 0.280 s]
	  Range (min … max):    3.129 s …  3.206 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 391ms
	Processing time (w/o IO): 392ms
	Processing time (w/o IO): 391ms
	  Time (mean ± σ):      3.476 s ±  0.002 s    [User: 3.375 s, System: 0.287 s]
	  Range (min … max):    3.475 s …  3.478 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 375.5879ms
	Processing time (w/o IO): 373.7112ms
	Processing time (w/o IO): 375.7323ms
	  Time (mean ± σ):      1.086 s ±  0.007 s    [User: 1.039 s, System: 0.064 s]
	  Range (min … max):    1.081 s …  1.091 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 372.3005ms
	Processing time (w/o IO): 372.4057ms
	Processing time (w/o IO): 372.7081ms
	  Time (mean ± σ):     913.1 ms ±   4.1 ms    [User: 892.4 ms, System: 53.6 ms]
	  Range (min … max):   910.2 ms … 916.0 ms    2 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 123.7458ms
	Processing time (w/o IO): 125.1461ms
	Processing time (w/o IO): 124.6999ms
	  Time (mean ± σ):     593.0 ms ±   2.0 ms    [User: 1195.1 ms, System: 85.7 ms]
	  Range (min … max):   591.6 ms … 594.4 ms    2 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 136.0055ms
	Processing time (w/o IO): 135.7799ms
	Processing time (w/o IO): 137.1148ms
	  Time (mean ± σ):     441.8 ms ±   0.7 ms    [User: 1182.2 ms, System: 67.1 ms]
	  Range (min … max):   441.3 ms … 442.3 ms    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	1556.0059547424	ms
	Processing time (w/o IO):	1557.9490661621	ms
	Processing time (w/o IO):	1421.6418266296	ms
	  Time (mean ± σ):      2.770 s ±  0.138 s    [User: 2.716 s, System: 0.053 s]
	  Range (min … max):    2.672 s …  2.867 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	16762.6080513	ms
	Processing time (w/o IO):	16745.633840561	ms
	  Time (abs ≡):        18.632 s               [User: 18.572 s, System: 0.056 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 2754ms
	Processing time (w/o IO): 2936ms
	Processing time (w/o IO): 2690ms
	  Time (mean ± σ):      3.242 s ±  0.179 s    [User: 3.125 s, System: 0.115 s]
	  Range (min … max):    3.116 s …  3.369 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 18.970114 s
	Processing time (w/o IO): 18.906820 s
	Processing time (w/o IO): 19.009869 s
	  Time (mean ± σ):     20.024 s ±  0.090 s    [User: 19.924 s, System: 0.240 s]
	  Range (min … max):   19.960 s … 20.087 s    2 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 3.281026047s
	Processing time (w/o IO): 3.280285869s
	Processing time (w/o IO): 3.272554907s
	  Time (mean ± σ):      3.791 s ±  0.021 s    [User: 3.800 s, System: 0.149 s]
	  Range (min … max):    3.777 s …  3.806 s    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1.425302602s
	Processing time (w/o IO): 1.437513525s
	Processing time (w/o IO): 1.423697117s
	  Time (mean ± σ):      1.928 s ±  0.005 s    [User: 6.153 s, System: 0.138 s]
	  Range (min … max):    1.924 s …  1.931 s    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 3.033190086s
	Processing time (w/o IO): 3.033062628s
	Processing time (w/o IO): 3.034271576s
	  Time (mean ± σ):      3.250 s ±  0.004 s    [User: 3.173 s, System: 0.073 s]
	  Range (min … max):    3.248 s …  3.253 s    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 1.515729963s
	Processing time (w/o IO): 1.517313904s
	Processing time (w/o IO): 1.515768313s
	  Time (mean ± σ):      1.751 s ±  0.004 s    [User: 3.172 s, System: 0.078 s]
	  Range (min … max):    1.748 s …  1.753 s    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 2702.05ms
	Processing time (w/o IO): 2703.98ms
	Processing time (w/o IO): 2696.74ms
	  Time (mean ± σ):      3.654 s ±  0.007 s    [User: 3.531 s, System: 0.130 s]
	  Range (min … max):    3.649 s …  3.659 s    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 972.637ms
	Processing time (w/o IO): 977.19ms
	Processing time (w/o IO): 971.605ms
	  Time (mean ± σ):      1.906 s ±  0.002 s    [User: 4.534 s, System: 0.089 s]
	  Range (min … max):    1.905 s …  1.908 s    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 2919 ms
	Processing time (w/o IO): 2925 ms
	Processing time (w/o IO): 2923 ms
	  Time (mean ± σ):      5.692 s ±  0.055 s    [User: 5.148 s, System: 0.313 s]
	  Range (min … max):    5.653 s …  5.731 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 1888 ms
	Processing time (w/o IO): 1897 ms
	Processing time (w/o IO): 1899 ms
	  Time (mean ± σ):      4.651 s ±  0.078 s    [User: 9.810 s, System: 0.338 s]
	  Range (min … max):    4.596 s …  4.706 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 225.705s
	Processing time (w/o IO): 212.477s
	  Time (abs ≡):        212.942 s               [User: 212.750 s, System: 0.163 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 7993.078731ms
	Processing time (w/o IO): 7986.301056ms
	Processing time (w/o IO): 8012.0412ms
	  Time (mean ± σ):      8.765 s ±  0.002 s    [User: 8.655 s, System: 0.100 s]
	  Range (min … max):    8.763 s …  8.766 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 3810ms
	Processing time (w/o IO): 3816ms
	Processing time (w/o IO): 3841ms
	  Time (mean ± σ):      4.439 s ±  0.020 s    [User: 4.356 s, System: 0.074 s]
	  Range (min … max):    4.425 s …  4.453 s    2 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 4226 milliseconds
	Processing time (w/o IO): 4234 milliseconds
	Processing time (w/o IO): 4230 milliseconds
	  Time (mean ± σ):      5.294 s ±  0.037 s    [User: 5.035 s, System: 0.353 s]
	  Range (min … max):    5.267 s …  5.320 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 150 milliseconds
	Processing time (w/o IO): 150 milliseconds
	Processing time (w/o IO): 148 milliseconds
	  Time (mean ± σ):      1.687 s ±  0.020 s    [User: 1.434 s, System: 0.353 s]
	  Range (min … max):    1.673 s …  1.701 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 1940 milliseconds
	Processing time (w/o IO): 2008 milliseconds
	Processing time (w/o IO): 1940 milliseconds
	  Time (mean ± σ):      3.044 s ±  0.042 s    [User: 8.575 s, System: 0.301 s]
	  Range (min … max):    3.014 s …  3.074 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  6.051855403s
	Processing time (w/o IO):  6.294684169s
	Processing time (w/o IO):  6.151755604s
	  Time (mean ± σ):      8.651 s ±  0.097 s    [User: 8.552 s, System: 0.089 s]
	  Range (min … max):    8.582 s …  8.719 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 6.589s
	Processing time (w/o IO): 6.599s
	Processing time (w/o IO): 6.589s
	  Time (mean ± σ):     86.086 s ±  0.175 s    [User: 85.669 s, System: 0.401 s]
	  Range (min … max):   85.962 s … 86.210 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 19661ms
	Processing time (w/o IO): 19660ms
	Processing time (w/o IO): 17838ms
	  Time (mean ± σ):     20.268 s ±  1.287 s    [User: 20.499 s, System: 0.229 s]
	  Range (min … max):   19.358 s … 21.178 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 17853ms
	Processing time (w/o IO): 17830ms
	Processing time (w/o IO): 17884ms
	  Time (mean ± σ):     19.408 s ±  0.043 s    [User: 19.405 s, System: 0.147 s]
	  Range (min … max):   19.378 s … 19.439 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 6216.922044754028ms
	Processing time (w/o IO): 6215.118050575256ms
	Processing time (w/o IO): 6218.134045600891ms
	  Time (mean ± σ):     10.614 s ±  0.119 s    [User: 10.108 s, System: 0.345 s]
	  Range (min … max):   10.530 s … 10.698 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 3475.624295ms
	Processing time (w/o IO): 3450.730458ms
	Processing time (w/o IO): 3552.137091ms
	  Time (mean ± σ):      7.922 s ±  0.105 s    [User: 17.756 s, System: 0.374 s]
	  Range (min … max):    7.848 s …  7.997 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 24161ms
	Processing time (w/o IO): 24199ms
	Processing time (w/o IO): 24151ms
	  Time (mean ± σ):     25.007 s ±  0.036 s    [User: 24.990 s, System: 0.195 s]
	  Range (min … max):   24.981 s … 25.032 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 13287ms
	Processing time (w/o IO): 15351ms
	Processing time (w/o IO): 14295ms
	  Time (mean ± σ):     15.349 s ±  0.758 s    [User: 15.269 s, System: 0.213 s]
	  Range (min … max):   14.813 s … 15.884 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 17905ms
	Processing time (w/o IO): 17819ms
	Processing time (w/o IO): 19383ms
	  Time (mean ± σ):     19.519 s ±  1.231 s    [User: 19.118 s, System: 0.179 s]
	  Range (min … max):   18.649 s … 20.389 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 7509 ms
	Processing time (w/o IO): 7508 ms
	Processing time (w/o IO): 7511 ms
	  Time (mean ± σ):     15.492 s ±  0.008 s    [User: 15.370 s, System: 0.113 s]
	  Range (min … max):   15.487 s … 15.498 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 4120 ms
	Processing time (w/o IO): 4122 ms
	Processing time (w/o IO): 4123 ms
	  Time (mean ± σ):      4.479 s ±  0.014 s    [User: 11.062 s, System: 0.105 s]
	  Range (min … max):    4.470 s …  4.489 s    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 3100.075ms
	Processing time (w/o IO): 3094.217ms
	Processing time (w/o IO): 3090.322ms
	  Time (mean ± σ):      3.467 s ±  0.001 s    [User: 3.346 s, System: 0.111 s]
	  Range (min … max):    3.467 s …  3.468 s    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 4113ms
	Processing time (w/o IO): 4040ms
	Processing time (w/o IO): 4038ms
	  Time (mean ± σ):     13.385 s ±  0.098 s    [User: 14.385 s, System: 0.512 s]
	  Range (min … max):   13.315 s … 13.454 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 2520ms
	Processing time (w/o IO): 2497ms
	Processing time (w/o IO): 2500ms
	  Time (mean ± σ):     10.247 s ±  0.040 s    [User: 25.993 s, System: 0.583 s]
	  Range (min … max):   10.219 s … 10.275 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 2036ms
	Processing time (w/o IO): 2032ms
	Processing time (w/o IO): 2025ms
	  Time (mean ± σ):     12.230 s ±  0.105 s    [User: 25.624 s, System: 0.620 s]
	  Range (min … max):   12.156 s … 12.304 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 3435ms
	Processing time (w/o IO): 3416ms
	Processing time (w/o IO): 3417ms
	  Time (mean ± σ):     15.119 s ±  0.008 s    [User: 16.274 s, System: 0.586 s]
	  Range (min … max):   15.113 s … 15.124 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 3256.8629ms
	Processing time (w/o IO): 3255.894ms
	Processing time (w/o IO): 3264.5061ms
	  Time (mean ± σ):      7.438 s ±  0.007 s    [User: 7.376 s, System: 0.198 s]
	  Range (min … max):    7.433 s …  7.443 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 3236.2931ms
	Processing time (w/o IO): 3238.222ms
	Processing time (w/o IO): 3261.856ms
	  Time (mean ± σ):      7.077 s ±  0.018 s    [User: 7.058 s, System: 0.160 s]
	  Range (min … max):    7.064 s …  7.090 s    2 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 1013.1524ms
	Processing time (w/o IO): 1011.5389ms
	Processing time (w/o IO): 1013.7407ms
	  Time (mean ± σ):      2.945 s ±  0.004 s    [User: 8.660 s, System: 0.202 s]
	  Range (min … max):    2.942 s …  2.948 s    2 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 1133.348ms
	Processing time (w/o IO): 1175.4272ms
	Processing time (w/o IO): 1133.7287ms
	  Time (mean ± σ):      2.859 s ±  0.044 s    [User: 9.378 s, System: 0.207 s]
	  Range (min … max):    2.828 s …  2.890 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	11983.839035034	ms
	Processing time (w/o IO):	12417.673110962	ms
	Processing time (w/o IO):	12509.664058685	ms
	  Time (mean ± σ):     16.632 s ±  0.058 s    [User: 16.456 s, System: 0.168 s]
	  Range (min … max):   16.591 s … 16.673 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	152693.08114052	ms
	Processing time (w/o IO):	149890.9611702	ms
	  Time (abs ≡):        156.399 s               [User: 156.207 s, System: 0.167 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 33122ms
	Processing time (w/o IO): 34186ms
	Processing time (w/o IO): 34286ms
	  Time (mean ± σ):     35.776 s ±  0.040 s    [User: 35.329 s, System: 0.433 s]
	  Range (min … max):   35.748 s … 35.805 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 179.478905 s
	Processing time (w/o IO): 182.730963 s
	Processing time (w/o IO): 181.733309 s
	  Time (mean ± σ):     185.680 s ±  0.653 s    [User: 185.165 s, System: 0.683 s]
	  Range (min … max):   185.218 s … 186.142 s    2 runs
	 
