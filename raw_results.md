Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 22.758569ms
	Processing time (w/o IO): 22.80547ms
	Processing time (w/o IO): 22.78167ms
	Processing time (w/o IO): 22.76717ms
	Processing time (w/o IO): 22.81927ms
	Processing time (w/o IO): 25.014096ms
	Processing time (w/o IO): 22.86737ms
	Processing time (w/o IO): 22.665969ms
	Processing time (w/o IO): 22.494266ms
	Processing time (w/o IO): 22.563367ms
	Processing time (w/o IO): 22.677968ms
	Processing time (w/o IO): 23.552379ms
	Processing time (w/o IO): 22.82017ms
	  Time (mean ± σ):      63.5 ms ±   1.1 ms    [User: 58.3 ms, System: 12.5 ms]
	  Range (min … max):    61.8 ms …  65.3 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 11.477836ms
	Processing time (w/o IO): 11.643037ms
	Processing time (w/o IO): 13.712563ms
	Processing time (w/o IO): 11.683738ms
	Processing time (w/o IO): 11.525436ms
	Processing time (w/o IO): 13.287757ms
	Processing time (w/o IO): 11.77144ms
	Processing time (w/o IO): 11.79374ms
	Processing time (w/o IO): 11.792439ms
	Processing time (w/o IO): 11.760139ms
	Processing time (w/o IO): 11.733639ms
	Processing time (w/o IO): 11.765339ms
	Processing time (w/o IO): 14.232069ms
	  Time (mean ± σ):      52.7 ms ±   2.8 ms    [User: 81.3 ms, System: 10.5 ms]
	  Range (min … max):    49.9 ms …  59.5 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 23.667376ms
	Processing time (w/o IO): 23.775779ms
	Processing time (w/o IO): 23.543072ms
	Processing time (w/o IO): 23.579574ms
	Processing time (w/o IO): 23.375468ms
	Processing time (w/o IO): 23.481371ms
	Processing time (w/o IO): 23.408068ms
	Processing time (w/o IO): 23.402268ms
	Processing time (w/o IO): 23.550572ms
	Processing time (w/o IO): 23.417768ms
	Processing time (w/o IO): 23.392868ms
	Processing time (w/o IO): 23.336166ms
	Processing time (w/o IO): 23.650276ms
	  Time (mean ± σ):      37.5 ms ±   0.4 ms    [User: 32.2 ms, System: 5.4 ms]
	  Range (min … max):    37.0 ms …  38.1 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 12.775787ms
	Processing time (w/o IO): 12.123067ms
	Processing time (w/o IO): 12.117367ms
	Processing time (w/o IO): 12.167069ms
	Processing time (w/o IO): 12.260171ms
	Processing time (w/o IO): 12.130967ms
	Processing time (w/o IO): 12.22547ms
	Processing time (w/o IO): 12.088966ms
	Processing time (w/o IO): 12.269571ms
	Processing time (w/o IO): 12.122267ms
	Processing time (w/o IO): 12.122467ms
	Processing time (w/o IO): 12.088266ms
	Processing time (w/o IO): 12.149668ms
	  Time (mean ± σ):      29.2 ms ±   0.4 ms    [User: 34.0 ms, System: 7.1 ms]
	  Range (min … max):    28.3 ms …  29.8 ms    10 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 25.154ms
	Processing time (w/o IO): 26.607ms
	Processing time (w/o IO): 25.961ms
	Processing time (w/o IO): 24.936ms
	Processing time (w/o IO): 24.434ms
	Processing time (w/o IO): 24.696ms
	Processing time (w/o IO): 24.05ms
	Processing time (w/o IO): 24.958ms
	Processing time (w/o IO): 24.088ms
	Processing time (w/o IO): 24.79ms
	Processing time (w/o IO): 24.987ms
	Processing time (w/o IO): 24.529ms
	Processing time (w/o IO): 23.993ms
	  Time (mean ± σ):     105.0 ms ±   1.0 ms    [User: 98.6 ms, System: 7.5 ms]
	  Range (min … max):   103.7 ms … 106.6 ms    10 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 12.69ms
	Processing time (w/o IO): 12.386ms
	Processing time (w/o IO): 11.722ms
	Processing time (w/o IO): 12.805ms
	Processing time (w/o IO): 12.791ms
	Processing time (w/o IO): 12.779ms
	Processing time (w/o IO): 12.344ms
	Processing time (w/o IO): 12.692ms
	Processing time (w/o IO): 12.934ms
	Processing time (w/o IO): 13.326ms
	Processing time (w/o IO): 12.988ms
	Processing time (w/o IO): 13.7ms
	Processing time (w/o IO): 13.272ms
	  Time (mean ± σ):      91.2 ms ±   0.6 ms    [User: 103.7 ms, System: 11.5 ms]
	  Range (min … max):    90.5 ms …  92.0 ms    10 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 22 ms
	Processing time (w/o IO): 22 ms
	Processing time (w/o IO): 22 ms
	Processing time (w/o IO): 22 ms
	Processing time (w/o IO): 22 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 22 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 22 ms
	Processing time (w/o IO): 23 ms
	  Time (mean ± σ):     213.7 ms ±   2.2 ms    [User: 187.5 ms, System: 26.0 ms]
	  Range (min … max):   210.4 ms … 217.9 ms    10 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 12 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 15 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 12 ms
	Processing time (w/o IO): 13 ms
	  Time (mean ± σ):     228.5 ms ±   3.0 ms    [User: 229.4 ms, System: 32.7 ms]
	  Range (min … max):   222.4 ms … 232.2 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 1.462s
	Processing time (w/o IO): 1.459s
	Processing time (w/o IO): 1.465s
	Processing time (w/o IO): 1.457s
	Processing time (w/o IO): 1.456s
	Processing time (w/o IO): 1.486s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.471s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.458s
	Processing time (w/o IO): 1.456s
	Processing time (w/o IO): 1.483s
	  Time (mean ± σ):      1.532 s ±  0.011 s    [User: 1.513 s, System: 0.019 s]
	  Range (min … max):    1.522 s …  1.553 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 352.5ms
	Processing time (w/o IO): 351.4ms
	Processing time (w/o IO): 357.7ms
	Processing time (w/o IO): 351.5ms
	Processing time (w/o IO): 352.7ms
	Processing time (w/o IO): 350.4ms
	Processing time (w/o IO): 351.0ms
	Processing time (w/o IO): 350.4ms
	Processing time (w/o IO): 352.3ms
	Processing time (w/o IO): 350.5ms
	Processing time (w/o IO): 352.5ms
	Processing time (w/o IO): 358.0ms
	Processing time (w/o IO): 351.0ms
	  Time (mean ± σ):     645.5 ms ±  27.8 ms    [User: 845.3 ms, System: 408.5 ms]
	  Range (min … max):   634.0 ms … 724.2 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 60.485568ms
	Processing time (w/o IO): 59.981555ms
	Processing time (w/o IO): 60.135059ms
	Processing time (w/o IO): 60.59757ms
	Processing time (w/o IO): 60.18856ms
	Processing time (w/o IO): 60.219661ms
	Processing time (w/o IO): 60.592971ms
	Processing time (w/o IO): 60.201461ms
	Processing time (w/o IO): 59.950554ms
	Processing time (w/o IO): 60.060257ms
	Processing time (w/o IO): 60.036156ms
	Processing time (w/o IO): 60.037957ms
	Processing time (w/o IO): 60.070357ms
	  Time (mean ± σ):     108.2 ms ±   0.6 ms    [User: 96.0 ms, System: 12.2 ms]
	  Range (min … max):   106.9 ms … 109.1 ms    10 runs
	 
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
	  Time (mean ± σ):      70.2 ms ±   1.0 ms    [User: 65.7 ms, System: 4.5 ms]
	  Range (min … max):    69.3 ms …  72.2 ms    10 runs
	 
