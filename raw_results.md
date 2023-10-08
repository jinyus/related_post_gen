Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 25.096979ms
	Processing time (w/o IO): 25.676883ms
	Processing time (w/o IO): 25.309081ms
	Processing time (w/o IO): 25.686884ms
	Processing time (w/o IO): 25.925885ms
	Processing time (w/o IO): 25.495782ms
	Processing time (w/o IO): 25.417382ms
	Processing time (w/o IO): 25.342881ms
	Processing time (w/o IO): 25.613784ms
	Processing time (w/o IO): 25.497483ms
	Processing time (w/o IO): 25.363581ms
	Processing time (w/o IO): 25.517582ms
	Processing time (w/o IO): 25.957885ms
	Processing time (w/o IO): 25.848085ms
	Processing time (w/o IO): 26.114186ms
	  Time (mean ± σ):      55.0 ms ±   1.4 ms    [User: 50.3 ms, System: 11.6 ms]
	  Range (min … max):    53.9 ms …  58.5 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 18.29003ms
	Processing time (w/o IO): 18.082729ms
	Processing time (w/o IO): 18.546333ms
	Processing time (w/o IO): 18.561233ms
	Processing time (w/o IO): 18.948835ms
	Processing time (w/o IO): 24.305074ms
	Processing time (w/o IO): 18.344031ms
	Processing time (w/o IO): 18.860535ms
	Processing time (w/o IO): 19.068837ms
	Processing time (w/o IO): 18.407432ms
	Processing time (w/o IO): 18.577332ms
	Processing time (w/o IO): 19.060837ms
	Processing time (w/o IO): 18.680634ms
	Processing time (w/o IO): 18.397631ms
	Processing time (w/o IO): 18.516532ms
	  Time (mean ± σ):      50.6 ms ±   6.5 ms    [User: 58.3 ms, System: 13.4 ms]
	  Range (min … max):    45.8 ms …  67.4 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 30.710787ms
	Processing time (w/o IO): 30.686887ms
	Processing time (w/o IO): 30.915688ms
	Processing time (w/o IO): 30.724486ms
	Processing time (w/o IO): 30.685986ms
	Processing time (w/o IO): 30.879188ms
	Processing time (w/o IO): 33.205802ms
	Processing time (w/o IO): 30.704887ms
	Processing time (w/o IO): 30.789787ms
	Processing time (w/o IO): 30.815587ms
	Processing time (w/o IO): 30.859287ms
	Processing time (w/o IO): 30.684986ms
	Processing time (w/o IO): 30.661086ms
	Processing time (w/o IO): 30.971288ms
	Processing time (w/o IO): 30.679387ms
	  Time (mean ± σ):      47.7 ms ±   1.0 ms    [User: 40.2 ms, System: 7.2 ms]
	  Range (min … max):    47.0 ms …  50.4 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 15.459288ms
	Processing time (w/o IO): 15.516589ms
	Processing time (w/o IO): 15.660589ms
	Processing time (w/o IO): 15.981792ms
	Processing time (w/o IO): 15.627589ms
	Processing time (w/o IO): 15.835991ms
	Processing time (w/o IO): 15.575789ms
	Processing time (w/o IO): 16.503395ms
	Processing time (w/o IO): 15.622389ms
	Processing time (w/o IO): 15.443888ms
	Processing time (w/o IO): 15.887291ms
	Processing time (w/o IO): 16.676895ms
	Processing time (w/o IO): 15.65259ms
	Processing time (w/o IO): 15.292388ms
	Processing time (w/o IO): 15.829891ms
	  Time (mean ± σ):      32.8 ms ±   0.9 ms    [User: 38.8 ms, System: 7.7 ms]
	  Range (min … max):    31.5 ms …  33.9 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 1.688s
	Processing time (w/o IO): 1.685s
	Processing time (w/o IO): 1.724s
	Processing time (w/o IO): 1.684s
	Processing time (w/o IO): 1.688s
	Processing time (w/o IO): 1.685s
	Processing time (w/o IO): 1.686s
	Processing time (w/o IO): 1.685s
	Processing time (w/o IO): 1.682s
	Processing time (w/o IO): 1.685s
	Processing time (w/o IO): 1.703s
	Processing time (w/o IO): 1.686s
	Processing time (w/o IO): 1.739s
	  Time (mean ± σ):      1.768 s ±  0.018 s    [User: 1.741 s, System: 0.019 s]
	  Range (min … max):    1.757 s …  1.813 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 407.3ms
	Processing time (w/o IO): 395.5ms
	Processing time (w/o IO): 396.5ms
	Processing time (w/o IO): 370.3ms
	Processing time (w/o IO): 367.9ms
	Processing time (w/o IO): 366.8ms
	Processing time (w/o IO): 365.8ms
	Processing time (w/o IO): 368.6ms
	Processing time (w/o IO): 369.8ms
	Processing time (w/o IO): 367.8ms
	Processing time (w/o IO): 365.9ms
	Processing time (w/o IO): 365.6ms
	Processing time (w/o IO): 366.6ms
	  Time (mean ± σ):     599.2 ms ±  25.2 ms    [User: 595.9 ms, System: 191.0 ms]
	  Range (min … max):   588.9 ms … 670.9 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 68.603684ms
	Processing time (w/o IO): 68.431183ms
	Processing time (w/o IO): 68.380682ms
	Processing time (w/o IO): 68.449783ms
	Processing time (w/o IO): 68.615184ms
	Processing time (w/o IO): 68.581884ms
	Processing time (w/o IO): 68.396983ms
	Processing time (w/o IO): 68.189882ms
	Processing time (w/o IO): 68.050981ms
	Processing time (w/o IO): 68.105481ms
	Processing time (w/o IO): 68.100781ms
	Processing time (w/o IO): 68.316482ms
	Processing time (w/o IO): 68.640684ms
	Processing time (w/o IO): 68.331482ms
	Processing time (w/o IO): 68.426983ms
	  Time (mean ± σ):     120.9 ms ±   1.2 ms    [User: 111.7 ms, System: 9.2 ms]
	  Range (min … max):   119.5 ms … 123.9 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	  Time (mean ± σ):      65.0 ms ±   0.2 ms    [User: 58.1 ms, System: 6.9 ms]
	  Range (min … max):    64.7 ms …  65.2 ms    10 runs
	 
