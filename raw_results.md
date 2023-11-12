Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 29.498821ms
	Processing time (w/o IO): 29.394718ms
	Processing time (w/o IO): 31.317559ms
	Processing time (w/o IO): 31.589564ms
	Processing time (w/o IO): 29.309917ms
	Processing time (w/o IO): 29.236915ms
	Processing time (w/o IO): 29.375717ms
	Processing time (w/o IO): 29.273616ms
	Processing time (w/o IO): 29.262415ms
	Processing time (w/o IO): 29.122913ms
	Processing time (w/o IO): 29.430119ms
	Processing time (w/o IO): 29.434219ms
	Processing time (w/o IO): 29.387418ms
	  Time (mean ± σ):      75.9 ms ±   2.1 ms    [User: 66.7 ms, System: 19.4 ms]
	  Range (min … max):    73.9 ms …  80.5 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 12.112654ms
	Processing time (w/o IO): 12.224157ms
	Processing time (w/o IO): 12.070654ms
	Processing time (w/o IO): 11.87785ms
	Processing time (w/o IO): 12.013253ms
	Processing time (w/o IO): 11.858949ms
	Processing time (w/o IO): 11.931451ms
	Processing time (w/o IO): 12.321259ms
	Processing time (w/o IO): 11.925151ms
	Processing time (w/o IO): 12.741368ms
	Processing time (w/o IO): 12.739368ms
	Processing time (w/o IO): 12.066054ms
	Processing time (w/o IO): 13.454083ms
	  Time (mean ± σ):      59.6 ms ±   2.5 ms    [User: 88.6 ms, System: 13.2 ms]
	  Range (min … max):    55.9 ms …  64.2 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 23.913603ms
	Processing time (w/o IO): 23.592796ms
	Processing time (w/o IO): 23.509695ms
	Processing time (w/o IO): 23.886202ms
	Processing time (w/o IO): 23.552095ms
	Processing time (w/o IO): 23.626897ms
	Processing time (w/o IO): 23.650897ms
	Processing time (w/o IO): 23.699798ms
	Processing time (w/o IO): 23.598897ms
	Processing time (w/o IO): 23.677698ms
	Processing time (w/o IO): 23.611897ms
	Processing time (w/o IO): 24.397414ms
	Processing time (w/o IO): 23.834201ms
	  Time (mean ± σ):      43.5 ms ±   0.9 ms    [User: 32.9 ms, System: 10.6 ms]
	  Range (min … max):    42.5 ms …  45.5 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 13.436078ms
	Processing time (w/o IO): 12.157651ms
	Processing time (w/o IO): 12.316554ms
	Processing time (w/o IO): 12.493258ms
	Processing time (w/o IO): 12.167751ms
	Processing time (w/o IO): 13.327775ms
	Processing time (w/o IO): 12.361655ms
	Processing time (w/o IO): 12.349156ms
	Processing time (w/o IO): 12.58046ms
	Processing time (w/o IO): 12.337955ms
	Processing time (w/o IO): 12.373056ms
	Processing time (w/o IO): 12.315655ms
	Processing time (w/o IO): 12.318055ms
	  Time (mean ± σ):      34.1 ms ±   0.6 ms    [User: 32.3 ms, System: 14.0 ms]
	  Range (min … max):    33.5 ms …  35.6 ms    10 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 33.655ms
	Processing time (w/o IO): 32.727ms
	Processing time (w/o IO): 33.449ms
	Processing time (w/o IO): 33.562ms
	Processing time (w/o IO): 33.485ms
	Processing time (w/o IO): 32.943ms
	Processing time (w/o IO): 33.679ms
	Processing time (w/o IO): 32.771ms
	Processing time (w/o IO): 32.814ms
	Processing time (w/o IO): 33.572ms
	Processing time (w/o IO): 33.156ms
	Processing time (w/o IO): 32.826ms
	Processing time (w/o IO): 33.603ms
	  Time (mean ± σ):     121.8 ms ±   1.2 ms    [User: 107.3 ms, System: 15.9 ms]
	  Range (min … max):   120.4 ms … 124.0 ms    10 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 13.592ms
	Processing time (w/o IO): 12.929ms
	Processing time (w/o IO): 14.183ms
	Processing time (w/o IO): 14.741ms
	Processing time (w/o IO): 13.913ms
	Processing time (w/o IO): 14.44ms
	Processing time (w/o IO): 13.23ms
	Processing time (w/o IO): 13.643ms
	Processing time (w/o IO): 13.648ms
	Processing time (w/o IO): 13.077ms
	Processing time (w/o IO): 14.507ms
	Processing time (w/o IO): 13.484ms
	Processing time (w/o IO): 13.197ms
	  Time (mean ± σ):      97.5 ms ±   0.8 ms    [User: 108.7 ms, System: 14.5 ms]
	  Range (min … max):    96.1 ms …  98.6 ms    10 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 24 ms
	  Time (mean ± σ):     262.0 ms ±   2.5 ms    [User: 216.4 ms, System: 45.4 ms]
	  Range (min … max):   259.5 ms … 268.1 ms    10 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 15 ms
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 15 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 15 ms
	Processing time (w/o IO): 15 ms
	Processing time (w/o IO): 20 ms
	  Time (mean ± σ):     273.4 ms ±   2.5 ms    [User: 251.7 ms, System: 55.2 ms]
	  Range (min … max):   269.8 ms … 277.5 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 1.480s
	Processing time (w/o IO): 1.466s
	Processing time (w/o IO): 1.462s
	Processing time (w/o IO): 1.484s
	Processing time (w/o IO): 1.466s
	Processing time (w/o IO): 1.558s
	Processing time (w/o IO): 1.465s
	Processing time (w/o IO): 1.470s
	Processing time (w/o IO): 1.467s
	Processing time (w/o IO): 1.463s
	Processing time (w/o IO): 1.467s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.461s
	  Time (mean ± σ):      1.555 s ±  0.030 s    [User: 1.530 s, System: 0.025 s]
	  Range (min … max):    1.538 s …  1.639 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 484.3ms
	Processing time (w/o IO): 434.7ms
	Processing time (w/o IO): 425.3ms
	Processing time (w/o IO): 426.4ms
	Processing time (w/o IO): 400.5ms
	Processing time (w/o IO): 396.2ms
	Processing time (w/o IO): 396.8ms
	Processing time (w/o IO): 392.7ms
	Processing time (w/o IO): 393.3ms
	Processing time (w/o IO): 388.5ms
	Processing time (w/o IO): 392.5ms
	Processing time (w/o IO): 387.2ms
	Processing time (w/o IO): 387.3ms
	  Time (mean ± σ):     758.1 ms ± 138.7 ms    [User: 864.9 ms, System: 460.8 ms]
	  Range (min … max):   688.5 ms … 1148.6 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 55.180436ms
	Processing time (w/o IO): 54.385621ms
	Processing time (w/o IO): 54.35472ms
	Processing time (w/o IO): 54.472022ms
	Processing time (w/o IO): 54.90933ms
	Processing time (w/o IO): 54.476623ms
	Processing time (w/o IO): 54.654625ms
	Processing time (w/o IO): 55.507542ms
	Processing time (w/o IO): 55.040133ms
	Processing time (w/o IO): 54.813828ms
	Processing time (w/o IO): 55.541242ms
	Processing time (w/o IO): 54.429722ms
	Processing time (w/o IO): 54.451622ms
	  Time (mean ± σ):     114.6 ms ±   2.7 ms    [User: 103.1 ms, System: 11.4 ms]
	  Range (min … max):   110.9 ms … 118.8 ms    10 runs
	 
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
	  Time (mean ± σ):      72.2 ms ±   0.4 ms    [User: 66.2 ms, System: 6.0 ms]
	  Range (min … max):    71.3 ms …  72.6 ms    10 runs
	 