Julia:

	Benchmark 1: julia --startup-file=no --project=Related -e "using Related; main()"
	Processing time (w/o IO): 31.186542000000003ms
	Processing time (w/o IO): 31.080196ms
	Processing time (w/o IO): 31.003622ms
	Processing time (w/o IO): 31.093508ms
	Processing time (w/o IO): 31.182509ms
	Processing time (w/o IO): 31.100407999999998ms
	Processing time (w/o IO): 31.193509000000002ms
	Processing time (w/o IO): 30.956407ms
	Processing time (w/o IO): 31.125912ms
	Processing time (w/o IO): 31.102611ms
	Processing time (w/o IO): 31.187913ms
	Processing time (w/o IO): 31.178461000000002ms
	Processing time (w/o IO): 31.06746ms
	  Time (mean ± σ):      1.014 s ±  0.020 s    [User: 0.901 s, System: 0.217 s]
	  Range (min … max):    0.991 s …  1.042 s    10 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 9 milliseconds
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
	  Time (mean ± σ):      1.004 s ±  0.017 s    [User: 0.874 s, System: 0.234 s]
	  Range (min … max):    0.982 s …  1.025 s    10 runs
	 
Julia Concurrent:

	Benchmark 1: julia --startup-file=no --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 13.562127ms
	Processing time (w/o IO): 14.033638ms
	Processing time (w/o IO): 14.185241ms
	Processing time (w/o IO): 13.718330000000002ms
	Processing time (w/o IO): 14.50405ms
	Processing time (w/o IO): 13.66563ms
	Processing time (w/o IO): 14.321145ms
	Processing time (w/o IO): 12.724907ms
	Processing time (w/o IO): 13.733542ms
	Processing time (w/o IO): 13.729743000000001ms
	Processing time (w/o IO): 14.69916ms
	Processing time (w/o IO): 14.889363ms
	Processing time (w/o IO): 12.690323999999999ms
	  Time (mean ± σ):     981.7 ms ±   9.6 ms    [User: 901.9 ms, System: 222.9 ms]
	  Range (min … max):   971.7 ms … 999.5 ms    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  47.735708ms
	Processing time (w/o IO):  48.186816ms
	Processing time (w/o IO):  47.936412ms
	Processing time (w/o IO):  47.920212ms
	Processing time (w/o IO):  47.885611ms
	Processing time (w/o IO):  48.541923ms
	Processing time (w/o IO):  48.218917ms
	Processing time (w/o IO):  48.027013ms
	Processing time (w/o IO):  47.692907ms
	Processing time (w/o IO):  47.815009ms
	Processing time (w/o IO):  47.931012ms
	Processing time (w/o IO):  47.965812ms
	Processing time (w/o IO):  48.496423ms
	  Time (mean ± σ):     267.0 ms ±   0.8 ms    [User: 258.4 ms, System: 8.4 ms]
	  Range (min … max):   265.9 ms … 268.4 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 49.348ms
	Processing time (w/o IO): 48.710ms
	Processing time (w/o IO): 49.134ms
	Processing time (w/o IO): 49.122ms
	Processing time (w/o IO): 48.984ms
	Processing time (w/o IO): 49.062ms
	Processing time (w/o IO): 48.649ms
	Processing time (w/o IO): 48.436ms
	Processing time (w/o IO): 48.979ms
	Processing time (w/o IO): 48.927ms
	Processing time (w/o IO): 48.820ms
	Processing time (w/o IO): 48.940ms
	Processing time (w/o IO): 48.903ms
	  Time (mean ± σ):     361.9 ms ±   3.6 ms    [User: 337.2 ms, System: 24.6 ms]
	  Range (min … max):   356.0 ms … 369.5 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 168ms
	Processing time (w/o IO): 168ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 168ms
	Processing time (w/o IO): 176ms
	Processing time (w/o IO): 163ms
	Processing time (w/o IO): 175ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 169ms
	  Time (mean ± σ):     544.5 ms ±   8.1 ms    [User: 651.6 ms, System: 106.9 ms]
	  Range (min … max):   533.1 ms … 557.4 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 129ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 129ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 132ms
	  Time (mean ± σ):     253.8 ms ±   1.4 ms    [User: 239.8 ms, System: 18.4 ms]
	  Range (min … max):   251.9 ms … 255.9 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 50.784945487976074ms
	Processing time (w/o IO): 50.45604705810547ms
	Processing time (w/o IO): 50.492048263549805ms
	Processing time (w/o IO): 50.72295665740967ms
	Processing time (w/o IO): 51.18405818939209ms
	Processing time (w/o IO): 50.744056701660156ms
	Processing time (w/o IO): 50.94301700592041ms
	Processing time (w/o IO): 50.87602138519287ms
	Processing time (w/o IO): 51.2009859085083ms
	Processing time (w/o IO): 50.425052642822266ms
	Processing time (w/o IO): 50.758957862854004ms
	Processing time (w/o IO): 50.560951232910156ms
	Processing time (w/o IO): 50.717949867248535ms
	  Time (mean ± σ):     404.2 ms ±   5.3 ms    [User: 353.8 ms, System: 32.8 ms]
	  Range (min … max):   398.1 ms … 414.2 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 31.622872ms
	Processing time (w/o IO): 31.404768ms
	Processing time (w/o IO): 31.485069ms
	Processing time (w/o IO): 31.003461ms
	Processing time (w/o IO): 31.310866ms
	Processing time (w/o IO): 31.810075ms
	Processing time (w/o IO): 32.507087ms
	Processing time (w/o IO): 32.372686ms
	Processing time (w/o IO): 31.079962ms
	Processing time (w/o IO): 31.642272ms
	Processing time (w/o IO): 32.179982ms
	Processing time (w/o IO): 31.869676ms
	Processing time (w/o IO): 32.710217ms
	  Time (mean ± σ):     412.7 ms ±  43.4 ms    [User: 424.5 ms, System: 45.1 ms]
	  Range (min … max):   391.3 ms … 534.6 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 193ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 125ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 125ms
	Processing time (w/o IO): 127ms
	  Time (mean ± σ):     303.1 ms ±   3.2 ms    [User: 291.7 ms, System: 65.1 ms]
	  Range (min … max):   298.3 ms … 309.0 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 104ms
	Processing time (w/o IO): 125ms
	Processing time (w/o IO): 125ms
	Processing time (w/o IO): 112ms
	Processing time (w/o IO): 125ms
	Processing time (w/o IO): 123ms
	Processing time (w/o IO): 119ms
	Processing time (w/o IO): 119ms
	Processing time (w/o IO): 119ms
	Processing time (w/o IO): 125ms
	Processing time (w/o IO): 112ms
	Processing time (w/o IO): 120ms
	Processing time (w/o IO): 117ms
	  Time (mean ± σ):     175.3 ms ±   4.0 ms    [User: 191.8 ms, System: 37.7 ms]
	  Range (min … max):   168.0 ms … 181.7 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 199ms
	Processing time (w/o IO): 199ms
	Processing time (w/o IO): 139ms
	Processing time (w/o IO): 200ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 197ms
	Processing time (w/o IO): 198ms
	Processing time (w/o IO): 199ms
	Processing time (w/o IO): 193ms
	Processing time (w/o IO): 197ms
	Processing time (w/o IO): 193ms
	  Time (mean ± σ):     248.8 ms ±  27.5 ms    [User: 242.2 ms, System: 32.4 ms]
	  Range (min … max):   207.1 ms … 270.2 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 54 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 52 ms
	  Time (mean ± σ):     382.0 ms ±   8.4 ms    [User: 674.8 ms, System: 52.9 ms]
	  Range (min … max):   371.5 ms … 397.9 ms    10 runs
	 
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
	  Time (mean ± σ):     130.2 ms ±   0.8 ms    [User: 113.4 ms, System: 16.9 ms]
	  Range (min … max):   129.0 ms … 131.4 ms    10 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 38 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 38 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 38 ms
	  Time (mean ± σ):      69.6 ms ±   1.9 ms    [User: 115.3 ms, System: 13.1 ms]
	  Range (min … max):    67.4 ms …  73.1 ms    10 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 22.38ms
	Processing time (w/o IO): 22.061ms
	Processing time (w/o IO): 22.27ms
	Processing time (w/o IO): 22.27ms
	Processing time (w/o IO): 22.157ms
	Processing time (w/o IO): 22.117ms
	Processing time (w/o IO): 22.111ms
	Processing time (w/o IO): 22.193ms
	Processing time (w/o IO): 22.056ms
	Processing time (w/o IO): 22.161ms
	Processing time (w/o IO): 22.111ms
	Processing time (w/o IO): 22.144ms
	Processing time (w/o IO): 22.096ms
	  Time (mean ± σ):      52.7 ms ±   0.6 ms    [User: 41.1 ms, System: 11.6 ms]
	  Range (min … max):    52.1 ms …  53.5 ms    10 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 15.412ms
	Processing time (w/o IO): 12.109ms
	Processing time (w/o IO): 12.149ms
	Processing time (w/o IO): 13.17ms
	Processing time (w/o IO): 13.564ms
	Processing time (w/o IO): 13.006ms
	Processing time (w/o IO): 12.956ms
	Processing time (w/o IO): 12.67ms
	Processing time (w/o IO): 12.359ms
	Processing time (w/o IO): 14.109ms
	Processing time (w/o IO): 12.181ms
	Processing time (w/o IO): 12.209ms
	Processing time (w/o IO): 12.131ms
	  Time (mean ± σ):      39.2 ms ±   0.9 ms    [User: 64.2 ms, System: 9.1 ms]
	  Range (min … max):    38.1 ms …  41.0 ms    10 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 85.896ms
	Processing time (w/o IO): 85.0937ms
	Processing time (w/o IO): 84.9394ms
	Processing time (w/o IO): 84.9113ms
	Processing time (w/o IO): 84.6261ms
	Processing time (w/o IO): 85.2204ms
	Processing time (w/o IO): 84.886ms
	Processing time (w/o IO): 84.6939ms
	Processing time (w/o IO): 87.5531ms
	Processing time (w/o IO): 84.8756ms
	Processing time (w/o IO): 85.2628ms
	Processing time (w/o IO): 84.8797ms
	Processing time (w/o IO): 85.1394ms
	  Time (mean ± σ):      1.024 s ±  0.009 s    [User: 1.130 s, System: 0.100 s]
	  Range (min … max):    1.011 s …  1.041 s    10 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 23ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	  Time (mean ± σ):     920.4 ms ±  12.2 ms    [User: 1095.9 ms, System: 102.8 ms]
	  Range (min … max):   907.1 ms … 950.9 ms    10 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
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
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 15ms
	  Time (mean ± σ):     710.6 ms ±   2.8 ms    [User: 783.7 ms, System: 86.3 ms]
	  Range (min … max):   707.0 ms … 715.3 ms    10 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 28.8337ms
	Processing time (w/o IO): 26.7307ms
	Processing time (w/o IO): 26.7315ms
	Processing time (w/o IO): 26.5937ms
	Processing time (w/o IO): 26.6554ms
	Processing time (w/o IO): 27.1069ms
	Processing time (w/o IO): 26.7462ms
	Processing time (w/o IO): 26.6606ms
	Processing time (w/o IO): 26.5374ms
	Processing time (w/o IO): 26.7299ms
	Processing time (w/o IO): 26.514ms
	Processing time (w/o IO): 26.5675ms
	Processing time (w/o IO): 26.672ms
	  Time (mean ± σ):     729.6 ms ±   6.2 ms    [User: 713.6 ms, System: 73.9 ms]
	  Range (min … max):   725.9 ms … 746.3 ms    10 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 27.1825ms
	Processing time (w/o IO): 27.1744ms
	Processing time (w/o IO): 27.0522ms
	Processing time (w/o IO): 27.0243ms
	Processing time (w/o IO): 27.135ms
	Processing time (w/o IO): 27.8718ms
	Processing time (w/o IO): 27.342ms
	Processing time (w/o IO): 27.4832ms
	Processing time (w/o IO): 26.893ms
	Processing time (w/o IO): 27.1009ms
	Processing time (w/o IO): 27.0815ms
	Processing time (w/o IO): 27.3052ms
	Processing time (w/o IO): 27.0034ms
	  Time (mean ± σ):     208.1 ms ±   3.0 ms    [User: 168.6 ms, System: 32.8 ms]
	  Range (min … max):   204.2 ms … 214.1 ms    10 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 26.5504ms
	Processing time (w/o IO): 26.0126ms
	Processing time (w/o IO): 26.218ms
	Processing time (w/o IO): 26.2992ms
	Processing time (w/o IO): 26.7014ms
	Processing time (w/o IO): 26.2813ms
	Processing time (w/o IO): 26.1162ms
	Processing time (w/o IO): 27.7097ms
	Processing time (w/o IO): 26.6686ms
	Processing time (w/o IO): 26.0769ms
	Processing time (w/o IO): 26.3467ms
	Processing time (w/o IO): 26.3121ms
	Processing time (w/o IO): 25.9034ms
	  Time (mean ± σ):     101.6 ms ±   2.2 ms    [User: 93.4 ms, System: 25.2 ms]
	  Range (min … max):    97.9 ms … 105.3 ms    10 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 13.7153ms
	Processing time (w/o IO): 14.6944ms
	Processing time (w/o IO): 11.9153ms
	Processing time (w/o IO): 13.171ms
	Processing time (w/o IO): 13.9085ms
	Processing time (w/o IO): 13.7526ms
	Processing time (w/o IO): 13.8783ms
	Processing time (w/o IO): 13.3516ms
	Processing time (w/o IO): 13.1316ms
	Processing time (w/o IO): 13.4347ms
	Processing time (w/o IO): 13.7368ms
	Processing time (w/o IO): 11.4481ms
	Processing time (w/o IO): 13.727ms
	  Time (mean ± σ):     196.9 ms ±   6.2 ms    [User: 202.5 ms, System: 34.9 ms]
	  Range (min … max):   188.4 ms … 207.9 ms    10 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 11.0652ms
	Processing time (w/o IO): 11.0014ms
	Processing time (w/o IO): 11.1452ms
	Processing time (w/o IO): 11.5153ms
	Processing time (w/o IO): 11.0399ms
	Processing time (w/o IO): 11.3311ms
	Processing time (w/o IO): 11.529ms
	Processing time (w/o IO): 11.0646ms
	Processing time (w/o IO): 11.0859ms
	Processing time (w/o IO): 11.2792ms
	Processing time (w/o IO): 11.0847ms
	Processing time (w/o IO): 11.1742ms
	Processing time (w/o IO): 11.0917ms
	  Time (mean ± σ):      72.1 ms ±   1.7 ms    [User: 127.0 ms, System: 25.3 ms]
	  Range (min … max):    69.5 ms …  74.4 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	88.3469581604	ms
	Processing time (w/o IO):	112.19501495361	ms
	Processing time (w/o IO):	104.98881340027	ms
	Processing time (w/o IO):	111.54198646545	ms
	Processing time (w/o IO):	88.876962661743	ms
	Processing time (w/o IO):	104.30598258972	ms
	Processing time (w/o IO):	87.86416053772	ms
	Processing time (w/o IO):	110.10813713074	ms
	Processing time (w/o IO):	103.48892211914	ms
	Processing time (w/o IO):	89.670896530151	ms
	Processing time (w/o IO):	87.605953216553	ms
	Processing time (w/o IO):	110.62812805176	ms
	Processing time (w/o IO):	103.97887229919	ms
	  Time (mean ± σ):     337.3 ms ±  13.0 ms    [User: 321.8 ms, System: 15.4 ms]
	  Range (min … max):   318.5 ms … 356.5 ms    10 runs
	 
