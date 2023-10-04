Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 50.68149ms
	Processing time (w/o IO): 55.087089ms
	Processing time (w/o IO): 49.17439ms
	Processing time (w/o IO): 52.767589ms
	Processing time (w/o IO): 48.57999ms
	Processing time (w/o IO): 50.02199ms
	Processing time (w/o IO): 49.68559ms
	Processing time (w/o IO): 54.239389ms
	Processing time (w/o IO): 50.79969ms
	Processing time (w/o IO): 49.46109ms
	Processing time (w/o IO): 51.269289ms
	Processing time (w/o IO): 60.480988ms
	Processing time (w/o IO): 50.742289ms
	  Time (mean ± σ):      94.4 ms ±   9.6 ms    [User: 84.7 ms, System: 16.2 ms]
	  Range (min … max):    85.7 ms … 119.5 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 22.0202ms
	Processing time (w/o IO): 19.3962ms
	Processing time (w/o IO): 19.184099ms
	Processing time (w/o IO): 22.007899ms
	Processing time (w/o IO): 20.9174ms
	Processing time (w/o IO): 21.7666ms
	Processing time (w/o IO): 19.8381ms
	Processing time (w/o IO): 23.2548ms
	Processing time (w/o IO): 25.786399ms
	Processing time (w/o IO): 21.326299ms
	Processing time (w/o IO): 20.1436ms
	Processing time (w/o IO): 21.2758ms
	Processing time (w/o IO): 19.9841ms
	  Time (mean ± σ):      65.3 ms ±   2.6 ms    [User: 66.1 ms, System: 22.7 ms]
	  Range (min … max):    61.6 ms …  70.6 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 37.544003ms
	Processing time (w/o IO): 37.389903ms
	Processing time (w/o IO): 37.721503ms
	Processing time (w/o IO): 39.192704ms
	Processing time (w/o IO): 37.882003ms
	Processing time (w/o IO): 37.913303ms
	Processing time (w/o IO): 39.133504ms
	Processing time (w/o IO): 39.365003ms
	Processing time (w/o IO): 39.634304ms
	Processing time (w/o IO): 39.496703ms
	Processing time (w/o IO): 40.535204ms
	Processing time (w/o IO): 38.998203ms
	Processing time (w/o IO): 38.194504ms
	  Time (mean ± σ):      63.6 ms ±   1.5 ms    [User: 52.9 ms, System: 10.6 ms]
	  Range (min … max):    61.5 ms …  65.1 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 19.732102ms
	Processing time (w/o IO): 19.265502ms
	Processing time (w/o IO): 18.839902ms
	Processing time (w/o IO): 19.463302ms
	Processing time (w/o IO): 19.496601ms
	Processing time (w/o IO): 20.277302ms
	Processing time (w/o IO): 21.424101ms
	Processing time (w/o IO): 20.458801ms
	Processing time (w/o IO): 19.972802ms
	Processing time (w/o IO): 20.741402ms
	Processing time (w/o IO): 18.918102ms
	Processing time (w/o IO): 19.125302ms
	Processing time (w/o IO): 19.877402ms
	  Time (mean ± σ):      44.5 ms ±   1.3 ms    [User: 52.0 ms, System: 10.7 ms]
	  Range (min … max):    43.0 ms …  46.3 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 3.234s
	Processing time (w/o IO): 3.227s
	Processing time (w/o IO): 3.251s
	Processing time (w/o IO): 3.287s
	Processing time (w/o IO): 3.317s
	  Time (mean ± σ):      3.356 s ±  0.037 s    [User: 3.326 s, System: 0.029 s]
	  Range (min … max):    3.321 s …  3.410 s    5 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 0.530s
	Processing time (w/o IO): 0.493s
	Processing time (w/o IO): 0.482s
	Processing time (w/o IO): 0.487s
	Processing time (w/o IO): 0.472s
	  Time (mean ± σ):     809.1 ms ±  18.5 ms    [User: 810.2 ms, System: 225.4 ms]
	  Range (min … max):   789.8 ms … 836.9 ms    5 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 68.843111ms
	Processing time (w/o IO): 63.12801ms
	Processing time (w/o IO): 64.55811ms
	Processing time (w/o IO): 66.23711ms
	Processing time (w/o IO): 67.46631ms
	Processing time (w/o IO): 63.06021ms
	Processing time (w/o IO): 64.69291ms
	Processing time (w/o IO): 61.58041ms
	Processing time (w/o IO): 65.196711ms
	Processing time (w/o IO): 66.702611ms
	  Time (mean ± σ):     129.0 ms ±   3.9 ms    [User: 117.9 ms, System: 10.8 ms]
	  Range (min … max):   123.1 ms … 136.0 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 45ms
	Processing time (w/o IO): 51ms
	Processing time (w/o IO): 52ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 48ms
	Processing time (w/o IO): 48ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 48ms
	Processing time (w/o IO): 48ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 47ms
	  Time (mean ± σ):     102.4 ms ±   3.0 ms    [User: 93.4 ms, System: 8.9 ms]
	  Range (min … max):    98.6 ms … 108.7 ms    10 runs
	 