Julia:

	Benchmark 1: julia --startup-file=no --project=Related -e "using Related; main()"
	Processing time (w/o IO): 31.470592ms
	Processing time (w/o IO): 31.462591999999997ms
	Processing time (w/o IO): 31.531494ms
	Processing time (w/o IO): 31.722198ms
	Processing time (w/o IO): 31.543193999999996ms
	Processing time (w/o IO): 31.469392ms
	Processing time (w/o IO): 31.38149ms
	Processing time (w/o IO): 31.265729ms
	Processing time (w/o IO): 31.412632000000002ms
	Processing time (w/o IO): 33.623362ms
	Processing time (w/o IO): 31.687782ms
	Processing time (w/o IO): 31.473077000000004ms
	Processing time (w/o IO): 31.347774ms
	  Time (mean ± σ):      1.157 s ±  0.010 s    [User: 0.995 s, System: 0.265 s]
	  Range (min … max):    1.144 s …  1.176 s    10 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 11 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 10 milliseconds
	Processing time (w/o IO): 10 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 10 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 9 milliseconds
	  Time (mean ± σ):      1.119 s ±  0.009 s    [User: 0.967 s, System: 0.255 s]
	  Range (min … max):    1.110 s …  1.135 s    10 runs
	 
Julia Concurrent:

	Benchmark 1: julia --startup-file=no --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 15.587933ms
	Processing time (w/o IO): 13.974998000000001ms
	Processing time (w/o IO): 13.733291999999999ms
	Processing time (w/o IO): 15.164122ms
	Processing time (w/o IO): 14.981519ms
	Processing time (w/o IO): 13.757393ms
	Processing time (w/o IO): 13.541988ms
	Processing time (w/o IO): 13.687291ms
	Processing time (w/o IO): 13.477986000000001ms
	Processing time (w/o IO): 13.750582000000001ms
	Processing time (w/o IO): 12.990066ms
	Processing time (w/o IO): 15.767922ms
	Processing time (w/o IO): 14.791703ms
	  Time (mean ± σ):      1.109 s ±  0.015 s    [User: 0.984 s, System: 0.270 s]
	  Range (min … max):    1.095 s …  1.141 s    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  42.563563ms
	Processing time (w/o IO):  41.85975ms
	Processing time (w/o IO):  41.813948ms
	Processing time (w/o IO):  41.907051ms
	Processing time (w/o IO):  42.151356ms
	Processing time (w/o IO):  42.142656ms
	Processing time (w/o IO):  41.732647ms
	Processing time (w/o IO):  42.37936ms
	Processing time (w/o IO):  41.843849ms
	Processing time (w/o IO):  41.571044ms
	Processing time (w/o IO):  41.961252ms
	Processing time (w/o IO):  41.748347ms
	Processing time (w/o IO):  41.651045ms
	  Time (mean ± σ):     266.5 ms ±   1.5 ms    [User: 252.7 ms, System: 13.7 ms]
	  Range (min … max):   265.5 ms … 269.8 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 50.191ms
	Processing time (w/o IO): 49.444ms
	Processing time (w/o IO): 49.644ms
	Processing time (w/o IO): 49.778ms
	Processing time (w/o IO): 49.868ms
	Processing time (w/o IO): 49.247ms
	Processing time (w/o IO): 49.498ms
	Processing time (w/o IO): 50.278ms
	Processing time (w/o IO): 49.931ms
	Processing time (w/o IO): 49.592ms
	Processing time (w/o IO): 49.580ms
	Processing time (w/o IO): 50.101ms
	Processing time (w/o IO): 50.466ms
	  Time (mean ± σ):     411.8 ms ±   2.8 ms    [User: 371.2 ms, System: 40.5 ms]
	  Range (min … max):   405.8 ms … 415.5 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 165ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 171ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 171ms
	Processing time (w/o IO): 171ms
	Processing time (w/o IO): 171ms
	  Time (mean ± σ):     595.8 ms ±  11.7 ms    [User: 680.8 ms, System: 151.9 ms]
	  Range (min … max):   578.4 ms … 614.8 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 130ms
	  Time (mean ± σ):     270.4 ms ±   2.8 ms    [User: 247.4 ms, System: 28.0 ms]
	  Range (min … max):   267.6 ms … 275.7 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 51.5209436416626ms
	Processing time (w/o IO): 51.741957664489746ms
	Processing time (w/o IO): 52.23798751831055ms
	Processing time (w/o IO): 52.049994468688965ms
	Processing time (w/o IO): 52.27494239807129ms
	Processing time (w/o IO): 51.946043968200684ms
	Processing time (w/o IO): 52.42502689361572ms
	Processing time (w/o IO): 52.11794376373291ms
	Processing time (w/o IO): 51.66208744049072ms
	Processing time (w/o IO): 62.36100196838379ms
	Processing time (w/o IO): 51.98800563812256ms
	Processing time (w/o IO): 52.33502388000488ms
	Processing time (w/o IO): 51.46300792694092ms
	  Time (mean ± σ):     435.5 ms ±   6.7 ms    [User: 367.9 ms, System: 53.8 ms]
	  Range (min … max):   426.1 ms … 447.8 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 31.918114ms
	Processing time (w/o IO): 32.429324ms
	Processing time (w/o IO): 32.452923ms
	Processing time (w/o IO): 33.305941ms
	Processing time (w/o IO): 32.413523ms
	Processing time (w/o IO): 32.76963ms
	Processing time (w/o IO): 32.524926ms
	Processing time (w/o IO): 32.693728ms
	Processing time (w/o IO): 32.76893ms
	Processing time (w/o IO): 31.889613ms
	Processing time (w/o IO): 32.578326ms
	Processing time (w/o IO): 32.924333ms
	Processing time (w/o IO): 31.75211ms
	  Time (mean ± σ):     436.3 ms ±  29.4 ms    [User: 444.2 ms, System: 58.7 ms]
	  Range (min … max):   421.9 ms … 518.6 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 212ms
	Processing time (w/o IO): 206ms
	Processing time (w/o IO): 207ms
	Processing time (w/o IO): 160ms
	Processing time (w/o IO): 154ms
	Processing time (w/o IO): 212ms
	Processing time (w/o IO): 160ms
	Processing time (w/o IO): 158ms
	Processing time (w/o IO): 213ms
	Processing time (w/o IO): 158ms
	Processing time (w/o IO): 160ms
	Processing time (w/o IO): 157ms
	Processing time (w/o IO): 209ms
	  Time (mean ± σ):     364.2 ms ±  25.8 ms    [User: 348.0 ms, System: 80.7 ms]
	  Range (min … max):   345.1 ms … 402.7 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 139ms
	Processing time (w/o IO): 136ms
	Processing time (w/o IO): 129ms
	Processing time (w/o IO): 115ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 111ms
	Processing time (w/o IO): 128ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 122ms
	Processing time (w/o IO): 109ms
	Processing time (w/o IO): 125ms
	  Time (mean ± σ):     196.7 ms ±  11.7 ms    [User: 205.0 ms, System: 48.4 ms]
	  Range (min … max):   180.0 ms … 218.8 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 209ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 182ms
	Processing time (w/o IO): 181ms
	Processing time (w/o IO): 168ms
	Processing time (w/o IO): 171ms
	Processing time (w/o IO): 167ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 183ms
	Processing time (w/o IO): 181ms
	Processing time (w/o IO): 181ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 186ms
	  Time (mean ± σ):     256.6 ms ±   7.2 ms    [User: 240.7 ms, System: 42.4 ms]
	  Range (min … max):   248.2 ms … 266.3 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 54 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 54 ms
	Processing time (w/o IO): 54 ms
	  Time (mean ± σ):     408.5 ms ±   8.3 ms    [User: 713.6 ms, System: 62.1 ms]
	  Range (min … max):   396.0 ms … 418.9 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 44 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 44 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	  Time (mean ± σ):     119.3 ms ±   0.8 ms    [User: 106.4 ms, System: 13.0 ms]
	  Range (min … max):   118.5 ms … 120.9 ms    10 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 48 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 48 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 51 ms
	  Time (mean ± σ):      85.9 ms ±   2.2 ms    [User: 146.5 ms, System: 15.6 ms]
	  Range (min … max):    81.8 ms …  88.2 ms    10 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 22.612ms
	Processing time (w/o IO): 22.087ms
	Processing time (w/o IO): 22.11ms
	Processing time (w/o IO): 22.143ms
	Processing time (w/o IO): 22.169ms
	Processing time (w/o IO): 22.171ms
	Processing time (w/o IO): 22.107ms
	Processing time (w/o IO): 22.493ms
	Processing time (w/o IO): 22.121ms
	Processing time (w/o IO): 22.195ms
	Processing time (w/o IO): 22.258ms
	Processing time (w/o IO): 22.182ms
	Processing time (w/o IO): 22.117ms
	  Time (mean ± σ):      55.0 ms ±   1.0 ms    [User: 43.9 ms, System: 11.0 ms]
	  Range (min … max):    53.0 ms …  56.5 ms    10 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 13.901ms
	Processing time (w/o IO): 12.3ms
	Processing time (w/o IO): 12.276ms
	Processing time (w/o IO): 12.28ms
	Processing time (w/o IO): 12.61ms
	Processing time (w/o IO): 14.106ms
	Processing time (w/o IO): 14.781ms
	Processing time (w/o IO): 13.139ms
	Processing time (w/o IO): 14.291ms
	Processing time (w/o IO): 12.922ms
	Processing time (w/o IO): 12.439ms
	Processing time (w/o IO): 14.325ms
	Processing time (w/o IO): 12.559ms
	  Time (mean ± σ):      43.9 ms ±   1.0 ms    [User: 66.1 ms, System: 12.7 ms]
	  Range (min … max):    42.1 ms …  45.0 ms    10 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 85.6846ms
	Processing time (w/o IO): 86.3236ms
	Processing time (w/o IO): 85.9664ms
	Processing time (w/o IO): 85.7494ms
	Processing time (w/o IO): 85.5288ms
	Processing time (w/o IO): 85.9464ms
	Processing time (w/o IO): 85.5562ms
	Processing time (w/o IO): 86.1794ms
	Processing time (w/o IO): 86.0258ms
	Processing time (w/o IO): 85.5899ms
	Processing time (w/o IO): 85.7182ms
	Processing time (w/o IO): 85.6679ms
	Processing time (w/o IO): 85.7955ms
	  Time (mean ± σ):      1.089 s ±  0.025 s    [User: 1.181 s, System: 0.137 s]
	  Range (min … max):    1.056 s …  1.119 s    10 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 21ms
	  Time (mean ± σ):      1.011 s ±  0.011 s    [User: 1.178 s, System: 0.148 s]
	  Range (min … max):    0.994 s …  1.029 s    10 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 17ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	  Time (mean ± σ):     779.3 ms ±   3.3 ms    [User: 824.1 ms, System: 122.5 ms]
	  Range (min … max):   772.7 ms … 785.0 ms    10 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 27.0626ms
	Processing time (w/o IO): 27.2726ms
	Processing time (w/o IO): 27.0821ms
	Processing time (w/o IO): 26.8853ms
	Processing time (w/o IO): 27.4709ms
	Processing time (w/o IO): 27.5615ms
	Processing time (w/o IO): 26.8645ms
	Processing time (w/o IO): 27.6857ms
	Processing time (w/o IO): 27.2406ms
	Processing time (w/o IO): 27.2155ms
	Processing time (w/o IO): 27.1708ms
	Processing time (w/o IO): 27.0172ms
	Processing time (w/o IO): 27.0811ms
	  Time (mean ± σ):     806.0 ms ±   3.2 ms    [User: 764.5 ms, System: 105.7 ms]
	  Range (min … max):   802.2 ms … 810.5 ms    10 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 27.8251ms
	Processing time (w/o IO): 27.7757ms
	Processing time (w/o IO): 27.2061ms
	Processing time (w/o IO): 27.6277ms
	Processing time (w/o IO): 27.9628ms
	Processing time (w/o IO): 28.6459ms
	Processing time (w/o IO): 27.6712ms
	Processing time (w/o IO): 27.4572ms
	Processing time (w/o IO): 27.5991ms
	Processing time (w/o IO): 27.9351ms
	Processing time (w/o IO): 27.6651ms
	Processing time (w/o IO): 27.5943ms
	Processing time (w/o IO): 27.7329ms
	  Time (mean ± σ):     230.0 ms ±   4.0 ms    [User: 184.3 ms, System: 40.0 ms]
	  Range (min … max):   222.7 ms … 234.8 ms    10 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 27.1381ms
	Processing time (w/o IO): 26.6921ms
	Processing time (w/o IO): 27.0364ms
	Processing time (w/o IO): 26.9497ms
	Processing time (w/o IO): 27.3514ms
	Processing time (w/o IO): 26.9516ms
	Processing time (w/o IO): 27.4358ms
	Processing time (w/o IO): 27.1432ms
	Processing time (w/o IO): 26.8136ms
	Processing time (w/o IO): 27.1628ms
	Processing time (w/o IO): 27.424ms
	Processing time (w/o IO): 27.2795ms
	Processing time (w/o IO): 27.2002ms
	  Time (mean ± σ):     118.3 ms ±   2.0 ms    [User: 104.1 ms, System: 32.6 ms]
	  Range (min … max):   115.3 ms … 121.3 ms    10 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 15.6415ms
	Processing time (w/o IO): 14.7012ms
	Processing time (w/o IO): 15.4594ms
	Processing time (w/o IO): 14.7941ms
	Processing time (w/o IO): 11.1682ms
	Processing time (w/o IO): 14.7453ms
	Processing time (w/o IO): 15.6956ms
	Processing time (w/o IO): 12.5081ms
	Processing time (w/o IO): 14.6662ms
	Processing time (w/o IO): 14.8917ms
	Processing time (w/o IO): 16.1103ms
	Processing time (w/o IO): 15.2927ms
	Processing time (w/o IO): 14.7602ms
	  Time (mean ± σ):     235.6 ms ±   7.7 ms    [User: 226.2 ms, System: 55.5 ms]
	  Range (min … max):   225.9 ms … 249.9 ms    10 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 12.2017ms
	Processing time (w/o IO): 12.5298ms
	Processing time (w/o IO): 12.4598ms
	Processing time (w/o IO): 12.7079ms
	Processing time (w/o IO): 12.2353ms
	Processing time (w/o IO): 12.2925ms
	Processing time (w/o IO): 12.2203ms
	Processing time (w/o IO): 12.2845ms
	Processing time (w/o IO): 12.2206ms
	Processing time (w/o IO): 12.1454ms
	Processing time (w/o IO): 11.9476ms
	Processing time (w/o IO): 11.9862ms
	Processing time (w/o IO): 12.8853ms
	  Time (mean ± σ):      90.9 ms ±   2.3 ms    [User: 138.7 ms, System: 39.0 ms]
	  Range (min … max):    87.0 ms …  94.6 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	126.296043396	ms
	Processing time (w/o IO):	103.5840511322	ms
	Processing time (w/o IO):	118.16382408142	ms
	Processing time (w/o IO):	128.0529499054	ms
	Processing time (w/o IO):	118.89004707336	ms
	Processing time (w/o IO):	119.41885948181	ms
	Processing time (w/o IO):	98.33288192749	ms
	Processing time (w/o IO):	129.56094741821	ms
	Processing time (w/o IO):	128.73196601868	ms
	Processing time (w/o IO):	126.63912773132	ms
	Processing time (w/o IO):	128.43108177185	ms
	Processing time (w/o IO):	121.35696411133	ms
	Processing time (w/o IO):	120.28908729553	ms
	  Time (mean ± σ):     429.0 ms ±  26.6 ms    [User: 404.6 ms, System: 24.3 ms]
	  Range (min … max):   394.2 ms … 473.6 ms    10 runs
	 