LuaJIT (JIT OFF):

	Benchmark 1: luajit -joff only_lua.lua
	Processing time (w/o IO):	666.39614105225	ms
	Processing time (w/o IO):	667.475938797	ms
	Processing time (w/o IO):	667.7508354187	ms
	Processing time (w/o IO):	668.16210746765	ms
	Processing time (w/o IO):	667.25015640259	ms
	Processing time (w/o IO):	664.97802734375	ms
	Processing time (w/o IO):	667.3219203949	ms
	Processing time (w/o IO):	669.2259311676	ms
	Processing time (w/o IO):	668.19286346436	ms
	Processing time (w/o IO):	669.18301582336	ms
	Processing time (w/o IO):	665.35186767578	ms
	Processing time (w/o IO):	668.55692863464	ms
	Processing time (w/o IO):	669.34490203857	ms
	  Time (mean ± σ):     985.2 ms ±   6.4 ms    [User: 968.4 ms, System: 15.4 ms]
	  Range (min … max):   978.3 ms … 1001.8 ms    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1092.7240848541	ms
	Processing time (w/o IO):	1109.6439361572	ms
	Processing time (w/o IO):	1091.4809703827	ms
	Processing time (w/o IO):	1091.3589000702	ms
	Processing time (w/o IO):	1092.9419994354	ms
	Processing time (w/o IO):	1090.6989574432	ms
	Processing time (w/o IO):	1086.7869853973	ms
	Processing time (w/o IO):	1089.4439220428	ms
	Processing time (w/o IO):	1092.7250385284	ms
	Processing time (w/o IO):	1089.784860611	ms
	Processing time (w/o IO):	1089.7378921509	ms
	Processing time (w/o IO):	1094.7048664093	ms
	Processing time (w/o IO):	1094.7978496552	ms
	  Time (mean ± σ):      1.512 s ±  0.006 s    [User: 1.497 s, System: 0.014 s]
	  Range (min … max):    1.503 s …  1.521 s    10 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 144ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 144ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 136ms
	Processing time (w/o IO): 144ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 143ms
	Processing time (w/o IO): 139ms
	Processing time (w/o IO): 140ms
	  Time (mean ± σ):     226.7 ms ±   6.6 ms    [User: 202.1 ms, System: 23.8 ms]
	  Range (min … max):   217.2 ms … 238.2 ms    10 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 0.880113 s
	Processing time (w/o IO): 0.879626 s
	Processing time (w/o IO): 0.888004 s
	Processing time (w/o IO): 0.890251 s
	Processing time (w/o IO): 0.893705 s
	Processing time (w/o IO): 0.893669 s
	Processing time (w/o IO): 0.888456 s
	Processing time (w/o IO): 0.894997 s
	Processing time (w/o IO): 0.884542 s
	Processing time (w/o IO): 0.878590 s
	Processing time (w/o IO): 0.878228 s
	Processing time (w/o IO): 0.884465 s
	Processing time (w/o IO): 0.877930 s
	  Time (mean ± σ):      1.237 s ±  0.006 s    [User: 1.173 s, System: 0.098 s]
	  Range (min … max):    1.226 s …  1.245 s    10 runs
	 