Julia v2:

	Benchmark 1: julia related_v2.jl
	Processing time (w/o IO): 895 milliseconds
	Processing time (w/o IO): 1046 milliseconds
	Processing time (w/o IO): 1035 milliseconds
	Processing time (w/o IO): 1042 milliseconds
	Processing time (w/o IO): 1070 milliseconds
	Processing time (w/o IO): 1105 milliseconds
	  Time (mean ± σ):      7.119 s ±  0.102 s    [User: 6.833 s, System: 0.281 s]
	  Range (min … max):    7.017 s …  7.249 s    5 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  65.643893ms
	Processing time (w/o IO):  69.020493ms
	Processing time (w/o IO):  64.381594ms
	Processing time (w/o IO):  67.516793ms
	Processing time (w/o IO):  65.868893ms
	Processing time (w/o IO):  66.926393ms
	Processing time (w/o IO):  67.459893ms
	Processing time (w/o IO):  67.677693ms
	Processing time (w/o IO):  65.325093ms
	Processing time (w/o IO):  67.450993ms
	  Time (mean ± σ):     380.9 ms ±   3.6 ms    [User: 369.5 ms, System: 11.2 ms]
	  Range (min … max):   373.7 ms … 385.4 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 58.490ms
	Processing time (w/o IO): 60.150ms
	Processing time (w/o IO): 58.022ms
	Processing time (w/o IO): 62.256ms
	Processing time (w/o IO): 65.404ms
	  Time (mean ± σ):     750.4 ms ±  21.0 ms    [User: 704.3 ms, System: 45.3 ms]
	  Range (min … max):   728.5 ms … 776.3 ms    5 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 96ms
	Processing time (w/o IO): 99ms
	Processing time (w/o IO): 97ms
	Processing time (w/o IO): 95ms
	Processing time (w/o IO): 97ms
	Processing time (w/o IO): 101ms
	Processing time (w/o IO): 95ms
	Processing time (w/o IO): 92ms
	  Time (mean ± σ):     735.9 ms ±  15.4 ms    [User: 811.8 ms, System: 217.3 ms]
	  Range (min … max):   721.4 ms … 761.1 ms    5 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 119ms
	Processing time (w/o IO): 118ms
	Processing time (w/o IO): 114ms
	Processing time (w/o IO): 115ms
	Processing time (w/o IO): 116ms
	Processing time (w/o IO): 117ms
	Processing time (w/o IO): 122ms
	Processing time (w/o IO): 114ms
	  Time (mean ± σ):     280.9 ms ±   3.4 ms    [User: 258.1 ms, System: 27.6 ms]
	  Range (min … max):   277.0 ms … 284.8 ms    5 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 69.23103332519531ms
	Processing time (w/o IO): 68.60005855560303ms
	Processing time (w/o IO): 66.03097915649414ms
	Processing time (w/o IO): 65.11104106903076ms
	Processing time (w/o IO): 70.4430341720581ms
	Processing time (w/o IO): 66.20299816131592ms
	Processing time (w/o IO): 63.26401233673096ms
	Processing time (w/o IO): 67.16704368591309ms
	Processing time (w/o IO): 61.22100353240967ms
	Processing time (w/o IO): 62.857985496520996ms
	  Time (mean ± σ):     540.9 ms ±  15.1 ms    [User: 480.8 ms, System: 53.7 ms]
	  Range (min … max):   523.8 ms … 579.5 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 44.748608ms
	Processing time (w/o IO): 43.542108ms
	Processing time (w/o IO): 42.700607ms
	Processing time (w/o IO): 42.016807ms
	Processing time (w/o IO): 47.010408ms
	Processing time (w/o IO): 42.373508ms
	Processing time (w/o IO): 41.933707ms
	Processing time (w/o IO): 42.792108ms
	Processing time (w/o IO): 43.863208ms
	Processing time (w/o IO): 43.333808ms
	  Time (mean ± σ):     557.6 ms ±  15.0 ms    [User: 523.9 ms, System: 65.5 ms]
	  Range (min … max):   540.2 ms … 585.7 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 211ms
	Processing time (w/o IO): 210ms
	Processing time (w/o IO): 203ms
	Processing time (w/o IO): 214ms
	Processing time (w/o IO): 206ms
	  Time (mean ± σ):     313.0 ms ±  13.4 ms    [User: 293.2 ms, System: 65.3 ms]
	  Range (min … max):   296.0 ms … 330.2 ms    5 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 831ms
	Processing time (w/o IO): 995ms
	Processing time (w/o IO): 1070ms
	Processing time (w/o IO): 1036ms
	Processing time (w/o IO): 1062ms
	  Time (mean ± σ):      1.117 s ±  0.028 s    [User: 1.092 s, System: 0.062 s]
	  Range (min … max):    1.087 s …  1.145 s    5 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 208ms
	Processing time (w/o IO): 173ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 173ms
	Processing time (w/o IO): 176ms
	  Time (mean ± σ):     320.9 ms ± 100.7 ms    [User: 259.9 ms, System: 46.8 ms]
	  Range (min … max):   268.9 ms … 500.7 ms    5 runs
	 
