Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 25.647608ms
	Processing time (w/o IO): 28.453141ms
	Processing time (w/o IO): 28.049237ms
	Processing time (w/o IO): 24.135489ms
	Processing time (w/o IO): 24.274891ms
	Processing time (w/o IO): 24.693397ms
	Processing time (w/o IO): 27.56353ms
	Processing time (w/o IO): 26.280615ms
	Processing time (w/o IO): 24.625695ms
	Processing time (w/o IO): 25.032001ms
	Processing time (w/o IO): 25.148001ms
	Processing time (w/o IO): 26.143013ms
	Processing time (w/o IO): 24.785597ms
	  Time (mean ± σ):      66.7 ms ±   2.2 ms    [User: 64.4 ms, System: 10.2 ms]
	  Range (min … max):    63.9 ms …  71.0 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 14.629476ms
	Processing time (w/o IO): 13.012556ms
	Processing time (w/o IO): 14.639675ms
	Processing time (w/o IO): 12.963956ms
	Processing time (w/o IO): 14.285571ms
	Processing time (w/o IO): 12.990055ms
	Processing time (w/o IO): 14.261171ms
	Processing time (w/o IO): 12.979255ms
	Processing time (w/o IO): 12.694253ms
	Processing time (w/o IO): 14.395773ms
	Processing time (w/o IO): 13.202859ms
	Processing time (w/o IO): 13.29826ms
	Processing time (w/o IO): 13.380361ms
	  Time (mean ± σ):      54.2 ms ±   2.9 ms    [User: 82.5 ms, System: 11.5 ms]
	  Range (min … max):    51.0 ms …  60.6 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 23.940849ms
	Processing time (w/o IO): 23.845647ms
	Processing time (w/o IO): 23.823147ms
	Processing time (w/o IO): 24.253953ms
	Processing time (w/o IO): 23.792746ms
	Processing time (w/o IO): 23.924849ms
	Processing time (w/o IO): 23.803647ms
	Processing time (w/o IO): 23.773846ms
	Processing time (w/o IO): 23.779447ms
	Processing time (w/o IO): 23.836547ms
	Processing time (w/o IO): 23.848048ms
	Processing time (w/o IO): 23.782746ms
	Processing time (w/o IO): 23.771846ms
	  Time (mean ± σ):      42.0 ms ±   0.4 ms    [User: 33.3 ms, System: 8.5 ms]
	  Range (min … max):    41.3 ms …  42.8 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 20.629606ms
	Processing time (w/o IO): 21.909537ms
	Processing time (w/o IO): 21.906737ms
	Processing time (w/o IO): 20.041391ms
	Processing time (w/o IO): 20.648806ms
	Processing time (w/o IO): 20.765009ms
	Processing time (w/o IO): 20.640506ms
	Processing time (w/o IO): 22.796859ms
	Processing time (w/o IO): 20.80041ms
	Processing time (w/o IO): 20.258297ms
	Processing time (w/o IO): 20.155694ms
	Processing time (w/o IO): 20.172494ms
	Processing time (w/o IO): 22.992463ms
	  Time (mean ± σ):      39.8 ms ±   1.2 ms    [User: 50.3 ms, System: 8.9 ms]
	  Range (min … max):    38.6 ms …  42.0 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 1.472s
	Processing time (w/o IO): 1.464s
	Processing time (w/o IO): 1.472s
	Processing time (w/o IO): 1.464s
	Processing time (w/o IO): 1.461s
	Processing time (w/o IO): 1.462s
	Processing time (w/o IO): 1.462s
	Processing time (w/o IO): 1.475s
	Processing time (w/o IO): 1.464s
	Processing time (w/o IO): 1.463s
	Processing time (w/o IO): 1.464s
	Processing time (w/o IO): 1.466s
	Processing time (w/o IO): 1.474s
	  Time (mean ± σ):      1.534 s ±  0.005 s    [User: 1.511 s, System: 0.023 s]
	  Range (min … max):    1.530 s …  1.543 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 352.1ms
	Processing time (w/o IO): 349.1ms
	Processing time (w/o IO): 351.8ms
	Processing time (w/o IO): 352.8ms
	Processing time (w/o IO): 357.6ms
	Processing time (w/o IO): 356.5ms
	Processing time (w/o IO): 354.5ms
	Processing time (w/o IO): 352.2ms
	Processing time (w/o IO): 353.6ms
	Processing time (w/o IO): 351.7ms
	Processing time (w/o IO): 353.7ms
	Processing time (w/o IO): 353.9ms
	Processing time (w/o IO): 352.9ms
	  Time (mean ± σ):     661.0 ms ±  34.7 ms    [User: 861.5 ms, System: 406.7 ms]
	  Range (min … max):   645.4 ms … 759.3 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 60.626382ms
	Processing time (w/o IO): 60.59778ms
	Processing time (w/o IO): 67.551153ms
	Processing time (w/o IO): 67.421348ms
	Processing time (w/o IO): 69.557533ms
	Processing time (w/o IO): 60.540978ms
	Processing time (w/o IO): 60.238167ms
	Processing time (w/o IO): 60.746986ms
	Processing time (w/o IO): 60.528177ms
	Processing time (w/o IO): 60.461375ms
	Processing time (w/o IO): 60.465975ms
	Processing time (w/o IO): 60.481476ms
	Processing time (w/o IO): 60.573679ms
	  Time (mean ± σ):     118.6 ms ±   7.9 ms    [User: 108.0 ms, System: 10.5 ms]
	  Range (min … max):   114.0 ms … 133.8 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 43ms
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 34ms
	Processing time (w/o IO): 34ms
	Processing time (w/o IO): 34ms
	Processing time (w/o IO): 34ms
	Processing time (w/o IO): 34ms
	Processing time (w/o IO): 34ms
	  Time (mean ± σ):      82.2 ms ±   0.5 ms    [User: 74.9 ms, System: 7.3 ms]
	  Range (min … max):    81.7 ms …  83.3 ms    10 runs
	 
