Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 24.598729ms
	Processing time (w/o IO): 24.084521ms
	Processing time (w/o IO): 24.650031ms
	Processing time (w/o IO): 24.198922ms
	Processing time (w/o IO): 24.652731ms
	Processing time (w/o IO): 24.350825ms
	Processing time (w/o IO): 24.492828ms
	Processing time (w/o IO): 24.683132ms
	Processing time (w/o IO): 24.666531ms
	Processing time (w/o IO): 24.62863ms
	Processing time (w/o IO): 24.928936ms
	Processing time (w/o IO): 24.66163ms
	Processing time (w/o IO): 24.557629ms
	  Time (mean ± σ):      66.5 ms ±   1.3 ms    [User: 59.8 ms, System: 13.4 ms]
	  Range (min … max):    65.3 ms …  69.8 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 13.453935ms
	Processing time (w/o IO): 13.618838ms
	Processing time (w/o IO): 13.866742ms
	Processing time (w/o IO): 12.57872ms
	Processing time (w/o IO): 20.717162ms
	Processing time (w/o IO): 13.939744ms
	Processing time (w/o IO): 14.054645ms
	Processing time (w/o IO): 14.058046ms
	Processing time (w/o IO): 15.774675ms
	Processing time (w/o IO): 15.300267ms
	Processing time (w/o IO): 13.790941ms
	Processing time (w/o IO): 13.984444ms
	Processing time (w/o IO): 14.151947ms
	  Time (mean ± σ):      55.5 ms ±   3.3 ms    [User: 84.3 ms, System: 13.2 ms]
	  Range (min … max):    52.7 ms …  64.3 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 23.55041ms
	Processing time (w/o IO): 23.579711ms
	Processing time (w/o IO): 23.57041ms
	Processing time (w/o IO): 23.52681ms
	Processing time (w/o IO): 23.905616ms
	Processing time (w/o IO): 23.394307ms
	Processing time (w/o IO): 23.492109ms
	Processing time (w/o IO): 23.640012ms
	Processing time (w/o IO): 23.758014ms
	Processing time (w/o IO): 24.490226ms
	Processing time (w/o IO): 23.51281ms
	Processing time (w/o IO): 23.50511ms
	Processing time (w/o IO): 23.656912ms
	  Time (mean ± σ):      40.9 ms ±   1.3 ms    [User: 32.6 ms, System: 8.2 ms]
	  Range (min … max):    39.9 ms …  44.5 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 13.017527ms
	Processing time (w/o IO): 14.527454ms
	Processing time (w/o IO): 13.475935ms
	Processing time (w/o IO): 14.145547ms
	Processing time (w/o IO): 13.092929ms
	Processing time (w/o IO): 13.646638ms
	Processing time (w/o IO): 15.127364ms
	Processing time (w/o IO): 13.76144ms
	Processing time (w/o IO): 12.61432ms
	Processing time (w/o IO): 12.696622ms
	Processing time (w/o IO): 13.232031ms
	Processing time (w/o IO): 12.776623ms
	Processing time (w/o IO): 14.515354ms
	  Time (mean ± σ):      31.6 ms ±   1.0 ms    [User: 34.4 ms, System: 9.5 ms]
	  Range (min … max):    30.0 ms …  33.1 ms    10 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 24.935ms
	Processing time (w/o IO): 25.153ms
	Processing time (w/o IO): 24.844ms
	Processing time (w/o IO): 24.739ms
	Processing time (w/o IO): 24.869ms
	Processing time (w/o IO): 25.011ms
	Processing time (w/o IO): 24.731ms
	Processing time (w/o IO): 24.701ms
	Processing time (w/o IO): 24.517ms
	Processing time (w/o IO): 24.417ms
	Processing time (w/o IO): 25.012ms
	Processing time (w/o IO): 25.083ms
	Processing time (w/o IO): 25.249ms
	  Time (mean ± σ):     105.4 ms ±   1.1 ms    [User: 100.8 ms, System: 5.9 ms]
	  Range (min … max):   104.6 ms … 108.2 ms    10 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 17.24ms
	Processing time (w/o IO): 16.094ms
	Processing time (w/o IO): 15.866ms
	Processing time (w/o IO): 18.027ms
	Processing time (w/o IO): 15.467ms
	Processing time (w/o IO): 17.548ms
	Processing time (w/o IO): 18.077ms
	Processing time (w/o IO): 18.176ms
	Processing time (w/o IO): 18.097ms
	Processing time (w/o IO): 16.103ms
	Processing time (w/o IO): 15.91ms
	Processing time (w/o IO): 17.024ms
	Processing time (w/o IO): 17.466ms
	  Time (mean ± σ):      98.8 ms ±   2.5 ms    [User: 122.3 ms, System: 10.3 ms]
	  Range (min … max):    95.5 ms … 104.1 ms    10 runs
	 
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
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	  Time (mean ± σ):     241.4 ms ±   1.9 ms    [User: 205.8 ms, System: 35.4 ms]
	  Range (min … max):   239.6 ms … 245.7 ms    10 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 18 ms
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 21 ms
	Processing time (w/o IO): 19 ms
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 18 ms
	Processing time (w/o IO): 16 ms
	  Time (mean ± σ):     237.1 ms ±   4.0 ms    [User: 237.8 ms, System: 39.9 ms]
	  Range (min … max):   232.1 ms … 244.9 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 1.472s
	Processing time (w/o IO): 1.457s
	Processing time (w/o IO): 1.473s
	Processing time (w/o IO): 1.462s
	Processing time (w/o IO): 1.457s
	Processing time (w/o IO): 1.464s
	Processing time (w/o IO): 1.474s
	Processing time (w/o IO): 1.462s
	Processing time (w/o IO): 1.476s
	Processing time (w/o IO): 1.459s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.461s
	Processing time (w/o IO): 1.498s
	  Time (mean ± σ):      1.535 s ±  0.012 s    [User: 1.511 s, System: 0.023 s]
	  Range (min … max):    1.526 s …  1.565 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 425.3ms
	Processing time (w/o IO): 497.8ms
	Processing time (w/o IO): 503.9ms
	Processing time (w/o IO): 436.9ms
	Processing time (w/o IO): 513.1ms
	Processing time (w/o IO): 428.4ms
	Processing time (w/o IO): 434.6ms
	Processing time (w/o IO): 379.5ms
	Processing time (w/o IO): 486.3ms
	Processing time (w/o IO): 394.1ms
	Processing time (w/o IO): 416.3ms
	Processing time (w/o IO): 423.4ms
	Processing time (w/o IO): 399.1ms
	  Time (mean ± σ):     781.0 ms ± 174.9 ms    [User: 866.4 ms, System: 478.4 ms]
	  Range (min … max):   674.6 ms … 1265.1 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 60.468252ms
	Processing time (w/o IO): 60.359851ms
	Processing time (w/o IO): 60.238449ms
	Processing time (w/o IO): 60.321049ms
	Processing time (w/o IO): 60.253248ms
	Processing time (w/o IO): 60.795058ms
	Processing time (w/o IO): 61.025463ms
	Processing time (w/o IO): 60.659156ms
	Processing time (w/o IO): 60.459053ms
	Processing time (w/o IO): 60.760458ms
	Processing time (w/o IO): 60.429352ms
	Processing time (w/o IO): 60.31065ms
	Processing time (w/o IO): 61.348568ms
	  Time (mean ± σ):     112.6 ms ±   1.1 ms    [User: 101.8 ms, System: 10.7 ms]
	  Range (min … max):   110.9 ms … 114.2 ms    10 runs
	 
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
	Processing time (w/o IO): 31ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 28ms
	  Time (mean ± σ):      76.1 ms ±   1.0 ms    [User: 67.6 ms, System: 8.6 ms]
	  Range (min … max):    74.9 ms …  78.2 ms    10 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 30 milliseconds
	  Time (mean ± σ):     477.2 ms ±  13.8 ms    [User: 376.4 ms, System: 204.4 ms]
	  Range (min … max):   452.1 ms … 489.6 ms    10 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 7 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 9 milliseconds
	  Time (mean ± σ):      1.007 s ±  0.015 s    [User: 0.890 s, System: 0.221 s]
	  Range (min … max):    0.983 s …  1.027 s    10 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 16 milliseconds
	  Time (mean ± σ):     460.5 ms ±  18.0 ms    [User: 405.0 ms, System: 205.7 ms]
	  Range (min … max):   440.9 ms … 489.5 ms    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  48.31322ms
	Processing time (w/o IO):  48.195718ms
	Processing time (w/o IO):  48.501324ms
	Processing time (w/o IO):  48.421722ms
	Processing time (w/o IO):  47.826212ms
	Processing time (w/o IO):  48.397222ms
	Processing time (w/o IO):  47.737211ms
	Processing time (w/o IO):  48.29042ms
	Processing time (w/o IO):  48.448522ms
	Processing time (w/o IO):  48.714226ms
	Processing time (w/o IO):  48.098416ms
	Processing time (w/o IO):  48.163917ms
	Processing time (w/o IO):  47.883212ms
	  Time (mean ± σ):     265.9 ms ±   1.4 ms    [User: 255.1 ms, System: 10.8 ms]
	  Range (min … max):   264.3 ms … 268.9 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 51.711ms
	Processing time (w/o IO): 51.575ms
	Processing time (w/o IO): 51.529ms
	Processing time (w/o IO): 51.773ms
	Processing time (w/o IO): 51.348ms
	Processing time (w/o IO): 51.719ms
	Processing time (w/o IO): 51.707ms
	Processing time (w/o IO): 51.814ms
	Processing time (w/o IO): 51.220ms
	Processing time (w/o IO): 51.321ms
	Processing time (w/o IO): 51.494ms
	Processing time (w/o IO): 51.211ms
	Processing time (w/o IO): 51.479ms
	  Time (mean ± σ):     372.1 ms ±   5.3 ms    [User: 343.2 ms, System: 28.6 ms]
	  Range (min … max):   362.2 ms … 381.0 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 132ms
	  Time (mean ± σ):     507.7 ms ±   5.8 ms    [User: 624.2 ms, System: 102.3 ms]
	  Range (min … max):   501.3 ms … 517.6 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 188ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 187ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 188ms
	Processing time (w/o IO): 187ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 187ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 187ms
	Processing time (w/o IO): 187ms
	  Time (mean ± σ):     314.2 ms ±   1.6 ms    [User: 298.7 ms, System: 19.8 ms]
	  Range (min … max):   312.7 ms … 317.2 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 51.27298831939697ms
	Processing time (w/o IO): 51.040053367614746ms
	Processing time (w/o IO): 51.22804641723633ms
	Processing time (w/o IO): 51.23603343963623ms
	Processing time (w/o IO): 51.56600475311279ms
	Processing time (w/o IO): 51.65398120880127ms
	Processing time (w/o IO): 51.5209436416626ms
	Processing time (w/o IO): 50.7889986038208ms
	Processing time (w/o IO): 50.997018814086914ms
	Processing time (w/o IO): 50.76801776885986ms
	Processing time (w/o IO): 50.67408084869385ms
	Processing time (w/o IO): 50.87697505950928ms
	Processing time (w/o IO): 50.64499378204346ms
	  Time (mean ± σ):     406.6 ms ±   5.6 ms    [User: 352.8 ms, System: 31.5 ms]
	  Range (min … max):   398.3 ms … 416.6 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 32.158445ms
	Processing time (w/o IO): 31.429033ms
	Processing time (w/o IO): 34.961295ms
	Processing time (w/o IO): 31.747741ms
	Processing time (w/o IO): 30.958427ms
	Processing time (w/o IO): 31.322934ms
	Processing time (w/o IO): 31.685139ms
	Processing time (w/o IO): 31.493236ms
	Processing time (w/o IO): 31.956044ms
	Processing time (w/o IO): 31.501936ms
	Processing time (w/o IO): 31.269432ms
	Processing time (w/o IO): 32.30065ms
	Processing time (w/o IO): 32.042146ms
	  Time (mean ± σ):     412.2 ms ±  20.0 ms    [User: 423.8 ms, System: 45.3 ms]
	  Range (min … max):   393.4 ms … 466.1 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 144ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 134ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 184ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 136ms
	  Time (mean ± σ):     311.2 ms ±  17.1 ms    [User: 302.8 ms, System: 64.8 ms]
	  Range (min … max):   300.1 ms … 357.5 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 134ms
	Processing time (w/o IO): 108ms
	Processing time (w/o IO): 124ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 128ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 129ms
	Processing time (w/o IO): 116ms
	Processing time (w/o IO): 128ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 128ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 128ms
	  Time (mean ± σ):     187.4 ms ±   5.3 ms    [User: 205.0 ms, System: 38.8 ms]
	  Range (min … max):   175.4 ms … 197.3 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 210ms
	Processing time (w/o IO): 200ms
	Processing time (w/o IO): 196ms
	Processing time (w/o IO): 133ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 198ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 195ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 198ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 197ms
	  Time (mean ± σ):     239.4 ms ±  30.6 ms    [User: 236.6 ms, System: 27.5 ms]
	  Range (min … max):   200.9 ms … 266.1 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 54 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 54 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 54 ms
	Processing time (w/o IO): 54 ms
	Processing time (w/o IO): 54 ms
	  Time (mean ± σ):     388.8 ms ±   7.6 ms    [User: 620.4 ms, System: 50.7 ms]
	  Range (min … max):   375.5 ms … 396.9 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 44 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 44 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 42 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	  Time (mean ± σ):     117.2 ms ±   2.8 ms    [User: 103.8 ms, System: 13.5 ms]
	  Range (min … max):   115.2 ms … 124.6 ms    10 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 41 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 38 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 40 ms
	  Time (mean ± σ):      69.4 ms ±   2.2 ms    [User: 119.6 ms, System: 10.0 ms]
	  Range (min … max):    66.5 ms …  73.5 ms    10 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 30.141ms
	Processing time (w/o IO): 30.107ms
	Processing time (w/o IO): 30.114ms
	Processing time (w/o IO): 30.109ms
	Processing time (w/o IO): 29.888ms
	Processing time (w/o IO): 29.955ms
	Processing time (w/o IO): 29.986ms
	Processing time (w/o IO): 30.052ms
	Processing time (w/o IO): 30.024ms
	Processing time (w/o IO): 29.959ms
	Processing time (w/o IO): 29.914ms
	Processing time (w/o IO): 30.1ms
	Processing time (w/o IO): 29.872ms
	  Time (mean ± σ):      55.2 ms ±   0.5 ms    [User: 43.3 ms, System: 11.8 ms]
	  Range (min … max):    54.5 ms …  55.9 ms    10 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 37ms
	Processing time (w/o IO): 37ms
	Processing time (w/o IO): 37ms
	Processing time (w/o IO): 37ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 37ms
	Processing time (w/o IO): 37ms
	Processing time (w/o IO): 37ms
	Processing time (w/o IO): 37ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 37ms
	Processing time (w/o IO): 37ms
	Processing time (w/o IO): 37ms
	  Time (mean ± σ):     928.6 ms ±   5.5 ms    [User: 1029.1 ms, System: 109.1 ms]
	  Range (min … max):   922.3 ms … 938.9 ms    10 runs
	 
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
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	  Time (mean ± σ):     922.6 ms ±  22.9 ms    [User: 1095.7 ms, System: 95.7 ms]
	  Range (min … max):   862.6 ms … 942.9 ms    10 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 17ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 17ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 17ms
	  Time (mean ± σ):     723.6 ms ±   5.8 ms    [User: 799.6 ms, System: 86.0 ms]
	  Range (min … max):   714.7 ms … 737.2 ms    10 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 35ms
	  Time (mean ± σ):     764.6 ms ±   2.4 ms    [User: 746.4 ms, System: 77.0 ms]
	  Range (min … max):   762.2 ms … 769.1 ms    10 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 27.2931ms
	Processing time (w/o IO): 27.2775ms
	Processing time (w/o IO): 27.2944ms
	Processing time (w/o IO): 27.3627ms
	Processing time (w/o IO): 27.3377ms
	Processing time (w/o IO): 26.921ms
	Processing time (w/o IO): 26.9808ms
	Processing time (w/o IO): 27.3141ms
	Processing time (w/o IO): 26.8679ms
	Processing time (w/o IO): 27.3152ms
	Processing time (w/o IO): 27.1122ms
	Processing time (w/o IO): 27.2012ms
	Processing time (w/o IO): 27.1044ms
	  Time (mean ± σ):     210.5 ms ±   5.8 ms    [User: 166.9 ms, System: 34.5 ms]
	  Range (min … max):   202.1 ms … 223.6 ms    10 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 26.504ms
	Processing time (w/o IO): 26.3889ms
	Processing time (w/o IO): 26.2886ms
	Processing time (w/o IO): 26.4426ms
	Processing time (w/o IO): 26.5521ms
	Processing time (w/o IO): 26.1315ms
	Processing time (w/o IO): 26.1279ms
	Processing time (w/o IO): 26.3054ms
	Processing time (w/o IO): 25.976ms
	Processing time (w/o IO): 26.2043ms
	Processing time (w/o IO): 26.2491ms
	Processing time (w/o IO): 26.1547ms
	Processing time (w/o IO): 26.4142ms
	  Time (mean ± σ):     100.9 ms ±   1.3 ms    [User: 96.0 ms, System: 21.9 ms]
	  Range (min … max):    98.3 ms … 102.6 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	89.525938034058	ms
	Processing time (w/o IO):	112.10107803345	ms
	Processing time (w/o IO):	115.59796333313	ms
	Processing time (w/o IO):	107.09595680237	ms
	Processing time (w/o IO):	108.1919670105	ms
	Processing time (w/o IO):	104.53295707703	ms
	Processing time (w/o IO):	106.4190864563	ms
	Processing time (w/o IO):	114.25495147705	ms
	Processing time (w/o IO):	88.281154632568	ms
	Processing time (w/o IO):	112.36190795898	ms
	Processing time (w/o IO):	113.97194862366	ms
	Processing time (w/o IO):	89.112043380737	ms
	Processing time (w/o IO):	88.511943817139	ms
	  Time (mean ± σ):     346.7 ms ±  12.6 ms    [User: 329.1 ms, System: 17.6 ms]
	  Range (min … max):   327.9 ms … 365.7 ms    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1105.4511070251	ms
	Processing time (w/o IO):	1092.2358036041	ms
	Processing time (w/o IO):	1093.3198928833	ms
	Processing time (w/o IO):	1106.8410873413	ms
	Processing time (w/o IO):	1095.6997871399	ms
	Processing time (w/o IO):	1099.9171733856	ms
	Processing time (w/o IO):	1092.3140048981	ms
	Processing time (w/o IO):	1103.1219959259	ms
	Processing time (w/o IO):	1091.413974762	ms
	Processing time (w/o IO):	1089.5071029663	ms
	Processing time (w/o IO):	1106.1720848083	ms
	Processing time (w/o IO):	1092.0979976654	ms
	Processing time (w/o IO):	1092.0021533966	ms
	  Time (mean ± σ):      1.519 s ±  0.005 s    [User: 1.503 s, System: 0.015 s]
	  Range (min … max):    1.509 s …  1.525 s    10 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 144ms
	Processing time (w/o IO): 142ms
	Processing time (w/o IO): 143ms
	Processing time (w/o IO): 142ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 149ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 151ms
	Processing time (w/o IO): 149ms
	Processing time (w/o IO): 150ms
	Processing time (w/o IO): 149ms
	  Time (mean ± σ):     246.5 ms ±  35.2 ms    [User: 210.4 ms, System: 23.8 ms]
	  Range (min … max):   227.2 ms … 345.5 ms    10 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 1.520212 s
	Processing time (w/o IO): 1.521105 s
	Processing time (w/o IO): 1.512529 s
	Processing time (w/o IO): 1.526253 s
	Processing time (w/o IO): 1.513765 s
	Processing time (w/o IO): 1.518772 s
	Processing time (w/o IO): 1.521311 s
	Processing time (w/o IO): 1.516779 s
	Processing time (w/o IO): 1.526187 s
	Processing time (w/o IO): 1.523097 s
	Processing time (w/o IO): 1.514874 s
	Processing time (w/o IO): 1.524631 s
	Processing time (w/o IO): 1.521424 s
	  Time (mean ± σ):      1.864 s ±  0.009 s    [User: 1.869 s, System: 0.107 s]
	  Range (min … max):    1.851 s …  1.883 s    10 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 370.508293ms
	Processing time (w/o IO): 371.395308ms
	Processing time (w/o IO): 371.283506ms
	  Time (mean ± σ):     523.5 ms ±   4.6 ms    [User: 530.5 ms, System: 29.4 ms]
	  Range (min … max):   520.3 ms … 526.8 ms    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 174.396262ms
	Processing time (w/o IO): 172.313126ms
	Processing time (w/o IO): 167.982353ms
	  Time (mean ± σ):     321.0 ms ±   6.3 ms    [User: 801.0 ms, System: 41.0 ms]
	  Range (min … max):   316.6 ms … 325.5 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 341.212995ms
	Processing time (w/o IO): 340.370881ms
	Processing time (w/o IO): 341.367697ms
	  Time (mean ± σ):     409.1 ms ±   0.3 ms    [User: 379.3 ms, System: 29.7 ms]
	  Range (min … max):   408.9 ms … 409.3 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 178.855637ms
	Processing time (w/o IO): 180.582467ms
	Processing time (w/o IO): 178.97244ms
	  Time (mean ± σ):     249.5 ms ±   1.5 ms    [User: 389.1 ms, System: 35.5 ms]
	  Range (min … max):   248.4 ms … 250.5 ms    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 315.465ms
	Processing time (w/o IO): 316.787ms
	Processing time (w/o IO): 319.878ms
	  Time (mean ± σ):     615.6 ms ±   2.6 ms    [User: 597.3 ms, System: 21.5 ms]
	  Range (min … max):   613.8 ms … 617.4 ms    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 172.508ms
	Processing time (w/o IO): 173.088ms
	Processing time (w/o IO): 171.58ms
	  Time (mean ± σ):     472.1 ms ±   0.1 ms    [User: 885.3 ms, System: 45.6 ms]
	  Range (min … max):   472.0 ms … 472.2 ms    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 520 ms
	Processing time (w/o IO): 519 ms
	Processing time (w/o IO): 520 ms
	  Time (mean ± σ):      1.350 s ±  0.007 s    [User: 1.214 s, System: 0.134 s]
	  Range (min … max):    1.345 s …  1.355 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 211 ms
	Processing time (w/o IO): 206 ms
	Processing time (w/o IO): 204 ms
	  Time (mean ± σ):      1.081 s ±  0.000 s    [User: 1.539 s, System: 0.131 s]
	  Range (min … max):    1.081 s …  1.081 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 23.333s
	Processing time (w/o IO): 23.603s
	  Time (abs ≡):        23.770 s               [User: 23.694 s, System: 0.063 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 6.674s
	Processing time (w/o IO): 7.467s
	Processing time (w/o IO): 7.541s
	  Time (mean ± σ):      8.029 s ±  0.035 s    [User: 5.158 s, System: 3.465 s]
	  Range (min … max):    8.004 s …  8.053 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 905.103281ms
	Processing time (w/o IO): 907.892129ms
	Processing time (w/o IO): 907.91393ms
	  Time (mean ± σ):      1.119 s ±  0.001 s    [User: 1.088 s, System: 0.031 s]
	  Range (min … max):    1.119 s …  1.120 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 429ms
	Processing time (w/o IO): 429ms
	Processing time (w/o IO): 430ms
	  Time (mean ± σ):     615.6 ms ±   0.5 ms    [User: 592.2 ms, System: 23.4 ms]
	  Range (min … max):   615.2 ms … 616.0 ms    2 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 481 milliseconds
	Processing time (w/o IO): 482 milliseconds
	Processing time (w/o IO): 480 milliseconds
	  Time (mean ± σ):      1.144 s ±  0.009 s    [User: 1.026 s, System: 0.223 s]
	  Range (min … max):    1.138 s …  1.151 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 58 milliseconds
	Processing time (w/o IO): 54 milliseconds
	Processing time (w/o IO): 57 milliseconds
	  Time (mean ± σ):      1.164 s ±  0.017 s    [User: 0.988 s, System: 0.279 s]
	  Range (min … max):    1.152 s …  1.176 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 223 milliseconds
	Processing time (w/o IO): 222 milliseconds
	Processing time (w/o IO): 222 milliseconds
	  Time (mean ± σ):     889.7 ms ±  26.3 ms    [User: 1396.8 ms, System: 250.1 ms]
	  Range (min … max):   871.1 ms … 908.3 ms    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  688.137111ms
	Processing time (w/o IO):  684.946958ms
	Processing time (w/o IO):  688.169912ms
	  Time (mean ± σ):      1.483 s ±  0.001 s    [User: 1.445 s, System: 0.035 s]
	  Range (min … max):    1.482 s …  1.483 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 755.869ms
	Processing time (w/o IO): 756.449ms
	Processing time (w/o IO): 758.625ms
	  Time (mean ± σ):      8.702 s ±  0.001 s    [User: 8.586 s, System: 0.113 s]
	  Range (min … max):    8.701 s …  8.703 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 2389ms
	Processing time (w/o IO): 2122ms
	Processing time (w/o IO): 2514ms
	  Time (mean ± σ):      3.004 s ±  0.286 s    [User: 3.225 s, System: 0.132 s]
	  Range (min … max):    2.802 s …  3.206 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 2883ms
	Processing time (w/o IO): 2883ms
	Processing time (w/o IO): 2887ms
	  Time (mean ± σ):      3.373 s ±  0.003 s    [User: 3.331 s, System: 0.059 s]
	  Range (min … max):    3.371 s …  3.375 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 714.2850160598755ms
	Processing time (w/o IO): 712.4189138412476ms
	Processing time (w/o IO): 713.994026184082ms
	  Time (mean ± σ):      2.112 s ±  0.006 s    [User: 1.938 s, System: 0.128 s]
	  Range (min … max):    2.108 s …  2.117 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 393.945786ms
	Processing time (w/o IO): 393.370077ms
	Processing time (w/o IO): 393.398077ms
	  Time (mean ± σ):      1.826 s ±  0.005 s    [User: 2.798 s, System: 0.130 s]
	  Range (min … max):    1.822 s …  1.829 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 2611ms
	Processing time (w/o IO): 2606ms
	Processing time (w/o IO): 1640ms
	  Time (mean ± σ):      2.453 s ±  0.681 s    [User: 2.451 s, System: 0.109 s]
	  Range (min … max):    1.972 s …  2.934 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 1417ms
	Processing time (w/o IO): 1533ms
	Processing time (w/o IO): 1419ms
	  Time (mean ± σ):      1.643 s ±  0.093 s    [User: 1.647 s, System: 0.061 s]
	  Range (min … max):    1.577 s …  1.709 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 1815ms
	Processing time (w/o IO): 1807ms
	Processing time (w/o IO): 1803ms
	  Time (mean ± σ):      2.078 s ±  0.133 s    [User: 1.948 s, System: 0.074 s]
	  Range (min … max):    1.984 s …  2.172 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 462 ms
	Processing time (w/o IO): 463 ms
	Processing time (w/o IO): 462 ms
	  Time (mean ± σ):     564.3 ms ±   1.0 ms    [User: 1288.5 ms, System: 39.5 ms]
	  Range (min … max):   563.6 ms … 564.9 ms    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 463 ms
	Processing time (w/o IO): 469 ms
	Processing time (w/o IO): 462 ms
	  Time (mean ± σ):     567.4 ms ±   3.1 ms    [User: 1302.4 ms, System: 29.5 ms]
	  Range (min … max):   565.2 ms … 569.6 ms    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 435.018ms
	Processing time (w/o IO): 432.619ms
	Processing time (w/o IO): 433.492ms
	  Time (mean ± σ):     531.9 ms ±   0.6 ms    [User: 502.4 ms, System: 29.4 ms]
	  Range (min … max):   531.5 ms … 532.3 ms    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 535ms
	Processing time (w/o IO): 540ms
	Processing time (w/o IO): 535ms
	  Time (mean ± σ):      3.203 s ±  0.005 s    [User: 3.195 s, System: 0.261 s]
	  Range (min … max):    3.199 s …  3.206 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 278ms
	Processing time (w/o IO): 277ms
	Processing time (w/o IO): 274ms
	  Time (mean ± σ):      2.672 s ±  0.013 s    [User: 4.269 s, System: 0.260 s]
	  Range (min … max):    2.663 s …  2.682 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 230ms
	Processing time (w/o IO): 231ms
	Processing time (w/o IO): 231ms
	  Time (mean ± σ):      3.099 s ±  0.007 s    [User: 4.406 s, System: 0.257 s]
	  Range (min … max):    3.094 s …  3.104 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 531ms
	Processing time (w/o IO): 530ms
	Processing time (w/o IO): 529ms
	  Time (mean ± σ):      3.739 s ±  0.003 s    [User: 3.690 s, System: 0.250 s]
	  Range (min … max):    3.737 s …  3.741 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 380.4245ms
	Processing time (w/o IO): 372.2218ms
	Processing time (w/o IO): 373.4245ms
	  Time (mean ± σ):      1.072 s ±  0.001 s    [User: 1.033 s, System: 0.058 s]
	  Range (min … max):    1.071 s …  1.073 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 370.147ms
	Processing time (w/o IO): 370.7274ms
	Processing time (w/o IO): 371.3532ms
	  Time (mean ± σ):     907.0 ms ±   1.8 ms    [User: 882.8 ms, System: 56.6 ms]
	  Range (min … max):   905.7 ms … 908.2 ms    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	1483.0050468445	ms
	Processing time (w/o IO):	1462.4440670013	ms
	Processing time (w/o IO):	1455.7981491089	ms
	  Time (mean ± σ):      2.688 s ±  0.005 s    [User: 2.628 s, System: 0.058 s]
	  Range (min … max):    2.684 s …  2.692 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	16726.131916046	ms
	Processing time (w/o IO):	16707.10682869	ms
	  Time (abs ≡):        18.485 s               [User: 18.434 s, System: 0.047 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 2546ms
	Processing time (w/o IO): 2468ms
	Processing time (w/o IO): 2525ms
	  Time (mean ± σ):      2.911 s ±  0.048 s    [User: 2.821 s, System: 0.088 s]
	  Range (min … max):    2.876 s …  2.945 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 24.504297 s
	Processing time (w/o IO): 24.547847 s
	Processing time (w/o IO): 24.590253 s
	  Time (mean ± σ):     25.611 s ±  0.045 s    [User: 25.520 s, System: 0.241 s]
	  Range (min … max):   25.579 s … 25.642 s    2 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 3.287711374s
	Processing time (w/o IO): 3.288185533s
	Processing time (w/o IO): 3.287398619s
	  Time (mean ± σ):      3.788 s ±  0.019 s    [User: 3.809 s, System: 0.130 s]
	  Range (min … max):    3.775 s …  3.801 s    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1.423734696s
	Processing time (w/o IO): 1.424659912s
	Processing time (w/o IO): 1.420226134s
	  Time (mean ± σ):      1.897 s ±  0.011 s    [User: 6.117 s, System: 0.113 s]
	  Range (min … max):    1.889 s …  1.905 s    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 3.042242463s
	Processing time (w/o IO): 3.043273482s
	Processing time (w/o IO): 3.04314058s
	  Time (mean ± σ):      3.258 s ±  0.001 s    [User: 3.166 s, System: 0.087 s]
	  Range (min … max):    3.257 s …  3.258 s    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 1.57695992s
	Processing time (w/o IO): 1.597140067s
	Processing time (w/o IO): 1.573824866s
	  Time (mean ± σ):      1.881 s ±  0.094 s    [User: 3.263 s, System: 0.093 s]
	  Range (min … max):    1.814 s …  1.947 s    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 2709.92ms
	Processing time (w/o IO): 2711.2ms
	Processing time (w/o IO): 2709.72ms
	  Time (mean ± σ):      3.666 s ±  0.002 s    [User: 3.567 s, System: 0.101 s]
	  Range (min … max):    3.665 s …  3.667 s    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1404.57ms
	Processing time (w/o IO): 1397.96ms
	Processing time (w/o IO): 1398.41ms
	  Time (mean ± σ):      2.329 s ±  0.000 s    [User: 6.264 s, System: 0.097 s]
	  Range (min … max):    2.329 s …  2.329 s    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 4574 ms
	Processing time (w/o IO): 4578 ms
	Processing time (w/o IO): 4579 ms
	  Time (mean ± σ):      7.152 s ±  0.112 s    [User: 6.693 s, System: 0.340 s]
	  Range (min … max):    7.073 s …  7.231 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 1751 ms
	Processing time (w/o IO): 1748 ms
	Processing time (w/o IO): 1750 ms
	  Time (mean ± σ):      4.557 s ±  0.023 s    [User: 9.190 s, System: 0.357 s]
	  Range (min … max):    4.541 s …  4.573 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 214.951s
	Processing time (w/o IO): 214.620s
	  Time (abs ≡):        215.096 s               [User: 214.901 s, System: 0.168 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 8007.44623ms
	Processing time (w/o IO): 8021.887324ms
	Processing time (w/o IO): 8022.773168ms
	  Time (mean ± σ):      8.762 s ±  0.013 s    [User: 8.656 s, System: 0.095 s]
	  Range (min … max):    8.753 s …  8.772 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 3792ms
	Processing time (w/o IO): 3789ms
	Processing time (w/o IO): 3790ms
	  Time (mean ± σ):      4.376 s ±  0.002 s    [User: 4.304 s, System: 0.064 s]
	  Range (min … max):    4.374 s …  4.377 s    2 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 4253 milliseconds
	Processing time (w/o IO): 4237 milliseconds
	Processing time (w/o IO): 4251 milliseconds
	  Time (mean ± σ):      5.290 s ±  0.033 s    [User: 5.065 s, System: 0.323 s]
	  Range (min … max):    5.267 s …  5.313 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 152 milliseconds
	Processing time (w/o IO): 146 milliseconds
	Processing time (w/o IO): 143 milliseconds
	  Time (mean ± σ):      1.607 s ±  0.003 s    [User: 1.379 s, System: 0.328 s]
	  Range (min … max):    1.605 s …  1.609 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 1943 milliseconds
	Processing time (w/o IO): 1943 milliseconds
	Processing time (w/o IO): 1943 milliseconds
	  Time (mean ± σ):      2.956 s ±  0.020 s    [User: 8.524 s, System: 0.309 s]
	  Range (min … max):    2.941 s …  2.970 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  6.092210586s
	Processing time (w/o IO):  6.062054325s
	Processing time (w/o IO):  6.074461154s
	  Time (mean ± σ):      8.450 s ±  0.002 s    [User: 8.354 s, System: 0.086 s]
	  Range (min … max):    8.449 s …  8.452 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 6.672s
	Processing time (w/o IO): 6.669s
	Processing time (w/o IO): 6.667s
	  Time (mean ± σ):     83.938 s ±  4.129 s    [User: 83.479 s, System: 0.435 s]
	  Range (min … max):   81.018 s … 86.858 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 21124ms
	Processing time (w/o IO): 21019ms
	Processing time (w/o IO): 21069ms
	  Time (mean ± σ):     22.563 s ±  0.060 s    [User: 22.766 s, System: 0.283 s]
	  Range (min … max):   22.520 s … 22.605 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 25832ms
	Processing time (w/o IO): 25754ms
	Processing time (w/o IO): 25781ms
	  Time (mean ± σ):     27.295 s ±  0.050 s    [User: 27.256 s, System: 0.150 s]
	  Range (min … max):   27.260 s … 27.331 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 6215.706944465637ms
	Processing time (w/o IO): 6199.743986129761ms
	Processing time (w/o IO): 6199.393033981323ms
	  Time (mean ± σ):     10.482 s ±  0.014 s    [User: 9.940 s, System: 0.347 s]
	  Range (min … max):   10.472 s … 10.491 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 3475.349264ms
	Processing time (w/o IO): 3500.124145ms
	Processing time (w/o IO): 3507.16906ms
	  Time (mean ± σ):      7.855 s ±  0.015 s    [User: 17.655 s, System: 0.366 s]
	  Range (min … max):    7.845 s …  7.866 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 24128ms
	Processing time (w/o IO): 14317ms
	Processing time (w/o IO): 24170ms
	  Time (mean ± σ):     20.101 s ±  6.971 s    [User: 20.149 s, System: 0.190 s]
	  Range (min … max):   15.172 s … 25.030 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 11270ms
	Processing time (w/o IO): 12158ms
	Processing time (w/o IO): 12970ms
	  Time (mean ± σ):     13.076 s ±  0.573 s    [User: 13.045 s, System: 0.172 s]
	  Range (min … max):   12.670 s … 13.482 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 17863ms
	Processing time (w/o IO): 17882ms
	Processing time (w/o IO): 15904ms
	  Time (mean ± σ):     17.384 s ±  1.410 s    [User: 17.390 s, System: 0.180 s]
	  Range (min … max):   16.387 s … 18.381 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 4118 ms
	Processing time (w/o IO): 4116 ms
	Processing time (w/o IO): 4131 ms
	  Time (mean ± σ):      4.482 s ±  0.004 s    [User: 11.083 s, System: 0.083 s]
	  Range (min … max):    4.479 s …  4.485 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 4490 ms
	Processing time (w/o IO): 4117 ms
	Processing time (w/o IO): 4117 ms
	  Time (mean ± σ):      4.468 s ±  0.007 s    [User: 11.034 s, System: 0.110 s]
	  Range (min … max):    4.463 s …  4.473 s    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 3829.586ms
	Processing time (w/o IO): 3831.724ms
	Processing time (w/o IO): 3830.587ms
	  Time (mean ± σ):      4.161 s ±  0.006 s    [User: 4.051 s, System: 0.106 s]
	  Range (min … max):    4.156 s …  4.165 s    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 4706ms
	Processing time (w/o IO): 4713ms
	Processing time (w/o IO): 4701ms
	  Time (mean ± σ):     14.638 s ±  0.054 s    [User: 15.641 s, System: 0.534 s]
	  Range (min … max):   14.600 s … 14.677 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 2492ms
	Processing time (w/o IO): 2487ms
	Processing time (w/o IO): 2485ms
	  Time (mean ± σ):     10.214 s ±  0.106 s    [User: 25.997 s, System: 0.555 s]
	  Range (min … max):   10.139 s … 10.289 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 2031ms
	Processing time (w/o IO): 2030ms
	Processing time (w/o IO): 2030ms
	  Time (mean ± σ):     12.216 s ±  0.144 s    [User: 25.587 s, System: 0.543 s]
	  Range (min … max):   12.114 s … 12.318 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 4682ms
	Processing time (w/o IO): 4691ms
	Processing time (w/o IO): 4677ms
	  Time (mean ± σ):     17.594 s ±  0.139 s    [User: 19.006 s, System: 0.541 s]
	  Range (min … max):   17.495 s … 17.692 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 3255.3818ms
	Processing time (w/o IO): 3255.5147ms
	Processing time (w/o IO): 3262.5824ms
	  Time (mean ± σ):      7.425 s ±  0.022 s    [User: 7.372 s, System: 0.170 s]
	  Range (min … max):    7.410 s …  7.440 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 3246.5648ms
	Processing time (w/o IO): 3252.018ms
	Processing time (w/o IO): 3257.9665ms
	  Time (mean ± σ):      7.049 s ±  0.005 s    [User: 7.034 s, System: 0.163 s]
	  Range (min … max):    7.045 s …  7.052 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	12500.762939453	ms
	Processing time (w/o IO):	12040.18497467	ms
	Processing time (w/o IO):	13238.636016846	ms
	  Time (mean ± σ):     16.905 s ±  0.855 s    [User: 16.704 s, System: 0.189 s]
	  Range (min … max):   16.300 s … 17.510 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	150122.31588364	ms
	Processing time (w/o IO):	169229.94208336	ms
	  Time (abs ≡):        175.646 s               [User: 175.404 s, System: 0.227 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 33567ms
	Processing time (w/o IO): 33493ms
	Processing time (w/o IO): 33449ms
	  Time (mean ± σ):     34.968 s ±  0.002 s    [User: 34.233 s, System: 0.721 s]
	  Range (min … max):   34.966 s … 34.969 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 234.092453 s
	Processing time (w/o IO): 232.934273 s
	Processing time (w/o IO): 231.436163 s
	  Time (mean ± σ):     235.282 s ±  1.085 s    [User: 234.867 s, System: 0.565 s]
	  Range (min … max):   234.515 s … 236.049 s    2 runs
	 
