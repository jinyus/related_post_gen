Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 24.432847ms
	Processing time (w/o IO): 24.213239ms
	Processing time (w/o IO): 24.790257ms
	Processing time (w/o IO): 24.184439ms
	Processing time (w/o IO): 24.449347ms
	Processing time (w/o IO): 24.273742ms
	Processing time (w/o IO): 24.603952ms
	Processing time (w/o IO): 24.262841ms
	Processing time (w/o IO): 24.148438ms
	Processing time (w/o IO): 24.753156ms
	Processing time (w/o IO): 25.721786ms
	Processing time (w/o IO): 25.253872ms
	Processing time (w/o IO): 24.068936ms
	  Time (mean ± σ):      64.3 ms ±   1.1 ms    [User: 59.6 ms, System: 13.3 ms]
	  Range (min … max):    62.7 ms …  66.0 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 16.966519ms
	Processing time (w/o IO): 16.313399ms
	Processing time (w/o IO): 16.759312ms
	Processing time (w/o IO): 16.669309ms
	Processing time (w/o IO): 16.219596ms
	Processing time (w/o IO): 16.010289ms
	Processing time (w/o IO): 16.928217ms
	Processing time (w/o IO): 16.438402ms
	Processing time (w/o IO): 16.3602ms
	Processing time (w/o IO): 18.053451ms
	Processing time (w/o IO): 16.921317ms
	Processing time (w/o IO): 16.972519ms
	Processing time (w/o IO): 16.652009ms
	  Time (mean ± σ):      56.1 ms ±   0.8 ms    [User: 97.2 ms, System: 9.8 ms]
	  Range (min … max):    55.0 ms …  57.4 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 24.098136ms
	Processing time (w/o IO): 24.21334ms
	Processing time (w/o IO): 23.90123ms
	Processing time (w/o IO): 23.821027ms
	Processing time (w/o IO): 23.830127ms
	Processing time (w/o IO): 23.91683ms
	Processing time (w/o IO): 24.129937ms
	Processing time (w/o IO): 23.845528ms
	Processing time (w/o IO): 24.129736ms
	Processing time (w/o IO): 24.580251ms
	Processing time (w/o IO): 23.809227ms
	Processing time (w/o IO): 24.116936ms
	Processing time (w/o IO): 24.182038ms
	  Time (mean ± σ):      42.5 ms ±   1.0 ms    [User: 34.6 ms, System: 7.9 ms]
	  Range (min … max):    41.4 ms …  44.4 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 20.650428ms
	Processing time (w/o IO): 20.550826ms
	Processing time (w/o IO): 20.504225ms
	Processing time (w/o IO): 20.471125ms
	Processing time (w/o IO): 20.600927ms
	Processing time (w/o IO): 20.524925ms
	Processing time (w/o IO): 20.416024ms
	Processing time (w/o IO): 20.564326ms
	Processing time (w/o IO): 20.633328ms
	Processing time (w/o IO): 20.603127ms
	Processing time (w/o IO): 20.708429ms
	Processing time (w/o IO): 20.563026ms
	Processing time (w/o IO): 20.495925ms
	  Time (mean ± σ):      38.4 ms ±   0.4 ms    [User: 49.3 ms, System: 8.1 ms]
	  Range (min … max):    37.8 ms …  39.2 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 1.475s
	Processing time (w/o IO): 1.463s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.473s
	Processing time (w/o IO): 1.463s
	Processing time (w/o IO): 1.463s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.463s
	Processing time (w/o IO): 1.459s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.467s
	Processing time (w/o IO): 1.469s
	Processing time (w/o IO): 1.460s
	  Time (mean ± σ):      1.533 s ±  0.005 s    [User: 1.515 s, System: 0.018 s]
	  Range (min … max):    1.527 s …  1.544 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 350.4ms
	Processing time (w/o IO): 351.8ms
	Processing time (w/o IO): 359.2ms
	Processing time (w/o IO): 352.0ms
	Processing time (w/o IO): 370.4ms
	Processing time (w/o IO): 352.6ms
	Processing time (w/o IO): 351.6ms
	Processing time (w/o IO): 352.2ms
	Processing time (w/o IO): 353.3ms
	Processing time (w/o IO): 352.2ms
	Processing time (w/o IO): 442.8ms
	Processing time (w/o IO): 356.1ms
	Processing time (w/o IO): 353.2ms
	  Time (mean ± σ):     661.3 ms ±  34.3 ms    [User: 811.6 ms, System: 440.0 ms]
	  Range (min … max):   642.8 ms … 753.7 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 65.866707ms
	Processing time (w/o IO): 65.5617ms
	Processing time (w/o IO): 63.069635ms
	Processing time (w/o IO): 69.617705ms
	Processing time (w/o IO): 63.120536ms
	Processing time (w/o IO): 62.573922ms
	Processing time (w/o IO): 62.959633ms
	Processing time (w/o IO): 67.842059ms
	Processing time (w/o IO): 60.746474ms
	Processing time (w/o IO): 60.649473ms
	Processing time (w/o IO): 60.242462ms
	Processing time (w/o IO): 60.334264ms
	Processing time (w/o IO): 60.461868ms
	  Time (mean ± σ):     120.5 ms ±   6.5 ms    [User: 110.7 ms, System: 9.8 ms]
	  Range (min … max):   114.4 ms … 131.9 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 34ms
	Processing time (w/o IO): 34ms
	Processing time (w/o IO): 34ms
	Processing time (w/o IO): 34ms
	Processing time (w/o IO): 34ms
	Processing time (w/o IO): 34ms
	Processing time (w/o IO): 34ms
	Processing time (w/o IO): 34ms
	Processing time (w/o IO): 34ms
	Processing time (w/o IO): 34ms
	Processing time (w/o IO): 34ms
	Processing time (w/o IO): 34ms
	Processing time (w/o IO): 34ms
	  Time (mean ± σ):      81.8 ms ±   1.1 ms    [User: 73.5 ms, System: 8.2 ms]
	  Range (min … max):    81.2 ms …  84.8 ms    10 runs
	 