Julia:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 23 milliseconds
	Processing time (w/o IO): 23 milliseconds
	Processing time (w/o IO): 22 milliseconds
	Processing time (w/o IO): 23 milliseconds
	Processing time (w/o IO): 23 milliseconds
	Processing time (w/o IO): 23 milliseconds
	Processing time (w/o IO): 23 milliseconds
	Processing time (w/o IO): 24 milliseconds
	Processing time (w/o IO): 23 milliseconds
	Processing time (w/o IO): 23 milliseconds
	Processing time (w/o IO): 23 milliseconds
	Processing time (w/o IO): 23 milliseconds
	Processing time (w/o IO): 23 milliseconds
	  Time (mean ± σ):      3.345 s ±  0.041 s    [User: 3.143 s, System: 0.202 s]
	  Range (min … max):    3.288 s …  3.426 s    10 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads auto related.jl
	Processing time (w/o IO): 15 milliseconds
	Processing time (w/o IO): 12 milliseconds
	Processing time (w/o IO): 13 milliseconds
	Processing time (w/o IO): 15 milliseconds
	Processing time (w/o IO): 12 milliseconds
	Processing time (w/o IO): 12 milliseconds
	Processing time (w/o IO): 12 milliseconds
	Processing time (w/o IO): 15 milliseconds
	Processing time (w/o IO): 12 milliseconds
	Processing time (w/o IO): 15 milliseconds
	Processing time (w/o IO): 12 milliseconds
	Processing time (w/o IO): 12 milliseconds
	Processing time (w/o IO): 12 milliseconds
	  Time (mean ± σ):      3.528 s ±  0.070 s    [User: 4.942 s, System: 0.210 s]
	  Range (min … max):    3.458 s …  3.709 s    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  41.378502ms
	Processing time (w/o IO):  41.010193ms
	Processing time (w/o IO):  42.005017ms
	Processing time (w/o IO):  42.723934ms
	Processing time (w/o IO):  41.905014ms
	Processing time (w/o IO):  41.904215ms
	Processing time (w/o IO):  41.459603ms
	Processing time (w/o IO):  41.288499ms
	Processing time (w/o IO):  40.87519ms
	Processing time (w/o IO):  41.255999ms
	Processing time (w/o IO):  41.74121ms
	Processing time (w/o IO):  41.352701ms
	Processing time (w/o IO):  41.247098ms
	  Time (mean ± σ):     264.0 ms ±   6.4 ms    [User: 255.7 ms, System: 8.2 ms]
	  Range (min … max):   260.1 ms … 281.3 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 52.252ms
	Processing time (w/o IO): 52.304ms
	Processing time (w/o IO): 52.296ms
	Processing time (w/o IO): 52.054ms
	Processing time (w/o IO): 52.283ms
	Processing time (w/o IO): 52.183ms
	Processing time (w/o IO): 52.297ms
	Processing time (w/o IO): 52.022ms
	Processing time (w/o IO): 52.135ms
	Processing time (w/o IO): 51.919ms
	Processing time (w/o IO): 52.184ms
	Processing time (w/o IO): 52.150ms
	Processing time (w/o IO): 52.305ms
	  Time (mean ± σ):     389.3 ms ±   2.5 ms    [User: 366.6 ms, System: 22.1 ms]
	  Range (min … max):   386.3 ms … 393.3 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 151ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 133ms
	Processing time (w/o IO): 133ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 133ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 146ms
	  Time (mean ± σ):     521.2 ms ±  17.6 ms    [User: 633.9 ms, System: 112.7 ms]
	  Range (min … max):   504.9 ms … 565.5 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 188ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 187ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 202ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 187ms
	Processing time (w/o IO): 186ms
	  Time (mean ± σ):     318.6 ms ±   4.9 ms    [User: 303.0 ms, System: 19.6 ms]
	  Range (min … max):   313.9 ms … 330.5 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 52.06108093261719ms
	Processing time (w/o IO): 52.392005920410156ms
	Processing time (w/o IO): 52.200913429260254ms
	Processing time (w/o IO): 51.760077476501465ms
	Processing time (w/o IO): 51.90896987915039ms
	Processing time (w/o IO): 51.71096324920654ms
	Processing time (w/o IO): 52.21998691558838ms
	Processing time (w/o IO): 52.4059534072876ms
	Processing time (w/o IO): 51.51998996734619ms
	Processing time (w/o IO): 51.635026931762695ms
	Processing time (w/o IO): 51.94902420043945ms
	Processing time (w/o IO): 51.83100700378418ms
	Processing time (w/o IO): 51.87797546386719ms
	  Time (mean ± σ):     418.9 ms ±  11.3 ms    [User: 358.0 ms, System: 34.7 ms]
	  Range (min … max):   406.1 ms … 440.1 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 31.87989ms
	Processing time (w/o IO): 32.621477ms
	Processing time (w/o IO): 31.982473ms
	Processing time (w/o IO): 32.151074ms
	Processing time (w/o IO): 33.923084ms
	Processing time (w/o IO): 32.392276ms
	Processing time (w/o IO): 32.206165ms
	Processing time (w/o IO): 31.833056ms
	Processing time (w/o IO): 31.816456ms
	Processing time (w/o IO): 32.483471ms
	Processing time (w/o IO): 32.887281ms
	Processing time (w/o IO): 32.457871ms
	Processing time (w/o IO): 32.587773ms
	  Time (mean ± σ):     404.5 ms ±  12.3 ms    [User: 429.1 ms, System: 45.9 ms]
	  Range (min … max):   391.4 ms … 429.8 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 188ms
	Processing time (w/o IO): 189ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 189ms
	Processing time (w/o IO): 197ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 184ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 192ms
	  Time (mean ± σ):     364.2 ms ±  11.3 ms    [User: 371.1 ms, System: 62.9 ms]
	  Range (min … max):   349.9 ms … 377.8 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 616ms
	Processing time (w/o IO): 705ms
	Processing time (w/o IO): 743ms
	Processing time (w/o IO): 742ms
	Processing time (w/o IO): 735ms
	Processing time (w/o IO): 715ms
	Processing time (w/o IO): 721ms
	Processing time (w/o IO): 718ms
	Processing time (w/o IO): 751ms
	Processing time (w/o IO): 743ms
	Processing time (w/o IO): 742ms
	Processing time (w/o IO): 647ms
	Processing time (w/o IO): 734ms
	  Time (mean ± σ):     781.6 ms ±  30.3 ms    [User: 799.5 ms, System: 39.7 ms]
	  Range (min … max):   702.5 ms … 808.1 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 201ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 199ms
	Processing time (w/o IO): 195ms
	Processing time (w/o IO): 199ms
	Processing time (w/o IO): 200ms
	Processing time (w/o IO): 195ms
	Processing time (w/o IO): 193ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 199ms
	Processing time (w/o IO): 195ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 193ms
	  Time (mean ± σ):     263.9 ms ±   3.1 ms    [User: 261.4 ms, System: 26.5 ms]
	  Range (min … max):   260.4 ms … 269.0 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 104 ms
	Processing time (w/o IO): 117 ms
	Processing time (w/o IO): 112 ms
	Processing time (w/o IO): 112 ms
	Processing time (w/o IO): 112 ms
	Processing time (w/o IO): 102 ms
	Processing time (w/o IO): 110 ms
	Processing time (w/o IO): 129 ms
	Processing time (w/o IO): 112 ms
	Processing time (w/o IO): 113 ms
	Processing time (w/o IO): 118 ms
	Processing time (w/o IO): 107 ms
	Processing time (w/o IO): 114 ms
	  Time (mean ± σ):     347.2 ms ±  17.2 ms    [User: 644.4 ms, System: 48.2 ms]
	  Range (min … max):   321.0 ms … 377.0 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 38 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 44 ms
	  Time (mean ± σ):      68.1 ms ±   3.5 ms    [User: 59.1 ms, System: 9.0 ms]
	  Range (min … max):    65.5 ms …  76.3 ms    10 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 49 ms
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 46 ms
	Processing time (w/o IO): 49 ms
	  Time (mean ± σ):      79.8 ms ±   2.3 ms    [User: 140.7 ms, System: 13.0 ms]
	  Range (min … max):    76.4 ms …  82.9 ms    10 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 31ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 31ms
	Processing time (w/o IO): 31ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 31ms
	Processing time (w/o IO): 31ms
	  Time (mean ± σ):      58.8 ms ±   0.7 ms    [User: 44.8 ms, System: 14.0 ms]
	  Range (min … max):    58.0 ms …  60.3 ms    10 runs
	 