Julia:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 40 milliseconds
	Processing time (w/o IO): 40 milliseconds
	Processing time (w/o IO): 40 milliseconds
	Processing time (w/o IO): 40 milliseconds
	Processing time (w/o IO): 40 milliseconds
	Processing time (w/o IO): 40 milliseconds
	Processing time (w/o IO): 40 milliseconds
	Processing time (w/o IO): 40 milliseconds
	Processing time (w/o IO): 40 milliseconds
	Processing time (w/o IO): 40 milliseconds
	Processing time (w/o IO): 40 milliseconds
	Processing time (w/o IO): 39 milliseconds
	Processing time (w/o IO): 40 milliseconds
	Processing time (w/o IO): 40 milliseconds
	Processing time (w/o IO): 40 milliseconds
	  Time (mean ± σ):      3.404 s ±  0.011 s    [User: 3.218 s, System: 0.184 s]
	  Range (min … max):    3.391 s …  3.427 s    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  53.618172ms
	Processing time (w/o IO):  54.768478ms
	Processing time (w/o IO):  54.112274ms
	Processing time (w/o IO):  54.006774ms
	Processing time (w/o IO):  53.478672ms
	Processing time (w/o IO):  53.726373ms
	Processing time (w/o IO):  53.423088ms
	Processing time (w/o IO):  53.62139ms
	Processing time (w/o IO):  53.72229ms
	Processing time (w/o IO):  53.489189ms
	Processing time (w/o IO):  53.64309ms
	Processing time (w/o IO):  53.159187ms
	Processing time (w/o IO):  53.832291ms
	Processing time (w/o IO):  53.538889ms
	Processing time (w/o IO):  53.80039ms
	  Time (mean ± σ):     299.7 ms ±   0.4 ms    [User: 292.9 ms, System: 6.7 ms]
	  Range (min … max):   298.9 ms … 300.5 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 58.691ms
	Processing time (w/o IO): 58.709ms
	Processing time (w/o IO): 58.629ms
	Processing time (w/o IO): 58.499ms
	Processing time (w/o IO): 58.416ms
	Processing time (w/o IO): 58.350ms
	Processing time (w/o IO): 58.447ms
	Processing time (w/o IO): 58.498ms
	Processing time (w/o IO): 58.342ms
	Processing time (w/o IO): 59.449ms
	Processing time (w/o IO): 58.466ms
	Processing time (w/o IO): 58.331ms
	Processing time (w/o IO): 58.583ms
	Processing time (w/o IO): 58.284ms
	Processing time (w/o IO): 58.315ms
	  Time (mean ± σ):     382.7 ms ±   3.3 ms    [User: 348.8 ms, System: 33.1 ms]
	  Range (min … max):   380.6 ms … 391.7 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 113ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 114ms
	Processing time (w/o IO): 113ms
	Processing time (w/o IO): 112ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 128ms
	  Time (mean ± σ):     566.7 ms ±  15.9 ms    [User: 632.9 ms, System: 155.1 ms]
	  Range (min … max):   553.0 ms … 602.5 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 140ms
	  Time (mean ± σ):     280.0 ms ±   3.0 ms    [User: 259.0 ms, System: 24.0 ms]
	  Range (min … max):   277.6 ms … 288.3 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 64.37301635742188ms
	Processing time (w/o IO): 65.12296199798584ms
	Processing time (w/o IO): 64.66996669769287ms
	Processing time (w/o IO): 64.19003009796143ms
	Processing time (w/o IO): 64.35000896453857ms
	Processing time (w/o IO): 64.37909603118896ms
	Processing time (w/o IO): 64.3841028213501ms
	Processing time (w/o IO): 64.2540454864502ms
	Processing time (w/o IO): 64.98599052429199ms
	Processing time (w/o IO): 64.6740198135376ms
	Processing time (w/o IO): 64.08798694610596ms
	Processing time (w/o IO): 64.53704833984375ms
	Processing time (w/o IO): 64.58401679992676ms
	Processing time (w/o IO): 64.25595283508301ms
	Processing time (w/o IO): 64.3230676651001ms
	  Time (mean ± σ):     437.8 ms ±   8.7 ms    [User: 392.1 ms, System: 38.2 ms]
	  Range (min … max):   431.3 ms … 455.0 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 39.320007ms
	Processing time (w/o IO): 39.953311ms
	Processing time (w/o IO): 39.637509ms
	Processing time (w/o IO): 39.654509ms
	Processing time (w/o IO): 39.88601ms
	Processing time (w/o IO): 39.74571ms
	Processing time (w/o IO): 39.92721ms
	Processing time (w/o IO): 40.186412ms
	Processing time (w/o IO): 40.434913ms
	Processing time (w/o IO): 40.460314ms
	Processing time (w/o IO): 39.86231ms
	Processing time (w/o IO): 40.019111ms
	Processing time (w/o IO): 40.435513ms
	Processing time (w/o IO): 39.450208ms
	Processing time (w/o IO): 40.263512ms
	  Time (mean ± σ):     434.0 ms ±  12.4 ms    [User: 422.5 ms, System: 41.0 ms]
	  Range (min … max):   422.0 ms … 457.4 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 199ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 190ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 194ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 188ms
	Processing time (w/o IO): 189ms
	Processing time (w/o IO): 189ms
	Processing time (w/o IO): 188ms
	Processing time (w/o IO): 191ms
	  Time (mean ± σ):     282.9 ms ±   5.4 ms    [User: 266.9 ms, System: 54.1 ms]
	  Range (min … max):   275.1 ms … 290.1 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 702ms
	Processing time (w/o IO): 851ms
	Processing time (w/o IO): 828ms
	Processing time (w/o IO): 893ms
	Processing time (w/o IO): 868ms
	Processing time (w/o IO): 840ms
	Processing time (w/o IO): 868ms
	Processing time (w/o IO): 816ms
	Processing time (w/o IO): 824ms
	Processing time (w/o IO): 845ms
	Processing time (w/o IO): 832ms
	Processing time (w/o IO): 685ms
	Processing time (w/o IO): 822ms
	  Time (mean ± σ):     894.7 ms ±  54.8 ms    [User: 901.2 ms, System: 37.3 ms]
	  Range (min … max):   755.4 ms … 957.8 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 256ms
	Processing time (w/o IO): 215ms
	Processing time (w/o IO): 221ms
	Processing time (w/o IO): 238ms
	Processing time (w/o IO): 216ms
	Processing time (w/o IO): 216ms
	Processing time (w/o IO): 216ms
	Processing time (w/o IO): 215ms
	Processing time (w/o IO): 215ms
	Processing time (w/o IO): 216ms
	Processing time (w/o IO): 215ms
	Processing time (w/o IO): 217ms
	Processing time (w/o IO): 216ms
	  Time (mean ± σ):     291.5 ms ±   7.7 ms    [User: 279.9 ms, System: 30.2 ms]
	  Range (min … max):   287.5 ms … 313.3 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -Xms10m -Xmx10m -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 295 ms
	Processing time (w/o IO): 251 ms
	Processing time (w/o IO): 256 ms
	Processing time (w/o IO): 233 ms
	Processing time (w/o IO): 276 ms
	Processing time (w/o IO): 252 ms
	Processing time (w/o IO): 251 ms
	Processing time (w/o IO): 262 ms
	Processing time (w/o IO): 298 ms
	Processing time (w/o IO): 241 ms
	Processing time (w/o IO): 258 ms
	Processing time (w/o IO): 241 ms
	Processing time (w/o IO): 253 ms
	  Time (mean ± σ):     537.8 ms ±  23.2 ms    [User: 886.3 ms, System: 72.0 ms]
	  Range (min … max):   514.9 ms … 587.5 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 40 ms
	  Time (mean ± σ):      69.6 ms ±   0.3 ms    [User: 61.5 ms, System: 8.2 ms]
	  Range (min … max):    69.1 ms …  70.1 ms    10 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 41ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	  Time (mean ± σ):      65.3 ms ±   0.9 ms    [User: 54.7 ms, System: 10.5 ms]
	  Range (min … max):    64.3 ms …  67.0 ms    10 runs
	 