LuaJIT (JIT OFF):

	Benchmark 1: luajit -joff only_lua.lua
	Processing time (w/o IO):	683.11905860901	ms
	Processing time (w/o IO):	696.74682617188	ms
	Processing time (w/o IO):	679.6088218689	ms
	Processing time (w/o IO):	680.16576766968	ms
	Processing time (w/o IO):	681.8790435791	ms
	Processing time (w/o IO):	678.56001853943	ms
	Processing time (w/o IO):	680.86910247803	ms
	Processing time (w/o IO):	681.1637878418	ms
	Processing time (w/o IO):	678.74693870544	ms
	Processing time (w/o IO):	679.08978462219	ms
	Processing time (w/o IO):	678.74813079834	ms
	Processing time (w/o IO):	679.76689338684	ms
	Processing time (w/o IO):	679.87298965454	ms
	  Time (mean ± σ):      1.049 s ±  0.016 s    [User: 1.022 s, System: 0.026 s]
	  Range (min … max):    1.029 s …  1.085 s    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1099.004983902	ms
	Processing time (w/o IO):	1100.7421016693	ms
	Processing time (w/o IO):	1101.8469333649	ms
	Processing time (w/o IO):	1101.2051105499	ms
	Processing time (w/o IO):	1100.7158756256	ms
	Processing time (w/o IO):	1101.0689735413	ms
	Processing time (w/o IO):	1108.4561347961	ms
	Processing time (w/o IO):	1105.86810112	ms
	Processing time (w/o IO):	1102.9450893402	ms
	Processing time (w/o IO):	1103.1060218811	ms
	Processing time (w/o IO):	1102.1659374237	ms
	Processing time (w/o IO):	1101.2949943542	ms
	Processing time (w/o IO):	1109.9481582642	ms
	  Time (mean ± σ):      1.557 s ±  0.006 s    [User: 1.536 s, System: 0.020 s]
	  Range (min … max):    1.550 s …  1.570 s    10 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 154ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 146ms
	Processing time (w/o IO): 145ms
	Processing time (w/o IO): 145ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 144ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 146ms
	Processing time (w/o IO): 149ms
	Processing time (w/o IO): 146ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 147ms
	  Time (mean ± σ):     255.7 ms ±  35.7 ms    [User: 210.3 ms, System: 34.7 ms]
	  Range (min … max):   240.3 ms … 357.1 ms    10 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 0.890295 s
	Processing time (w/o IO): 0.901200 s
	Processing time (w/o IO): 0.887953 s
	Processing time (w/o IO): 0.888534 s
	Processing time (w/o IO): 0.885387 s
	Processing time (w/o IO): 0.903369 s
	Processing time (w/o IO): 0.888041 s
	Processing time (w/o IO): 0.891943 s
	Processing time (w/o IO): 0.895203 s
	Processing time (w/o IO): 0.889239 s
	Processing time (w/o IO): 0.890110 s
	Processing time (w/o IO): 0.893499 s
	Processing time (w/o IO): 0.896505 s
	  Time (mean ± σ):      1.285 s ±  0.005 s    [User: 1.197 s, System: 0.128 s]
	  Range (min … max):    1.275 s …  1.291 s    10 runs
	 