F#:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 45ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 41ms
	  Time (mean ± σ):     292.0 ms ±   8.0 ms    [User: 228.8 ms, System: 44.9 ms]
	  Range (min … max):   283.5 ms … 307.3 ms    10 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net7.0/fsharp_con
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 34ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 37ms
	Processing time (w/o IO): 35ms
	  Time (mean ± σ):     820.7 ms ±  21.0 ms    [User: 831.2 ms, System: 65.9 ms]
	  Range (min … max):   806.8 ms … 870.8 ms    10 runs
	 
C#:

	Benchmark 1: ./bin/release/net7.0/publish/related
	Processing time (w/o IO): 45.2722ms
	Processing time (w/o IO): 44.893ms
	Processing time (w/o IO): 44.9298ms
	Processing time (w/o IO): 45.0293ms
	Processing time (w/o IO): 45.1479ms
	Processing time (w/o IO): 45.0645ms
	Processing time (w/o IO): 44.9989ms
	Processing time (w/o IO): 44.9596ms
	Processing time (w/o IO): 45.1906ms
	Processing time (w/o IO): 45.0413ms
	Processing time (w/o IO): 46.2525ms
	Processing time (w/o IO): 45.0114ms
	Processing time (w/o IO): 45.0929ms
	  Time (mean ± σ):      91.0 ms ±   1.3 ms    [User: 84.0 ms, System: 17.3 ms]
	  Range (min … max):    88.8 ms …  93.1 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	93.234062194824	ms
	Processing time (w/o IO):	116.08600616455	ms
	Processing time (w/o IO):	114.84909057617	ms
	Processing time (w/o IO):	109.20405387878	ms
	Processing time (w/o IO):	116.8749332428	ms
	Processing time (w/o IO):	116.42694473267	ms
	Processing time (w/o IO):	93.954086303711	ms
	Processing time (w/o IO):	115.47994613647	ms
	Processing time (w/o IO):	92.198133468628	ms
	Processing time (w/o IO):	108.95609855652	ms
	Processing time (w/o IO):	108.65688323975	ms
	Processing time (w/o IO):	116.33205413818	ms
	Processing time (w/o IO):	114.37582969666	ms
	  Time (mean ± σ):     367.0 ms ±   8.7 ms    [User: 345.1 ms, System: 21.8 ms]
	  Range (min … max):   354.1 ms … 381.0 ms    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1091.4120674133	ms
	Processing time (w/o IO):	1108.4270477295	ms
	Processing time (w/o IO):	1089.1120433807	ms
	Processing time (w/o IO):	1092.0820236206	ms
	Processing time (w/o IO):	1092.8890705109	ms
	Processing time (w/o IO):	1089.0128612518	ms
	Processing time (w/o IO):	1091.9868946075	ms
	Processing time (w/o IO):	1091.8538570404	ms
	Processing time (w/o IO):	1088.2470607758	ms
	Processing time (w/o IO):	1110.4040145874	ms
	Processing time (w/o IO):	1091.6759967804	ms
	Processing time (w/o IO):	1111.9799613953	ms
	Processing time (w/o IO):	1089.8559093475	ms
	  Time (mean ± σ):      1.532 s ±  0.011 s    [User: 1.517 s, System: 0.015 s]
	  Range (min … max):    1.522 s …  1.551 s    10 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 150ms
	Processing time (w/o IO): 150ms
	Processing time (w/o IO): 151ms
	Processing time (w/o IO): 150ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 149ms
	Processing time (w/o IO): 150ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 150ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 146ms
	  Time (mean ± σ):     237.7 ms ±   2.6 ms    [User: 212.2 ms, System: 25.5 ms]
	  Range (min … max):   233.3 ms … 240.7 ms    10 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 213.166827ms
	Processing time (w/o IO): 211.652409ms
	Processing time (w/o IO): 229.47232ms
	  Time (mean ± σ):     348.3 ms ±  27.8 ms    [User: 358.3 ms, System: 21.5 ms]
	  Range (min … max):   328.6 ms … 367.9 ms    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 110.094305ms
	Processing time (w/o IO): 104.644741ms
	Processing time (w/o IO): 97.968061ms
	  Time (mean ± σ):     217.3 ms ±  10.6 ms    [User: 496.9 ms, System: 23.2 ms]
	  Range (min … max):   209.8 ms … 224.8 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 220.891751ms
	Processing time (w/o IO): 220.846607ms
	Processing time (w/o IO): 221.351113ms
	  Time (mean ± σ):     276.8 ms ±   0.7 ms    [User: 261.6 ms, System: 15.2 ms]
	  Range (min … max):   276.3 ms … 277.3 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 177.711439ms
	Processing time (w/o IO): 177.610638ms
	Processing time (w/o IO): 178.338547ms
	  Time (mean ± σ):     231.2 ms ±   1.0 ms    [User: 388.3 ms, System: 17.5 ms]
	  Range (min … max):   230.4 ms … 231.9 ms    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 13.184s
	Processing time (w/o IO): 13.339s
	Processing time (w/o IO): 13.215s
	  Time (mean ± σ):     13.409 s ±  0.083 s    [User: 13.361 s, System: 0.044 s]
	  Range (min … max):   13.350 s … 13.468 s    2 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 2.830s
	Processing time (w/o IO): 2.787s
	Processing time (w/o IO): 2.790s
	  Time (mean ± σ):      3.177 s ±  0.009 s    [User: 3.016 s, System: 0.753 s]
	  Range (min … max):    3.170 s …  3.183 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 525.1574ms
	Processing time (w/o IO): 526.00751ms
	Processing time (w/o IO): 527.048853ms
	  Time (mean ± σ):     695.5 ms ±   1.1 ms    [User: 662.1 ms, System: 33.3 ms]
	  Range (min … max):   694.7 ms … 696.3 ms    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 299ms
	Processing time (w/o IO): 319ms
	Processing time (w/o IO): 328ms
	  Time (mean ± σ):     483.0 ms ±   8.8 ms    [User: 469.3 ms, System: 13.6 ms]
	  Range (min … max):   476.8 ms … 489.2 ms    2 runs
	 