F#:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 50ms
	  Time (mean ± σ):     295.5 ms ±   4.1 ms    [User: 239.4 ms, System: 46.9 ms]
	  Range (min … max):   291.4 ms … 304.2 ms    10 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net7.0/fsharp_con
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 41ms
	Processing time (w/o IO): 41ms
	Processing time (w/o IO): 41ms
	Processing time (w/o IO): 41ms
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 41ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 41ms
	  Time (mean ± σ):     857.4 ms ±  11.7 ms    [User: 820.4 ms, System: 83.4 ms]
	  Range (min … max):   835.3 ms … 869.4 ms    10 runs
	 
C#:

	Benchmark 1: ./bin/release/net7.0/publish/related
	Processing time (w/o IO): 79.582ms
	Processing time (w/o IO): 80.0636ms
	Processing time (w/o IO): 79.4544ms
	Processing time (w/o IO): 79.9097ms
	Processing time (w/o IO): 79.2746ms
	Processing time (w/o IO): 79.7593ms
	Processing time (w/o IO): 79.2451ms
	Processing time (w/o IO): 79.2983ms
	Processing time (w/o IO): 79.2263ms
	Processing time (w/o IO): 81.7849ms
	Processing time (w/o IO): 79.4616ms
	Processing time (w/o IO): 79.4115ms
	Processing time (w/o IO): 79.4912ms
	Processing time (w/o IO): 80.0623ms
	Processing time (w/o IO): 79.7651ms
	  Time (mean ± σ):     141.0 ms ±   1.4 ms    [User: 130.1 ms, System: 22.6 ms]
	  Range (min … max):   139.3 ms … 143.5 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	115.40102958679	ms
	Processing time (w/o IO):	115.65208435059	ms
	Processing time (w/o IO):	115.32807350159	ms
	Processing time (w/o IO):	115.0381565094	ms
	Processing time (w/o IO):	115.09799957275	ms
	Processing time (w/o IO):	114.92109298706	ms
	Processing time (w/o IO):	115.22579193115	ms
	Processing time (w/o IO):	115.12303352356	ms
	Processing time (w/o IO):	115.96083641052	ms
	Processing time (w/o IO):	116.38808250427	ms
	Processing time (w/o IO):	115.58389663696	ms
	Processing time (w/o IO):	115.23509025574	ms
	Processing time (w/o IO):	116.10794067383	ms
	Processing time (w/o IO):	115.48781394958	ms
	Processing time (w/o IO):	114.74299430847	ms
	  Time (mean ± σ):     379.5 ms ±   2.7 ms    [User: 357.2 ms, System: 21.9 ms]
	  Range (min … max):   376.4 ms … 385.2 ms    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	2400.5749225616	ms
	Processing time (w/o IO):	2370.1460361481	ms
	Processing time (w/o IO):	2351.1071205139	ms
	Processing time (w/o IO):	2350.7061004639	ms
	Processing time (w/o IO):	2351.2208461761	ms
	Processing time (w/o IO):	2350.0690460205	ms
	Processing time (w/o IO):	2352.322101593	ms
	Processing time (w/o IO):	2347.7199077606	ms
	Processing time (w/o IO):	2359.2140674591	ms
	Processing time (w/o IO):	2347.2728729248	ms
	Processing time (w/o IO):	2348.4208583832	ms
	Processing time (w/o IO):	2354.6948432922	ms
	  Time (mean ± σ):      2.989 s ±  0.006 s    [User: 2.954 s, System: 0.034 s]
	  Range (min … max):    2.980 s …  2.997 s    10 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 200ms
	Processing time (w/o IO): 200ms
	Processing time (w/o IO): 200ms
	Processing time (w/o IO): 200ms
	Processing time (w/o IO): 200ms
	Processing time (w/o IO): 199ms
	Processing time (w/o IO): 196ms
	Processing time (w/o IO): 202ms
	Processing time (w/o IO): 197ms
	Processing time (w/o IO): 198ms
	Processing time (w/o IO): 201ms
	Processing time (w/o IO): 198ms
	Processing time (w/o IO): 198ms
	  Time (mean ± σ):     306.3 ms ±   3.1 ms    [User: 284.5 ms, System: 21.1 ms]
	  Range (min … max):   301.6 ms … 311.2 ms    10 runs
	 
