Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 22.734631ms
	Processing time (w/o IO): 22.724831ms
	Processing time (w/o IO): 22.529431ms
	Processing time (w/o IO): 22.774532ms
	Processing time (w/o IO): 22.567731ms
	Processing time (w/o IO): 22.928132ms
	Processing time (w/o IO): 22.747431ms
	Processing time (w/o IO): 22.740531ms
	Processing time (w/o IO): 23.881838ms
	Processing time (w/o IO): 22.904932ms
	Processing time (w/o IO): 22.906732ms
	Processing time (w/o IO): 22.50683ms
	Processing time (w/o IO): 22.748631ms
	  Time (mean ± σ):      66.6 ms ±   2.1 ms    [User: 60.0 ms, System: 15.8 ms]
	  Range (min … max):    63.9 ms …  70.1 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 13.509778ms
	Processing time (w/o IO): 11.821869ms
	Processing time (w/o IO): 14.003981ms
	Processing time (w/o IO): 11.731968ms
	Processing time (w/o IO): 12.011269ms
	Processing time (w/o IO): 14.303982ms
	Processing time (w/o IO): 11.626567ms
	Processing time (w/o IO): 11.99247ms
	Processing time (w/o IO): 11.993369ms
	Processing time (w/o IO): 11.843868ms
	Processing time (w/o IO): 11.880368ms
	Processing time (w/o IO): 12.829874ms
	Processing time (w/o IO): 11.901769ms
	  Time (mean ± σ):      56.7 ms ±   1.8 ms    [User: 80.8 ms, System: 17.5 ms]
	  Range (min … max):    53.5 ms …  59.6 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 23.607783ms
	Processing time (w/o IO): 22.964479ms
	Processing time (w/o IO): 23.07588ms
	Processing time (w/o IO): 23.059379ms
	Processing time (w/o IO): 22.905278ms
	Processing time (w/o IO): 23.392981ms
	Processing time (w/o IO): 23.22238ms
	Processing time (w/o IO): 23.264381ms
	Processing time (w/o IO): 23.658684ms
	Processing time (w/o IO): 23.304281ms
	Processing time (w/o IO): 23.496482ms
	Processing time (w/o IO): 23.531583ms
	Processing time (w/o IO): 23.453683ms
	  Time (mean ± σ):      41.0 ms ±   1.0 ms    [User: 32.9 ms, System: 8.0 ms]
	  Range (min … max):    39.4 ms …  42.9 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 13.077073ms
	Processing time (w/o IO): 12.39837ms
	Processing time (w/o IO): 12.35167ms
	Processing time (w/o IO): 12.286069ms
	Processing time (w/o IO): 12.38447ms
	Processing time (w/o IO): 22.142825ms
	Processing time (w/o IO): 12.240768ms
	Processing time (w/o IO): 12.321869ms
	Processing time (w/o IO): 12.267569ms
	Processing time (w/o IO): 12.258868ms
	Processing time (w/o IO): 12.128068ms
	Processing time (w/o IO): 12.295669ms
	Processing time (w/o IO): 12.34777ms
	  Time (mean ± σ):      33.6 ms ±   3.5 ms    [User: 34.7 ms, System: 12.1 ms]
	  Range (min … max):    31.2 ms …  43.2 ms    10 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 33.458ms
	Processing time (w/o IO): 33.34ms
	Processing time (w/o IO): 33.157ms
	Processing time (w/o IO): 33.337ms
	Processing time (w/o IO): 33.479ms
	Processing time (w/o IO): 33.165ms
	Processing time (w/o IO): 33.436ms
	Processing time (w/o IO): 33.209ms
	Processing time (w/o IO): 34.61ms
	Processing time (w/o IO): 33.374ms
	Processing time (w/o IO): 33.247ms
	Processing time (w/o IO): 32.945ms
	Processing time (w/o IO): 33.1ms
	  Time (mean ± σ):     118.9 ms ±   0.8 ms    [User: 106.4 ms, System: 13.8 ms]
	  Range (min … max):   117.3 ms … 120.3 ms    10 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 13.529ms
	Processing time (w/o IO): 14.03ms
	Processing time (w/o IO): 13.184ms
	Processing time (w/o IO): 13.158ms
	Processing time (w/o IO): 13.953ms
	Processing time (w/o IO): 14.969ms
	Processing time (w/o IO): 13.425ms
	Processing time (w/o IO): 13.322ms
	Processing time (w/o IO): 12.445ms
	Processing time (w/o IO): 14.576ms
	Processing time (w/o IO): 13.769ms
	Processing time (w/o IO): 13.973ms
	Processing time (w/o IO): 13.447ms
	  Time (mean ± σ):      96.2 ms ±   1.7 ms    [User: 108.0 ms, System: 12.4 ms]
	  Range (min … max):    93.6 ms …  99.8 ms    10 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 22 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 22 ms
	Processing time (w/o IO): 22 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 22 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 22 ms
	Processing time (w/o IO): 22 ms
	Processing time (w/o IO): 23 ms
	  Time (mean ± σ):     235.4 ms ±   2.3 ms    [User: 200.8 ms, System: 34.4 ms]
	  Range (min … max):   232.8 ms … 240.0 ms    10 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 15 ms
	Processing time (w/o IO): 15 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 15 ms
	Processing time (w/o IO): 15 ms
	Processing time (w/o IO): 15 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 14 ms
	  Time (mean ± σ):     252.7 ms ±   1.9 ms    [User: 242.1 ms, System: 45.7 ms]
	  Range (min … max):   249.5 ms … 255.6 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 1.484s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.470s
	Processing time (w/o IO): 1.455s
	Processing time (w/o IO): 1.457s
	Processing time (w/o IO): 1.473s
	Processing time (w/o IO): 1.512s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.456s
	Processing time (w/o IO): 1.463s
	Processing time (w/o IO): 1.482s
	Processing time (w/o IO): 1.473s
	Processing time (w/o IO): 1.457s
	  Time (mean ± σ):      1.544 s ±  0.017 s    [User: 1.520 s, System: 0.024 s]
	  Range (min … max):    1.531 s …  1.586 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 380.0ms
	Processing time (w/o IO): 379.3ms
	Processing time (w/o IO): 376.1ms
	Processing time (w/o IO): 380.9ms
	Processing time (w/o IO): 381.2ms
	Processing time (w/o IO): 399.1ms
	Processing time (w/o IO): 392.5ms
	Processing time (w/o IO): 377.1ms
	Processing time (w/o IO): 379.7ms
	Processing time (w/o IO): 383.0ms
	Processing time (w/o IO): 377.7ms
	Processing time (w/o IO): 378.2ms
	Processing time (w/o IO): 377.8ms
	  Time (mean ± σ):     727.9 ms ± 166.0 ms    [User: 809.4 ms, System: 483.1 ms]
	  Range (min … max):   667.1 ms … 1198.3 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 54.223547ms
	Processing time (w/o IO): 53.922629ms
	Processing time (w/o IO): 53.751619ms
	Processing time (w/o IO): 53.75402ms
	Processing time (w/o IO): 53.948932ms
	Processing time (w/o IO): 53.75982ms
	Processing time (w/o IO): 54.035637ms
	Processing time (w/o IO): 53.866526ms
	Processing time (w/o IO): 53.910129ms
	Processing time (w/o IO): 53.397398ms
	Processing time (w/o IO): 54.076839ms
	Processing time (w/o IO): 53.150084ms
	Processing time (w/o IO): 53.958932ms
	  Time (mean ± σ):     106.9 ms ±   1.2 ms    [User: 95.1 ms, System: 11.6 ms]
	  Range (min … max):   105.2 ms … 109.3 ms    10 runs
	 
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
	  Time (mean ± σ):      72.7 ms ±   1.0 ms    [User: 67.0 ms, System: 5.7 ms]
	  Range (min … max):    71.2 ms …  74.8 ms    10 runs
	 