Julia:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 190 milliseconds
	Processing time (w/o IO): 190 milliseconds
	Processing time (w/o IO): 189 milliseconds
	  Time (mean ± σ):      3.714 s ±  0.040 s    [User: 3.511 s, System: 0.200 s]
	  Range (min … max):    3.686 s …  3.742 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads auto related.jl
	Processing time (w/o IO): 94 milliseconds
	Processing time (w/o IO): 98 milliseconds
	Processing time (w/o IO): 94 milliseconds
	  Time (mean ± σ):      3.729 s ±  0.018 s    [User: 5.530 s, System: 0.214 s]
	  Range (min … max):    3.717 s …  3.742 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  328.253902ms
	Processing time (w/o IO):  358.288186ms
	Processing time (w/o IO):  328.971911ms
	  Time (mean ± σ):     944.5 ms ±  35.3 ms    [User: 914.7 ms, System: 27.3 ms]
	  Range (min … max):   919.6 ms … 969.5 ms    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 436.750ms
	Processing time (w/o IO): 435.328ms
	Processing time (w/o IO): 436.348ms
	  Time (mean ± σ):      3.967 s ±  0.014 s    [User: 3.893 s, System: 0.072 s]
	  Range (min … max):    3.958 s …  3.977 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 1214ms
	Processing time (w/o IO): 1220ms
	Processing time (w/o IO): 1218ms
	  Time (mean ± σ):      1.791 s ±  0.010 s    [User: 1.980 s, System: 0.143 s]
	  Range (min … max):    1.784 s …  1.799 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 1626ms
	Processing time (w/o IO): 1621ms
	Processing time (w/o IO): 1626ms
	  Time (mean ± σ):      2.006 s ±  0.002 s    [User: 1.974 s, System: 0.044 s]
	  Range (min … max):    2.005 s …  2.008 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 409.1320037841797ms
	Processing time (w/o IO): 411.6860628128052ms
	Processing time (w/o IO): 412.64498233795166ms
	  Time (mean ± σ):      1.460 s ±  0.017 s    [User: 1.305 s, System: 0.115 s]
	  Range (min … max):    1.447 s …  1.472 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 228.808049ms
	Processing time (w/o IO): 228.450745ms
	Processing time (w/o IO): 228.958784ms
	  Time (mean ± σ):      1.301 s ±  0.014 s    [User: 1.821 s, System: 0.107 s]
	  Range (min … max):    1.291 s …  1.312 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 1598ms
	Processing time (w/o IO): 1596ms
	Processing time (w/o IO): 1596ms
	  Time (mean ± σ):      1.886 s ±  0.006 s    [User: 1.903 s, System: 0.084 s]
	  Range (min … max):    1.882 s …  1.891 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 6567ms
	Processing time (w/o IO): 6583ms
	Processing time (w/o IO): 6253ms
	  Time (mean ± σ):      6.541 s ±  0.231 s    [User: 6.563 s, System: 0.068 s]
	  Range (min … max):    6.378 s …  6.705 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 1555ms
	Processing time (w/o IO): 1553ms
	Processing time (w/o IO): 1595ms
	  Time (mean ± σ):      1.872 s ±  0.018 s    [User: 1.717 s, System: 0.059 s]
	  Range (min … max):    1.859 s …  1.885 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 512 ms
	Processing time (w/o IO): 537 ms
	Processing time (w/o IO): 519 ms
	  Time (mean ± σ):     825.3 ms ±   7.8 ms    [User: 1366.2 ms, System: 78.0 ms]
	  Range (min … max):   819.8 ms … 830.7 ms    2 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 262 ms
	Processing time (w/o IO): 262 ms
	Processing time (w/o IO): 262 ms
	  Time (mean ± σ):     339.9 ms ±   0.2 ms    [User: 310.5 ms, System: 29.5 ms]
	  Range (min … max):   339.7 ms … 340.0 ms    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 273 ms
	Processing time (w/o IO): 280 ms
	Processing time (w/o IO): 272 ms
	  Time (mean ± σ):     347.7 ms ±   4.1 ms    [User: 765.7 ms, System: 27.2 ms]
	  Range (min … max):   344.8 ms … 350.5 ms    2 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 285ms
	Processing time (w/o IO): 282ms
	Processing time (w/o IO): 288ms
	  Time (mean ± σ):     364.7 ms ±   6.9 ms    [User: 338.1 ms, System: 26.5 ms]
	  Range (min … max):   359.8 ms … 369.6 ms    2 runs
	 
