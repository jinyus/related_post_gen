Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 28.866776ms
	Processing time (w/o IO): 31.247107ms
	Processing time (w/o IO): 30.606599ms
	Processing time (w/o IO): 29.94309ms
	Processing time (w/o IO): 31.861615ms
	Processing time (w/o IO): 33.062331ms
	Processing time (w/o IO): 31.018804ms
	Processing time (w/o IO): 29.912489ms
	Processing time (w/o IO): 29.011578ms
	Processing time (w/o IO): 28.44297ms
	Processing time (w/o IO): 30.884902ms
	Processing time (w/o IO): 29.319182ms
	Processing time (w/o IO): 28.534871ms
	Processing time (w/o IO): 32.777427ms
	Processing time (w/o IO): 29.419184ms
	  Time (mean ± σ):      70.3 ms ±   3.0 ms    [User: 62.2 ms, System: 14.7 ms]
	  Range (min … max):    65.0 ms …  73.9 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 19.359612ms
	Processing time (w/o IO): 17.359391ms
	Processing time (w/o IO): 16.673583ms
	Processing time (w/o IO): 18.393502ms
	Processing time (w/o IO): 20.728227ms
	Processing time (w/o IO): 17.446691ms
	Processing time (w/o IO): 20.719827ms
	Processing time (w/o IO): 18.633005ms
	Processing time (w/o IO): 17.909796ms
	Processing time (w/o IO): 15.987975ms
	Processing time (w/o IO): 18.796506ms
	Processing time (w/o IO): 17.711294ms
	Processing time (w/o IO): 18.420802ms
	Processing time (w/o IO): 17.879896ms
	Processing time (w/o IO): 18.287201ms
	  Time (mean ± σ):      55.3 ms ±   3.4 ms    [User: 62.4 ms, System: 16.1 ms]
	  Range (min … max):    50.3 ms …  59.9 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 36.137467ms
	Processing time (w/o IO): 33.73505ms
	Processing time (w/o IO): 33.720249ms
	Processing time (w/o IO): 31.487233ms
	Processing time (w/o IO): 32.48744ms
	Processing time (w/o IO): 31.587833ms
	Processing time (w/o IO): 31.531616ms
	Processing time (w/o IO): 30.830707ms
	Processing time (w/o IO): 30.536303ms
	Processing time (w/o IO): 34.480354ms
	Processing time (w/o IO): 32.975935ms
	Processing time (w/o IO): 31.08671ms
	Processing time (w/o IO): 31.600016ms
	Processing time (w/o IO): 30.894507ms
	Processing time (w/o IO): 31.14411ms
	  Time (mean ± σ):      52.5 ms ±   1.9 ms    [User: 43.7 ms, System: 8.7 ms]
	  Range (min … max):    50.3 ms …  55.6 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 21.135618ms
	Processing time (w/o IO): 19.748704ms
	Processing time (w/o IO): 21.423722ms
	Processing time (w/o IO): 20.767315ms
	Processing time (w/o IO): 20.160509ms
	Processing time (w/o IO): 23.392542ms
	Processing time (w/o IO): 20.624713ms
	Processing time (w/o IO): 23.950147ms
	Processing time (w/o IO): 19.3553ms
	Processing time (w/o IO): 20.990117ms
	Processing time (w/o IO): 20.420411ms
	Processing time (w/o IO): 21.055718ms
	Processing time (w/o IO): 21.764425ms
	Processing time (w/o IO): 20.864415ms
	Processing time (w/o IO): 23.786345ms
	  Time (mean ± σ):      45.3 ms ±   2.1 ms    [User: 49.5 ms, System: 13.7 ms]
	  Range (min … max):    42.0 ms …  48.5 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 2.344s
	Processing time (w/o IO): 2.124s
	Processing time (w/o IO): 2.219s
	Processing time (w/o IO): 2.149s
	Processing time (w/o IO): 2.340s
	Processing time (w/o IO): 2.119s
	Processing time (w/o IO): 2.280s
	Processing time (w/o IO): 2.202s
	Processing time (w/o IO): 2.205s
	Processing time (w/o IO): 2.291s
	Processing time (w/o IO): 2.178s
	Processing time (w/o IO): 2.179s
	Processing time (w/o IO): 2.219s
	  Time (mean ± σ):      2.313 s ±  0.069 s    [User: 2.286 s, System: 0.027 s]
	  Range (min … max):    2.220 s …  2.438 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 539.2ms
	Processing time (w/o IO): 488.0ms
	Processing time (w/o IO): 479.7ms
	Processing time (w/o IO): 479.1ms
	Processing time (w/o IO): 479.1ms
	Processing time (w/o IO): 477.8ms
	Processing time (w/o IO): 478.2ms
	Processing time (w/o IO): 467.0ms
	Processing time (w/o IO): 459.9ms
	Processing time (w/o IO): 460.6ms
	Processing time (w/o IO): 475.0ms
	Processing time (w/o IO): 469.1ms
	Processing time (w/o IO): 465.4ms
	  Time (mean ± σ):     769.0 ms ±  13.0 ms    [User: 779.8 ms, System: 220.7 ms]
	  Range (min … max):   749.3 ms … 789.2 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 68.958363ms
	Processing time (w/o IO): 62.873996ms
	Processing time (w/o IO): 61.014875ms
	Processing time (w/o IO): 62.32779ms
	Processing time (w/o IO): 64.908218ms
	Processing time (w/o IO): 62.248589ms
	Processing time (w/o IO): 63.419202ms
	Processing time (w/o IO): 61.682483ms
	Processing time (w/o IO): 61.568981ms
	Processing time (w/o IO): 64.358912ms
	Processing time (w/o IO): 60.969875ms
	Processing time (w/o IO): 62.086287ms
	Processing time (w/o IO): 64.410712ms
	Processing time (w/o IO): 63.731006ms
	Processing time (w/o IO): 60.702072ms
	  Time (mean ± σ):     127.0 ms ±   4.5 ms    [User: 115.5 ms, System: 11.5 ms]
	  Range (min … max):   123.1 ms … 137.4 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 48ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 48ms
	Processing time (w/o IO): 51ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 45ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 53ms
	Processing time (w/o IO): 48ms
	  Time (mean ± σ):     100.3 ms ±   5.2 ms    [User: 91.6 ms, System: 8.7 ms]
	  Range (min … max):    94.4 ms … 110.7 ms    10 runs
	 