Julia:

	Benchmark 1: julia --startup-file=no --project=Related -e "using Related; main()"
	Processing time (w/o IO): 23.96124ms
	Processing time (w/o IO): 24.124487ms
	Processing time (w/o IO): 24.285693000000002ms
	Processing time (w/o IO): 24.155587ms
	Processing time (w/o IO): 23.999881000000002ms
	Processing time (w/o IO): 24.4408ms
	Processing time (w/o IO): 24.058462ms
	Processing time (w/o IO): 24.131491ms
	Processing time (w/o IO): 23.985287ms
	Processing time (w/o IO): 24.185633000000003ms
	Processing time (w/o IO): 24.181332ms
	Processing time (w/o IO): 23.981424ms
	Processing time (w/o IO): 24.318138ms
	  Time (mean ± σ):      1.085 s ±  0.018 s    [User: 0.939 s, System: 0.249 s]
	  Range (min … max):    1.060 s …  1.118 s    10 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 10 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 10 milliseconds
	Processing time (w/o IO): 10 milliseconds
	Processing time (w/o IO): 9 milliseconds
	  Time (mean ± σ):      1.087 s ±  0.021 s    [User: 0.919 s, System: 0.271 s]
	  Range (min … max):    1.062 s …  1.116 s    10 runs
	 