Julia:

	Benchmark 1: julia related.jl
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
	Processing time (w/o IO): 23 milliseconds
	Processing time (w/o IO): 23 milliseconds
	Processing time (w/o IO): 23 milliseconds
	  Time (mean ± σ):      3.394 s ±  0.027 s    [User: 3.213 s, System: 0.181 s]
	  Range (min … max):    3.362 s …  3.442 s    10 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads auto related.jl
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 19 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 19 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 20 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 20 milliseconds
	Processing time (w/o IO): 15 milliseconds
	Processing time (w/o IO): 15 milliseconds
	Processing time (w/o IO): 19 milliseconds
	  Time (mean ± σ):      3.702 s ±  0.060 s    [User: 5.694 s, System: 0.221 s]
	  Range (min … max):    3.647 s …  3.845 s    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  41.674891ms
	Processing time (w/o IO):  41.060978ms
	Processing time (w/o IO):  41.136379ms
	Processing time (w/o IO):  41.815494ms
	Processing time (w/o IO):  41.273682ms
	Processing time (w/o IO):  41.636491ms
	Processing time (w/o IO):  41.318984ms
	Processing time (w/o IO):  41.878596ms
	Processing time (w/o IO):  41.401485ms
	Processing time (w/o IO):  41.492487ms
	Processing time (w/o IO):  41.388185ms
	Processing time (w/o IO):  41.323484ms
	Processing time (w/o IO):  41.61119ms
	  Time (mean ± σ):     262.2 ms ±   1.0 ms    [User: 253.3 ms, System: 8.8 ms]
	  Range (min … max):   261.0 ms … 264.8 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 53.071ms
	Processing time (w/o IO): 53.013ms
	Processing time (w/o IO): 52.837ms
	Processing time (w/o IO): 52.928ms
	Processing time (w/o IO): 52.793ms
	Processing time (w/o IO): 52.706ms
	Processing time (w/o IO): 52.883ms
	Processing time (w/o IO): 52.785ms
	Processing time (w/o IO): 52.772ms
	Processing time (w/o IO): 52.713ms
	Processing time (w/o IO): 53.147ms
	Processing time (w/o IO): 52.786ms
	Processing time (w/o IO): 53.048ms
	  Time (mean ± σ):     387.6 ms ±   2.1 ms    [User: 361.8 ms, System: 25.7 ms]
	  Range (min … max):   385.4 ms … 391.8 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 134ms
	Processing time (w/o IO): 133ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 134ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 133ms
	Processing time (w/o IO): 133ms
	Processing time (w/o IO): 134ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 134ms
	Processing time (w/o IO): 149ms
	  Time (mean ± σ):     537.7 ms ±  15.6 ms    [User: 673.6 ms, System: 108.4 ms]
	  Range (min … max):   519.8 ms … 569.9 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 188ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 188ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 188ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 187ms
	Processing time (w/o IO): 186ms
	  Time (mean ± σ):     319.6 ms ±   1.1 ms    [User: 300.4 ms, System: 24.4 ms]
	  Range (min … max):   318.3 ms … 321.9 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 53.06100845336914ms
	Processing time (w/o IO): 53.26700210571289ms
	Processing time (w/o IO): 52.76501178741455ms
	Processing time (w/o IO): 53.240060806274414ms
	Processing time (w/o IO): 59.8750114440918ms
	Processing time (w/o IO): 61.13600730895996ms
	Processing time (w/o IO): 53.20405960083008ms
	Processing time (w/o IO): 52.809953689575195ms
	Processing time (w/o IO): 52.903056144714355ms
	Processing time (w/o IO): 52.970051765441895ms
	Processing time (w/o IO): 52.80709266662598ms
	Processing time (w/o IO): 52.82294750213623ms
	Processing time (w/o IO): 52.99806594848633ms
	  Time (mean ± σ):     428.6 ms ±  24.3 ms    [User: 378.8 ms, System: 33.3 ms]
	  Range (min … max):   411.2 ms … 476.2 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 32.740795ms
	Processing time (w/o IO): 34.198427ms
	Processing time (w/o IO): 32.785696ms
	Processing time (w/o IO): 32.578992ms
	Processing time (w/o IO): 32.604784ms
	Processing time (w/o IO): 32.102973ms
	Processing time (w/o IO): 31.284656ms
	Processing time (w/o IO): 32.675785ms
	Processing time (w/o IO): 33.581604ms
	Processing time (w/o IO): 33.607405ms
	Processing time (w/o IO): 33.270997ms
	Processing time (w/o IO): 33.748808ms
	Processing time (w/o IO): 34.201617ms
	  Time (mean ± σ):     413.3 ms ±  56.0 ms    [User: 438.7 ms, System: 32.8 ms]
	  Range (min … max):   388.8 ms … 572.1 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 182ms
	Processing time (w/o IO): 181ms
	Processing time (w/o IO): 190ms
	Processing time (w/o IO): 184ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 184ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 182ms
	Processing time (w/o IO): 182ms
	Processing time (w/o IO): 180ms
	Processing time (w/o IO): 187ms
	  Time (mean ± σ):     365.1 ms ±  10.4 ms    [User: 371.3 ms, System: 61.7 ms]
	  Range (min … max):   356.6 ms … 391.6 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 776ms
	Processing time (w/o IO): 719ms
	Processing time (w/o IO): 737ms
	Processing time (w/o IO): 710ms
	Processing time (w/o IO): 789ms
	Processing time (w/o IO): 713ms
	Processing time (w/o IO): 741ms
	Processing time (w/o IO): 774ms
	Processing time (w/o IO): 708ms
	Processing time (w/o IO): 607ms
	Processing time (w/o IO): 718ms
	Processing time (w/o IO): 706ms
	Processing time (w/o IO): 738ms
	  Time (mean ± σ):     778.4 ms ±  49.2 ms    [User: 795.0 ms, System: 39.8 ms]
	  Range (min … max):   663.8 ms … 844.8 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 196ms
	Processing time (w/o IO): 193ms
	Processing time (w/o IO): 195ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 199ms
	Processing time (w/o IO): 196ms
	Processing time (w/o IO): 198ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 196ms
	Processing time (w/o IO): 193ms
	Processing time (w/o IO): 193ms
	Processing time (w/o IO): 194ms
	  Time (mean ± σ):     264.8 ms ±   2.4 ms    [User: 257.1 ms, System: 30.9 ms]
	  Range (min … max):   261.0 ms … 268.5 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 105 ms
	Processing time (w/o IO): 106 ms
	Processing time (w/o IO): 111 ms
	Processing time (w/o IO): 104 ms
	Processing time (w/o IO): 113 ms
	Processing time (w/o IO): 105 ms
	Processing time (w/o IO): 114 ms
	Processing time (w/o IO): 104 ms
	Processing time (w/o IO): 115 ms
	Processing time (w/o IO): 115 ms
	Processing time (w/o IO): 116 ms
	Processing time (w/o IO): 116 ms
	Processing time (w/o IO): 121 ms
	  Time (mean ± σ):     345.1 ms ±  10.3 ms    [User: 653.4 ms, System: 46.8 ms]
	  Range (min … max):   328.9 ms … 361.5 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 37 ms
	  Time (mean ± σ):      67.4 ms ±   0.5 ms    [User: 55.7 ms, System: 11.8 ms]
	  Range (min … max):    66.6 ms …  68.2 ms    10 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 38 ms
	  Time (mean ± σ):      69.1 ms ±   1.0 ms    [User: 115.8 ms, System: 12.1 ms]
	  Range (min … max):    67.3 ms …  70.5 ms    10 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 33ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 33ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 33ms
	Processing time (w/o IO): 33ms
	Processing time (w/o IO): 33ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 33ms
	Processing time (w/o IO): 33ms
	Processing time (w/o IO): 33ms
	  Time (mean ± σ):      61.1 ms ±   0.7 ms    [User: 51.2 ms, System: 10.0 ms]
	  Range (min … max):    60.2 ms …  62.3 ms    10 runs
	 
