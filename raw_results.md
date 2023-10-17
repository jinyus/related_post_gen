Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 24.304106ms
	Processing time (w/o IO): 24.766813ms
	Processing time (w/o IO): 24.678111ms
	Processing time (w/o IO): 24.59811ms
	Processing time (w/o IO): 24.199704ms
	Processing time (w/o IO): 24.032801ms
	Processing time (w/o IO): 24.660112ms
	Processing time (w/o IO): 24.179803ms
	Processing time (w/o IO): 24.019301ms
	Processing time (w/o IO): 24.964216ms
	Processing time (w/o IO): 24.114402ms
	Processing time (w/o IO): 24.667211ms
	Processing time (w/o IO): 24.059002ms
	  Time (mean ± σ):      63.7 ms ±   1.2 ms    [User: 60.1 ms, System: 10.1 ms]
	  Range (min … max):    62.2 ms …  65.7 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 12.596511ms
	Processing time (w/o IO): 12.693912ms
	Processing time (w/o IO): 14.064435ms
	Processing time (w/o IO): 14.210637ms
	Processing time (w/o IO): 12.769713ms
	Processing time (w/o IO): 12.809113ms
	Processing time (w/o IO): 12.655411ms
	Processing time (w/o IO): 14.875848ms
	Processing time (w/o IO): 12.652512ms
	Processing time (w/o IO): 12.647111ms
	Processing time (w/o IO): 14.248038ms
	Processing time (w/o IO): 13.566627ms
	Processing time (w/o IO): 12.664011ms
	  Time (mean ± σ):      51.0 ms ±   1.7 ms    [User: 83.2 ms, System: 7.9 ms]
	  Range (min … max):    48.8 ms …  54.1 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 23.526299ms
	Processing time (w/o IO): 23.376993ms
	Processing time (w/o IO): 23.388293ms
	Processing time (w/o IO): 23.425494ms
	Processing time (w/o IO): 23.491596ms
	Processing time (w/o IO): 23.451195ms
	Processing time (w/o IO): 23.423695ms
	Processing time (w/o IO): 23.460395ms
	Processing time (w/o IO): 23.417194ms
	Processing time (w/o IO): 23.628597ms
	Processing time (w/o IO): 23.402894ms
	Processing time (w/o IO): 23.405094ms
	Processing time (w/o IO): 23.360993ms
	  Time (mean ± σ):      38.9 ms ±   0.9 ms    [User: 30.3 ms, System: 8.5 ms]
	  Range (min … max):    38.0 ms …  40.8 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 14.688746ms
	Processing time (w/o IO): 14.025335ms
	Processing time (w/o IO): 16.232472ms
	Processing time (w/o IO): 14.394241ms
	Processing time (w/o IO): 14.93695ms
	Processing time (w/o IO): 14.650146ms
	Processing time (w/o IO): 14.678246ms
	Processing time (w/o IO): 14.30134ms
	Processing time (w/o IO): 14.595445ms
	Processing time (w/o IO): 14.089136ms
	Processing time (w/o IO): 14.573744ms
	Processing time (w/o IO): 14.264639ms
	Processing time (w/o IO): 13.667229ms
	  Time (mean ± σ):      30.8 ms ±   0.5 ms    [User: 32.8 ms, System: 10.1 ms]
	  Range (min … max):    29.9 ms …  31.2 ms    10 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 25.386ms
	Processing time (w/o IO): 24.96ms
	Processing time (w/o IO): 24.44ms
	Processing time (w/o IO): 25.111ms
	Processing time (w/o IO): 24.827ms
	Processing time (w/o IO): 24.758ms
	Processing time (w/o IO): 24.732ms
	Processing time (w/o IO): 25.404ms
	Processing time (w/o IO): 24.98ms
	Processing time (w/o IO): 25.219ms
	Processing time (w/o IO): 26ms
	Processing time (w/o IO): 24.778ms
	Processing time (w/o IO): 24.833ms
	  Time (mean ± σ):     105.5 ms ±   2.1 ms    [User: 96.3 ms, System: 10.5 ms]
	  Range (min … max):   103.8 ms … 110.7 ms    10 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 16.36ms
	Processing time (w/o IO): 15.775ms
	Processing time (w/o IO): 16.651ms
	Processing time (w/o IO): 16.705ms
	Processing time (w/o IO): 17.373ms
	Processing time (w/o IO): 16.326ms
	Processing time (w/o IO): 16.051ms
	Processing time (w/o IO): 15.428ms
	Processing time (w/o IO): 17.595ms
	Processing time (w/o IO): 15.3ms
	Processing time (w/o IO): 15.048ms
	Processing time (w/o IO): 16.969ms
	Processing time (w/o IO): 18.23ms
	  Time (mean ± σ):      97.0 ms ±   1.4 ms    [User: 120.5 ms, System: 9.3 ms]
	  Range (min … max):    94.8 ms …  99.1 ms    10 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	  Time (mean ± σ):     237.2 ms ±   1.4 ms    [User: 205.1 ms, System: 32.0 ms]
	  Range (min … max):   235.1 ms … 239.2 ms    10 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 20 ms
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 18 ms
	Processing time (w/o IO): 18 ms
	Processing time (w/o IO): 15 ms
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 18 ms
	Processing time (w/o IO): 15 ms
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 15 ms
	Processing time (w/o IO): 17 ms
	  Time (mean ± σ):     227.1 ms ±   2.5 ms    [User: 239.3 ms, System: 29.0 ms]
	  Range (min … max):   223.7 ms … 230.4 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 1.478s
	Processing time (w/o IO): 1.471s
	Processing time (w/o IO): 1.462s
	Processing time (w/o IO): 1.461s
	Processing time (w/o IO): 1.462s
	Processing time (w/o IO): 1.461s
	Processing time (w/o IO): 1.470s
	Processing time (w/o IO): 1.462s
	Processing time (w/o IO): 1.464s
	Processing time (w/o IO): 1.461s
	Processing time (w/o IO): 1.463s
	Processing time (w/o IO): 1.458s
	Processing time (w/o IO): 1.464s
	  Time (mean ± σ):      1.529 s ±  0.003 s    [User: 1.512 s, System: 0.017 s]
	  Range (min … max):    1.525 s …  1.536 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 484.9ms
	Processing time (w/o IO): 428.1ms
	Processing time (w/o IO): 446.3ms
	Processing time (w/o IO): 451.8ms
	Processing time (w/o IO): 481.3ms
	Processing time (w/o IO): 493.1ms
	Processing time (w/o IO): 443.8ms
	Processing time (w/o IO): 449.5ms
	Processing time (w/o IO): 459.0ms
	Processing time (w/o IO): 456.0ms
	Processing time (w/o IO): 442.0ms
	Processing time (w/o IO): 507.4ms
	Processing time (w/o IO): 407.4ms
	  Time (mean ± σ):     762.4 ms ±  37.6 ms    [User: 839.9 ms, System: 529.7 ms]
	  Range (min … max):   699.6 ms … 822.0 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 65.931866ms
	Processing time (w/o IO): 65.182356ms
	Processing time (w/o IO): 64.975353ms
	Processing time (w/o IO): 65.265357ms
	Processing time (w/o IO): 64.932452ms
	Processing time (w/o IO): 65.114255ms
	Processing time (w/o IO): 65.47376ms
	Processing time (w/o IO): 65.283158ms
	Processing time (w/o IO): 65.306557ms
	Processing time (w/o IO): 64.898352ms
	Processing time (w/o IO): 64.964354ms
	Processing time (w/o IO): 64.908153ms
	Processing time (w/o IO): 64.879353ms
	  Time (mean ± σ):     114.7 ms ±   1.0 ms    [User: 106.4 ms, System: 8.2 ms]
	  Range (min … max):   113.4 ms … 117.1 ms    10 runs
	 
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
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 29ms
	  Time (mean ± σ):      74.8 ms ±   0.4 ms    [User: 67.6 ms, System: 7.2 ms]
	  Range (min … max):    74.4 ms …  75.5 ms    10 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 31 milliseconds
	  Time (mean ± σ):     476.8 ms ±  13.0 ms    [User: 355.8 ms, System: 224.7 ms]
	  Range (min … max):   459.2 ms … 495.7 ms    10 runs
	 