Julia Concurrent:

	Benchmark 1: julia --startup-file=no --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 14.336906ms
	Processing time (w/o IO): 13.201566ms
	Processing time (w/o IO): 13.813236ms
	Processing time (w/o IO): 13.818536ms
	Processing time (w/o IO): 13.517527ms
	Processing time (w/o IO): 13.31302ms
	Processing time (w/o IO): 13.345521000000002ms
	Processing time (w/o IO): 14.25005ms
	Processing time (w/o IO): 13.388623ms
	Processing time (w/o IO): 13.189958ms
	Processing time (w/o IO): 14.22467ms
	Processing time (w/o IO): 14.429173ms
	Processing time (w/o IO): 14.346371ms
	  Time (mean ± σ):      1.074 s ±  0.026 s    [User: 0.956 s, System: 0.261 s]
	  Range (min … max):    1.042 s …  1.123 s    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  48.443064ms
	Processing time (w/o IO):  47.789544ms
	Processing time (w/o IO):  47.976049ms
	Processing time (w/o IO):  47.994231ms
	Processing time (w/o IO):  47.83513ms
	Processing time (w/o IO):  48.021132ms
	Processing time (w/o IO):  47.438828ms
	Processing time (w/o IO):  48.230133ms
	Processing time (w/o IO):  47.865531ms
	Processing time (w/o IO):  48.450359ms
	Processing time (w/o IO):  47.900542ms
	Processing time (w/o IO):  48.182651ms
	Processing time (w/o IO):  47.718238ms
	  Time (mean ± σ):     269.5 ms ±   0.9 ms    [User: 256.5 ms, System: 12.9 ms]
	  Range (min … max):   268.2 ms … 271.0 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 49.360ms
	Processing time (w/o IO): 49.349ms
	Processing time (w/o IO): 49.814ms
	Processing time (w/o IO): 49.462ms
	Processing time (w/o IO): 49.772ms
	Processing time (w/o IO): 49.267ms
	Processing time (w/o IO): 49.616ms
	Processing time (w/o IO): 49.634ms
	Processing time (w/o IO): 49.384ms
	Processing time (w/o IO): 49.478ms
	Processing time (w/o IO): 49.046ms
	Processing time (w/o IO): 48.926ms
	Processing time (w/o IO): 49.800ms
	  Time (mean ± σ):     359.2 ms ±   2.3 ms    [User: 321.9 ms, System: 37.2 ms]
	  Range (min … max):   354.7 ms … 361.7 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 165ms
	  Time (mean ± σ):     570.0 ms ±  12.9 ms    [User: 675.4 ms, System: 117.9 ms]
	  Range (min … max):   555.9 ms … 589.9 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 131ms
	  Time (mean ± σ):     264.1 ms ±   1.6 ms    [User: 240.6 ms, System: 28.3 ms]
	  Range (min … max):   261.6 ms … 265.9 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 50.76098442077637ms
	Processing time (w/o IO): 51.25904083251953ms
	Processing time (w/o IO): 52.82604694366455ms
	Processing time (w/o IO): 51.90098285675049ms
	Processing time (w/o IO): 51.358938217163086ms
	Processing time (w/o IO): 51.730990409851074ms
	Processing time (w/o IO): 51.419973373413086ms
	Processing time (w/o IO): 51.254987716674805ms
	Processing time (w/o IO): 51.277995109558105ms
	Processing time (w/o IO): 51.023006439208984ms
	Processing time (w/o IO): 51.106929779052734ms
	Processing time (w/o IO): 51.87809467315674ms
	Processing time (w/o IO): 51.35703086853027ms
	  Time (mean ± σ):     423.1 ms ±   4.5 ms    [User: 365.1 ms, System: 45.9 ms]
	  Range (min … max):   416.8 ms … 431.2 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 32.541234ms
	Processing time (w/o IO): 31.387397ms
	Processing time (w/o IO): 32.016814ms
	Processing time (w/o IO): 33.002338ms
	Processing time (w/o IO): 31.526101ms
	Processing time (w/o IO): 31.992213ms
	Processing time (w/o IO): 31.533401ms
	Processing time (w/o IO): 31.986512ms
	Processing time (w/o IO): 31.067989ms
	Processing time (w/o IO): 31.216369ms
	Processing time (w/o IO): 31.620379ms
	Processing time (w/o IO): 31.25727ms
	Processing time (w/o IO): 31.130967ms
	  Time (mean ± σ):     413.8 ms ±   3.2 ms    [User: 435.4 ms, System: 52.3 ms]
	  Range (min … max):   410.8 ms … 420.4 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 206ms
	Processing time (w/o IO): 203ms
	Processing time (w/o IO): 200ms
	Processing time (w/o IO): 204ms
	Processing time (w/o IO): 156ms
	Processing time (w/o IO): 212ms
	Processing time (w/o IO): 206ms
	Processing time (w/o IO): 216ms
	Processing time (w/o IO): 156ms
	Processing time (w/o IO): 207ms
	Processing time (w/o IO): 202ms
	Processing time (w/o IO): 161ms
	Processing time (w/o IO): 206ms
	  Time (mean ± σ):     377.0 ms ±  25.0 ms    [User: 368.9 ms, System: 72.2 ms]
	  Range (min … max):   336.6 ms … 401.6 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 135ms
	Processing time (w/o IO): 133ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 119ms
	Processing time (w/o IO): 109ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 101ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 123ms
	Processing time (w/o IO): 120ms
	Processing time (w/o IO): 129ms
	Processing time (w/o IO): 120ms
	  Time (mean ± σ):     189.1 ms ±   9.2 ms    [User: 199.0 ms, System: 45.8 ms]
	  Range (min … max):   171.0 ms … 197.8 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 182ms
	Processing time (w/o IO): 182ms
	Processing time (w/o IO): 182ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 184ms
	Processing time (w/o IO): 184ms
	Processing time (w/o IO): 181ms
	Processing time (w/o IO): 180ms
	Processing time (w/o IO): 180ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 168ms
	Processing time (w/o IO): 186ms
	  Time (mean ± σ):     256.6 ms ±   6.3 ms    [User: 242.7 ms, System: 40.0 ms]
	  Range (min … max):   246.0 ms … 263.4 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 56 ms
	  Time (mean ± σ):     398.3 ms ±   7.7 ms    [User: 696.6 ms, System: 63.6 ms]
	  Range (min … max):   389.8 ms … 408.1 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 70 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 51 ms
	  Time (mean ± σ):     134.2 ms ±   1.5 ms    [User: 117.7 ms, System: 16.6 ms]
	  Range (min … max):   132.5 ms … 136.8 ms    10 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 41 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 40 ms
	  Time (mean ± σ):      71.1 ms ±   1.3 ms    [User: 115.0 ms, System: 15.0 ms]
	  Range (min … max):    69.5 ms …  73.0 ms    10 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 22.389ms
	Processing time (w/o IO): 22.124ms
	Processing time (w/o IO): 22.177ms
	Processing time (w/o IO): 22.086ms
	Processing time (w/o IO): 22.206ms
	Processing time (w/o IO): 22.09ms
	Processing time (w/o IO): 22.133ms
	Processing time (w/o IO): 22.238ms
	Processing time (w/o IO): 22.085ms
	Processing time (w/o IO): 22.232ms
	Processing time (w/o IO): 22.217ms
	Processing time (w/o IO): 22.098ms
	Processing time (w/o IO): 22.026ms
	  Time (mean ± σ):      54.0 ms ±   1.3 ms    [User: 40.9 ms, System: 13.1 ms]
	  Range (min … max):    52.1 ms …  55.9 ms    10 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 12.256ms
	Processing time (w/o IO): 14.41ms
	Processing time (w/o IO): 13.163ms
	Processing time (w/o IO): 12.371ms
	Processing time (w/o IO): 12.935ms
	Processing time (w/o IO): 12.748ms
	Processing time (w/o IO): 12.25ms
	Processing time (w/o IO): 14.067ms
	Processing time (w/o IO): 12.987ms
	Processing time (w/o IO): 12.315ms
	Processing time (w/o IO): 12.807ms
	Processing time (w/o IO): 14.216ms
	Processing time (w/o IO): 12.234ms
	  Time (mean ± σ):      43.0 ms ±   0.9 ms    [User: 62.8 ms, System: 14.5 ms]
	  Range (min … max):    41.8 ms …  44.0 ms    10 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 85.5787ms
	Processing time (w/o IO): 85.2535ms
	Processing time (w/o IO): 85.4552ms
	Processing time (w/o IO): 86.0227ms
	Processing time (w/o IO): 85.6386ms
	Processing time (w/o IO): 85.5368ms
	Processing time (w/o IO): 85.8474ms
	Processing time (w/o IO): 85.9992ms
	Processing time (w/o IO): 85.2956ms
	Processing time (w/o IO): 85.788ms
	Processing time (w/o IO): 85.5174ms
	Processing time (w/o IO): 85.467ms
	Processing time (w/o IO): 85.3415ms
	  Time (mean ± σ):      1.061 s ±  0.016 s    [User: 1.153 s, System: 0.134 s]
	  Range (min … max):    1.049 s …  1.104 s    10 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 21ms
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
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	  Time (mean ± σ):     973.7 ms ±  19.2 ms    [User: 1122.4 ms, System: 139.4 ms]
	  Range (min … max):   923.2 ms … 987.1 ms    10 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	  Time (mean ± σ):     772.8 ms ±   3.9 ms    [User: 823.6 ms, System: 109.9 ms]
	  Range (min … max):   766.4 ms … 778.2 ms    10 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 32.4111ms
	Processing time (w/o IO): 32.21ms
	Processing time (w/o IO): 32.2293ms
	Processing time (w/o IO): 32.6006ms
	Processing time (w/o IO): 32.3853ms
	Processing time (w/o IO): 32.2733ms
	Processing time (w/o IO): 32.6867ms
	Processing time (w/o IO): 32.2019ms
	Processing time (w/o IO): 32.9448ms
	Processing time (w/o IO): 32.3593ms
	Processing time (w/o IO): 32.5695ms
	Processing time (w/o IO): 32.0533ms
	Processing time (w/o IO): 32.9045ms
	  Time (mean ± σ):     802.4 ms ±   6.7 ms    [User: 754.4 ms, System: 108.8 ms]
	  Range (min … max):   796.1 ms … 817.0 ms    10 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 27.3182ms
	Processing time (w/o IO): 27.6084ms
	Processing time (w/o IO): 27.1572ms
	Processing time (w/o IO): 27.7093ms
	Processing time (w/o IO): 28.291ms
	Processing time (w/o IO): 27.5633ms
	Processing time (w/o IO): 27.7026ms
	Processing time (w/o IO): 27.5575ms
	Processing time (w/o IO): 27.4034ms
	Processing time (w/o IO): 27.3522ms
	Processing time (w/o IO): 27.9776ms
	Processing time (w/o IO): 27.5321ms
	Processing time (w/o IO): 27.5316ms
	  Time (mean ± σ):     223.9 ms ±   2.7 ms    [User: 177.1 ms, System: 40.4 ms]
	  Range (min … max):   220.5 ms … 228.1 ms    10 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 27.6369ms
	Processing time (w/o IO): 26.3857ms
	Processing time (w/o IO): 26.4707ms
	Processing time (w/o IO): 26.4583ms
	Processing time (w/o IO): 26.5151ms
	Processing time (w/o IO): 26.6432ms
	Processing time (w/o IO): 26.7415ms
	Processing time (w/o IO): 26.2536ms
	Processing time (w/o IO): 26.9489ms
	Processing time (w/o IO): 26.994ms
	Processing time (w/o IO): 27.2173ms
	Processing time (w/o IO): 26.5331ms
	Processing time (w/o IO): 26.8784ms
	  Time (mean ± σ):     110.3 ms ±   1.4 ms    [User: 99.6 ms, System: 28.3 ms]
	  Range (min … max):   108.4 ms … 112.7 ms    10 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 13.9525ms
	Processing time (w/o IO): 16.0478ms
	Processing time (w/o IO): 14.9293ms
	Processing time (w/o IO): 13.8024ms
	Processing time (w/o IO): 13.603ms
	Processing time (w/o IO): 13.9637ms
	Processing time (w/o IO): 14.3889ms
	Processing time (w/o IO): 13.447ms
	Processing time (w/o IO): 14.5298ms
	Processing time (w/o IO): 13.8987ms
	Processing time (w/o IO): 13.6147ms
	Processing time (w/o IO): 15.0734ms
	Processing time (w/o IO): 13.8542ms
	  Time (mean ± σ):     217.7 ms ±  12.7 ms    [User: 208.0 ms, System: 56.3 ms]
	  Range (min … max):   203.1 ms … 244.0 ms    10 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 10.9171ms
	Processing time (w/o IO): 10.6818ms
	Processing time (w/o IO): 12.0142ms
	Processing time (w/o IO): 10.9296ms
	Processing time (w/o IO): 11.1002ms
	Processing time (w/o IO): 11.0452ms
	Processing time (w/o IO): 11.4236ms
	Processing time (w/o IO): 10.892ms
	Processing time (w/o IO): 10.9666ms
	Processing time (w/o IO): 11.0305ms
	Processing time (w/o IO): 11.046ms
	Processing time (w/o IO): 11.2071ms
	Processing time (w/o IO): 11.2174ms
	  Time (mean ± σ):      83.2 ms ±   2.5 ms    [User: 128.7 ms, System: 34.4 ms]
	  Range (min … max):    79.8 ms …  86.3 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	91.255903244019	ms
	Processing time (w/o IO):	112.20908164978	ms
	Processing time (w/o IO):	115.26012420654	ms
	Processing time (w/o IO):	89.866876602173	ms
	Processing time (w/o IO):	110.65101623535	ms
	Processing time (w/o IO):	91.696977615356	ms
	Processing time (w/o IO):	93.109846115112	ms
	Processing time (w/o IO):	107.61094093323	ms
	Processing time (w/o IO):	116.68705940247	ms
	Processing time (w/o IO):	91.131925582886	ms
	Processing time (w/o IO):	126.72805786133	ms
	Processing time (w/o IO):	91.677904129028	ms
	Processing time (w/o IO):	117.19489097595	ms
	  Time (mean ± σ):     360.0 ms ±  16.9 ms    [User: 332.3 ms, System: 27.6 ms]
	  Range (min … max):   335.8 ms … 381.6 ms    10 runs
	 