Julia:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 37 milliseconds
	Processing time (w/o IO): 38 milliseconds
	Processing time (w/o IO): 36 milliseconds
	Processing time (w/o IO): 36 milliseconds
	Processing time (w/o IO): 33 milliseconds
	Processing time (w/o IO): 41 milliseconds
	Processing time (w/o IO): 35 milliseconds
	Processing time (w/o IO): 36 milliseconds
	Processing time (w/o IO): 35 milliseconds
	Processing time (w/o IO): 35 milliseconds
	Processing time (w/o IO): 35 milliseconds
	Processing time (w/o IO): 39 milliseconds
	Processing time (w/o IO): 36 milliseconds
	Processing time (w/o IO): 36 milliseconds
	Processing time (w/o IO): 34 milliseconds
	  Time (mean ± σ):      8.327 s ±  0.098 s    [User: 7.951 s, System: 0.371 s]
	  Range (min … max):    8.174 s …  8.518 s    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  64.466816ms
	Processing time (w/o IO):  60.841148ms
	Processing time (w/o IO):  64.068609ms
	Processing time (w/o IO):  61.398458ms
	Processing time (w/o IO):  61.384458ms
	Processing time (w/o IO):  62.201174ms
	Processing time (w/o IO):  60.829019ms
	Processing time (w/o IO):  62.62124ms
	Processing time (w/o IO):  62.825643ms
	Processing time (w/o IO):  62.767742ms
	Processing time (w/o IO):  62.299137ms
	Processing time (w/o IO):  66.424085ms
	Processing time (w/o IO):  61.922332ms
	Processing time (w/o IO):  63.768154ms
	Processing time (w/o IO):  62.164535ms
	  Time (mean ± σ):     378.8 ms ±   6.1 ms    [User: 366.3 ms, System: 12.5 ms]
	  Range (min … max):   373.3 ms … 393.9 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 58.983ms
	Processing time (w/o IO): 67.847ms
	Processing time (w/o IO): 58.104ms
	Processing time (w/o IO): 58.732ms
	Processing time (w/o IO): 57.638ms
	Processing time (w/o IO): 59.731ms
	Processing time (w/o IO): 65.914ms
	Processing time (w/o IO): 61.976ms
	Processing time (w/o IO): 59.603ms
	Processing time (w/o IO): 60.539ms
	Processing time (w/o IO): 58.577ms
	Processing time (w/o IO): 58.699ms
	Processing time (w/o IO): 59.832ms
	Processing time (w/o IO): 57.863ms
	Processing time (w/o IO): 58.098ms
	  Time (mean ± σ):     708.6 ms ±   8.4 ms    [User: 661.5 ms, System: 45.9 ms]
	  Range (min … max):   697.8 ms … 722.6 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 89ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 94ms
	Processing time (w/o IO): 97ms
	Processing time (w/o IO): 93ms
	Processing time (w/o IO): 93ms
	Processing time (w/o IO): 100ms
	Processing time (w/o IO): 96ms
	Processing time (w/o IO): 97ms
	Processing time (w/o IO): 101ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 90ms
	Processing time (w/o IO): 92ms
	  Time (mean ± σ):     727.5 ms ±  13.3 ms    [User: 816.6 ms, System: 213.6 ms]
	  Range (min … max):   703.5 ms … 743.4 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 115ms
	Processing time (w/o IO): 116ms
	Processing time (w/o IO): 113ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 118ms
	Processing time (w/o IO): 119ms
	Processing time (w/o IO): 116ms
	Processing time (w/o IO): 118ms
	Processing time (w/o IO): 120ms
	Processing time (w/o IO): 116ms
	Processing time (w/o IO): 120ms
	Processing time (w/o IO): 117ms
	Processing time (w/o IO): 124ms
	  Time (mean ± σ):     284.2 ms ±   3.9 ms    [User: 261.3 ms, System: 27.4 ms]
	  Range (min … max):   278.6 ms … 291.8 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 68.9539909362793ms
	Processing time (w/o IO): 63.494086265563965ms
	Processing time (w/o IO): 65.75906276702881ms
	Processing time (w/o IO): 65.96899032592773ms
	Processing time (w/o IO): 67.96896457672119ms
	Processing time (w/o IO): 64.79394435882568ms
	Processing time (w/o IO): 64.25607204437256ms
	Processing time (w/o IO): 61.6990327835083ms
	Processing time (w/o IO): 74.12600517272949ms
	Processing time (w/o IO): 64.95296955108643ms
	Processing time (w/o IO): 65.93406200408936ms
	Processing time (w/o IO): 62.20996379852295ms
	Processing time (w/o IO): 63.11500072479248ms
	Processing time (w/o IO): 64.75400924682617ms
	Processing time (w/o IO): 62.957048416137695ms
	  Time (mean ± σ):     535.8 ms ±  13.0 ms    [User: 482.5 ms, System: 47.2 ms]
	  Range (min … max):   511.0 ms … 550.5 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 39.998402ms
	Processing time (w/o IO): 40.102718ms
	Processing time (w/o IO): 40.855729ms
	Processing time (w/o IO): 41.247535ms
	Processing time (w/o IO): 40.945931ms
	Processing time (w/o IO): 41.219835ms
	Processing time (w/o IO): 40.792328ms
	Processing time (w/o IO): 41.351838ms
	Processing time (w/o IO): 41.907845ms
	Processing time (w/o IO): 43.107864ms
	Processing time (w/o IO): 45.051494ms
	Processing time (w/o IO): 40.138119ms
	Processing time (w/o IO): 41.133734ms
	Processing time (w/o IO): 42.889661ms
	Processing time (w/o IO): 42.387253ms
	  Time (mean ± σ):     531.6 ms ±  11.8 ms    [User: 506.7 ms, System: 56.5 ms]
	  Range (min … max):   510.0 ms … 543.4 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 207ms
	Processing time (w/o IO): 189ms
	Processing time (w/o IO): 198ms
	Processing time (w/o IO): 190ms
	Processing time (w/o IO): 218ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 193ms
	Processing time (w/o IO): 193ms
	Processing time (w/o IO): 225ms
	Processing time (w/o IO): 188ms
	Processing time (w/o IO): 188ms
	Processing time (w/o IO): 187ms
	Processing time (w/o IO): 191ms
	  Time (mean ± σ):     292.1 ms ±  10.5 ms    [User: 267.3 ms, System: 72.8 ms]
	  Range (min … max):   280.9 ms … 315.2 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 786ms
	Processing time (w/o IO): 1001ms
	Processing time (w/o IO): 994ms
	Processing time (w/o IO): 999ms
	Processing time (w/o IO): 986ms
	Processing time (w/o IO): 781ms
	Processing time (w/o IO): 1041ms
	Processing time (w/o IO): 1001ms
	Processing time (w/o IO): 449ms
	Processing time (w/o IO): 1003ms
	Processing time (w/o IO): 1004ms
	Processing time (w/o IO): 1028ms
	Processing time (w/o IO): 1024ms
	  Time (mean ± σ):     998.7 ms ± 184.4 ms    [User: 1013.1 ms, System: 43.2 ms]
	  Range (min … max):   517.8 ms … 1106.4 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 168ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 173ms
	Processing time (w/o IO): 172ms
	Processing time (w/o IO): 171ms
	Processing time (w/o IO): 175ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 176ms
	Processing time (w/o IO): 167ms
	Processing time (w/o IO): 176ms
	Processing time (w/o IO): 175ms
	Processing time (w/o IO): 169ms
	  Time (mean ± σ):     259.8 ms ±   6.0 ms    [User: 243.5 ms, System: 37.6 ms]
	  Range (min … max):   248.7 ms … 270.7 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -Xms10m -Xmx10m -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 320 ms
	Processing time (w/o IO): 326 ms
	Processing time (w/o IO): 334 ms
	Processing time (w/o IO): 321 ms
	Processing time (w/o IO): 336 ms
	Processing time (w/o IO): 352 ms
	Processing time (w/o IO): 336 ms
	Processing time (w/o IO): 355 ms
	Processing time (w/o IO): 351 ms
	Processing time (w/o IO): 344 ms
	Processing time (w/o IO): 337 ms
	Processing time (w/o IO): 327 ms
	Processing time (w/o IO): 313 ms
	  Time (mean ± σ):     709.4 ms ±  24.3 ms    [User: 1190.2 ms, System: 100.6 ms]
	  Range (min … max):   678.2 ms … 746.9 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 42 ms
	Processing time (w/o IO): 42 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 45 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 41 ms
	Processing time (w/o IO): 42 ms
	Processing time (w/o IO): 48 ms
	Processing time (w/o IO): 42 ms
	Processing time (w/o IO): 46 ms
	Processing time (w/o IO): 45 ms
	Processing time (w/o IO): 42 ms
	Processing time (w/o IO): 42 ms
	  Time (mean ± σ):      79.5 ms ±   3.9 ms    [User: 59.8 ms, System: 19.8 ms]
	  Range (min … max):    74.5 ms …  87.7 ms    10 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 51ms
	Processing time (w/o IO): 52ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 52ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 51ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 55ms
	Processing time (w/o IO): 51ms
	Processing time (w/o IO): 52ms
	  Time (mean ± σ):      84.6 ms ±   2.6 ms    [User: 67.0 ms, System: 17.5 ms]
	  Range (min … max):    80.0 ms …  88.0 ms    10 runs
	 
