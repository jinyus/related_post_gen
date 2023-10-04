Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 34.330404ms
	Processing time (w/o IO): 33.617196ms
	Processing time (w/o IO): 34.113001ms
	Processing time (w/o IO): 33.948999ms
	Processing time (w/o IO): 35.255315ms
	Processing time (w/o IO): 34.153502ms
	Processing time (w/o IO): 34.986511ms
	Processing time (w/o IO): 35.018812ms
	Processing time (w/o IO): 32.463282ms
	Processing time (w/o IO): 33.526494ms
	Processing time (w/o IO): 34.034501ms
	Processing time (w/o IO): 36.852033ms
	Processing time (w/o IO): 35.944323ms
	  Time (mean ± σ):      70.2 ms ±   3.4 ms    [User: 64.7 ms, System: 13.8 ms]
	  Range (min … max):    65.9 ms …  76.7 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 18.942655ms
	Processing time (w/o IO): 19.599164ms
	Processing time (w/o IO): 19.172558ms
	Processing time (w/o IO): 20.898682ms
	Processing time (w/o IO): 19.364661ms
	Processing time (w/o IO): 18.929756ms
	Processing time (w/o IO): 27.186867ms
	Processing time (w/o IO): 19.546664ms
	Processing time (w/o IO): 18.974156ms
	Processing time (w/o IO): 19.451162ms
	Processing time (w/o IO): 20.71918ms
	Processing time (w/o IO): 19.044357ms
	Processing time (w/o IO): 17.910841ms
	  Time (mean ± σ):      59.2 ms ±   3.7 ms    [User: 67.7 ms, System: 14.6 ms]
	  Range (min … max):    55.1 ms …  68.9 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 40.437754ms
	Processing time (w/o IO): 40.460454ms
	Processing time (w/o IO): 40.425554ms
	Processing time (w/o IO): 39.949947ms
	Processing time (w/o IO): 39.43964ms
	Processing time (w/o IO): 39.964848ms
	Processing time (w/o IO): 39.067936ms
	Processing time (w/o IO): 38.576629ms
	Processing time (w/o IO): 39.773045ms
	Processing time (w/o IO): 40.933661ms
	Processing time (w/o IO): 40.631957ms
	Processing time (w/o IO): 44.51591ms
	Processing time (w/o IO): 38.728131ms
	  Time (mean ± σ):      62.0 ms ±   2.0 ms    [User: 52.2 ms, System: 9.4 ms]
	  Range (min … max):    57.7 ms …  65.4 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 21.496191ms
	Processing time (w/o IO): 21.660494ms
	Processing time (w/o IO): 20.801082ms
	Processing time (w/o IO): 20.256875ms
	Processing time (w/o IO): 21.022085ms
	Processing time (w/o IO): 21.594193ms
	Processing time (w/o IO): 20.605679ms
	Processing time (w/o IO): 20.731281ms
	Processing time (w/o IO): 21.722995ms
	Processing time (w/o IO): 20.825883ms
	Processing time (w/o IO): 20.66318ms
	Processing time (w/o IO): 22.1156ms
	Processing time (w/o IO): 22.229301ms
	  Time (mean ± σ):      40.9 ms ±   1.7 ms    [User: 51.1 ms, System: 9.2 ms]
	  Range (min … max):    37.5 ms …  43.8 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 2.837s
	Processing time (w/o IO): 2.915s
	Processing time (w/o IO): 2.916s
	Processing time (w/o IO): 2.832s
	Processing time (w/o IO): 2.829s
	  Time (mean ± σ):      2.946 s ±  0.045 s    [User: 2.922 s, System: 0.023 s]
	  Range (min … max):    2.913 s …  2.998 s    5 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 0.422s
	Processing time (w/o IO): 0.430s
	Processing time (w/o IO): 0.424s
	Processing time (w/o IO): 0.417s
	Processing time (w/o IO): 0.432s
	  Time (mean ± σ):     682.8 ms ±  13.0 ms    [User: 711.8 ms, System: 210.0 ms]
	  Range (min … max):   668.4 ms … 696.4 ms    5 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 63.869655ms
	Processing time (w/o IO): 62.330134ms
	Processing time (w/o IO): 62.486334ms
	Processing time (w/o IO): 58.840491ms
	Processing time (w/o IO): 65.862574ms
	Processing time (w/o IO): 66.014376ms
	Processing time (w/o IO): 63.82505ms
	Processing time (w/o IO): 63.869951ms
	Processing time (w/o IO): 60.981216ms
	Processing time (w/o IO): 64.667159ms
	  Time (mean ± σ):     125.8 ms ±   4.3 ms    [User: 114.5 ms, System: 11.2 ms]
	  Range (min … max):   119.3 ms … 134.5 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 206ms
	Processing time (w/o IO): 203ms
	Processing time (w/o IO): 197ms
	Processing time (w/o IO): 196ms
	Processing time (w/o IO): 206ms
	Processing time (w/o IO): 195ms
	Processing time (w/o IO): 196ms
	Processing time (w/o IO): 195ms
	Processing time (w/o IO): 190ms
	Processing time (w/o IO): 197ms
	Processing time (w/o IO): 200ms
	Processing time (w/o IO): 195ms
	Processing time (w/o IO): 204ms
	  Time (mean ± σ):     244.5 ms ±   5.2 ms    [User: 237.0 ms, System: 7.4 ms]
	  Range (min … max):   237.4 ms … 253.7 ms    10 runs
	 