LuaJIT (JIT OFF):

	Benchmark 1: luajit -joff only_lua.lua
	Processing time (w/o IO):	676.06711387634	ms
	Processing time (w/o IO):	676.82695388794	ms
	Processing time (w/o IO):	679.6088218689	ms
	Processing time (w/o IO):	680.28521537781	ms
	Processing time (w/o IO):	694.97895240784	ms
	Processing time (w/o IO):	674.93319511414	ms
	Processing time (w/o IO):	675.63891410828	ms
	Processing time (w/o IO):	676.63216590881	ms
	Processing time (w/o IO):	674.77488517761	ms
	Processing time (w/o IO):	676.3801574707	ms
	Processing time (w/o IO):	672.8789806366	ms
	Processing time (w/o IO):	672.80697822571	ms
	Processing time (w/o IO):	679.78000640869	ms
	  Time (mean ± σ):      1.019 s ±  0.010 s    [User: 0.995 s, System: 0.022 s]
	  Range (min … max):    1.007 s …  1.034 s    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1096.9948768616	ms
	Processing time (w/o IO):	1098.9360809326	ms
	Processing time (w/o IO):	1100.9469032288	ms
	Processing time (w/o IO):	1098.9110469818	ms
	Processing time (w/o IO):	1102.6430130005	ms
	Processing time (w/o IO):	1098.5701084137	ms
	Processing time (w/o IO):	1103.077173233	ms
	Processing time (w/o IO):	1137.2301578522	ms
	Processing time (w/o IO):	1099.5709896088	ms
	Processing time (w/o IO):	1101.6879081726	ms
	Processing time (w/o IO):	1096.5709686279	ms
	Processing time (w/o IO):	1099.9739170074	ms
	Processing time (w/o IO):	1100.0719070435	ms
	  Time (mean ± σ):      1.544 s ±  0.012 s    [User: 1.526 s, System: 0.017 s]
	  Range (min … max):    1.533 s …  1.575 s    10 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 146ms
	Processing time (w/o IO): 146ms
	Processing time (w/o IO): 146ms
	Processing time (w/o IO): 142ms
	Processing time (w/o IO): 143ms
	Processing time (w/o IO): 146ms
	Processing time (w/o IO): 146ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 142ms
	Processing time (w/o IO): 146ms
	Processing time (w/o IO): 144ms
	Processing time (w/o IO): 143ms
	Processing time (w/o IO): 144ms
	  Time (mean ± σ):     250.1 ms ±  27.2 ms    [User: 202.3 ms, System: 39.4 ms]
	  Range (min … max):   237.3 ms … 327.2 ms    10 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 0.886111 s
	Processing time (w/o IO): 0.887420 s
	Processing time (w/o IO): 0.897941 s
	Processing time (w/o IO): 0.894329 s
	Processing time (w/o IO): 0.883732 s
	Processing time (w/o IO): 0.890912 s
	Processing time (w/o IO): 0.889164 s
	Processing time (w/o IO): 0.885998 s
	Processing time (w/o IO): 0.886345 s
	Processing time (w/o IO): 0.886680 s
	Processing time (w/o IO): 0.888028 s
	Processing time (w/o IO): 0.888726 s
	Processing time (w/o IO): 0.882599 s
	  Time (mean ± σ):      1.274 s ±  0.004 s    [User: 1.181 s, System: 0.134 s]
	  Range (min … max):    1.267 s …  1.282 s    10 runs
	 