F#:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 379ms
	Processing time (w/o IO): 402ms
	Processing time (w/o IO): 360ms
	  Time (mean ± σ):     826.7 ms ±  57.9 ms    [User: 764.7 ms, System: 59.6 ms]
	  Range (min … max):   785.8 ms … 867.7 ms    2 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net7.0/fsharp_con
	Processing time (w/o IO): 166ms
	Processing time (w/o IO): 174ms
	Processing time (w/o IO): 165ms
	  Time (mean ± σ):      2.071 s ±  0.005 s    [User: 2.503 s, System: 0.145 s]
	  Range (min … max):    2.067 s …  2.074 s    2 runs
	 
C#:

	Benchmark 1: ./bin/release/net7.0/publish/related
	Processing time (w/o IO): 372.7514ms
	Processing time (w/o IO): 369.1324ms
	Processing time (w/o IO): 369.1987ms
	  Time (mean ± σ):     511.5 ms ±   0.6 ms    [User: 496.6 ms, System: 41.5 ms]
	  Range (min … max):   511.0 ms … 512.0 ms    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	862.12801933289	ms
	Processing time (w/o IO):	919.2328453064	ms
	Processing time (w/o IO):	836.08484268188	ms
	  Time (mean ± σ):      1.805 s ±  0.052 s    [User: 1.742 s, System: 0.064 s]
	  Range (min … max):    1.768 s …  1.842 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	9459.5789909363	ms
	Processing time (w/o IO):	9452.7959823608	ms
	Processing time (w/o IO):	9525.5720615387	ms
	  Time (mean ± σ):     10.917 s ±  0.084 s    [User: 10.870 s, System: 0.041 s]
	  Range (min … max):   10.858 s … 10.976 s    2 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 1563ms
	Processing time (w/o IO): 1629ms
	Processing time (w/o IO): 1579ms
	  Time (mean ± σ):      1.944 s ±  0.040 s    [User: 1.864 s, System: 0.077 s]
	  Range (min … max):    1.915 s …  1.972 s    2 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 828.942849ms
	Processing time (w/o IO): 827.266514ms
	Processing time (w/o IO): 889.713743ms
	  Time (mean ± σ):      1.111 s ±  0.058 s    [User: 1.132 s, System: 0.050 s]
	  Range (min … max):    1.070 s …  1.153 s    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 363.671143ms
	Processing time (w/o IO): 362.985428ms
	Processing time (w/o IO): 383.27606ms
	  Time (mean ± σ):     608.7 ms ±  16.7 ms    [User: 1690.9 ms, System: 51.5 ms]
	  Range (min … max):   596.9 ms … 620.5 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 876.592064ms
	Processing time (w/o IO): 867.420305ms
	Processing time (w/o IO): 867.429705ms
	  Time (mean ± σ):     984.1 ms ±   0.7 ms    [User: 944.6 ms, System: 39.4 ms]
	  Range (min … max):   983.6 ms … 984.6 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 689.271225ms
	Processing time (w/o IO): 688.603911ms
	Processing time (w/o IO): 689.258225ms
	  Time (mean ± σ):     800.9 ms ±   3.1 ms    [User: 1451.9 ms, System: 33.3 ms]
	  Range (min … max):   798.7 ms … 803.1 ms    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 53.835s
	Processing time (w/o IO): 53.356s
	Processing time (w/o IO): 54.799s
	  Time (mean ± σ):     54.325 s ±  1.021 s    [User: 54.257 s, System: 0.060 s]
	  Range (min … max):   53.603 s … 55.047 s    2 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 12.368s
	Processing time (w/o IO): 11.919s
	Processing time (w/o IO): 11.761s
	  Time (mean ± σ):     12.484 s ±  0.210 s    [User: 10.172 s, System: 2.846 s]
	  Range (min … max):   12.335 s … 12.633 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 2082.901953ms
	Processing time (w/o IO): 2077.267775ms
	Processing time (w/o IO): 2076.388063ms
	  Time (mean ± σ):      2.427 s ±  0.003 s    [User: 2.363 s, System: 0.060 s]
	  Range (min … max):    2.425 s …  2.429 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 1234ms
	Processing time (w/o IO): 1181ms
	Processing time (w/o IO): 1183ms
	  Time (mean ± σ):      1.478 s ±  0.001 s    [User: 1.445 s, System: 0.030 s]
	  Range (min … max):    1.477 s …  1.478 s    2 runs
	 