F#:

	Benchmark 1: ./bin/release/net7.0/fsharp
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
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 45ms
	  Time (mean ± σ):     295.7 ms ±   8.6 ms    [User: 237.2 ms, System: 40.6 ms]
	  Range (min … max):   288.5 ms … 318.6 ms    10 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net7.0/fsharp_con
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 34ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 37ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 37ms
	  Time (mean ± σ):     836.5 ms ±   4.0 ms    [User: 851.9 ms, System: 63.9 ms]
	  Range (min … max):   829.9 ms … 841.6 ms    10 runs
	 
C#:

	Benchmark 1: ./bin/release/net7.0/publish/related
	Processing time (w/o IO): 45.0493ms
	Processing time (w/o IO): 45.1571ms
	Processing time (w/o IO): 45.3928ms
	Processing time (w/o IO): 45.1087ms
	Processing time (w/o IO): 45.1013ms
	Processing time (w/o IO): 46.2048ms
	Processing time (w/o IO): 45.3745ms
	Processing time (w/o IO): 45.0054ms
	Processing time (w/o IO): 45.1106ms
	Processing time (w/o IO): 45.3154ms
	Processing time (w/o IO): 45.4206ms
	Processing time (w/o IO): 45.6563ms
	Processing time (w/o IO): 45.3972ms
	  Time (mean ± σ):      92.4 ms ±   1.8 ms    [User: 85.3 ms, System: 17.3 ms]
	  Range (min … max):    90.0 ms …  95.3 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	96.147775650024	ms
	Processing time (w/o IO):	95.063924789429	ms
	Processing time (w/o IO):	95.163106918335	ms
	Processing time (w/o IO):	118.87001991272	ms
	Processing time (w/o IO):	95.42989730835	ms
	Processing time (w/o IO):	94.852924346924	ms
	Processing time (w/o IO):	94.697952270508	ms
	Processing time (w/o IO):	94.192981719971	ms
	Processing time (w/o IO):	118.46899986267	ms
	Processing time (w/o IO):	118.4720993042	ms
	Processing time (w/o IO):	111.21392250061	ms
	Processing time (w/o IO):	119.549036026	ms
	Processing time (w/o IO):	119.26484107971	ms
	  Time (mean ± σ):     385.1 ms ±  13.6 ms    [User: 366.1 ms, System: 18.9 ms]
	  Range (min … max):   365.3 ms … 401.3 ms    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1096.225976944	ms
	Processing time (w/o IO):	1092.1149253845	ms
	Processing time (w/o IO):	1106.8110466003	ms
	Processing time (w/o IO):	1097.7010726929	ms
	Processing time (w/o IO):	1093.3690071106	ms
	Processing time (w/o IO):	1089.71118927	ms
	Processing time (w/o IO):	1094.0248966217	ms
	Processing time (w/o IO):	1092.6549434662	ms
	Processing time (w/o IO):	1092.658996582	ms
	Processing time (w/o IO):	1094.0229892731	ms
	Processing time (w/o IO):	1097.5821018219	ms
	Processing time (w/o IO):	1091.7899608612	ms
	Processing time (w/o IO):	1091.7980670929	ms
	  Time (mean ± σ):      1.549 s ±  0.005 s    [User: 1.534 s, System: 0.015 s]
	  Range (min … max):    1.539 s …  1.558 s    10 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 151ms
	Processing time (w/o IO): 150ms
	Processing time (w/o IO): 151ms
	Processing time (w/o IO): 150ms
	Processing time (w/o IO): 146ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 149ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 149ms
	Processing time (w/o IO): 154ms
	Processing time (w/o IO): 151ms
	Processing time (w/o IO): 149ms
	Processing time (w/o IO): 143ms
	  Time (mean ± σ):     237.0 ms ±   4.4 ms    [User: 210.6 ms, System: 26.3 ms]
	  Range (min … max):   227.6 ms … 243.3 ms    10 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 213.669437ms
	Processing time (w/o IO): 211.441375ms
	Processing time (w/o IO): 215.629709ms
	  Time (mean ± σ):     325.8 ms ±   4.8 ms    [User: 329.2 ms, System: 17.2 ms]
	  Range (min … max):   322.4 ms … 329.2 ms    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 126.982473ms
	Processing time (w/o IO): 126.048952ms
	Processing time (w/o IO): 127.394381ms
	  Time (mean ± σ):     239.9 ms ±   0.1 ms    [User: 609.8 ms, System: 27.6 ms]
	  Range (min … max):   239.9 ms … 240.0 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 221.387835ms
	Processing time (w/o IO): 221.363434ms
	Processing time (w/o IO): 221.177629ms
	  Time (mean ± σ):     276.8 ms ±   3.1 ms    [User: 245.5 ms, System: 31.2 ms]
	  Range (min … max):   274.6 ms … 279.0 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 175.274327ms
	Processing time (w/o IO): 175.701437ms
	Processing time (w/o IO): 174.305306ms
	  Time (mean ± σ):     228.3 ms ±   0.1 ms    [User: 377.8 ms, System: 21.5 ms]
	  Range (min … max):   228.3 ms … 228.4 ms    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 13.046s
	Processing time (w/o IO): 13.047s
	Processing time (w/o IO): 13.266s
	  Time (mean ± σ):     13.282 s ±  0.155 s    [User: 13.219 s, System: 0.060 s]
	  Range (min … max):   13.172 s … 13.392 s    2 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 2.799s
	Processing time (w/o IO): 2.671s
	Processing time (w/o IO): 2.655s
	  Time (mean ± σ):      3.024 s ±  0.013 s    [User: 2.918 s, System: 0.723 s]
	  Range (min … max):    3.015 s …  3.033 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 528.571659ms
	Processing time (w/o IO): 527.624931ms
	Processing time (w/o IO): 525.764478ms
	  Time (mean ± σ):     686.1 ms ±   2.2 ms    [User: 666.4 ms, System: 19.6 ms]
	  Range (min … max):   684.5 ms … 687.6 ms    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 305ms
	Processing time (w/o IO): 305ms
	Processing time (w/o IO): 305ms
	  Time (mean ± σ):     443.2 ms ±   0.5 ms    [User: 437.5 ms, System: 5.7 ms]
	  Range (min … max):   442.9 ms … 443.6 ms    2 runs
	 