Julia v2:

	Benchmark 1: julia related_v2.jl
	Processing time (w/o IO): 628 milliseconds
	Processing time (w/o IO): 657 milliseconds
	Processing time (w/o IO): 636 milliseconds
	Processing time (w/o IO): 619 milliseconds
	Processing time (w/o IO): 642 milliseconds
	Processing time (w/o IO): 604 milliseconds
	  Time (mean ± σ):      5.224 s ±  0.083 s    [User: 4.991 s, System: 0.230 s]
	  Range (min … max):    5.128 s …  5.314 s    5 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  65.894038ms
	Processing time (w/o IO):  67.423464ms
	Processing time (w/o IO):  71.605636ms
	Processing time (w/o IO):  61.587163ms
	Processing time (w/o IO):  62.170873ms
	Processing time (w/o IO):  69.814205ms
	Processing time (w/o IO):  64.176708ms
	Processing time (w/o IO):  64.219808ms
	Processing time (w/o IO):  65.57678ms
	Processing time (w/o IO):  63.289053ms
	  Time (mean ± σ):     326.6 ms ±  12.7 ms    [User: 315.6 ms, System: 10.9 ms]
	  Range (min … max):   314.7 ms … 346.6 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 65.373ms
	Processing time (w/o IO): 61.139ms
	Processing time (w/o IO): 61.454ms
	Processing time (w/o IO): 58.140ms
	Processing time (w/o IO): 64.054ms
	  Time (mean ± σ):     379.3 ms ±   7.4 ms    [User: 343.0 ms, System: 35.7 ms]
	  Range (min … max):   371.3 ms … 388.6 ms    5 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 119ms
	Processing time (w/o IO): 110ms
	Processing time (w/o IO): 102ms
	Processing time (w/o IO): 111ms
	Processing time (w/o IO): 94ms
	Processing time (w/o IO): 115ms
	Processing time (w/o IO): 94ms
	Processing time (w/o IO): 93ms
	  Time (mean ± σ):     597.7 ms ±  23.8 ms    [User: 669.1 ms, System: 161.5 ms]
	  Range (min … max):   578.2 ms … 634.8 ms    5 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 139ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 146ms
	Processing time (w/o IO): 158ms
	Processing time (w/o IO): 155ms
	Processing time (w/o IO): 149ms
	Processing time (w/o IO): 153ms
	  Time (mean ± σ):     303.7 ms ±  10.6 ms    [User: 280.5 ms, System: 27.2 ms]
	  Range (min … max):   289.0 ms … 317.2 ms    5 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 78.11498641967773ms
	Processing time (w/o IO): 75.11603832244873ms
	Processing time (w/o IO): 72.46196269989014ms
	Processing time (w/o IO): 72.14200496673584ms
	Processing time (w/o IO): 70.85597515106201ms
	Processing time (w/o IO): 67.18289852142334ms
	Processing time (w/o IO): 68.79198551177979ms
	Processing time (w/o IO): 67.33906269073486ms
	Processing time (w/o IO): 68.00997257232666ms
	Processing time (w/o IO): 73.60506057739258ms
	  Time (mean ± σ):     477.3 ms ±  17.9 ms    [User: 428.2 ms, System: 43.2 ms]
	  Range (min … max):   454.3 ms … 511.5 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 46.439607ms
	Processing time (w/o IO): 44.106882ms
	Processing time (w/o IO): 48.204226ms
	Processing time (w/o IO): 43.261572ms
	Processing time (w/o IO): 44.342784ms
	Processing time (w/o IO): 44.427485ms
	Processing time (w/o IO): 44.84099ms
	Processing time (w/o IO): 45.577371ms
	Processing time (w/o IO): 45.62167ms
	Processing time (w/o IO): 42.871584ms
	  Time (mean ± σ):     442.6 ms ±  12.5 ms    [User: 429.3 ms, System: 46.8 ms]
	  Range (min … max):   423.9 ms … 460.8 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 229ms
	Processing time (w/o IO): 222ms
	Processing time (w/o IO): 208ms
	Processing time (w/o IO): 207ms
	Processing time (w/o IO): 220ms
	  Time (mean ± σ):     297.3 ms ±  12.3 ms    [User: 277.8 ms, System: 58.6 ms]
	  Range (min … max):   277.7 ms … 308.5 ms    5 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 719ms
	Processing time (w/o IO): 690ms
	Processing time (w/o IO): 679ms
	Processing time (w/o IO): 728ms
	Processing time (w/o IO): 910ms
	  Time (mean ± σ):     836.6 ms ± 104.4 ms    [User: 813.1 ms, System: 47.7 ms]
	  Range (min … max):   742.6 ms … 972.4 ms    5 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 205ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 182ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 178ms
	  Time (mean ± σ):     292.4 ms ±  79.9 ms    [User: 247.3 ms, System: 36.5 ms]
	  Range (min … max):   253.7 ms … 435.1 ms    5 runs
	 