Lobster (JIT):

	Benchmark 1: lobster related.lobster
	Processing time (w/o IO): 1.62305s
	Processing time (w/o IO): 1.371164s
	Processing time (w/o IO): 1.369278s
	Processing time (w/o IO): 1.366925s
	Processing time (w/o IO): 1.36814s
	Processing time (w/o IO): 1.370322s
	Processing time (w/o IO): 1.367803s
	Processing time (w/o IO): 1.364765s
	Processing time (w/o IO): 1.370709s
	Processing time (w/o IO): 1.369647s
	Processing time (w/o IO): 1.377817s
	Processing time (w/o IO): 1.372333s
	Processing time (w/o IO): 1.370363s
	  Time (mean ± σ):      1.467 s ±  0.003 s    [User: 1.442 s, System: 0.024 s]
	  Range (min … max):    1.463 s …  1.474 s    10 runs
	 
Lobster (C++):

	Benchmark 1: compiled_lobster
	Processing time (w/o IO): 0.185323s
	Processing time (w/o IO): 0.185275s
	Processing time (w/o IO): 0.192894s
	Processing time (w/o IO): 0.18721s
	Processing time (w/o IO): 0.185154s
	Processing time (w/o IO): 0.186282s
	Processing time (w/o IO): 0.188521s
	Processing time (w/o IO): 0.185194s
	Processing time (w/o IO): 0.186981s
	Processing time (w/o IO): 0.186654s
	Processing time (w/o IO): 0.190974s
	Processing time (w/o IO): 0.184601s
	Processing time (w/o IO): 0.186229s
	  Time (mean ± σ):     282.2 ms ±   2.9 ms    [User: 256.0 ms, System: 26.1 ms]
	  Range (min … max):   276.7 ms … 287.4 ms    10 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 429.777909ms
	Processing time (w/o IO): 430.68371ms
	Processing time (w/o IO): 430.970811ms
	  Time (mean ± σ):     605.7 ms ±   2.1 ms    [User: 577.5 ms, System: 59.4 ms]
	  Range (min … max):   604.2 ms … 607.2 ms    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 166.381436ms
	Processing time (w/o IO): 165.544634ms
	Processing time (w/o IO): 165.819634ms
	  Time (mean ± σ):     338.4 ms ±   2.2 ms    [User: 811.4 ms, System: 47.4 ms]
	  Range (min … max):   336.8 ms … 340.0 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 341.500384ms
	Processing time (w/o IO): 343.241286ms
	Processing time (w/o IO): 341.827884ms
	  Time (mean ± σ):     418.7 ms ±   0.5 ms    [User: 379.3 ms, System: 39.2 ms]
	  Range (min … max):   418.3 ms … 419.1 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 179.328854ms
	Processing time (w/o IO): 176.483351ms
	Processing time (w/o IO): 178.143553ms
	  Time (mean ± σ):     256.3 ms ±   0.8 ms    [User: 399.9 ms, System: 29.3 ms]
	  Range (min … max):   255.7 ms … 256.8 ms    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 446.112ms
	Processing time (w/o IO): 445.908ms
	Processing time (w/o IO): 447.09ms
	  Time (mean ± σ):     766.9 ms ±   1.9 ms    [User: 720.4 ms, System: 51.2 ms]
	  Range (min … max):   765.6 ms … 768.2 ms    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 131.066ms
	Processing time (w/o IO): 129.519ms
	Processing time (w/o IO): 131.544ms
	  Time (mean ± σ):     458.1 ms ±   3.1 ms    [User: 744.1 ms, System: 51.1 ms]
	  Range (min … max):   455.9 ms … 460.3 ms    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 328 ms
	Processing time (w/o IO): 325 ms
	Processing time (w/o IO): 323 ms
	  Time (mean ± σ):      1.266 s ±  0.008 s    [User: 1.080 s, System: 0.185 s]
	  Range (min … max):    1.260 s …  1.272 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 168 ms
	Processing time (w/o IO): 168 ms
	Processing time (w/o IO): 168 ms
	  Time (mean ± σ):      1.281 s ±  0.119 s    [User: 1.526 s, System: 0.151 s]
	  Range (min … max):    1.197 s …  1.365 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 23.553s
	Processing time (w/o IO): 23.335s
	  Time (abs ≡):        23.542 s               [User: 23.471 s, System: 0.063 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 6.601s
	Processing time (w/o IO): 6.636s
	Processing time (w/o IO): 6.439s
	  Time (mean ± σ):      7.056 s ±  0.153 s    [User: 5.129 s, System: 2.537 s]
	  Range (min … max):    6.948 s …  7.164 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 823.464711ms
	Processing time (w/o IO): 822.381712ms
	Processing time (w/o IO): 823.93141ms
	  Time (mean ± σ):      1.070 s ±  0.001 s    [User: 1.023 s, System: 0.047 s]
	  Range (min … max):    1.070 s …  1.071 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 337ms
	Processing time (w/o IO): 341ms
	Processing time (w/o IO): 337ms
	  Time (mean ± σ):     546.3 ms ±   1.6 ms    [User: 515.8 ms, System: 28.9 ms]
	  Range (min … max):   545.2 ms … 547.5 ms    2 runs
	 
Julia:

	Benchmark 1: julia --startup-file=no --project=Related -e "using Related; main()"
	Processing time (w/o IO): 504.78281000000004ms
	Processing time (w/o IO): 505.0510110000001ms
	Processing time (w/o IO): 506.84841400000005ms
	  Time (mean ± σ):      1.744 s ±  0.030 s    [User: 1.536 s, System: 0.310 s]
	  Range (min … max):    1.722 s …  1.765 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 65 milliseconds
	Processing time (w/o IO): 69 milliseconds
	Processing time (w/o IO): 65 milliseconds
	  Time (mean ± σ):      1.348 s ±  0.023 s    [User: 1.126 s, System: 0.326 s]
	  Range (min … max):    1.332 s …  1.365 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --startup-file=no --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 176.787313ms
	Processing time (w/o IO): 179.152014ms
	Processing time (w/o IO): 175.913252ms
	  Time (mean ± σ):      1.461 s ±  0.052 s    [User: 1.760 s, System: 0.319 s]
	  Range (min … max):    1.424 s …  1.498 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  581.011025ms
	Processing time (w/o IO):  579.311725ms
	Processing time (w/o IO):  576.040688ms
	  Time (mean ± σ):      1.404 s ±  0.002 s    [User: 1.372 s, System: 0.029 s]
	  Range (min … max):    1.403 s …  1.405 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 745.921ms
	Processing time (w/o IO): 748.285ms
	Processing time (w/o IO): 746.853ms
	  Time (mean ± σ):      8.132 s ±  0.003 s    [User: 7.951 s, System: 0.177 s]
	  Range (min … max):    8.129 s …  8.134 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 2251ms
	Processing time (w/o IO): 2295ms
	Processing time (w/o IO): 2250ms
	  Time (mean ± σ):      3.063 s ±  0.027 s    [User: 3.267 s, System: 0.197 s]
	  Range (min … max):    3.044 s …  3.082 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 2024ms
	Processing time (w/o IO): 2017ms
	Processing time (w/o IO): 2013ms
	  Time (mean ± σ):      2.590 s ±  0.008 s    [User: 2.535 s, System: 0.081 s]
	  Range (min … max):    2.584 s …  2.596 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 736.6529703140259ms
	Processing time (w/o IO): 740.9390211105347ms
	Processing time (w/o IO): 739.5559549331665ms
	  Time (mean ± σ):      2.327 s ±  0.019 s    [User: 2.130 s, System: 0.165 s]
	  Range (min … max):    2.314 s …  2.340 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 401.670718ms
	Processing time (w/o IO): 399.734214ms
	Processing time (w/o IO): 398.827012ms
	  Time (mean ± σ):      1.970 s ±  0.014 s    [User: 2.934 s, System: 0.159 s]
	  Range (min … max):    1.960 s …  1.980 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 2029ms
	Processing time (w/o IO): 1949ms
	Processing time (w/o IO): 2035ms
	  Time (mean ± σ):      2.360 s ±  0.063 s    [User: 2.334 s, System: 0.128 s]
	  Range (min … max):    2.316 s …  2.405 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 1319ms
	Processing time (w/o IO): 1544ms
	Processing time (w/o IO): 1435ms
	  Time (mean ± σ):      1.709 s ±  0.070 s    [User: 1.682 s, System: 0.103 s]
	  Range (min … max):    1.659 s …  1.758 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 2297ms
	Processing time (w/o IO): 2313ms
	Processing time (w/o IO): 2299ms
	  Time (mean ± σ):      2.658 s ±  0.191 s    [User: 2.483 s, System: 0.093 s]
	  Range (min … max):    2.523 s …  2.793 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 857 ms
	Processing time (w/o IO): 857 ms
	Processing time (w/o IO): 857 ms
	  Time (mean ± σ):      1.839 s ±  0.005 s    [User: 1.787 s, System: 0.045 s]
	  Range (min … max):    1.835 s …  1.842 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 606 ms
	Processing time (w/o IO): 602 ms
	Processing time (w/o IO): 599 ms
	  Time (mean ± σ):     713.5 ms ±   2.4 ms    [User: 1656.1 ms, System: 47.2 ms]
	  Range (min … max):   711.8 ms … 715.2 ms    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 320.45ms
	Processing time (w/o IO): 318.262ms
	Processing time (w/o IO): 317.86ms
	  Time (mean ± σ):     461.9 ms ±   2.0 ms    [User: 414.4 ms, System: 47.3 ms]
	  Range (min … max):   460.4 ms … 463.3 ms    2 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 172.225ms
	Processing time (w/o IO): 174.502ms
	Processing time (w/o IO): 173.858ms
	  Time (mean ± σ):     309.9 ms ±   6.9 ms    [User: 754.9 ms, System: 59.1 ms]
	  Range (min … max):   305.0 ms … 314.8 ms    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 735.9932ms
	Processing time (w/o IO): 559.8267ms
	Processing time (w/o IO): 563.5906ms
	  Time (mean ± σ):      3.568 s ±  0.034 s    [User: 3.508 s, System: 0.406 s]
	  Range (min … max):    3.544 s …  3.592 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 287ms
	Processing time (w/o IO): 287ms
	Processing time (w/o IO): 280ms
	  Time (mean ± σ):      2.974 s ±  0.004 s    [User: 4.539 s, System: 0.416 s]
	  Range (min … max):    2.971 s …  2.978 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 232ms
	Processing time (w/o IO): 233ms
	Processing time (w/o IO): 234ms
	  Time (mean ± σ):      3.404 s ±  0.020 s    [User: 4.624 s, System: 0.417 s]
	  Range (min … max):    3.390 s …  3.418 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 373.7439ms
	Processing time (w/o IO): 386.3342ms
	Processing time (w/o IO): 376.2809ms
	  Time (mean ± σ):      3.750 s ±  0.024 s    [User: 3.574 s, System: 0.410 s]
	  Range (min … max):    3.733 s …  3.766 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 376.3911ms
	Processing time (w/o IO): 375.2248ms
	Processing time (w/o IO): 376.0248ms
	  Time (mean ± σ):      1.128 s ±  0.004 s    [User: 1.046 s, System: 0.105 s]
	  Range (min … max):    1.125 s …  1.130 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 374.594ms
	Processing time (w/o IO): 376.8048ms
	Processing time (w/o IO): 376.1718ms
	  Time (mean ± σ):     967.0 ms ±   5.4 ms    [User: 928.0 ms, System: 75.3 ms]
	  Range (min … max):   963.2 ms … 970.8 ms    2 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 130.1278ms
	Processing time (w/o IO): 130.3511ms
	Processing time (w/o IO): 128.4934ms
	  Time (mean ± σ):     658.1 ms ±   9.2 ms    [User: 1262.3 ms, System: 94.6 ms]
	  Range (min … max):   651.6 ms … 664.7 ms    2 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 148.2123ms
	Processing time (w/o IO): 150.7863ms
	Processing time (w/o IO): 148.1953ms
	  Time (mean ± σ):     515.1 ms ±   7.8 ms    [User: 1290.7 ms, System: 94.4 ms]
	  Range (min … max):   509.6 ms … 520.7 ms    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	1506.9880485535	ms
	Processing time (w/o IO):	1574.6219158173	ms
	Processing time (w/o IO):	1597.2630977631	ms
	  Time (mean ± σ):      3.196 s ±  0.052 s    [User: 3.094 s, System: 0.101 s]
	  Range (min … max):    3.160 s …  3.233 s    2 runs
	 
LuaJIT (JIT OFF):

	Benchmark 1: luajit -joff only_lua.lua
	Processing time (w/o IO):	10327.242851257	ms
	Processing time (w/o IO):	10293.893814087	ms
	Processing time (w/o IO):	10313.617944717	ms
	  Time (mean ± σ):     12.211 s ±  0.005 s    [User: 12.113 s, System: 0.093 s]
	  Range (min … max):   12.208 s … 12.214 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	16770.570993423	ms
	Processing time (w/o IO):	16833.825826645	ms
	  Time (abs ≡):        19.263 s               [User: 19.174 s, System: 0.083 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 3649ms
	Processing time (w/o IO): 3541ms
	Processing time (w/o IO): 3896ms
	  Time (mean ± σ):      4.293 s ±  0.267 s    [User: 4.040 s, System: 0.251 s]
	  Range (min … max):    4.104 s …  4.482 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 15.025955 s
	Processing time (w/o IO): 15.046437 s
	Processing time (w/o IO): 14.937772 s
	  Time (mean ± σ):     16.224 s ±  0.091 s    [User: 15.954 s, System: 0.335 s]
	  Range (min … max):   16.160 s … 16.289 s    2 runs
	 
Lobster (JIT):

	Benchmark 1: lobster related.lobster
	Processing time (w/o IO): 21.283301s
	Processing time (w/o IO): 21.30182s
	  Time (abs ≡):        21.704 s               [User: 21.590 s, System: 0.111 s]
	 
Lobster (C++):

	Benchmark 1: compiled_lobster
	Processing time (w/o IO): 2.888373s
	Processing time (w/o IO): 2.888433s
	  Time (abs ≡):         3.286 s               [User: 3.212 s, System: 0.071 s]
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 3.809513914s
	Processing time (w/o IO): 3.805238367s
	Processing time (w/o IO): 3.805312628s
	  Time (mean ± σ):      4.479 s ±  0.005 s    [User: 4.471 s, System: 0.190 s]
	  Range (min … max):    4.475 s …  4.482 s    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1.445153945s
	Processing time (w/o IO): 1.434661565s
	Processing time (w/o IO): 1.444684946s
	  Time (mean ± σ):      2.103 s ±  0.019 s    [User: 6.343 s, System: 0.179 s]
	  Range (min … max):    2.089 s …  2.116 s    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 3.062471185s
	Processing time (w/o IO): 3.051113551s
	Processing time (w/o IO): 3.055139766s
	  Time (mean ± σ):      3.365 s ±  0.010 s    [User: 3.252 s, System: 0.105 s]
	  Range (min … max):    3.359 s …  3.372 s    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 1.52982591s
	Processing time (w/o IO): 1.543403623s
	Processing time (w/o IO): 1.531228911s
	  Time (mean ± σ):      1.847 s ±  0.015 s    [User: 3.243 s, System: 0.121 s]
	  Range (min … max):    1.837 s …  1.858 s    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 3888.83ms
	Processing time (w/o IO): 3881.86ms
	Processing time (w/o IO): 3882.91ms
	  Time (mean ± σ):      4.931 s ±  0.007 s    [User: 4.778 s, System: 0.157 s]
	  Range (min … max):    4.926 s …  4.936 s    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1021.1ms
	Processing time (w/o IO): 1019.41ms
	Processing time (w/o IO): 1017.68ms
	  Time (mean ± σ):      2.024 s ±  0.001 s    [User: 4.723 s, System: 0.139 s]
	  Range (min … max):    2.023 s …  2.025 s    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 2810 ms
	Processing time (w/o IO): 2810 ms
	Processing time (w/o IO): 2803 ms
	  Time (mean ± σ):      5.802 s ±  0.018 s    [User: 5.240 s, System: 0.407 s]
	  Range (min … max):    5.789 s …  5.815 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 1417 ms
	Processing time (w/o IO): 1410 ms
	Processing time (w/o IO): 1413 ms
	  Time (mean ± σ):      4.697 s ±  0.000 s    [User: 8.166 s, System: 0.513 s]
	  Range (min … max):    4.697 s …  4.697 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 213.150s
	Processing time (w/o IO): 214.875s
	  Time (abs ≡):        215.471 s               [User: 215.259 s, System: 0.179 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 7181.330809ms
	Processing time (w/o IO): 7173.54084ms
	Processing time (w/o IO): 7168.830429ms
	  Time (mean ± σ):      8.016 s ±  0.003 s    [User: 7.871 s, System: 0.135 s]
	  Range (min … max):    8.014 s …  8.018 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 3024ms
	Processing time (w/o IO): 3019ms
	Processing time (w/o IO): 3018ms
	  Time (mean ± σ):      3.664 s ±  0.003 s    [User: 3.582 s, System: 0.075 s]
	  Range (min … max):    3.661 s …  3.666 s    2 runs
	 
Julia:

	Benchmark 1: julia --startup-file=no --project=Related -e "using Related; main()"
	Processing time (w/o IO): 4235.893932ms
	Processing time (w/o IO): 4233.956258ms
	Processing time (w/o IO): 4230.368068ms
	  Time (mean ± σ):      5.930 s ±  0.019 s    [User: 5.638 s, System: 0.388 s]
	  Range (min … max):    5.916 s …  5.943 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 173 milliseconds
	Processing time (w/o IO): 171 milliseconds
	Processing time (w/o IO): 169 milliseconds
	  Time (mean ± σ):      1.848 s ±  0.002 s    [User: 1.563 s, System: 0.389 s]
	  Range (min … max):    1.847 s …  1.849 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --startup-file=no --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 1495.51408ms
	Processing time (w/o IO): 1492.218024ms
	Processing time (w/o IO): 1490.2057280000001ms
	  Time (mean ± σ):      3.144 s ±  0.003 s    [User: 7.255 s, System: 0.389 s]
	  Range (min … max):    3.142 s …  3.146 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  6.047749912s
	Processing time (w/o IO):  6.004371718s
	Processing time (w/o IO):  5.9957702s
	  Time (mean ± σ):      8.475 s ±  0.000 s    [User: 8.374 s, System: 0.089 s]
	  Range (min … max):    8.474 s …  8.475 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 6.623s
	Processing time (w/o IO): 6.626s
	Processing time (w/o IO): 6.633s
	  Time (mean ± σ):     77.709 s ±  0.801 s    [User: 77.146 s, System: 0.545 s]
	  Range (min … max):   77.143 s … 78.276 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 19681ms
	Processing time (w/o IO): 19689ms
	Processing time (w/o IO): 19692ms
	  Time (mean ± σ):     21.389 s ±  0.010 s    [User: 21.539 s, System: 0.351 s]
	  Range (min … max):   21.382 s … 21.396 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 17924ms
	Processing time (w/o IO): 17851ms
	Processing time (w/o IO): 17889ms
	  Time (mean ± σ):     19.532 s ±  0.019 s    [User: 19.505 s, System: 0.191 s]
	  Range (min … max):   19.518 s … 19.546 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 6188.544988632202ms
	Processing time (w/o IO): 6204.240918159485ms
	Processing time (w/o IO): 6222.8230237960815ms
	  Time (mean ± σ):     10.864 s ±  0.031 s    [User: 10.195 s, System: 0.503 s]
	  Range (min … max):   10.842 s … 10.887 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 3503.859146ms
	Processing time (w/o IO): 3455.009283ms
	Processing time (w/o IO): 3468.398451ms
	  Time (mean ± σ):      8.191 s ±  0.125 s    [User: 17.739 s, System: 0.527 s]
	  Range (min … max):    8.103 s …  8.279 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 17624ms
	Processing time (w/o IO): 17479ms
	Processing time (w/o IO): 17519ms
	  Time (mean ± σ):     18.314 s ±  0.008 s    [User: 18.199 s, System: 0.255 s]
	  Range (min … max):   18.309 s … 18.319 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 15364ms
	Processing time (w/o IO): 12187ms
	Processing time (w/o IO): 15378ms
	  Time (mean ± σ):     14.349 s ±  2.276 s    [User: 14.296 s, System: 0.205 s]
	  Range (min … max):   12.739 s … 15.958 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 20208ms
	Processing time (w/o IO): 21937ms
	Processing time (w/o IO): 21910ms
	  Time (mean ± σ):     22.744 s ±  0.048 s    [User: 22.450 s, System: 0.243 s]
	  Range (min … max):   22.710 s … 22.778 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 7524 ms
	Processing time (w/o IO): 7530 ms
	Processing time (w/o IO): 7524 ms
	  Time (mean ± σ):     15.596 s ±  0.034 s    [User: 15.461 s, System: 0.129 s]
	  Range (min … max):   15.572 s … 15.620 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 5335 ms
	Processing time (w/o IO): 5351 ms
	Processing time (w/o IO): 5338 ms
	  Time (mean ± σ):      5.750 s ±  0.020 s    [User: 14.275 s, System: 0.123 s]
	  Range (min … max):    5.735 s …  5.764 s    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 2847.073ms
	Processing time (w/o IO): 2846.219ms
	Processing time (w/o IO): 2854.052ms
	  Time (mean ± σ):      3.348 s ±  0.013 s    [User: 3.223 s, System: 0.121 s]
	  Range (min … max):    3.339 s …  3.357 s    2 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 1479.722ms
	Processing time (w/o IO): 1497.246ms
	Processing time (w/o IO): 1477.716ms
	  Time (mean ± σ):      1.959 s ±  0.025 s    [User: 6.228 s, System: 0.115 s]
	  Range (min … max):    1.941 s …  1.977 s    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 6452.56ms
	Processing time (w/o IO): 6456.7873ms
	Processing time (w/o IO): 6464.5819ms
	  Time (mean ± σ):     18.916 s ±  0.181 s    [User: 20.010 s, System: 0.809 s]
	  Range (min … max):   18.788 s … 19.044 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 2418ms
	Processing time (w/o IO): 2493ms
	Processing time (w/o IO): 2501ms
	  Time (mean ± σ):     10.879 s ±  0.037 s    [User: 26.727 s, System: 0.856 s]
	  Range (min … max):   10.854 s … 10.905 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 2033ms
	Processing time (w/o IO): 2040ms
	Processing time (w/o IO): 2038ms
	  Time (mean ± σ):     12.850 s ±  0.110 s    [User: 26.386 s, System: 0.885 s]
	  Range (min … max):   12.772 s … 12.928 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 3264.3797ms
	Processing time (w/o IO): 3267.2998ms
	Processing time (w/o IO): 3247.044ms
	  Time (mean ± σ):     15.442 s ±  0.004 s    [User: 17.093 s, System: 0.845 s]
	  Range (min … max):   15.439 s … 15.445 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 3288.9608ms
	Processing time (w/o IO): 3280.8939ms
	Processing time (w/o IO): 3289.3441ms
	  Time (mean ± σ):      7.613 s ±  0.012 s    [User: 7.521 s, System: 0.244 s]
	  Range (min … max):    7.604 s …  7.622 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 3271.2689ms
	Processing time (w/o IO): 3272.3444ms
	Processing time (w/o IO): 3263.8536ms
	  Time (mean ± σ):      7.212 s ±  0.001 s    [User: 7.119 s, System: 0.223 s]
	  Range (min … max):    7.212 s …  7.213 s    2 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 1036.9787ms
	Processing time (w/o IO): 1031.864ms
	Processing time (w/o IO): 1035.998ms
	  Time (mean ± σ):      3.089 s ±  0.004 s    [User: 8.798 s, System: 0.253 s]
	  Range (min … max):    3.087 s …  3.092 s    2 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 1220.3245ms
	Processing time (w/o IO): 1215.5986ms
	Processing time (w/o IO): 1221.6684ms
	  Time (mean ± σ):      3.057 s ±  0.027 s    [User: 9.931 s, System: 0.215 s]
	  Range (min … max):    3.039 s …  3.076 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	10078.222036362	ms
	Processing time (w/o IO):	12504.994869232	ms
	Processing time (w/o IO):	12164.546012878	ms
	  Time (mean ± σ):     17.789 s ±  0.224 s    [User: 17.478 s, System: 0.295 s]
	  Range (min … max):   17.630 s … 17.948 s    2 runs
	 
LuaJIT (JIT OFF):

	Benchmark 1: luajit -joff only_lua.lua
	Processing time (w/o IO):	91578.230857849	ms
	Processing time (w/o IO):	91596.065998077	ms
	Processing time (w/o IO):	91259.123086929	ms
	  Time (mean ± σ):     97.448 s ±  0.374 s    [User: 97.156 s, System: 0.269 s]
	  Range (min … max):   97.183 s … 97.712 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	150073.30989838	ms
	Processing time (w/o IO):	150145.90620995	ms
	  Time (abs ≡):        157.836 s               [User: 157.520 s, System: 0.291 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 38422ms
	Processing time (w/o IO): 38348ms
	Processing time (w/o IO): 37714ms
	  Time (mean ± σ):     39.812 s ±  0.466 s    [User: 38.364 s, System: 1.439 s]
	  Range (min … max):   39.482 s … 40.141 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 133.659707 s
	Processing time (w/o IO): 133.980584 s
	Processing time (w/o IO): 136.860948 s
	  Time (mean ± σ):     138.852 s ±  2.195 s    [User: 137.806 s, System: 1.123 s]
	  Range (min … max):   137.299 s … 140.404 s    2 runs
	 
Lobster (JIT):

	Benchmark 1: lobster related.lobster
	Processing time (w/o IO): 189.846562s
	Processing time (w/o IO): 190.080209s
	  Time (abs ≡):        191.266 s               [User: 190.971 s, System: 0.255 s]
	 
Lobster (C++):

	Benchmark 1: compiled_lobster
	Processing time (w/o IO): 30.387952s
	Processing time (w/o IO): 25.69586s
	  Time (abs ≡):        26.838 s               [User: 26.613 s, System: 0.223 s]
	 