Julia:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 189 milliseconds
	Processing time (w/o IO): 189 milliseconds
	Processing time (w/o IO): 190 milliseconds
	  Time (mean ± σ):      3.706 s ±  0.002 s    [User: 3.492 s, System: 0.212 s]
	  Range (min … max):    3.705 s …  3.707 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads auto related.jl
	Processing time (w/o IO): 140 milliseconds
	Processing time (w/o IO): 139 milliseconds
	Processing time (w/o IO): 147 milliseconds
	  Time (mean ± σ):      3.959 s ±  0.031 s    [User: 6.631 s, System: 0.210 s]
	  Range (min … max):    3.937 s …  3.980 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  392.325316ms
	Processing time (w/o IO):  391.709397ms
	Processing time (w/o IO):  390.985673ms
	  Time (mean ± σ):     972.1 ms ±   3.1 ms    [User: 950.4 ms, System: 21.7 ms]
	  Range (min … max):   969.9 ms … 974.3 ms    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 434.596ms
	Processing time (w/o IO): 434.569ms
	Processing time (w/o IO): 434.521ms
	  Time (mean ± σ):      3.954 s ±  0.034 s    [User: 3.879 s, System: 0.071 s]
	  Range (min … max):    3.931 s …  3.978 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 1220ms
	Processing time (w/o IO): 1149ms
	Processing time (w/o IO): 1125ms
	  Time (mean ± σ):      1.705 s ±  0.006 s    [User: 1.881 s, System: 0.148 s]
	  Range (min … max):    1.701 s …  1.709 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 1620ms
	Processing time (w/o IO): 1621ms
	Processing time (w/o IO): 1622ms
	  Time (mean ± σ):      1.994 s ±  0.003 s    [User: 1.943 s, System: 0.064 s]
	  Range (min … max):    1.992 s …  1.997 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 408.8510274887085ms
	Processing time (w/o IO): 409.7040891647339ms
	Processing time (w/o IO): 409.1869592666626ms
	  Time (mean ± σ):      1.438 s ±  0.012 s    [User: 1.319 s, System: 0.088 s]
	  Range (min … max):    1.430 s …  1.446 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 228.064835ms
	Processing time (w/o IO): 228.140137ms
	Processing time (w/o IO): 228.343643ms
	  Time (mean ± σ):      1.274 s ±  0.004 s    [User: 1.804 s, System: 0.102 s]
	  Range (min … max):    1.271 s …  1.276 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 1385ms
	Processing time (w/o IO): 1390ms
	Processing time (w/o IO): 1389ms
	  Time (mean ± σ):      1.668 s ±  0.007 s    [User: 1.684 s, System: 0.084 s]
	  Range (min … max):    1.663 s …  1.673 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 6613ms
	Processing time (w/o IO): 6135ms
	Processing time (w/o IO): 6290ms
	  Time (mean ± σ):      6.336 s ±  0.109 s    [User: 6.357 s, System: 0.068 s]
	  Range (min … max):    6.259 s …  6.413 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 1555ms
	Processing time (w/o IO): 1556ms
	Processing time (w/o IO): 1556ms
	  Time (mean ± σ):      1.909 s ±  0.303 s    [User: 1.722 s, System: 0.052 s]
	  Range (min … max):    1.694 s …  2.123 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 501 ms
	Processing time (w/o IO): 526 ms
	Processing time (w/o IO): 500 ms
	  Time (mean ± σ):     792.2 ms ±  35.5 ms    [User: 1313.8 ms, System: 67.4 ms]
	  Range (min … max):   767.1 ms … 817.3 ms    2 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 309 ms
	Processing time (w/o IO): 309 ms
	Processing time (w/o IO): 310 ms
	  Time (mean ± σ):     382.4 ms ±   0.3 ms    [User: 351.2 ms, System: 31.3 ms]
	  Range (min … max):   382.2 ms … 382.7 ms    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 343 ms
	Processing time (w/o IO): 344 ms
	Processing time (w/o IO): 345 ms
	  Time (mean ± σ):     418.3 ms ±   0.8 ms    [User: 954.4 ms, System: 27.8 ms]
	  Range (min … max):   417.8 ms … 418.9 ms    2 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 262ms
	Processing time (w/o IO): 263ms
	Processing time (w/o IO): 263ms
	  Time (mean ± σ):     334.5 ms ±   0.5 ms    [User: 312.9 ms, System: 21.6 ms]
	  Range (min … max):   334.1 ms … 334.8 ms    2 runs
	 