Java (JIT):

	Benchmark 1: java -Xms10m -Xmx10m -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 362 ms
	Processing time (w/o IO): 378 ms
	Processing time (w/o IO): 372 ms
	Processing time (w/o IO): 335 ms
	Processing time (w/o IO): 352 ms
	Processing time (w/o IO): 343 ms
	Processing time (w/o IO): 342 ms
	Processing time (w/o IO): 371 ms
	Processing time (w/o IO): 348 ms
	Processing time (w/o IO): 345 ms
	Processing time (w/o IO): 335 ms
	Processing time (w/o IO): 324 ms
	Processing time (w/o IO): 344 ms
	  Time (mean ± σ):     711.8 ms ±  12.6 ms    [User: 1208.8 ms, System: 89.7 ms]
	  Range (min … max):   686.7 ms … 727.9 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 45 ms
	Processing time (w/o IO): 45 ms
	Processing time (w/o IO): 45 ms
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 45 ms
	Processing time (w/o IO): 46 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 51 ms
	  Time (mean ± σ):      80.5 ms ±   3.4 ms    [User: 65.7 ms, System: 14.9 ms]
	  Range (min … max):    77.4 ms …  88.6 ms    10 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 101ms
	Processing time (w/o IO): 108ms
	Processing time (w/o IO): 101ms
	Processing time (w/o IO): 103ms
	Processing time (w/o IO): 101ms
	Processing time (w/o IO): 112ms
	Processing time (w/o IO): 111ms
	Processing time (w/o IO): 112ms
	Processing time (w/o IO): 107ms
	Processing time (w/o IO): 107ms
	Processing time (w/o IO): 102ms
	Processing time (w/o IO): 102ms
	  Time (mean ± σ):     140.3 ms ±   5.0 ms    [User: 129.1 ms, System: 11.0 ms]
	  Range (min … max):   134.8 ms … 148.0 ms    10 runs
	 
Fsharp:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 56ms
	Processing time (w/o IO): 57ms
	Processing time (w/o IO): 58ms
	Processing time (w/o IO): 56ms
	Processing time (w/o IO): 57ms
	Processing time (w/o IO): 59ms
	Processing time (w/o IO): 59ms
	  Time (mean ± σ):      1.055 s ±  0.011 s    [User: 1.040 s, System: 0.105 s]
	  Range (min … max):    1.040 s …  1.066 s    5 runs
	 
Fsharp Concurrent:

	Benchmark 1: ./bin/release/net7.0/fsharp_con
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 48ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 51ms
	Processing time (w/o IO): 50ms
	  Time (mean ± σ):      1.062 s ±  0.030 s    [User: 1.024 s, System: 0.107 s]
	  Range (min … max):    1.018 s …  1.090 s    5 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	124.30310249329	ms
	Processing time (w/o IO):	124.11117553711	ms
	Processing time (w/o IO):	117.95091629028	ms
	Processing time (w/o IO):	121.02293968201	ms
	Processing time (w/o IO):	116.69206619263	ms
	Processing time (w/o IO):	119.65990066528	ms
	Processing time (w/o IO):	121.50907516479	ms
	  Time (mean ± σ):     453.8 ms ±   6.1 ms    [User: 431.3 ms, System: 22.4 ms]
	  Range (min … max):   447.8 ms … 463.0 ms    5 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	2789.1600131989	ms
	Processing time (w/o IO):	2848.2179641724	ms
	Processing time (w/o IO):	2936.3739490509	ms
	Processing time (w/o IO):	2965.2359485626	ms
	Processing time (w/o IO):	2861.5221977234	ms
	Processing time (w/o IO):	2819.5221424103	ms
	Processing time (w/o IO):	2832.2048187256	ms
	  Time (mean ± σ):      3.720 s ±  0.072 s    [User: 3.672 s, System: 0.046 s]
	  Range (min … max):    3.641 s …  3.829 s    5 runs
	 