Java (JIT):

	Benchmark 1: java -Xms10m -Xmx10m -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 251 ms
	Processing time (w/o IO): 264 ms
	Processing time (w/o IO): 277 ms
	Processing time (w/o IO): 262 ms
	Processing time (w/o IO): 284 ms
	Processing time (w/o IO): 275 ms
	Processing time (w/o IO): 287 ms
	Processing time (w/o IO): 272 ms
	Processing time (w/o IO): 281 ms
	Processing time (w/o IO): 271 ms
	Processing time (w/o IO): 272 ms
	Processing time (w/o IO): 281 ms
	Processing time (w/o IO): 271 ms
	  Time (mean ± σ):     576.9 ms ±  26.9 ms    [User: 958.8 ms, System: 71.0 ms]
	  Range (min … max):   551.5 ms … 633.5 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 45 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 36 ms
	  Time (mean ± σ):      67.8 ms ±   4.4 ms    [User: 59.7 ms, System: 8.0 ms]
	  Range (min … max):    64.0 ms …  76.2 ms    10 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 101ms
	Processing time (w/o IO): 107ms
	Processing time (w/o IO): 108ms
	Processing time (w/o IO): 97ms
	Processing time (w/o IO): 103ms
	Processing time (w/o IO): 99ms
	Processing time (w/o IO): 97ms
	Processing time (w/o IO): 94ms
	Processing time (w/o IO): 93ms
	Processing time (w/o IO): 106ms
	Processing time (w/o IO): 106ms
	Processing time (w/o IO): 100ms
	  Time (mean ± σ):     133.2 ms ±   5.7 ms    [User: 115.6 ms, System: 17.5 ms]
	  Range (min … max):   126.4 ms … 141.4 ms    10 runs
	 
Fsharp:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 165ms
	Processing time (w/o IO): 165ms
	Processing time (w/o IO): 176ms
	Processing time (w/o IO): 163ms
	Processing time (w/o IO): 158ms
	Processing time (w/o IO): 161ms
	Processing time (w/o IO): 169ms
	  Time (mean ± σ):      1.030 s ±  0.018 s    [User: 0.966 s, System: 0.093 s]
	  Range (min … max):    1.000 s …  1.045 s    5 runs
	 
Fsharp:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 95ms
	Processing time (w/o IO): 95ms
	Processing time (w/o IO): 104ms
	Processing time (w/o IO): 106ms
	Processing time (w/o IO): 99ms
	Processing time (w/o IO): 101ms
	  Time (mean ± σ):      1.004 s ±  0.012 s    [User: 1.032 s, System: 0.099 s]
	  Range (min … max):    0.987 s …  1.019 s    5 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	134.64498519897	ms
	Processing time (w/o IO):	118.81995201111	ms
	Processing time (w/o IO):	135.33687591553	ms
	Processing time (w/o IO):	115.2868270874	ms
	Processing time (w/o IO):	139.56809043884	ms
	Processing time (w/o IO):	137.62307167053	ms
	Processing time (w/o IO):	135.73598861694	ms
	  Time (mean ± σ):     421.2 ms ±  14.7 ms    [User: 394.0 ms, System: 27.0 ms]
	  Range (min … max):   408.3 ms … 443.5 ms    5 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	2688.9989376068	ms
	Processing time (w/o IO):	2765.7780647278	ms
	Processing time (w/o IO):	2450.9410858154	ms
	Processing time (w/o IO):	2614.461183548	ms
	Processing time (w/o IO):	2427.4499416351	ms
	Processing time (w/o IO):	2546.4189052582	ms
	Processing time (w/o IO):	2607.0990562439	ms
	  Time (mean ± σ):      3.221 s ±  0.117 s    [User: 3.185 s, System: 0.035 s]
	  Range (min … max):    3.097 s …  3.376 s    5 runs
	 