F#:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 291ms
	Processing time (w/o IO): 291ms
	Processing time (w/o IO): 290ms
	  Time (mean ± σ):     703.9 ms ±   7.0 ms    [User: 634.9 ms, System: 66.3 ms]
	  Range (min … max):   699.0 ms … 708.9 ms    2 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net7.0/fsharp_con
	Processing time (w/o IO): 189ms
	Processing time (w/o IO): 189ms
	Processing time (w/o IO): 190ms
	  Time (mean ± σ):      2.081 s ±  0.026 s    [User: 2.571 s, System: 0.130 s]
	  Range (min … max):    2.063 s …  2.100 s    2 runs
	 
C#:

	Benchmark 1: ./bin/release/net7.0/publish/related
	Processing time (w/o IO): 370.0736ms
	Processing time (w/o IO): 368.5535ms
	Processing time (w/o IO): 372.1113ms
	  Time (mean ± σ):     513.6 ms ±   1.0 ms    [User: 486.1 ms, System: 53.3 ms]
	  Range (min … max):   513.0 ms … 514.3 ms    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	819.15616989136	ms
	Processing time (w/o IO):	909.71994400024	ms
	Processing time (w/o IO):	868.45588684082	ms
	  Time (mean ± σ):      1.753 s ±  0.034 s    [User: 1.703 s, System: 0.049 s]
	  Range (min … max):    1.729 s …  1.777 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	9456.6669464111	ms
	Processing time (w/o IO):	9446.8638896942	ms
	Processing time (w/o IO):	9533.3199501038	ms
	  Time (mean ± σ):     10.782 s ±  0.046 s    [User: 10.724 s, System: 0.051 s]
	  Range (min … max):   10.749 s … 10.815 s    2 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 1398ms
	Processing time (w/o IO): 1394ms
	Processing time (w/o IO): 1406ms
	  Time (mean ± σ):      1.715 s ±  0.009 s    [User: 1.624 s, System: 0.089 s]
	  Range (min … max):    1.709 s …  1.721 s    2 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 824.978568ms
	Processing time (w/o IO): 827.041308ms
	Processing time (w/o IO): 824.150251ms
	  Time (mean ± σ):      1.052 s ±  0.003 s    [User: 1.071 s, System: 0.049 s]
	  Range (min … max):    1.050 s …  1.054 s    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 487.752959ms
	Processing time (w/o IO): 487.774959ms
	Processing time (w/o IO): 488.508474ms
	  Time (mean ± σ):     717.9 ms ±   5.7 ms    [User: 2170.3 ms, System: 47.7 ms]
	  Range (min … max):   713.8 ms … 721.9 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 870.649162ms
	Processing time (w/o IO): 866.588264ms
	Processing time (w/o IO): 864.650633ms
	  Time (mean ± σ):     976.1 ms ±   0.7 ms    [User: 940.7 ms, System: 35.3 ms]
	  Range (min … max):   975.6 ms … 976.6 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 686.324059ms
	Processing time (w/o IO): 686.241556ms
	Processing time (w/o IO): 685.989751ms
	  Time (mean ± σ):     792.2 ms ±   2.3 ms    [User: 1428.6 ms, System: 45.5 ms]
	  Range (min … max):   790.5 ms … 793.8 ms    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 53.689s
	Processing time (w/o IO): 53.168s
	Processing time (w/o IO): 53.433s
	  Time (mean ± σ):     53.533 s ±  0.186 s    [User: 53.445 s, System: 0.084 s]
	  Range (min … max):   53.401 s … 53.665 s    2 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 12.563s
	Processing time (w/o IO): 11.285s
	Processing time (w/o IO): 11.170s
	  Time (mean ± σ):     11.802 s ±  0.110 s    [User: 9.960 s, System: 2.380 s]
	  Range (min … max):   11.725 s … 11.880 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 2071.266129ms
	Processing time (w/o IO): 2069.810101ms
	Processing time (w/o IO): 2071.930581ms
	  Time (mean ± σ):      2.410 s ±  0.002 s    [User: 2.365 s, System: 0.042 s]
	  Range (min … max):    2.409 s …  2.412 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 1212ms
	Processing time (w/o IO): 1211ms
	Processing time (w/o IO): 1216ms
	  Time (mean ± σ):      1.500 s ±  0.006 s    [User: 1.474 s, System: 0.026 s]
	  Range (min … max):    1.495 s …  1.504 s    2 runs
	 