Ruby:

	Benchmark 1: ruby related.rb
	Processing time (w/o IO): 3109ms
	Processing time (w/o IO): 3005ms
	Processing time (w/o IO): 3101ms
	Processing time (w/o IO): 3016ms
	Processing time (w/o IO): 3001ms
	Processing time (w/o IO): 3141ms
	Processing time (w/o IO): 3094ms
	Processing time (w/o IO): 3009ms
	Processing time (w/o IO): 3007ms
	Processing time (w/o IO): 3021ms
	Processing time (w/o IO): 3012ms
	Processing time (w/o IO): 3021ms
	Processing time (w/o IO): 3033ms
	  Time (mean ± σ):      3.151 s ±  0.046 s    [User: 3.129 s, System: 0.022 s]
	  Range (min … max):    3.117 s …  3.257 s    10 runs
	 
daScript (interpreted):

	Benchmark 1: das related.das
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 320.632118ms
	Processing time (w/o IO): 323.053145ms
	Processing time (w/o IO): 320.995122ms
	  Time (mean ± σ):     476.9 ms ±   3.4 ms    [User: 461.8 ms, System: 43.0 ms]
	  Range (min … max):   474.5 ms … 479.3 ms    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 163.307542ms
	Processing time (w/o IO): 163.783947ms
	Processing time (w/o IO): 164.90306ms
	  Time (mean ± σ):     311.7 ms ±   4.7 ms    [User: 791.6 ms, System: 29.3 ms]
	  Range (min … max):   308.4 ms … 315.1 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 341.336244ms
	Processing time (w/o IO): 341.283638ms
	Processing time (w/o IO): 341.503041ms
	  Time (mean ± σ):     403.2 ms ±   0.4 ms    [User: 367.7 ms, System: 35.4 ms]
	  Range (min … max):   402.9 ms … 403.4 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 173.34405ms
	Processing time (w/o IO): 172.781644ms
	Processing time (w/o IO): 173.29705ms
	  Time (mean ± σ):     236.7 ms ±   0.0 ms    [User: 376.0 ms, System: 30.1 ms]
	  Range (min … max):   236.7 ms … 236.7 ms    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 315.23ms
	Processing time (w/o IO): 314.474ms
	Processing time (w/o IO): 315.857ms
	  Time (mean ± σ):     609.5 ms ±   2.5 ms    [User: 581.8 ms, System: 31.8 ms]
	  Range (min … max):   607.7 ms … 611.3 ms    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 123.82ms
	Processing time (w/o IO): 122.601ms
	Processing time (w/o IO): 123.152ms
	  Time (mean ± σ):     427.2 ms ±   0.6 ms    [User: 715.7 ms, System: 31.4 ms]
	  Range (min … max):   426.8 ms … 427.6 ms    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 318 ms
	Processing time (w/o IO): 319 ms
	Processing time (w/o IO): 318 ms
	  Time (mean ± σ):      1.105 s ±  0.002 s    [User: 0.971 s, System: 0.131 s]
	  Range (min … max):    1.103 s …  1.107 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 164 ms
	Processing time (w/o IO): 164 ms
	Processing time (w/o IO): 164 ms
	  Time (mean ± σ):      1.029 s ±  0.000 s    [User: 1.386 s, System: 0.120 s]
	  Range (min … max):    1.028 s …  1.029 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 23.499s
	Processing time (w/o IO): 23.464s
	  Time (abs ≡):        23.622 s               [User: 23.579 s, System: 0.035 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 6.236s
	Processing time (w/o IO): 6.774s
	Processing time (w/o IO): 7.481s
	  Time (mean ± σ):      7.642 s ±  0.493 s    [User: 5.189 s, System: 3.045 s]
	  Range (min … max):    7.294 s …  7.990 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 907.527181ms
	Processing time (w/o IO): 907.376907ms
	Processing time (w/o IO): 903.092975ms
	  Time (mean ± σ):      1.110 s ±  0.005 s    [User: 1.067 s, System: 0.039 s]
	  Range (min … max):    1.106 s …  1.113 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 340ms
	Processing time (w/o IO): 339ms
	Processing time (w/o IO): 339ms
	  Time (mean ± σ):     531.1 ms ±   1.3 ms    [User: 505.5 ms, System: 25.6 ms]
	  Range (min … max):   530.2 ms … 532.0 ms    2 runs
	 
Julia:

	Benchmark 1: julia --startup-file=no --project=Related -e "using Related; main()"
	Processing time (w/o IO): 502.66505399999994ms
	Processing time (w/o IO): 503.82959000000005ms
	Processing time (w/o IO): 502.682654ms
	  Time (mean ± σ):      1.626 s ±  0.007 s    [User: 1.457 s, System: 0.263 s]
	  Range (min … max):    1.621 s …  1.631 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 53 milliseconds
	Processing time (w/o IO): 52 milliseconds
	Processing time (w/o IO): 53 milliseconds
	  Time (mean ± σ):      1.170 s ±  0.005 s    [User: 0.986 s, System: 0.278 s]
	  Range (min … max):    1.166 s …  1.173 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --startup-file=no --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 171.266852ms
	Processing time (w/o IO): 171.871198ms
	Processing time (w/o IO): 179.985152ms
	  Time (mean ± σ):      1.320 s ±  0.001 s    [User: 1.613 s, System: 0.302 s]
	  Range (min … max):    1.319 s …  1.321 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  687.249883ms
	Processing time (w/o IO):  689.247446ms
	Processing time (w/o IO):  690.02061ms
	  Time (mean ± σ):      1.490 s ±  0.009 s    [User: 1.442 s, System: 0.040 s]
	  Range (min … max):    1.483 s …  1.497 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 741.314ms
	Processing time (w/o IO): 741.281ms
	Processing time (w/o IO): 740.721ms
	  Time (mean ± σ):     10.528 s ±  0.418 s    [User: 10.400 s, System: 0.123 s]
	  Range (min … max):   10.233 s … 10.823 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 2063ms
	Processing time (w/o IO): 2246ms
	Processing time (w/o IO): 2063ms
	  Time (mean ± σ):      2.820 s ±  0.113 s    [User: 2.992 s, System: 0.166 s]
	  Range (min … max):    2.740 s …  2.900 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 1998ms
	Processing time (w/o IO): 2008ms
	Processing time (w/o IO): 2003ms
	  Time (mean ± σ):      2.488 s ±  0.001 s    [User: 2.436 s, System: 0.071 s]
	  Range (min … max):    2.487 s …  2.489 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 713.1270170211792ms
	Processing time (w/o IO): 707.3149681091309ms
	Processing time (w/o IO): 714.3549919128418ms
	  Time (mean ± σ):      2.090 s ±  0.005 s    [User: 1.921 s, System: 0.133 s]
	  Range (min … max):    2.087 s …  2.093 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 393.089364ms
	Processing time (w/o IO): 396.302192ms
	Processing time (w/o IO): 392.121078ms
	  Time (mean ± σ):      1.813 s ±  0.007 s    [User: 2.778 s, System: 0.142 s]
	  Range (min … max):    1.808 s …  1.818 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 2612ms
	Processing time (w/o IO): 2490ms
	Processing time (w/o IO): 2485ms
	  Time (mean ± σ):      2.816 s ±  0.004 s    [User: 2.837 s, System: 0.107 s]
	  Range (min … max):    2.813 s …  2.819 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 1533ms
	Processing time (w/o IO): 1532ms
	Processing time (w/o IO): 1525ms
	  Time (mean ± σ):      1.694 s ±  0.004 s    [User: 1.691 s, System: 0.078 s]
	  Range (min … max):    1.691 s …  1.697 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 2468ms
	Processing time (w/o IO): 1810ms
	Processing time (w/o IO): 1808ms
	  Time (mean ± σ):      2.174 s ±  0.259 s    [User: 1.940 s, System: 0.087 s]
	  Range (min … max):    1.991 s …  2.357 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 851 ms
	Processing time (w/o IO): 851 ms
	Processing time (w/o IO): 851 ms
	  Time (mean ± σ):      1.801 s ±  0.002 s    [User: 1.762 s, System: 0.037 s]
	  Range (min … max):    1.799 s …  1.802 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 458 ms
	Processing time (w/o IO): 463 ms
	Processing time (w/o IO): 466 ms
	  Time (mean ± σ):     567.6 ms ±   2.2 ms    [User: 1309.4 ms, System: 21.5 ms]
	  Range (min … max):   566.0 ms … 569.2 ms    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 316.483ms
	Processing time (w/o IO): 316.697ms
	Processing time (w/o IO): 315.022ms
	  Time (mean ± σ):     433.2 ms ±   0.2 ms    [User: 395.9 ms, System: 37.3 ms]
	  Range (min … max):   433.1 ms … 433.3 ms    2 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 177.575ms
	Processing time (w/o IO): 171.869ms
	Processing time (w/o IO): 172.014ms
	  Time (mean ± σ):     283.9 ms ±   0.5 ms    [User: 746.8 ms, System: 35.7 ms]
	  Range (min … max):   283.5 ms … 284.2 ms    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 610.823ms
	Processing time (w/o IO): 610.7083ms
	Processing time (w/o IO): 612.4359ms
	  Time (mean ± σ):      3.373 s ±  0.017 s    [User: 3.387 s, System: 0.245 s]
	  Range (min … max):    3.361 s …  3.385 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 288ms
	Processing time (w/o IO): 294ms
	Processing time (w/o IO): 274ms
	  Time (mean ± σ):      2.693 s ±  0.024 s    [User: 4.337 s, System: 0.238 s]
	  Range (min … max):    2.676 s …  2.710 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 231ms
	Processing time (w/o IO): 230ms
	Processing time (w/o IO): 234ms
	  Time (mean ± σ):      3.132 s ±  0.024 s    [User: 4.454 s, System: 0.249 s]
	  Range (min … max):    3.115 s …  3.149 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 370.0491ms
	Processing time (w/o IO): 369.8437ms
	Processing time (w/o IO): 369.0826ms
	  Time (mean ± σ):      3.404 s ±  0.006 s    [User: 3.369 s, System: 0.240 s]
	  Range (min … max):    3.400 s …  3.409 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 375.9298ms
	Processing time (w/o IO): 370.9717ms
	Processing time (w/o IO): 371.7195ms
	  Time (mean ± σ):      1.068 s ±  0.004 s    [User: 1.023 s, System: 0.062 s]
	  Range (min … max):    1.065 s …  1.071 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 369.1324ms
	Processing time (w/o IO): 371.209ms
	Processing time (w/o IO): 369.6829ms
	  Time (mean ± σ):     906.3 ms ±   3.9 ms    [User: 879.7 ms, System: 59.8 ms]
	  Range (min … max):   903.5 ms … 909.0 ms    2 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 124.0653ms
	Processing time (w/o IO): 122.2298ms
	Processing time (w/o IO): 121.8132ms
	  Time (mean ± σ):     572.6 ms ±   4.4 ms    [User: 1170.1 ms, System: 86.2 ms]
	  Range (min … max):   569.4 ms … 575.7 ms    2 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 140.8145ms
	Processing time (w/o IO): 141.5767ms
	Processing time (w/o IO): 141.167ms
	  Time (mean ± σ):     448.4 ms ±   0.7 ms    [User: 1229.0 ms, System: 59.5 ms]
	  Range (min … max):   447.9 ms … 448.9 ms    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	1511.9960308075	ms
	Processing time (w/o IO):	1413.6159420013	ms
	Processing time (w/o IO):	1476.7270088196	ms
	  Time (mean ± σ):      2.678 s ±  0.003 s    [User: 2.607 s, System: 0.070 s]
	  Range (min … max):    2.676 s …  2.680 s    2 runs
	 
LuaJIT (JIT OFF):

	Benchmark 1: luajit -joff only_lua.lua
	Processing time (w/o IO):	10230.129957199	ms
	Processing time (w/o IO):	10251.806974411	ms
	Processing time (w/o IO):	10217.673063278	ms
	  Time (mean ± σ):     11.705 s ±  0.027 s    [User: 11.638 s, System: 0.063 s]
	  Range (min … max):   11.686 s … 11.724 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	16721.745014191	ms
	Processing time (w/o IO):	16713.51981163	ms
	  Time (abs ≡):        18.488 s               [User: 18.436 s, System: 0.047 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 2688ms
	Processing time (w/o IO): 2638ms
	Processing time (w/o IO): 2644ms
	  Time (mean ± σ):      3.046 s ±  0.002 s    [User: 2.909 s, System: 0.136 s]
	  Range (min … max):    3.045 s …  3.048 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 14.425518 s
	Processing time (w/o IO): 14.385283 s
	Processing time (w/o IO): 14.412813 s
	  Time (mean ± σ):     15.409 s ±  0.014 s    [User: 15.167 s, System: 0.299 s]
	  Range (min … max):   15.399 s … 15.419 s    2 runs
	 
Ruby:

	Benchmark 1: ruby related.rb
	Processing time (w/o IO): 47405ms
	Processing time (w/o IO): 47422ms
	Processing time (w/o IO): 47590ms
	  Time (mean ± σ):     47.798 s ±  0.124 s    [User: 47.737 s, System: 0.055 s]
	  Range (min … max):   47.711 s … 47.886 s    2 runs
	 
daScript (interpreted):

	Benchmark 1: das related.das
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 2.861305001s
	Processing time (w/o IO): 2.856864348s
	Processing time (w/o IO): 2.865226019s
	  Time (mean ± σ):      3.344 s ±  0.021 s    [User: 3.373 s, System: 0.117 s]
	  Range (min … max):    3.329 s …  3.359 s    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1.413592038s
	Processing time (w/o IO): 1.419602689s
	Processing time (w/o IO): 1.425779869s
	  Time (mean ± σ):      1.899 s ±  0.018 s    [User: 6.115 s, System: 0.123 s]
	  Range (min … max):    1.887 s …  1.912 s    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 3.036693732s
	Processing time (w/o IO): 3.032989592s
	Processing time (w/o IO): 3.035053391s
	  Time (mean ± σ):      3.243 s ±  0.005 s    [User: 3.164 s, System: 0.072 s]
	  Range (min … max):    3.240 s …  3.246 s    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 1.51534409s
	Processing time (w/o IO): 1.515655792s
	Processing time (w/o IO): 1.518069215s
	  Time (mean ± σ):      1.716 s ±  0.003 s    [User: 3.143 s, System: 0.075 s]
	  Range (min … max):    1.714 s …  1.718 s    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 2694.28ms
	Processing time (w/o IO): 2700.18ms
	Processing time (w/o IO): 2708.21ms
	  Time (mean ± σ):      3.650 s ±  0.003 s    [User: 3.532 s, System: 0.119 s]
	  Range (min … max):    3.648 s …  3.652 s    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 970.205ms
	Processing time (w/o IO): 969.96ms
	Processing time (w/o IO): 970.155ms
	  Time (mean ± σ):      1.901 s ±  0.017 s    [User: 4.500 s, System: 0.115 s]
	  Range (min … max):    1.889 s …  1.914 s    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 2778 ms
	Processing time (w/o IO): 2777 ms
	Processing time (w/o IO): 2778 ms
	  Time (mean ± σ):      5.255 s ±  0.000 s    [User: 4.851 s, System: 0.282 s]
	  Range (min … max):    5.254 s …  5.255 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 1400 ms
	Processing time (w/o IO): 1401 ms
	Processing time (w/o IO): 1402 ms
	  Time (mean ± σ):      4.204 s ±  0.001 s    [User: 7.849 s, System: 0.324 s]
	  Range (min … max):    4.203 s …  4.205 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 215.633s
	Processing time (w/o IO): 212.303s
	  Time (abs ≡):        212.727 s               [User: 212.570 s, System: 0.128 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 8007.609701ms
	Processing time (w/o IO): 8006.911506ms
	Processing time (w/o IO): 7991.190762ms
	  Time (mean ± σ):      8.718 s ±  0.012 s    [User: 8.608 s, System: 0.103 s]
	  Range (min … max):    8.709 s …  8.726 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 3026ms
	Processing time (w/o IO): 3016ms
	Processing time (w/o IO): 3011ms
	  Time (mean ± σ):      3.610 s ±  0.002 s    [User: 3.524 s, System: 0.078 s]
	  Range (min … max):    3.608 s …  3.611 s    2 runs
	 
Julia:

	Benchmark 1: julia --startup-file=no --project=Related -e "using Related; main()"
	Processing time (w/o IO): 4214.79629ms
	Processing time (w/o IO): 4251.033291ms
	Processing time (w/o IO): 4222.3785339999995ms
	  Time (mean ± σ):      5.684 s ±  0.046 s    [User: 5.481 s, System: 0.300 s]
	  Range (min … max):    5.652 s …  5.717 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 135 milliseconds
	Processing time (w/o IO): 135 milliseconds
	Processing time (w/o IO): 135 milliseconds
	  Time (mean ± σ):      1.593 s ±  0.020 s    [User: 1.329 s, System: 0.354 s]
	  Range (min … max):    1.579 s …  1.608 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --startup-file=no --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 1487.232887ms
	Processing time (w/o IO): 1468.0831110000001ms
	Processing time (w/o IO): 1473.16645ms
	  Time (mean ± σ):      2.908 s ±  0.026 s    [User: 7.051 s, System: 0.307 s]
	  Range (min … max):    2.890 s …  2.927 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  5.493386069s
	Processing time (w/o IO):  5.221717808s
	Processing time (w/o IO):  5.07488381s
	  Time (mean ± σ):      7.542 s ±  0.106 s    [User: 7.460 s, System: 0.074 s]
	  Range (min … max):    7.467 s …  7.617 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 6.588s
	Processing time (w/o IO): 6.593s
	Processing time (w/o IO): 6.596s
	  Time (mean ± σ):     78.702 s ±  8.850 s    [User: 78.272 s, System: 0.409 s]
	  Range (min … max):   72.444 s … 84.960 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 19640ms
	Processing time (w/o IO): 19660ms
	Processing time (w/o IO): 19655ms
	  Time (mean ± σ):     21.195 s ±  0.020 s    [User: 21.386 s, System: 0.273 s]
	  Range (min … max):   21.181 s … 21.209 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 17885ms
	Processing time (w/o IO): 17872ms
	Processing time (w/o IO): 17869ms
	  Time (mean ± σ):     19.351 s ±  0.004 s    [User: 19.320 s, System: 0.167 s]
	  Range (min … max):   19.349 s … 19.354 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 6214.7510051727295ms
	Processing time (w/o IO): 6177.822947502136ms
	Processing time (w/o IO): 6185.633063316345ms
	  Time (mean ± σ):     10.452 s ±  0.014 s    [User: 9.900 s, System: 0.377 s]
	  Range (min … max):   10.442 s … 10.461 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 3466.88427ms
	Processing time (w/o IO): 3491.72544ms
	Processing time (w/o IO): 3470.967448ms
	  Time (mean ± σ):      7.797 s ±  0.000 s    [User: 17.577 s, System: 0.373 s]
	  Range (min … max):    7.797 s …  7.797 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 17477ms
	Processing time (w/o IO): 14206ms
	Processing time (w/o IO): 25890ms
	  Time (mean ± σ):     20.882 s ±  8.285 s    [User: 20.926 s, System: 0.184 s]
	  Range (min … max):   15.024 s … 26.741 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 12914ms
	Processing time (w/o IO): 12955ms
	Processing time (w/o IO): 12168ms
	  Time (mean ± σ):     13.088 s ±  0.540 s    [User: 13.052 s, System: 0.167 s]
	  Range (min … max):   12.706 s … 13.469 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 17922ms
	Processing time (w/o IO): 19297ms
	Processing time (w/o IO): 15870ms
	  Time (mean ± σ):     18.211 s ±  2.316 s    [User: 18.080 s, System: 0.180 s]
	  Range (min … max):   16.574 s … 19.849 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 6545 ms
	Processing time (w/o IO): 6542 ms
	Processing time (w/o IO): 6553 ms
	  Time (mean ± σ):     13.546 s ±  0.009 s    [User: 13.434 s, System: 0.101 s]
	  Range (min … max):   13.539 s … 13.552 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 4126 ms
	Processing time (w/o IO): 4138 ms
	Processing time (w/o IO): 4240 ms
	  Time (mean ± σ):      4.557 s ±  0.085 s    [User: 11.178 s, System: 0.113 s]
	  Range (min … max):    4.497 s …  4.617 s    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 2842.433ms
	Processing time (w/o IO): 2842.803ms
	Processing time (w/o IO): 2839.131ms
	  Time (mean ± σ):      3.211 s ±  0.001 s    [User: 3.128 s, System: 0.076 s]
	  Range (min … max):    3.210 s …  3.212 s    2 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 1499.209ms
	Processing time (w/o IO): 1473.414ms
	Processing time (w/o IO): 1480.177ms
	  Time (mean ± σ):      1.847 s ±  0.022 s    [User: 6.130 s, System: 0.090 s]
	  Range (min … max):    1.831 s …  1.863 s    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 4840.094ms
	Processing time (w/o IO): 4839.0146ms
	Processing time (w/o IO): 5368.0767ms
	  Time (mean ± σ):     15.524 s ±  0.643 s    [User: 16.421 s, System: 0.545 s]
	  Range (min … max):   15.069 s … 15.979 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 2403ms
	Processing time (w/o IO): 2492ms
	Processing time (w/o IO): 2491ms
	  Time (mean ± σ):     10.233 s ±  0.097 s    [User: 25.997 s, System: 0.539 s]
	  Range (min … max):   10.164 s … 10.301 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 2026ms
	Processing time (w/o IO): 2025ms
	Processing time (w/o IO): 2025ms
	  Time (mean ± σ):     12.214 s ±  0.019 s    [User: 25.817 s, System: 0.558 s]
	  Range (min … max):   12.200 s … 12.227 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 3223.6942ms
	Processing time (w/o IO): 3227.5506ms
	Processing time (w/o IO): 3224.9164ms
	  Time (mean ± σ):     14.692 s ±  0.005 s    [User: 16.139 s, System: 0.616 s]
	  Range (min … max):   14.689 s … 14.695 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 3256.4002ms
	Processing time (w/o IO): 3251.6949ms
	Processing time (w/o IO): 3252.2993ms
	  Time (mean ± σ):      7.393 s ±  0.010 s    [User: 7.330 s, System: 0.183 s]
	  Range (min … max):    7.385 s …  7.400 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 3241.9684ms
	Processing time (w/o IO): 3241.5385ms
	Processing time (w/o IO): 3246.2325ms
	  Time (mean ± σ):      7.051 s ±  0.015 s    [User: 7.020 s, System: 0.169 s]
	  Range (min … max):    7.040 s …  7.061 s    2 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 1012.7556ms
	Processing time (w/o IO): 1009.8377ms
	Processing time (w/o IO): 1023.244ms
	  Time (mean ± σ):      2.905 s ±  0.014 s    [User: 8.651 s, System: 0.167 s]
	  Range (min … max):    2.895 s …  2.915 s    2 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 1189.66ms
	Processing time (w/o IO): 1189.2269ms
	Processing time (w/o IO): 1184.7182ms
	  Time (mean ± σ):      2.911 s ±  0.007 s    [User: 9.813 s, System: 0.164 s]
	  Range (min … max):    2.906 s …  2.916 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	12012.286901474	ms
	Processing time (w/o IO):	9816.9400691986	ms
	Processing time (w/o IO):	13323.065042496	ms
	  Time (mean ± σ):     15.731 s ±  2.570 s    [User: 15.548 s, System: 0.173 s]
	  Range (min … max):   13.913 s … 17.548 s    2 runs
	 
LuaJIT (JIT OFF):

	Benchmark 1: luajit -joff only_lua.lua
	Processing time (w/o IO):	91617.407083511	ms
	Processing time (w/o IO):	91330.559968948	ms
	Processing time (w/o IO):	90939.738035202	ms
	  Time (mean ± σ):     95.951 s ±  0.231 s    [User: 95.747 s, System: 0.191 s]
	  Range (min … max):   95.788 s … 96.114 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	149785.48502922	ms
	Processing time (w/o IO):	149705.45506477	ms
	  Time (abs ≡):        155.703 s               [User: 155.470 s, System: 0.203 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 32787ms
	Processing time (w/o IO): 31726ms
	Processing time (w/o IO): 31757ms
	  Time (mean ± σ):     33.160 s ±  0.008 s    [User: 32.497 s, System: 0.654 s]
	  Range (min … max):   33.154 s … 33.166 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 133.276841 s
	Processing time (w/o IO): 133.227603 s
	Processing time (w/o IO): 134.066747 s
	  Time (mean ± σ):     136.883 s ±  0.609 s    [User: 136.192 s, System: 0.759 s]
	  Range (min … max):   136.453 s … 137.314 s    2 runs
	 
Ruby:

	Benchmark 1: ruby related.rb
	Processing time (w/o IO): 430281ms
	Processing time (w/o IO): 452343ms
	Processing time (w/o IO): 427059ms
	  Time (mean ± σ):     440.484 s ± 17.881 s    [User: 440.291 s, System: 0.145 s]
	  Range (min … max):   427.841 s … 453.128 s    2 runs
	 
daScript (interpreted):

	Benchmark 1: das related.das