F#:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 53ms
	Processing time (w/o IO): 53ms
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 51ms
	Processing time (w/o IO): 52ms
	Processing time (w/o IO): 66ms
	Processing time (w/o IO): 52ms
	Processing time (w/o IO): 55ms
	Processing time (w/o IO): 52ms
	Processing time (w/o IO): 53ms
	Processing time (w/o IO): 51ms
	Processing time (w/o IO): 52ms
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 53ms
	Processing time (w/o IO): 52ms
	  Time (mean ± σ):     384.5 ms ±  11.4 ms    [User: 308.0 ms, System: 62.5 ms]
	  Range (min … max):   367.9 ms … 397.4 ms    10 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net7.0/fsharp_con
	Processing time (w/o IO): 52ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 53ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 55ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 48ms
	Processing time (w/o IO): 49ms
	  Time (mean ± σ):      1.057 s ±  0.017 s    [User: 1.031 s, System: 0.103 s]
	  Range (min … max):    1.038 s …  1.096 s    10 runs
	 
C#:

	Benchmark 1: ./bin/release/net7.0/publish/related
	Processing time (w/o IO): 58.6832ms
	Processing time (w/o IO): 58.7355ms
	Processing time (w/o IO): 61.7072ms
	Processing time (w/o IO): 62.6757ms
	Processing time (w/o IO): 67.1267ms
	Processing time (w/o IO): 64.1804ms
	Processing time (w/o IO): 67.2513ms
	Processing time (w/o IO): 60.8774ms
	Processing time (w/o IO): 61.5644ms
	Processing time (w/o IO): 64.7278ms
	Processing time (w/o IO): 61.9036ms
	Processing time (w/o IO): 67.6349ms
	Processing time (w/o IO): 61.6783ms
	Processing time (w/o IO): 60.7627ms
	Processing time (w/o IO): 61.7318ms
	  Time (mean ± σ):     141.5 ms ±   6.8 ms    [User: 124.1 ms, System: 26.6 ms]
	  Range (min … max):   130.7 ms … 154.0 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	117.99907684326	ms
	Processing time (w/o IO):	111.7889881134	ms
	Processing time (w/o IO):	115.14902114868	ms
	Processing time (w/o IO):	120.59807777405	ms
	Processing time (w/o IO):	125.75197219849	ms
	Processing time (w/o IO):	129.7619342804	ms
	Processing time (w/o IO):	118.46113204956	ms
	Processing time (w/o IO):	112.39504814148	ms
	Processing time (w/o IO):	124.34983253479	ms
	Processing time (w/o IO):	115.63086509705	ms
	Processing time (w/o IO):	121.8888759613	ms
	Processing time (w/o IO):	119.5981502533	ms
	Processing time (w/o IO):	128.9701461792	ms
	Processing time (w/o IO):	120.87416648865	ms
	Processing time (w/o IO):	114.37892913818	ms
	  Time (mean ± σ):     456.5 ms ±  16.6 ms    [User: 430.1 ms, System: 26.3 ms]
	  Range (min … max):   429.1 ms … 482.7 ms    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	2786.2451076508	ms
	Processing time (w/o IO):	2808.6640834808	ms
	Processing time (w/o IO):	2807.2009086609	ms
	Processing time (w/o IO):	2694.5340633392	ms
	Processing time (w/o IO):	2719.5270061493	ms
	Processing time (w/o IO):	2662.0719432831	ms
	Processing time (w/o IO):	2801.1019229889	ms
	Processing time (w/o IO):	2706.5758705139	ms
	Processing time (w/o IO):	2793.1671142578	ms
	Processing time (w/o IO):	2736.9601726532	ms
	Processing time (w/o IO):	2709.7969055176	ms
	Processing time (w/o IO):	2757.4908733368	ms
	  Time (mean ± σ):      3.536 s ±  0.052 s    [User: 3.486 s, System: 0.047 s]
	  Range (min … max):    3.432 s …  3.614 s    10 runs
	 