Julia HO:

	Benchmark 1: julia --project related.jl
	Processing time (w/o IO): 7 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 7 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 7 milliseconds
	Processing time (w/o IO): 7 milliseconds
	Processing time (w/o IO): 7 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 7 milliseconds
	  Time (mean ± σ):      4.279 s ±  0.032 s    [User: 4.111 s, System: 0.271 s]
	  Range (min … max):    4.222 s …  4.322 s    10 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 19 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 17 milliseconds
	  Time (mean ± σ):     467.2 ms ±  14.4 ms    [User: 414.1 ms, System: 204.5 ms]
	  Range (min … max):   444.4 ms … 483.9 ms    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  47.844582ms
	Processing time (w/o IO):  47.472376ms
	Processing time (w/o IO):  47.424476ms
	Processing time (w/o IO):  47.494776ms
	Processing time (w/o IO):  47.389675ms
	Processing time (w/o IO):  47.528277ms
	Processing time (w/o IO):  47.68068ms
	Processing time (w/o IO):  47.508177ms
	Processing time (w/o IO):  47.779781ms
	Processing time (w/o IO):  47.71818ms
	Processing time (w/o IO):  48.015185ms
	Processing time (w/o IO):  48.033885ms
	Processing time (w/o IO):  47.893883ms
	  Time (mean ± σ):     265.5 ms ±   0.4 ms    [User: 256.0 ms, System: 9.4 ms]
	  Range (min … max):   265.0 ms … 266.2 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 52.050ms
	Processing time (w/o IO): 51.477ms
	Processing time (w/o IO): 51.919ms
	Processing time (w/o IO): 51.487ms
	Processing time (w/o IO): 51.769ms
	Processing time (w/o IO): 51.725ms
	Processing time (w/o IO): 51.730ms
	Processing time (w/o IO): 51.688ms
	Processing time (w/o IO): 51.600ms
	Processing time (w/o IO): 51.515ms
	Processing time (w/o IO): 51.199ms
	Processing time (w/o IO): 51.825ms
	Processing time (w/o IO): 51.510ms
	  Time (mean ± σ):     394.3 ms ±   2.3 ms    [User: 365.3 ms, System: 28.9 ms]
	  Range (min … max):   390.6 ms … 397.7 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 133ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 132ms
	  Time (mean ± σ):     528.4 ms ±  14.2 ms    [User: 644.9 ms, System: 109.2 ms]
	  Range (min … max):   506.4 ms … 549.3 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 188ms
	Processing time (w/o IO): 188ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 186ms
	  Time (mean ± σ):     315.7 ms ±   1.6 ms    [User: 296.7 ms, System: 23.1 ms]
	  Range (min … max):   313.3 ms … 319.1 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 51.21803283691406ms
	Processing time (w/o IO): 51.15103721618652ms
	Processing time (w/o IO): 51.22196674346924ms
	Processing time (w/o IO): 51.625967025756836ms
	Processing time (w/o IO): 51.18298530578613ms
	Processing time (w/o IO): 52.4519681930542ms
	Processing time (w/o IO): 52.591919898986816ms
	Processing time (w/o IO): 51.39005184173584ms
	Processing time (w/o IO): 51.437973976135254ms
	Processing time (w/o IO): 51.44000053405762ms
	Processing time (w/o IO): 51.48506164550781ms
	Processing time (w/o IO): 51.19502544403076ms
	Processing time (w/o IO): 50.89592933654785ms
	  Time (mean ± σ):     409.9 ms ±   5.6 ms    [User: 351.2 ms, System: 40.3 ms]
	  Range (min … max):   402.2 ms … 418.3 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 31.180408ms
	Processing time (w/o IO): 31.196612ms
	Processing time (w/o IO): 32.085726ms
	Processing time (w/o IO): 32.386331ms
	Processing time (w/o IO): 31.189811ms
	Processing time (w/o IO): 31.073209ms
	Processing time (w/o IO): 31.570417ms
	Processing time (w/o IO): 31.741521ms
	Processing time (w/o IO): 32.404932ms
	Processing time (w/o IO): 31.235512ms
	Processing time (w/o IO): 32.110127ms
	Processing time (w/o IO): 32.207128ms
	Processing time (w/o IO): 32.159728ms
	  Time (mean ± σ):     397.4 ms ±   5.8 ms    [User: 427.3 ms, System: 39.8 ms]
	  Range (min … max):   389.6 ms … 406.9 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 139ms
	Processing time (w/o IO): 128ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 134ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 129ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 183ms
	  Time (mean ± σ):     314.5 ms ±  24.8 ms    [User: 308.6 ms, System: 60.2 ms]
	  Range (min … max):   297.0 ms … 365.4 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 128ms
	Processing time (w/o IO): 128ms
	Processing time (w/o IO): 128ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 123ms
	Processing time (w/o IO): 121ms
	Processing time (w/o IO): 119ms
	Processing time (w/o IO): 122ms
	Processing time (w/o IO): 121ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 129ms
	Processing time (w/o IO): 130ms
	  Time (mean ± σ):     185.1 ms ±   4.2 ms    [User: 200.7 ms, System: 40.7 ms]
	  Range (min … max):   180.4 ms … 191.6 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 210ms
	Processing time (w/o IO): 194ms
	Processing time (w/o IO): 134ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 136ms
	Processing time (w/o IO): 194ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 195ms
	Processing time (w/o IO): 136ms
	Processing time (w/o IO): 194ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 193ms
	Processing time (w/o IO): 138ms
	  Time (mean ± σ):     228.8 ms ±  29.3 ms    [User: 223.3 ms, System: 28.9 ms]
	  Range (min … max):   204.3 ms … 265.0 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	  Time (mean ± σ):     394.7 ms ±  12.2 ms    [User: 690.3 ms, System: 55.0 ms]
	  Range (min … max):   378.4 ms … 423.6 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 44 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	  Time (mean ± σ):     117.4 ms ±   1.1 ms    [User: 106.5 ms, System: 11.1 ms]
	  Range (min … max):   116.1 ms … 119.7 ms    10 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 48 ms
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 48 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 49 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 48 ms
	Processing time (w/o IO): 47 ms
	  Time (mean ± σ):      79.9 ms ±   1.9 ms    [User: 141.8 ms, System: 12.0 ms]
	  Range (min … max):    77.8 ms …  83.2 ms    10 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 30.695ms
	Processing time (w/o IO): 30.598ms
	Processing time (w/o IO): 30.469ms
	Processing time (w/o IO): 30.639ms
	Processing time (w/o IO): 30.486ms
	Processing time (w/o IO): 30.368ms
	Processing time (w/o IO): 30.792ms
	Processing time (w/o IO): 30.561ms
	Processing time (w/o IO): 30.418ms
	Processing time (w/o IO): 30.494ms
	Processing time (w/o IO): 30.529ms
	Processing time (w/o IO): 30.571ms
	Processing time (w/o IO): 30.407ms
	  Time (mean ± σ):      56.1 ms ±   0.7 ms    [User: 46.4 ms, System: 9.7 ms]
	  Range (min … max):    55.0 ms …  57.0 ms    10 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 48ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 49ms
	  Time (mean ± σ):     930.1 ms ±   6.0 ms    [User: 1044.9 ms, System: 97.8 ms]
	  Range (min … max):   922.3 ms … 939.3 ms    10 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 22ms
	  Time (mean ± σ):     930.6 ms ±  10.5 ms    [User: 1109.8 ms, System: 96.2 ms]
	  Range (min … max):   915.7 ms … 947.4 ms    10 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 17ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 15ms
	  Time (mean ± σ):     719.1 ms ±   2.5 ms    [User: 786.4 ms, System: 94.0 ms]
	  Range (min … max):   713.1 ms … 721.8 ms    10 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 37ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 36ms
	  Time (mean ± σ):     754.6 ms ±   4.4 ms    [User: 733.0 ms, System: 80.6 ms]
	  Range (min … max):   748.7 ms … 765.2 ms    10 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 51.4891ms
	Processing time (w/o IO): 51.529ms
	Processing time (w/o IO): 51.358ms
	Processing time (w/o IO): 51.778ms
	Processing time (w/o IO): 51.3558ms
	Processing time (w/o IO): 51.2816ms
	Processing time (w/o IO): 51.9618ms
	Processing time (w/o IO): 51.2484ms
	Processing time (w/o IO): 51.493ms
	Processing time (w/o IO): 51.6516ms
	Processing time (w/o IO): 51.4582ms
	Processing time (w/o IO): 51.2409ms
	Processing time (w/o IO): 52.1774ms
	  Time (mean ± σ):     257.0 ms ±   4.8 ms    [User: 217.2 ms, System: 32.7 ms]
	  Range (min … max):   251.6 ms … 266.3 ms    10 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 41.4722ms
	Processing time (w/o IO): 41.5052ms
	Processing time (w/o IO): 41.4315ms
	Processing time (w/o IO): 41.584ms
	Processing time (w/o IO): 42.1073ms
	Processing time (w/o IO): 41.5742ms
	Processing time (w/o IO): 41.7394ms
	Processing time (w/o IO): 41.8267ms
	Processing time (w/o IO): 41.5344ms
	Processing time (w/o IO): 42.128ms
	Processing time (w/o IO): 43.8581ms
	Processing time (w/o IO): 44.4504ms
	Processing time (w/o IO): 42.3189ms
	  Time (mean ± σ):     135.8 ms ±   3.8 ms    [User: 132.7 ms, System: 20.4 ms]
	  Range (min … max):   132.0 ms … 142.5 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	90.167999267578	ms
	Processing time (w/o IO):	115.56100845337	ms
	Processing time (w/o IO):	112.80393600464	ms
	Processing time (w/o IO):	115.46015739441	ms
	Processing time (w/o IO):	106.1909198761	ms
	Processing time (w/o IO):	112.03002929688	ms
	Processing time (w/o IO):	107.2518825531	ms
	Processing time (w/o IO):	112.2899055481	ms
	Processing time (w/o IO):	90.784072875977	ms
	Processing time (w/o IO):	109.67206954956	ms
	Processing time (w/o IO):	113.57092857361	ms
	Processing time (w/o IO):	108.15405845642	ms
	Processing time (w/o IO):	106.89496994019	ms
	  Time (mean ± σ):     357.7 ms ±   5.4 ms    [User: 334.7 ms, System: 23.0 ms]
	  Range (min … max):   346.2 ms … 365.1 ms    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1093.740940094	ms
	Processing time (w/o IO):	1094.526052475	ms
	Processing time (w/o IO):	1099.0741252899	ms
	Processing time (w/o IO):	1111.8898391724	ms
	Processing time (w/o IO):	1092.8361415863	ms
	Processing time (w/o IO):	1093.2700634003	ms
	Processing time (w/o IO):	1095.2188968658	ms
	Processing time (w/o IO):	1093.2190418243	ms
	Processing time (w/o IO):	1091.9370651245	ms
	Processing time (w/o IO):	1091.7191505432	ms
	Processing time (w/o IO):	1093.4391021729	ms
	Processing time (w/o IO):	1090.5508995056	ms
	Processing time (w/o IO):	1090.0948047638	ms
	  Time (mean ± σ):      1.523 s ±  0.009 s    [User: 1.504 s, System: 0.018 s]
	  Range (min … max):    1.516 s …  1.548 s    10 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 151ms
	Processing time (w/o IO): 151ms
	Processing time (w/o IO): 153ms
	Processing time (w/o IO): 153ms
	Processing time (w/o IO): 155ms
	Processing time (w/o IO): 152ms
	Processing time (w/o IO): 149ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 150ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 149ms
	Processing time (w/o IO): 151ms
	Processing time (w/o IO): 150ms
	  Time (mean ± σ):     250.9 ms ±  26.4 ms    [User: 214.1 ms, System: 28.6 ms]
	  Range (min … max):   236.7 ms … 325.5 ms    10 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 1.525787 s
	Processing time (w/o IO): 1.527576 s
	Processing time (w/o IO): 1.532800 s
	Processing time (w/o IO): 1.526382 s
	Processing time (w/o IO): 1.512557 s
	Processing time (w/o IO): 1.517558 s
	Processing time (w/o IO): 1.526338 s
	Processing time (w/o IO): 1.526432 s
	Processing time (w/o IO): 1.516790 s
	Processing time (w/o IO): 1.519874 s
	Processing time (w/o IO): 1.513345 s
	Processing time (w/o IO): 1.524106 s
	Processing time (w/o IO): 1.525563 s
	  Time (mean ± σ):      1.875 s ±  0.022 s    [User: 1.876 s, System: 0.117 s]
	  Range (min … max):    1.852 s …  1.929 s    10 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 372.361358ms
	Processing time (w/o IO): 373.143421ms
	Processing time (w/o IO): 372.874917ms
	  Time (mean ± σ):     522.8 ms ±   1.2 ms    [User: 515.8 ms, System: 38.3 ms]
	  Range (min … max):   521.9 ms … 523.6 ms    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 166.897428ms
	Processing time (w/o IO): 167.558638ms
	Processing time (w/o IO): 168.379453ms
	  Time (mean ± σ):     312.3 ms ±   8.0 ms    [User: 795.6 ms, System: 29.2 ms]
	  Range (min … max):   306.7 ms … 318.0 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 341.855592ms
	Processing time (w/o IO): 342.218197ms
	Processing time (w/o IO): 341.886492ms
	  Time (mean ± σ):     405.5 ms ±   0.3 ms    [User: 382.1 ms, System: 23.3 ms]
	  Range (min … max):   405.3 ms … 405.8 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 181.452174ms
	Processing time (w/o IO): 209.332946ms
	Processing time (w/o IO): 180.60386ms
	  Time (mean ± σ):     261.3 ms ±  21.3 ms    [User: 418.5 ms, System: 33.5 ms]
	  Range (min … max):   246.3 ms … 276.3 ms    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 315.141ms
	Processing time (w/o IO): 318.781ms
	Processing time (w/o IO): 316.971ms
	  Time (mean ± σ):     616.2 ms ±   1.7 ms    [User: 574.1 ms, System: 45.2 ms]
	  Range (min … max):   615.0 ms … 617.4 ms    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 172.835ms
	Processing time (w/o IO): 173.46ms
	Processing time (w/o IO): 171.678ms
	  Time (mean ± σ):     473.4 ms ±   5.6 ms    [User: 909.2 ms, System: 25.4 ms]
	  Range (min … max):   469.4 ms … 477.4 ms    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 521 ms
	Processing time (w/o IO): 521 ms
	Processing time (w/o IO): 520 ms
	  Time (mean ± σ):      1.349 s ±  0.004 s    [User: 1.212 s, System: 0.134 s]
	  Range (min … max):    1.347 s …  1.352 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 206 ms
	Processing time (w/o IO): 205 ms
	Processing time (w/o IO): 206 ms
	  Time (mean ± σ):      1.074 s ±  0.010 s    [User: 1.542 s, System: 0.120 s]
	  Range (min … max):    1.067 s …  1.081 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 23.625s
	Processing time (w/o IO): 23.589s
	  Time (abs ≡):        23.752 s               [User: 23.686 s, System: 0.059 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 6.737s
	Processing time (w/o IO): 7.442s
	Processing time (w/o IO): 7.854s
	  Time (mean ± σ):      8.175 s ±  0.286 s    [User: 5.242 s, System: 3.532 s]
	  Range (min … max):    7.973 s …  8.377 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 976.570038ms
	Processing time (w/o IO): 976.354936ms
	Processing time (w/o IO): 976.307835ms
	  Time (mean ± σ):      1.196 s ±  0.001 s    [User: 1.161 s, System: 0.034 s]
	  Range (min … max):    1.195 s …  1.196 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 430ms
	Processing time (w/o IO): 431ms
	Processing time (w/o IO): 431ms
	  Time (mean ± σ):     623.0 ms ±   0.0 ms    [User: 595.1 ms, System: 25.3 ms]
	  Range (min … max):   623.0 ms … 623.0 ms    2 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 482 milliseconds
	Processing time (w/o IO): 481 milliseconds
	Processing time (w/o IO): 482 milliseconds
	  Time (mean ± σ):      1.176 s ±  0.001 s    [User: 1.017 s, System: 0.261 s]
	  Range (min … max):    1.175 s …  1.177 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project related.jl
	Processing time (w/o IO): 56 milliseconds
	Processing time (w/o IO): 60 milliseconds
	Processing time (w/o IO): 60 milliseconds
	  Time (mean ± σ):      4.468 s ±  0.027 s    [User: 4.256 s, System: 0.313 s]
	  Range (min … max):    4.449 s …  4.487 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 222 milliseconds
	Processing time (w/o IO): 223 milliseconds
	Processing time (w/o IO): 222 milliseconds
	  Time (mean ± σ):     903.9 ms ±  16.1 ms    [User: 1419.3 ms, System: 243.0 ms]
	  Range (min … max):   892.4 ms … 915.3 ms    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  575.669126ms
	Processing time (w/o IO):  575.200318ms
	Processing time (w/o IO):  576.971347ms
	  Time (mean ± σ):      1.373 s ±  0.001 s    [User: 1.338 s, System: 0.031 s]
	  Range (min … max):    1.372 s …  1.373 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 759.421ms
	Processing time (w/o IO): 758.402ms
	Processing time (w/o IO): 759.504ms
	  Time (mean ± σ):      9.576 s ±  0.105 s    [User: 9.423 s, System: 0.149 s]
	  Range (min … max):    9.502 s …  9.650 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 2348ms
	Processing time (w/o IO): 2381ms
	Processing time (w/o IO): 2124ms
	  Time (mean ± σ):      2.932 s ±  0.207 s    [User: 3.139 s, System: 0.148 s]
	  Range (min … max):    2.786 s …  3.079 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 2897ms
	Processing time (w/o IO): 2894ms
	Processing time (w/o IO): 2898ms
	  Time (mean ± σ):      3.397 s ±  0.002 s    [User: 3.353 s, System: 0.063 s]
	  Range (min … max):    3.396 s …  3.398 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 718.6260223388672ms
	Processing time (w/o IO): 714.6239280700684ms
	Processing time (w/o IO): 720.3220129013062ms
	  Time (mean ± σ):      2.141 s ±  0.036 s    [User: 1.978 s, System: 0.121 s]
	  Range (min … max):    2.116 s …  2.167 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 393.615013ms
	Processing time (w/o IO): 396.191383ms
	Processing time (w/o IO): 395.338531ms
	  Time (mean ± σ):      1.826 s ±  0.020 s    [User: 2.809 s, System: 0.131 s]
	  Range (min … max):    1.812 s …  1.841 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 2614ms
	Processing time (w/o IO): 1733ms
	Processing time (w/o IO): 2615ms
	  Time (mean ± σ):      2.505 s ±  0.623 s    [User: 2.513 s, System: 0.099 s]
	  Range (min … max):    2.065 s …  2.946 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 1534ms
	Processing time (w/o IO): 1530ms
	Processing time (w/o IO): 1769ms
	  Time (mean ± σ):      1.802 s ±  0.168 s    [User: 1.814 s, System: 0.065 s]
	  Range (min … max):    1.682 s …  1.921 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 2046ms
	Processing time (w/o IO): 1804ms
	Processing time (w/o IO): 1811ms
	  Time (mean ± σ):      2.069 s ±  0.119 s    [User: 1.959 s, System: 0.061 s]
	  Range (min … max):    1.985 s …  2.152 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 601 ms
	Processing time (w/o IO): 633 ms
	Processing time (w/o IO): 601 ms
	  Time (mean ± σ):     722.1 ms ±  24.4 ms    [User: 1696.2 ms, System: 33.4 ms]
	  Range (min … max):   704.8 ms … 739.3 ms    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 598 ms
	Processing time (w/o IO): 600 ms
	Processing time (w/o IO): 598 ms
	  Time (mean ± σ):     703.6 ms ±   4.2 ms    [User: 1651.8 ms, System: 37.5 ms]
	  Range (min … max):   700.7 ms … 706.5 ms    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 435.909ms
	Processing time (w/o IO): 434.205ms
	Processing time (w/o IO): 436.339ms
	  Time (mean ± σ):     536.8 ms ±   0.7 ms    [User: 510.9 ms, System: 25.7 ms]
	  Range (min … max):   536.3 ms … 537.3 ms    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 705ms
	Processing time (w/o IO): 823ms
	Processing time (w/o IO): 706ms
	  Time (mean ± σ):      3.620 s ±  0.122 s    [User: 3.636 s, System: 0.221 s]
	  Range (min … max):    3.534 s …  3.706 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 290ms
	Processing time (w/o IO): 285ms
	Processing time (w/o IO): 278ms
	  Time (mean ± σ):      2.706 s ±  0.103 s    [User: 4.339 s, System: 0.273 s]
	  Range (min … max):    2.633 s …  2.778 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 231ms
	Processing time (w/o IO): 231ms
	Processing time (w/o IO): 231ms
	  Time (mean ± σ):      3.120 s ±  0.009 s    [User: 4.442 s, System: 0.243 s]
	  Range (min … max):    3.114 s …  3.126 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 533ms
	Processing time (w/o IO): 532ms
	Processing time (w/o IO): 533ms
	  Time (mean ± σ):      3.720 s ±  0.014 s    [User: 3.684 s, System: 0.227 s]
	  Range (min … max):    3.710 s …  3.730 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 766.6219ms
	Processing time (w/o IO): 764.4653ms
	Processing time (w/o IO): 764.8133ms
	  Time (mean ± σ):      1.851 s ±  0.001 s    [User: 1.793 s, System: 0.075 s]
	  Range (min … max):    1.851 s …  1.852 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 612.2256ms
	Processing time (w/o IO): 613.6054ms
	Processing time (w/o IO): 614.3677ms
	  Time (mean ± σ):      1.411 s ±  0.016 s    [User: 1.395 s, System: 0.049 s]
	  Range (min … max):    1.399 s …  1.422 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	1421.1750030518	ms
	Processing time (w/o IO):	1433.0589771271	ms
	Processing time (w/o IO):	1425.0650405884	ms
	  Time (mean ± σ):      2.705 s ±  0.059 s    [User: 2.643 s, System: 0.061 s]
	  Range (min … max):    2.663 s …  2.747 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	16824.766159058	ms
	Processing time (w/o IO):	16772.348880768	ms
	  Time (abs ≡):        18.742 s               [User: 18.686 s, System: 0.051 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 2619ms
	Processing time (w/o IO): 2741ms
	Processing time (w/o IO): 2771ms
	  Time (mean ± σ):      3.173 s ±  0.015 s    [User: 3.055 s, System: 0.114 s]
	  Range (min … max):    3.162 s …  3.183 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 24.466601 s
	Processing time (w/o IO): 24.532957 s
	Processing time (w/o IO): 24.652199 s
	  Time (mean ± σ):     25.643 s ±  0.093 s    [User: 25.564 s, System: 0.238 s]
	  Range (min … max):   25.578 s … 25.709 s    2 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 3.294525494s
	Processing time (w/o IO): 3.302502506s
	Processing time (w/o IO): 3.288197432s
	  Time (mean ± σ):      3.780 s ±  0.006 s    [User: 3.805 s, System: 0.097 s]
	  Range (min … max):    3.776 s …  3.784 s    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1.420445186s
	Processing time (w/o IO): 1.421902584s
	Processing time (w/o IO): 1.425013666s
	  Time (mean ± σ):      1.920 s ±  0.009 s    [User: 6.164 s, System: 0.118 s]
	  Range (min … max):    1.913 s …  1.926 s    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 3.036253399s
	Processing time (w/o IO): 3.040402501s
	Processing time (w/o IO): 3.034845887s
	  Time (mean ± σ):      3.253 s ±  0.003 s    [User: 3.170 s, System: 0.077 s]
	  Range (min … max):    3.251 s …  3.256 s    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 1.578473224s
	Processing time (w/o IO): 1.57761521s
	Processing time (w/o IO): 1.57267312s
	  Time (mean ± σ):      1.793 s ±  0.000 s    [User: 3.267 s, System: 0.082 s]
	  Range (min … max):    1.793 s …  1.794 s    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 2720.55ms
	Processing time (w/o IO): 2713.31ms
	Processing time (w/o IO): 2709.89ms
	  Time (mean ± σ):      3.663 s ±  0.000 s    [User: 3.545 s, System: 0.121 s]
	  Range (min … max):    3.662 s …  3.663 s    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1412.63ms
	Processing time (w/o IO): 1401.31ms
	Processing time (w/o IO): 1402.64ms
	  Time (mean ± σ):      2.350 s ±  0.005 s    [User: 6.282 s, System: 0.104 s]
	  Range (min … max):    2.347 s …  2.354 s    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 4580 ms
	Processing time (w/o IO): 4575 ms
	Processing time (w/o IO): 4581 ms
	  Time (mean ± σ):      7.313 s ±  0.013 s    [User: 6.733 s, System: 0.356 s]
	  Range (min … max):    7.304 s …  7.323 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 1755 ms
	Processing time (w/o IO): 1753 ms
	Processing time (w/o IO): 1757 ms
	  Time (mean ± σ):      4.563 s ±  0.006 s    [User: 9.226 s, System: 0.328 s]
	  Range (min … max):    4.559 s …  4.567 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 216.341s
	Processing time (w/o IO): 212.914s
	  Time (abs ≡):        213.398 s               [User: 213.254 s, System: 0.120 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 8669.143592ms
	Processing time (w/o IO): 8681.966397ms
	Processing time (w/o IO): 8658.076207ms
	  Time (mean ± σ):      9.377 s ±  0.012 s    [User: 9.259 s, System: 0.114 s]
	  Range (min … max):    9.368 s …  9.386 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 3789ms
	Processing time (w/o IO): 3794ms
	Processing time (w/o IO): 3791ms
	  Time (mean ± σ):      4.383 s ±  0.002 s    [User: 4.304 s, System: 0.071 s]
	  Range (min … max):    4.382 s …  4.385 s    2 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 4251 milliseconds
	Processing time (w/o IO): 4247 milliseconds
	Processing time (w/o IO): 4248 milliseconds
	  Time (mean ± σ):      5.278 s ±  0.022 s    [User: 5.051 s, System: 0.325 s]
	  Range (min … max):    5.262 s …  5.293 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project related.jl
	Processing time (w/o IO): 139 milliseconds
	Processing time (w/o IO): 138 milliseconds
	Processing time (w/o IO): 133 milliseconds
	  Time (mean ± σ):      4.878 s ±  0.002 s    [User: 4.630 s, System: 0.341 s]
	  Range (min … max):    4.877 s …  4.879 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 1942 milliseconds
	Processing time (w/o IO): 1940 milliseconds
	Processing time (w/o IO): 1957 milliseconds
	  Time (mean ± σ):      2.977 s ±  0.033 s    [User: 8.558 s, System: 0.305 s]
	  Range (min … max):    2.954 s …  3.000 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  5.073096592s
	Processing time (w/o IO):  5.063773025s
	Processing time (w/o IO):  5.127264055s
	  Time (mean ± σ):      7.491 s ±  0.049 s    [User: 7.403 s, System: 0.080 s]
	  Range (min … max):    7.457 s …  7.526 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 6.646s
	Processing time (w/o IO): 6.667s
	Processing time (w/o IO): 6.645s
	  Time (mean ± σ):     80.070 s ±  1.509 s    [User: 79.610 s, System: 0.442 s]
	  Range (min … max):   79.003 s … 81.137 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 21049ms
	Processing time (w/o IO): 21127ms
	Processing time (w/o IO): 21164ms
	  Time (mean ± σ):     22.660 s ±  0.042 s    [User: 22.892 s, System: 0.245 s]
	  Range (min … max):   22.631 s … 22.690 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 25747ms
	Processing time (w/o IO): 25866ms
	Processing time (w/o IO): 25779ms
	  Time (mean ± σ):     27.356 s ±  0.035 s    [User: 27.301 s, System: 0.166 s]
	  Range (min … max):   27.332 s … 27.381 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 6242.0419454574585ms
	Processing time (w/o IO): 6215.0009870529175ms
	Processing time (w/o IO): 6207.516074180603ms
	  Time (mean ± σ):     10.528 s ±  0.036 s    [User: 9.984 s, System: 0.363 s]
	  Range (min … max):   10.503 s … 10.554 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 3494.241219ms
	Processing time (w/o IO): 3458.805165ms
	Processing time (w/o IO): 3531.350752ms
	  Time (mean ± σ):      7.850 s ±  0.016 s    [User: 17.722 s, System: 0.347 s]
	  Range (min … max):    7.838 s …  7.861 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 23047ms
	Processing time (w/o IO): 23063ms
	Processing time (w/o IO): 22894ms
	  Time (mean ± σ):     23.810 s ±  0.131 s    [User: 23.793 s, System: 0.207 s]
	  Range (min … max):   23.717 s … 23.902 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 13211ms
	Processing time (w/o IO): 15414ms
	Processing time (w/o IO): 14309ms
	  Time (mean ± σ):     15.317 s ±  0.781 s    [User: 15.313 s, System: 0.145 s]
	  Range (min … max):   14.765 s … 15.869 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 17904ms
	Processing time (w/o IO): 15903ms
	Processing time (w/o IO): 17915ms
	  Time (mean ± σ):     17.528 s ±  1.260 s    [User: 17.417 s, System: 0.175 s]
	  Range (min … max):   16.637 s … 18.419 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 5338 ms
	Processing time (w/o IO): 5330 ms
	Processing time (w/o IO): 5804 ms
	  Time (mean ± σ):      5.923 s ±  0.340 s    [User: 14.715 s, System: 0.113 s]
	  Range (min … max):    5.683 s …  6.163 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 5340 ms
	Processing time (w/o IO): 5339 ms
	Processing time (w/o IO): 5338 ms
	  Time (mean ± σ):      5.690 s ±  0.010 s    [User: 14.261 s, System: 0.090 s]
	  Range (min … max):    5.683 s …  5.697 s    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 3843.605ms
	Processing time (w/o IO): 3840.854ms
	Processing time (w/o IO): 3845.952ms
	  Time (mean ± σ):      4.195 s ±  0.006 s    [User: 4.065 s, System: 0.121 s]
	  Range (min … max):    4.191 s …  4.199 s    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 6239ms
	Processing time (w/o IO): 6223ms
	Processing time (w/o IO): 7292ms
	  Time (mean ± σ):     18.882 s ±  1.552 s    [User: 19.741 s, System: 0.573 s]
	  Range (min … max):   17.784 s … 19.980 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 2410ms
	Processing time (w/o IO): 2492ms
	Processing time (w/o IO): 2410ms
	  Time (mean ± σ):     10.148 s ±  0.145 s    [User: 25.658 s, System: 0.526 s]
	  Range (min … max):   10.046 s … 10.251 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 2028ms
	Processing time (w/o IO): 2029ms
	Processing time (w/o IO): 2030ms
	  Time (mean ± σ):     12.194 s ±  0.103 s    [User: 25.357 s, System: 0.609 s]
	  Range (min … max):   12.121 s … 12.267 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 4698ms
	Processing time (w/o IO): 4718ms
	Processing time (w/o IO): 4692ms
	  Time (mean ± σ):     17.521 s ±  0.016 s    [User: 18.905 s, System: 0.576 s]
	  Range (min … max):   17.510 s … 17.532 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 6743.635ms
	Processing time (w/o IO): 6746.058ms
	Processing time (w/o IO): 6774.3692ms
	  Time (mean ± σ):     14.415 s ±  0.045 s    [User: 14.378 s, System: 0.164 s]
	  Range (min … max):   14.383 s … 14.447 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 5385.0747ms
	Processing time (w/o IO): 5387.5966ms
	Processing time (w/o IO): 5398.5723ms
	  Time (mean ± σ):     11.376 s ±  0.031 s    [User: 11.337 s, System: 0.176 s]
	  Range (min … max):   11.354 s … 11.397 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	13232.205867767	ms
	Processing time (w/o IO):	12030.380010605	ms
	Processing time (w/o IO):	13322.214126587	ms
	  Time (mean ± σ):     16.831 s ±  0.844 s    [User: 16.634 s, System: 0.187 s]
	  Range (min … max):   16.233 s … 17.428 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	150280.77602386	ms
	Processing time (w/o IO):	151460.27112007	ms
	  Time (abs ≡):        157.910 s               [User: 157.718 s, System: 0.175 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 31599ms
	Processing time (w/o IO): 32314ms
	Processing time (w/o IO): 33016ms
	  Time (mean ± σ):     34.111 s ±  0.545 s    [User: 33.641 s, System: 0.457 s]
	  Range (min … max):   33.725 s … 34.497 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 228.103860 s
	Processing time (w/o IO): 227.665759 s
	Processing time (w/o IO): 226.441423 s
	  Time (mean ± σ):     230.264 s ±  0.868 s    [User: 229.797 s, System: 0.621 s]
	  Range (min … max):   229.650 s … 230.877 s    2 runs
	 