Julia:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 745 milliseconds
	Processing time (w/o IO): 745 milliseconds
	Processing time (w/o IO): 744 milliseconds
	  Time (mean ± σ):      5.003 s ±  0.021 s    [User: 4.763 s, System: 0.238 s]
	  Range (min … max):    4.988 s …  5.018 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads auto related.jl
	Processing time (w/o IO): 357 milliseconds
	Processing time (w/o IO): 356 milliseconds
	Processing time (w/o IO): 425 milliseconds
	  Time (mean ± σ):      4.381 s ±  0.044 s    [User: 7.703 s, System: 0.232 s]
	  Range (min … max):    4.350 s …  4.412 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  1.530894499s
	Processing time (w/o IO):  1.525771382s
	Processing time (w/o IO):  1.536974435s
	  Time (mean ± σ):      2.711 s ±  0.003 s    [User: 2.667 s, System: 0.042 s]
	  Range (min … max):    2.709 s …  2.713 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 1.686s
	Processing time (w/o IO): 1.684s
	Processing time (w/o IO): 1.685s
	  Time (mean ± σ):     17.851 s ±  0.023 s    [User: 17.641 s, System: 0.204 s]
	  Range (min … max):   17.834 s … 17.867 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 4713ms
	Processing time (w/o IO): 5329ms
	Processing time (w/o IO): 5230ms
	  Time (mean ± σ):      6.166 s ±  0.081 s    [User: 6.388 s, System: 0.172 s]
	  Range (min … max):    6.109 s …  6.223 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 6508ms
	Processing time (w/o IO): 6493ms
	Processing time (w/o IO): 6470ms
	  Time (mean ± σ):      7.228 s ±  0.018 s    [User: 7.192 s, System: 0.079 s]
	  Range (min … max):    7.216 s …  7.241 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 1679.742932319641ms
	Processing time (w/o IO): 1580.407977104187ms
	Processing time (w/o IO): 1579.7001123428345ms
	  Time (mean ± σ):      4.026 s ±  0.018 s    [User: 3.418 s, System: 0.174 s]
	  Range (min … max):    4.013 s …  4.040 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 901.867626ms
	Processing time (w/o IO): 856.432974ms
	Processing time (w/o IO): 863.183325ms
	  Time (mean ± σ):      3.350 s ±  0.007 s    [User: 5.256 s, System: 0.159 s]
	  Range (min … max):    3.345 s …  3.354 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 5385ms
	Processing time (w/o IO): 5490ms
	Processing time (w/o IO): 5378ms
	  Time (mean ± σ):      5.917 s ±  0.093 s    [User: 5.944 s, System: 0.125 s]
	  Range (min … max):    5.851 s …  5.983 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 26191ms
	Processing time (w/o IO): 24431ms
	Processing time (w/o IO): 26090ms
	  Time (mean ± σ):     25.497 s ±  1.174 s    [User: 25.563 s, System: 0.085 s]
	  Range (min … max):   24.667 s … 26.328 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 5047ms
	Processing time (w/o IO): 5048ms
	Processing time (w/o IO): 5033ms
	  Time (mean ± σ):      5.292 s ±  0.010 s    [User: 5.299 s, System: 0.095 s]
	  Range (min … max):    5.285 s …  5.299 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 1769 ms
	Processing time (w/o IO): 1759 ms
	Processing time (w/o IO): 1820 ms
	  Time (mean ± σ):      2.163 s ±  0.038 s    [User: 2.778 s, System: 0.112 s]
	  Range (min … max):    2.136 s …  2.190 s    2 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 1040 ms
	Processing time (w/o IO): 987 ms
	Processing time (w/o IO): 988 ms
	  Time (mean ± σ):      1.140 s ±  0.001 s    [User: 1.085 s, System: 0.053 s]
	  Range (min … max):    1.139 s …  1.141 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 1059 ms
	Processing time (w/o IO): 1028 ms
	Processing time (w/o IO): 1101 ms
	  Time (mean ± σ):      1.219 s ±  0.052 s    [User: 2.952 s, System: 0.046 s]
	  Range (min … max):    1.183 s …  1.256 s    2 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 1966ms
	Processing time (w/o IO): 1973ms
	Processing time (w/o IO): 1984ms
	  Time (mean ± σ):      2.143 s ±  0.007 s    [User: 2.107 s, System: 0.033 s]
	  Range (min … max):    2.139 s …  2.148 s    2 runs
	 