Lobster (JIT):

	Benchmark 1: lobster related.lobster
	Processing time (w/o IO): 1.381256s
	Processing time (w/o IO): 1.363005s
	Processing time (w/o IO): 1.368821s
	Processing time (w/o IO): 1.369328s
	Processing time (w/o IO): 1.370937s
	Processing time (w/o IO): 1.365539s
	Processing time (w/o IO): 1.364254s
	Processing time (w/o IO): 1.367684s
	Processing time (w/o IO): 1.368888s
	Processing time (w/o IO): 1.37231s
	Processing time (w/o IO): 1.371698s
	Processing time (w/o IO): 1.362227s
	Processing time (w/o IO): 1.356214s
	  Time (mean ± σ):      1.462 s ±  0.005 s    [User: 1.439 s, System: 0.023 s]
	  Range (min … max):    1.451 s …  1.469 s    10 runs
	 
Lobster (C++):

	Benchmark 1: compiled_lobster
	Processing time (w/o IO): 0.187091s
	Processing time (w/o IO): 0.192681s
	Processing time (w/o IO): 0.184887s
	Processing time (w/o IO): 0.184606s
	Processing time (w/o IO): 0.185709s
	Processing time (w/o IO): 0.185687s
	Processing time (w/o IO): 0.184724s
	Processing time (w/o IO): 0.184962s
	Processing time (w/o IO): 0.184809s
	Processing time (w/o IO): 0.185526s
	Processing time (w/o IO): 0.185191s
	Processing time (w/o IO): 0.186673s
	Processing time (w/o IO): 0.184044s
	  Time (mean ± σ):     278.1 ms ±   1.5 ms    [User: 253.8 ms, System: 24.2 ms]
	  Range (min … max):   276.3 ms … 281.1 ms    10 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 326.346711ms
	Processing time (w/o IO): 322.371316ms
	Processing time (w/o IO): 323.406552ms
	  Time (mean ± σ):     487.4 ms ±   2.4 ms    [User: 462.5 ms, System: 52.1 ms]
	  Range (min … max):   485.7 ms … 489.1 ms    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 164.926547ms
	Processing time (w/o IO): 165.971684ms
	Processing time (w/o IO): 164.233256ms
	  Time (mean ± σ):     330.0 ms ±   4.5 ms    [User: 788.5 ms, System: 55.4 ms]
	  Range (min … max):   326.8 ms … 333.2 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 343.563085ms
	Processing time (w/o IO): 341.494315ms
	Processing time (w/o IO): 341.76245ms
	  Time (mean ± σ):     414.7 ms ±   0.2 ms    [User: 379.3 ms, System: 35.2 ms]
	  Range (min … max):   414.5 ms … 414.8 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 176.636477ms
	Processing time (w/o IO): 202.91221ms
	Processing time (w/o IO): 176.218823ms
	  Time (mean ± σ):     266.1 ms ±  20.6 ms    [User: 411.0 ms, System: 41.2 ms]
	  Range (min … max):   251.6 ms … 280.7 ms    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 443.614ms
	Processing time (w/o IO): 443.908ms
	Processing time (w/o IO): 444.724ms
	  Time (mean ± σ):     758.4 ms ±   2.9 ms    [User: 731.2 ms, System: 31.1 ms]
	  Range (min … max):   756.4 ms … 760.4 ms    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 128.07ms
	Processing time (w/o IO): 127.986ms
	Processing time (w/o IO): 127.079ms
	  Time (mean ± σ):     448.4 ms ±   3.3 ms    [User: 738.5 ms, System: 41.6 ms]
	  Range (min … max):   446.1 ms … 450.8 ms    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 324 ms
	Processing time (w/o IO): 323 ms
	Processing time (w/o IO): 320 ms
	  Time (mean ± σ):      1.232 s ±  0.009 s    [User: 1.095 s, System: 0.137 s]
	  Range (min … max):    1.226 s …  1.238 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 166 ms
	Processing time (w/o IO): 166 ms
	Processing time (w/o IO): 166 ms
	  Time (mean ± σ):      1.167 s ±  0.020 s    [User: 1.511 s, System: 0.133 s]
	  Range (min … max):    1.153 s …  1.181 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 23.540s
	Processing time (w/o IO): 23.560s
	  Time (abs ≡):        23.749 s               [User: 23.668 s, System: 0.071 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 7.527s
	Processing time (w/o IO): 8.092s
	Processing time (w/o IO): 8.381s
	  Time (mean ± σ):      8.784 s ±  0.196 s    [User: 5.141 s, System: 4.253 s]
	  Range (min … max):    8.646 s …  8.923 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 820.449536ms
	Processing time (w/o IO): 821.419085ms
	Processing time (w/o IO): 820.457336ms
	  Time (mean ± σ):      1.054 s ±  0.003 s    [User: 1.015 s, System: 0.039 s]
	  Range (min … max):    1.053 s …  1.056 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 340ms
	Processing time (w/o IO): 341ms
	Processing time (w/o IO): 340ms
	  Time (mean ± σ):     540.3 ms ±   4.1 ms    [User: 510.9 ms, System: 29.3 ms]
	  Range (min … max):   537.4 ms … 543.2 ms    2 runs
	 
Julia:

	Benchmark 1: julia --startup-file=no --project=Related -e "using Related; main()"
	Processing time (w/o IO): 385.885579ms
	Processing time (w/o IO): 387.43865500000004ms
	Processing time (w/o IO): 392.678966ms
	  Time (mean ± σ):      1.593 s ±  0.010 s    [User: 1.387 s, System: 0.306 s]
	  Range (min … max):    1.586 s …  1.600 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 58 milliseconds
	Processing time (w/o IO): 57 milliseconds
	Processing time (w/o IO): 65 milliseconds
	  Time (mean ± σ):      1.292 s ±  0.012 s    [User: 1.082 s, System: 0.311 s]
	  Range (min … max):    1.284 s …  1.301 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --startup-file=no --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 173.137954ms
	Processing time (w/o IO): 172.680275ms
	Processing time (w/o IO): 171.91064ms
	  Time (mean ± σ):      1.372 s ±  0.000 s    [User: 1.664 s, System: 0.311 s]
	  Range (min … max):    1.372 s …  1.373 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  579.702599ms
	Processing time (w/o IO):  577.699755ms
	Processing time (w/o IO):  581.057885ms
	  Time (mean ± σ):      1.391 s ±  0.007 s    [User: 1.348 s, System: 0.041 s]
	  Range (min … max):    1.386 s …  1.396 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 744.937ms
	Processing time (w/o IO): 744.239ms
	Processing time (w/o IO): 743.233ms
	  Time (mean ± σ):      9.590 s ±  0.049 s    [User: 9.404 s, System: 0.183 s]
	  Range (min … max):    9.555 s …  9.625 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 2243ms
	Processing time (w/o IO): 2080ms
	Processing time (w/o IO): 2264ms
	  Time (mean ± σ):      2.902 s ±  0.150 s    [User: 3.078 s, System: 0.189 s]
	  Range (min … max):    2.796 s …  3.008 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 2005ms
	Processing time (w/o IO): 2007ms
	Processing time (w/o IO): 2009ms
	  Time (mean ± σ):      2.533 s ±  0.002 s    [User: 2.473 s, System: 0.089 s]
	  Range (min … max):    2.532 s …  2.535 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 716.4129018783569ms
	Processing time (w/o IO): 716.947078704834ms
	Processing time (w/o IO): 719.4700241088867ms
	  Time (mean ± σ):      2.241 s ±  0.011 s    [User: 2.042 s, System: 0.169 s]
	  Range (min … max):    2.233 s …  2.249 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 395.785988ms
	Processing time (w/o IO): 395.043233ms
	Processing time (w/o IO): 396.235163ms
	  Time (mean ± σ):      1.905 s ±  0.001 s    [User: 2.869 s, System: 0.156 s]
	  Range (min … max):    1.904 s …  1.905 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 2016ms
	Processing time (w/o IO): 1947ms
	Processing time (w/o IO): 1954ms
	  Time (mean ± σ):      2.290 s ±  0.008 s    [User: 2.282 s, System: 0.108 s]
	  Range (min … max):    2.284 s …  2.295 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 1446ms
	Processing time (w/o IO): 1425ms
	Processing time (w/o IO): 1773ms
	  Time (mean ± σ):      1.791 s ±  0.243 s    [User: 1.768 s, System: 0.099 s]
	  Range (min … max):    1.619 s …  1.963 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 2494ms
	Processing time (w/o IO): 2293ms
	Processing time (w/o IO): 2291ms
	  Time (mean ± σ):      2.623 s ±  0.172 s    [User: 2.436 s, System: 0.084 s]
	  Range (min … max):    2.501 s …  2.744 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 853 ms
	Processing time (w/o IO): 855 ms
	Processing time (w/o IO): 857 ms
	  Time (mean ± σ):      1.821 s ±  0.000 s    [User: 1.780 s, System: 0.039 s]
	  Range (min … max):    1.821 s …  1.821 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 464 ms
	Processing time (w/o IO): 478 ms
	Processing time (w/o IO): 469 ms
	  Time (mean ± σ):     580.7 ms ±   5.3 ms    [User: 1317.7 ms, System: 33.2 ms]
	  Range (min … max):   576.9 ms … 584.5 ms    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 318.355ms
	Processing time (w/o IO): 322.489ms
	Processing time (w/o IO): 318.63ms
	  Time (mean ± σ):     453.8 ms ±   4.2 ms    [User: 411.8 ms, System: 41.2 ms]
	  Range (min … max):   450.8 ms … 456.7 ms    2 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 173.573ms
	Processing time (w/o IO): 172.585ms
	Processing time (w/o IO): 173.487ms
	  Time (mean ± σ):     302.1 ms ±   2.5 ms    [User: 750.4 ms, System: 53.1 ms]
	  Range (min … max):   300.3 ms … 303.8 ms    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 560.1516ms
	Processing time (w/o IO): 556.2201ms
	Processing time (w/o IO): 559.5544ms
	  Time (mean ± σ):      3.529 s ±  0.011 s    [User: 3.420 s, System: 0.412 s]
	  Range (min … max):    3.521 s …  3.536 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 288ms
	Processing time (w/o IO): 274ms
	Processing time (w/o IO): 275ms
	  Time (mean ± σ):      2.910 s ±  0.013 s    [User: 4.455 s, System: 0.398 s]
	  Range (min … max):    2.900 s …  2.920 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 231ms
	Processing time (w/o IO): 235ms
	Processing time (w/o IO): 231ms
	  Time (mean ± σ):      3.370 s ±  0.001 s    [User: 4.615 s, System: 0.372 s]
	  Range (min … max):    3.369 s …  3.370 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 462.1031ms
	Processing time (w/o IO): 462.872ms
	Processing time (w/o IO): 459.87ms
	  Time (mean ± σ):      3.868 s ±  0.004 s    [User: 3.708 s, System: 0.387 s]
	  Range (min … max):    3.865 s …  3.871 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 374.3478ms
	Processing time (w/o IO): 374.0791ms
	Processing time (w/o IO): 376.861ms
	  Time (mean ± σ):      1.117 s ±  0.002 s    [User: 1.053 s, System: 0.089 s]
	  Range (min … max):    1.116 s …  1.119 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 373.9805ms
	Processing time (w/o IO): 372.1212ms
	Processing time (w/o IO): 371.5451ms
	  Time (mean ± σ):     943.3 ms ±   0.9 ms    [User: 892.0 ms, System: 87.4 ms]
	  Range (min … max):   942.7 ms … 944.0 ms    2 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 126.0447ms
	Processing time (w/o IO): 126.8729ms
	Processing time (w/o IO): 126.4222ms
	  Time (mean ± σ):     623.1 ms ±   0.6 ms    [User: 1235.7 ms, System: 87.7 ms]
	  Range (min … max):   622.7 ms … 623.6 ms    2 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 138.2564ms
	Processing time (w/o IO): 137.2013ms
	Processing time (w/o IO): 137.2143ms
	  Time (mean ± σ):     469.0 ms ±   2.9 ms    [User: 1203.2 ms, System: 72.9 ms]
	  Range (min … max):   467.0 ms … 471.0 ms    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	1436.47813797	ms
	Processing time (w/o IO):	1422.5599765778	ms
	Processing time (w/o IO):	1182.6648712158	ms
	  Time (mean ± σ):      2.793 s ±  0.174 s    [User: 2.715 s, System: 0.075 s]
	  Range (min … max):    2.670 s …  2.916 s    2 runs
	 
LuaJIT (JIT OFF):

	Benchmark 1: luajit -joff only_lua.lua
	Processing time (w/o IO):	10264.039039612	ms
	Processing time (w/o IO):	10281.336784363	ms
	Processing time (w/o IO):	10272.095918655	ms
	  Time (mean ± σ):     12.081 s ±  0.053 s    [User: 11.977 s, System: 0.101 s]
	  Range (min … max):   12.043 s … 12.118 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	16757.623195648	ms
	Processing time (w/o IO):	16757.969856262	ms
	  Time (abs ≡):        18.794 s               [User: 18.734 s, System: 0.055 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 2698ms
	Processing time (w/o IO): 2707ms
	Processing time (w/o IO): 2740ms
	  Time (mean ± σ):      3.172 s ±  0.030 s    [User: 2.954 s, System: 0.215 s]
	  Range (min … max):    3.151 s …  3.193 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 14.770642 s
	Processing time (w/o IO): 14.725906 s
	Processing time (w/o IO): 14.750825 s
	  Time (mean ± σ):     15.904 s ±  0.016 s    [User: 15.597 s, System: 0.375 s]
	  Range (min … max):   15.892 s … 15.915 s    2 runs
	 
Lobster (JIT):

	Benchmark 1: lobster related.lobster
	Processing time (w/o IO): 21.273765s
	Processing time (w/o IO): 21.313649s
	  Time (abs ≡):        21.675 s               [User: 21.599 s, System: 0.071 s]
	 
Lobster (C++):

	Benchmark 1: compiled_lobster
	Processing time (w/o IO): 2.886039s
	Processing time (w/o IO): 2.872099s
	  Time (abs ≡):         3.234 s               [User: 3.168 s, System: 0.063 s]
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 2.859952945s
	Processing time (w/o IO): 2.861871251s
	Processing time (w/o IO): 2.858884087s
	  Time (mean ± σ):      3.449 s ±  0.004 s    [User: 3.442 s, System: 0.187 s]
	  Range (min … max):    3.447 s …  3.452 s    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1.432653551s
	Processing time (w/o IO): 1.446755971s
	Processing time (w/o IO): 1.430109429s
	  Time (mean ± σ):      2.038 s ±  0.009 s    [User: 6.248 s, System: 0.179 s]
	  Range (min … max):    2.032 s …  2.044 s    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 3.040930082s
	Processing time (w/o IO): 3.041459186s
	Processing time (w/o IO): 3.039104454s
	  Time (mean ± σ):      3.302 s ±  0.012 s    [User: 3.195 s, System: 0.101 s]
	  Range (min … max):    3.293 s …  3.311 s    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 1.53872295s
	Processing time (w/o IO): 1.520042401s
	Processing time (w/o IO): 1.519645998s
	  Time (mean ± σ):      1.770 s ±  0.000 s    [User: 3.171 s, System: 0.107 s]
	  Range (min … max):    1.770 s …  1.770 s    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 3863.32ms
	Processing time (w/o IO): 3864.46ms
	Processing time (w/o IO): 3867.34ms
	  Time (mean ± σ):      4.879 s ±  0.002 s    [User: 4.736 s, System: 0.149 s]
	  Range (min … max):    4.878 s …  4.880 s    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1013.15ms
	Processing time (w/o IO): 1011.56ms
	Processing time (w/o IO): 1012.04ms
	  Time (mean ± σ):      1.981 s ±  0.000 s    [User: 4.685 s, System: 0.123 s]
	  Range (min … max):    1.981 s …  1.981 s    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 2799 ms
	Processing time (w/o IO): 2799 ms
	Processing time (w/o IO): 2795 ms
	  Time (mean ± σ):      5.591 s ±  0.117 s    [User: 5.096 s, System: 0.426 s]
	  Range (min … max):    5.508 s …  5.673 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 1408 ms
	Processing time (w/o IO): 1407 ms
	Processing time (w/o IO): 1403 ms
	  Time (mean ± σ):      4.420 s ±  0.058 s    [User: 8.080 s, System: 0.475 s]
	  Range (min … max):    4.379 s …  4.461 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 213.836s
	Processing time (w/o IO): 215.540s
	  Time (abs ≡):        216.105 s               [User: 215.860 s, System: 0.207 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 7162.97492ms
	Processing time (w/o IO): 7161.279889ms
	Processing time (w/o IO): 7156.483834ms
	  Time (mean ± σ):      7.996 s ±  0.021 s    [User: 7.834 s, System: 0.153 s]
	  Range (min … max):    7.981 s …  8.010 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 2994ms
	Processing time (w/o IO): 3000ms
	Processing time (w/o IO): 2994ms
	  Time (mean ± σ):      3.668 s ±  0.005 s    [User: 3.581 s, System: 0.079 s]
	  Range (min … max):    3.664 s …  3.671 s    2 runs
	 
Julia:

	Benchmark 1: julia --startup-file=no --project=Related -e "using Related; main()"
	Processing time (w/o IO): 3172.063096ms
	Processing time (w/o IO): 3183.601224ms
	Processing time (w/o IO): 3176.964984ms
	  Time (mean ± σ):      4.910 s ±  0.089 s    [User: 4.604 s, System: 0.402 s]
	  Range (min … max):    4.847 s …  4.973 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 173 milliseconds
	Processing time (w/o IO): 175 milliseconds
	Processing time (w/o IO): 174 milliseconds
	  Time (mean ± σ):      1.865 s ±  0.032 s    [User: 1.583 s, System: 0.385 s]
	  Range (min … max):    1.843 s …  1.888 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --startup-file=no --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 1490.121689ms
	Processing time (w/o IO): 1477.584642ms
	Processing time (w/o IO): 1483.702605ms
	  Time (mean ± σ):      3.112 s ±  0.001 s    [User: 7.119 s, System: 0.413 s]
	  Range (min … max):    3.111 s …  3.113 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  5.031353335s
	Processing time (w/o IO):  5.018773795s
	Processing time (w/o IO):  5.136172039s
	  Time (mean ± σ):      7.586 s ±  0.131 s    [User: 7.470 s, System: 0.107 s]
	  Range (min … max):    7.493 s …  7.678 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 6.618s
	Processing time (w/o IO): 6.628s
	Processing time (w/o IO): 6.617s
	  Time (mean ± σ):     78.915 s ±  0.021 s    [User: 78.438 s, System: 0.461 s]
	  Range (min … max):   78.900 s … 78.930 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 19685ms
	Processing time (w/o IO): 19702ms
	Processing time (w/o IO): 19694ms
	  Time (mean ± σ):     21.380 s ±  0.017 s    [User: 21.536 s, System: 0.339 s]
	  Range (min … max):   21.368 s … 21.392 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 17895ms
	Processing time (w/o IO): 17866ms
	Processing time (w/o IO): 17903ms
	  Time (mean ± σ):     19.545 s ±  0.023 s    [User: 19.491 s, System: 0.215 s]
	  Range (min … max):   19.529 s … 19.561 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 6245.814919471741ms
	Processing time (w/o IO): 6236.145973205566ms
	Processing time (w/o IO): 6236.852049827576ms
	  Time (mean ± σ):     10.924 s ±  0.028 s    [User: 10.268 s, System: 0.508 s]
	  Range (min … max):   10.905 s … 10.944 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 3456.347253ms
	Processing time (w/o IO): 3462.972662ms
	Processing time (w/o IO): 3449.958737ms
	  Time (mean ± σ):      8.132 s ±  0.037 s    [User: 17.692 s, System: 0.525 s]
	  Range (min … max):    8.106 s …  8.158 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 17637ms
	Processing time (w/o IO): 17658ms
	Processing time (w/o IO): 24148ms
	  Time (mean ± σ):     21.724 s ±  4.584 s    [User: 21.610 s, System: 0.259 s]
	  Range (min … max):   18.482 s … 24.965 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 13294ms
	Processing time (w/o IO): 14319ms
	Processing time (w/o IO): 11404ms
	  Time (mean ± σ):     13.466 s ±  2.056 s    [User: 13.413 s, System: 0.212 s]
	  Range (min … max):   12.012 s … 14.919 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 20245ms
	Processing time (w/o IO): 20253ms
	Processing time (w/o IO): 20266ms
	  Time (mean ± σ):     21.008 s ±  0.053 s    [User: 20.807 s, System: 0.253 s]
	  Range (min … max):   20.970 s … 21.045 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 5573 ms
	Processing time (w/o IO): 5567 ms
	Processing time (w/o IO): 5563 ms
	  Time (mean ± σ):     11.683 s ±  0.003 s    [User: 11.521 s, System: 0.153 s]
	  Range (min … max):   11.681 s … 11.685 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 5349 ms
	Processing time (w/o IO): 5340 ms
	Processing time (w/o IO): 5353 ms
	  Time (mean ± σ):      5.756 s ±  0.011 s    [User: 14.291 s, System: 0.134 s]
	  Range (min … max):    5.748 s …  5.764 s    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 2852.121ms
	Processing time (w/o IO): 2848.782ms
	Processing time (w/o IO): 2847.678ms
	  Time (mean ± σ):      3.314 s ±  0.019 s    [User: 3.195 s, System: 0.115 s]
	  Range (min … max):    3.301 s …  3.327 s    2 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 1477.995ms
	Processing time (w/o IO): 1621.347ms
	Processing time (w/o IO): 1495.181ms
	  Time (mean ± σ):      2.019 s ±  0.091 s    [User: 6.196 s, System: 0.151 s]
	  Range (min … max):    1.954 s …  2.083 s    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 4861.5073ms
	Processing time (w/o IO): 4860.5627ms
	Processing time (w/o IO): 4867.3143ms
	  Time (mean ± σ):     15.509 s ±  0.050 s    [User: 16.613 s, System: 0.775 s]
	  Range (min … max):   15.473 s … 15.544 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 2482ms
	Processing time (w/o IO): 2484ms
	Processing time (w/o IO): 2417ms
	  Time (mean ± σ):     10.671 s ±  0.055 s    [User: 26.347 s, System: 0.749 s]
	  Range (min … max):   10.632 s … 10.710 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 2030ms
	Processing time (w/o IO): 2029ms
	Processing time (w/o IO): 2032ms
	  Time (mean ± σ):     12.813 s ±  0.183 s    [User: 26.361 s, System: 0.781 s]
	  Range (min … max):   12.684 s … 12.943 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 4050.0836ms
	Processing time (w/o IO): 4038.3278ms
	Processing time (w/o IO): 4076.843ms
	  Time (mean ± σ):     16.853 s ±  0.054 s    [User: 18.106 s, System: 0.838 s]
	  Range (min … max):   16.815 s … 16.891 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 3277.4849ms
	Processing time (w/o IO): 3284.3798ms
	Processing time (w/o IO): 3281.3011ms
	  Time (mean ± σ):      7.554 s ±  0.004 s    [User: 7.490 s, System: 0.225 s]
	  Range (min … max):    7.551 s …  7.557 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 3263.943ms
	Processing time (w/o IO): 3261.7569ms
	Processing time (w/o IO): 3273.0034ms
	  Time (mean ± σ):      7.137 s ±  0.005 s    [User: 7.048 s, System: 0.211 s]
	  Range (min … max):    7.134 s …  7.141 s    2 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 1028.5418ms
	Processing time (w/o IO): 1023.1844ms
	Processing time (w/o IO): 1025.3999ms
	  Time (mean ± σ):      3.054 s ±  0.022 s    [User: 8.805 s, System: 0.220 s]
	  Range (min … max):    3.038 s …  3.069 s    2 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 1149.0583ms
	Processing time (w/o IO): 1143.3445ms
	Processing time (w/o IO): 1141.3883ms
	  Time (mean ± σ):      2.882 s ±  0.004 s    [User: 9.418 s, System: 0.193 s]
	  Range (min … max):    2.879 s …  2.885 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	13401.067972183	ms
	Processing time (w/o IO):	9919.3909168243	ms
	Processing time (w/o IO):	9915.6939983368	ms
	  Time (mean ± σ):     14.999 s ±  0.015 s    [User: 14.762 s, System: 0.227 s]
	  Range (min … max):   14.988 s … 15.009 s    2 runs
	 
LuaJIT (JIT OFF):

	Benchmark 1: luajit -joff only_lua.lua
	Processing time (w/o IO):	91187.194108963	ms
	Processing time (w/o IO):	91489.165067673	ms
	Processing time (w/o IO):	91447.65996933	ms
	  Time (mean ± σ):     97.306 s ±  0.094 s    [User: 97.043 s, System: 0.247 s]
	  Range (min … max):   97.240 s … 97.373 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	150202.07095146	ms
	Processing time (w/o IO):	150156.7838192	ms
	  Time (abs ≡):        157.236 s               [User: 156.979 s, System: 0.223 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 35820ms
	Processing time (w/o IO): 35454ms
	Processing time (w/o IO): 35495ms
	  Time (mean ± σ):     37.223 s ±  0.029 s    [User: 36.422 s, System: 0.787 s]
	  Range (min … max):   37.203 s … 37.244 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 132.921240 s
	Processing time (w/o IO): 132.441501 s
	Processing time (w/o IO): 134.034246 s
	  Time (mean ± σ):     136.539 s ±  1.166 s    [User: 135.437 s, System: 1.174 s]
	  Range (min … max):   135.714 s … 137.363 s    2 runs
	 
Lobster (JIT):

	Benchmark 1: lobster related.lobster
	Processing time (w/o IO): 189.838414s
	Processing time (w/o IO): 190.074419s
	  Time (abs ≡):        191.232 s               [User: 191.002 s, System: 0.195 s]
	 
Lobster (C++):

	Benchmark 1: compiled_lobster
	Processing time (w/o IO): 25.828282s
	Processing time (w/o IO): 25.822561s
	  Time (abs ≡):        26.978 s               [User: 26.766 s, System: 0.199 s]
	 