Julia:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 744 milliseconds
	Processing time (w/o IO): 749 milliseconds
	Processing time (w/o IO): 742 milliseconds
	  Time (mean ± σ):      4.960 s ±  0.005 s    [User: 4.716 s, System: 0.243 s]
	  Range (min … max):    4.956 s …  4.964 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads auto related.jl
	Processing time (w/o IO): 490 milliseconds
	Processing time (w/o IO): 496 milliseconds
	Processing time (w/o IO): 501 milliseconds
	  Time (mean ± σ):      4.867 s ±  0.031 s    [User: 9.743 s, System: 0.233 s]
	  Range (min … max):    4.845 s …  4.890 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  1.273171532s
	Processing time (w/o IO):  1.271556499s
	Processing time (w/o IO):  1.273818969s
	  Time (mean ± σ):      2.458 s ±  0.000 s    [User: 2.415 s, System: 0.040 s]
	  Range (min … max):    2.457 s …  2.458 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 1.680s
	Processing time (w/o IO): 1.682s
	Processing time (w/o IO): 1.681s
	  Time (mean ± σ):     18.862 s ±  0.118 s    [User: 18.679 s, System: 0.177 s]
	  Range (min … max):   18.779 s … 18.945 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 5233ms
	Processing time (w/o IO): 5579ms
	Processing time (w/o IO): 5217ms
	  Time (mean ± σ):      6.254 s ±  0.258 s    [User: 6.476 s, System: 0.161 s]
	  Range (min … max):    6.072 s …  6.437 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 6475ms
	Processing time (w/o IO): 6496ms
	Processing time (w/o IO): 6477ms
	  Time (mean ± σ):      7.239 s ±  0.020 s    [User: 7.185 s, System: 0.097 s]
	  Range (min … max):    7.226 s …  7.253 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 1581.8140506744385ms
	Processing time (w/o IO): 1579.2330503463745ms
	Processing time (w/o IO): 1579.4869661331177ms
	  Time (mean ± σ):      3.673 s ±  0.038 s    [User: 3.465 s, System: 0.158 s]
	  Range (min … max):    3.646 s …  3.700 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 857.902284ms
	Processing time (w/o IO): 933.868894ms
	Processing time (w/o IO): 868.64457ms
	  Time (mean ± σ):      3.010 s ±  0.067 s    [User: 5.325 s, System: 0.199 s]
	  Range (min … max):    2.963 s …  3.057 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 5454ms
	Processing time (w/o IO): 5364ms
	Processing time (w/o IO): 5420ms
	  Time (mean ± σ):      5.841 s ±  0.041 s    [User: 5.863 s, System: 0.125 s]
	  Range (min … max):    5.812 s …  5.871 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 25516ms
	Processing time (w/o IO): 24187ms
	Processing time (w/o IO): 24157ms
	  Time (mean ± σ):     24.398 s ±  0.024 s    [User: 24.446 s, System: 0.097 s]
	  Range (min … max):   24.380 s … 24.415 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 5034ms
	Processing time (w/o IO): 5040ms
	Processing time (w/o IO): 5031ms
	  Time (mean ± σ):      5.288 s ±  0.004 s    [User: 5.270 s, System: 0.110 s]
	  Range (min … max):    5.285 s …  5.291 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 1751 ms
	Processing time (w/o IO): 1776 ms
	Processing time (w/o IO): 1754 ms
	  Time (mean ± σ):      2.127 s ±  0.011 s    [User: 2.804 s, System: 0.081 s]
	  Range (min … max):    2.119 s …  2.134 s    2 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 1203 ms
	Processing time (w/o IO): 1203 ms
	Processing time (w/o IO): 1207 ms
	  Time (mean ± σ):      1.402 s ±  0.056 s    [User: 1.307 s, System: 0.055 s]
	  Range (min … max):    1.362 s …  1.441 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 1381 ms
	Processing time (w/o IO): 1333 ms
	Processing time (w/o IO): 1327 ms
	  Time (mean ± σ):      1.488 s ±  0.006 s    [User: 3.644 s, System: 0.047 s]
	  Range (min … max):    1.484 s …  1.492 s    2 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 2037ms
	Processing time (w/o IO): 2041ms
	Processing time (w/o IO): 2037ms
	  Time (mean ± σ):      2.211 s ±  0.019 s    [User: 2.141 s, System: 0.053 s]
	  Range (min … max):    2.198 s …  2.224 s    2 runs
	 