F#:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 1374ms
	Processing time (w/o IO): 1377ms
	Processing time (w/o IO): 1374ms
	  Time (mean ± σ):      2.014 s ±  0.002 s    [User: 1.950 s, System: 0.086 s]
	  Range (min … max):    2.013 s …  2.016 s    2 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net7.0/fsharp_con
	Processing time (w/o IO): 623ms
	Processing time (w/o IO): 713ms
	Processing time (w/o IO): 608ms
	  Time (mean ± σ):      4.115 s ±  0.098 s    [User: 6.003 s, System: 0.202 s]
	  Range (min … max):    4.045 s …  4.184 s    2 runs
	 
C#:

	Benchmark 1: ./bin/release/net7.0/publish/related
	Processing time (w/o IO): 1446.7805ms
	Processing time (w/o IO): 1443.3812ms
	Processing time (w/o IO): 1445.8011ms
	  Time (mean ± σ):      1.728 s ±  0.000 s    [User: 1.719 s, System: 0.067 s]
	  Range (min … max):    1.728 s …  1.729 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	3113.5020256042	ms
	Processing time (w/o IO):	3326.516866684	ms
	Processing time (w/o IO):	3155.5399894714	ms
	  Time (mean ± σ):      5.279 s ±  0.083 s    [User: 5.174 s, System: 0.100 s]
	  Range (min … max):    5.220 s …  5.338 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	37470.153808594	ms
	Processing time (w/o IO):	37444.811105728	ms
	Processing time (w/o IO):	37445.767879486	ms
	  Time (mean ± σ):     40.422 s ±  0.018 s    [User: 40.344 s, System: 0.071 s]
	  Range (min … max):   40.409 s … 40.435 s    2 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 7033ms
	Processing time (w/o IO): 7095ms
	Processing time (w/o IO): 7129ms
	  Time (mean ± σ):      7.822 s ±  0.020 s    [User: 7.441 s, System: 0.378 s]
	  Range (min … max):    7.808 s …  7.836 s    2 runs
	 