F#:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 1193ms
	Processing time (w/o IO): 1108ms
	Processing time (w/o IO): 1110ms
	  Time (mean ± σ):      1.758 s ±  0.003 s    [User: 1.694 s, System: 0.085 s]
	  Range (min … max):    1.756 s …  1.760 s    2 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net7.0/fsharp_con
	Processing time (w/o IO): 738ms
	Processing time (w/o IO): 612ms
	Processing time (w/o IO): 743ms
	  Time (mean ± σ):      4.188 s ±  0.068 s    [User: 6.074 s, System: 0.193 s]
	  Range (min … max):    4.140 s …  4.236 s    2 runs
	 
C#:

	Benchmark 1: ./bin/release/net7.0/publish/related
	Processing time (w/o IO): 1451.2653ms
	Processing time (w/o IO): 1448.076ms
	Processing time (w/o IO): 1458.034ms
	  Time (mean ± σ):      1.739 s ±  0.010 s    [User: 1.737 s, System: 0.063 s]
	  Range (min … max):    1.732 s …  1.747 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	2579.8850059509	ms
	Processing time (w/o IO):	3379.674911499	ms
	Processing time (w/o IO):	3233.9498996735	ms
	  Time (mean ± σ):      5.268 s ±  0.178 s    [User: 5.162 s, System: 0.101 s]
	  Range (min … max):    5.142 s …  5.393 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	37612.680912018	ms
	Processing time (w/o IO):	37425.395965576	ms
	Processing time (w/o IO):	37437.572956085	ms
	  Time (mean ± σ):     40.501 s ±  0.051 s    [User: 40.412 s, System: 0.084 s]
	  Range (min … max):   40.465 s … 40.537 s    2 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 7259ms
	Processing time (w/o IO): 7234ms
	Processing time (w/o IO): 7367ms
	  Time (mean ± σ):      8.026 s ±  0.093 s    [User: 7.692 s, System: 0.331 s]
	  Range (min … max):    7.960 s …  8.091 s    2 runs
	 
