Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 25.756364ms
	Processing time (w/o IO): 25.598962ms
	Processing time (w/o IO): 26.069167ms
	Processing time (w/o IO): 25.774464ms
	Processing time (w/o IO): 25.516261ms
	Processing time (w/o IO): 25.965465ms
	Processing time (w/o IO): 25.941366ms
	Processing time (w/o IO): 25.957665ms
	Processing time (w/o IO): 25.682063ms
	Processing time (w/o IO): 25.936265ms
	Processing time (w/o IO): 26.169467ms
	Processing time (w/o IO): 25.516161ms
	Processing time (w/o IO): 25.677762ms
	  Time (mean ± σ):      55.7 ms ±   1.0 ms    [User: 48.9 ms, System: 13.0 ms]
	  Range (min … max):    54.5 ms …  57.4 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 19.064895ms
	Processing time (w/o IO): 19.033495ms
	Processing time (w/o IO): 18.871393ms
	Processing time (w/o IO): 19.047795ms
	Processing time (w/o IO): 18.832093ms
	Processing time (w/o IO): 18.982694ms
	Processing time (w/o IO): 18.814192ms
	Processing time (w/o IO): 18.52059ms
	Processing time (w/o IO): 18.429588ms
	Processing time (w/o IO): 18.754792ms
	Processing time (w/o IO): 19.079996ms
	Processing time (w/o IO): 18.802293ms
	Processing time (w/o IO): 18.673991ms
	  Time (mean ± σ):      48.2 ms ±   0.8 ms    [User: 56.4 ms, System: 15.5 ms]
	  Range (min … max):    46.8 ms …  49.1 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 30.750308ms
	Processing time (w/o IO): 30.792908ms
	Processing time (w/o IO): 30.972408ms
	Processing time (w/o IO): 30.743908ms
	Processing time (w/o IO): 30.847809ms
	Processing time (w/o IO): 30.790508ms
	Processing time (w/o IO): 30.756007ms
	Processing time (w/o IO): 30.741608ms
	Processing time (w/o IO): 30.779208ms
	Processing time (w/o IO): 30.914308ms
	Processing time (w/o IO): 30.758107ms
	Processing time (w/o IO): 30.894008ms
	Processing time (w/o IO): 31.140909ms
	  Time (mean ± σ):      49.3 ms ±   0.4 ms    [User: 41.5 ms, System: 7.6 ms]
	  Range (min … max):    48.7 ms …  50.0 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 16.359484ms
	Processing time (w/o IO): 15.551675ms
	Processing time (w/o IO): 15.90028ms
	Processing time (w/o IO): 15.877879ms
	Processing time (w/o IO): 16.195383ms
	Processing time (w/o IO): 16.078081ms
	Processing time (w/o IO): 15.552075ms
	Processing time (w/o IO): 15.568376ms
	Processing time (w/o IO): 15.457574ms
	Processing time (w/o IO): 15.639076ms
	Processing time (w/o IO): 16.137779ms
	Processing time (w/o IO): 16.123767ms
	Processing time (w/o IO): 15.617862ms
	  Time (mean ± σ):      34.1 ms ±   0.4 ms    [User: 36.7 ms, System: 11.6 ms]
	  Range (min … max):    33.3 ms …  34.7 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 1.715s
	Processing time (w/o IO): 1.690s
	Processing time (w/o IO): 1.701s
	Processing time (w/o IO): 1.685s
	Processing time (w/o IO): 1.694s
	Processing time (w/o IO): 1.686s
	Processing time (w/o IO): 1.689s
	Processing time (w/o IO): 1.687s
	Processing time (w/o IO): 1.686s
	Processing time (w/o IO): 1.688s
	Processing time (w/o IO): 1.687s
	Processing time (w/o IO): 1.686s
	Processing time (w/o IO): 1.692s
	  Time (mean ± σ):      1.762 s ±  0.003 s    [User: 1.743 s, System: 0.019 s]
	  Range (min … max):    1.759 s …  1.769 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 419.7ms
	Processing time (w/o IO): 366.7ms
	Processing time (w/o IO): 372.4ms
	Processing time (w/o IO): 366.9ms
	Processing time (w/o IO): 364.2ms
	Processing time (w/o IO): 364.4ms
	Processing time (w/o IO): 364.2ms
	Processing time (w/o IO): 365.7ms
	Processing time (w/o IO): 363.9ms
	Processing time (w/o IO): 370.0ms
	Processing time (w/o IO): 364.2ms
	Processing time (w/o IO): 363.7ms
	Processing time (w/o IO): 363.4ms
	  Time (mean ± σ):     594.9 ms ±  10.1 ms    [User: 613.9 ms, System: 170.9 ms]
	  Range (min … max):   587.6 ms … 621.5 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 69.255327ms
	Processing time (w/o IO): 68.503205ms
	Processing time (w/o IO): 68.431103ms
	Processing time (w/o IO): 68.396102ms
	Processing time (w/o IO): 68.601307ms
	Processing time (w/o IO): 68.497005ms
	Processing time (w/o IO): 68.738512ms
	Processing time (w/o IO): 68.747012ms
	Processing time (w/o IO): 68.68981ms
	Processing time (w/o IO): 68.957918ms
	Processing time (w/o IO): 69.189125ms
	Processing time (w/o IO): 68.648609ms
	Processing time (w/o IO): 68.765264ms
	  Time (mean ± σ):     125.7 ms ±   1.3 ms    [User: 114.5 ms, System: 11.0 ms]
	  Range (min … max):   123.7 ms … 127.6 ms    10 runs
	 
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
	  Time (mean ± σ):      66.4 ms ±   0.2 ms    [User: 59.7 ms, System: 6.7 ms]
	  Range (min … max):    66.1 ms …  66.7 ms    10 runs
	 
Julia:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 41 milliseconds
	Processing time (w/o IO): 40 milliseconds
	Processing time (w/o IO): 40 milliseconds
	Processing time (w/o IO): 40 milliseconds
	Processing time (w/o IO): 41 milliseconds
	Processing time (w/o IO): 40 milliseconds
	Processing time (w/o IO): 40 milliseconds
	Processing time (w/o IO): 40 milliseconds
	Processing time (w/o IO): 40 milliseconds
	Processing time (w/o IO): 41 milliseconds
	Processing time (w/o IO): 40 milliseconds
	Processing time (w/o IO): 40 milliseconds
	Processing time (w/o IO): 41 milliseconds
	  Time (mean ± σ):      3.406 s ±  0.014 s    [User: 3.228 s, System: 0.175 s]
	  Range (min … max):    3.392 s …  3.434 s    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  54.867503ms
	Processing time (w/o IO):  54.757202ms
	Processing time (w/o IO):  54.283596ms
	Processing time (w/o IO):  54.516259ms
	Processing time (w/o IO):  54.240656ms
	Processing time (w/o IO):  54.126255ms
	Processing time (w/o IO):  54.310057ms
	Processing time (w/o IO):  55.088866ms
	Processing time (w/o IO):  54.249756ms
	Processing time (w/o IO):  54.257756ms
	Processing time (w/o IO):  55.198767ms
	Processing time (w/o IO):  54.647161ms
	Processing time (w/o IO):  54.150854ms
	  Time (mean ± σ):     304.2 ms ±   1.3 ms    [User: 293.4 ms, System: 10.6 ms]
	  Range (min … max):   302.7 ms … 307.6 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 59.178ms
	Processing time (w/o IO): 59.324ms
	Processing time (w/o IO): 59.209ms
	Processing time (w/o IO): 59.551ms
	Processing time (w/o IO): 59.621ms
	Processing time (w/o IO): 59.406ms
	Processing time (w/o IO): 59.308ms
	Processing time (w/o IO): 59.331ms
	Processing time (w/o IO): 58.966ms
	Processing time (w/o IO): 59.484ms
	Processing time (w/o IO): 59.760ms
	Processing time (w/o IO): 59.383ms
	Processing time (w/o IO): 59.592ms
	  Time (mean ± σ):     377.8 ms ±   1.0 ms    [User: 347.9 ms, System: 29.4 ms]
	  Range (min … max):   376.4 ms … 379.8 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 107ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 124ms
	Processing time (w/o IO): 93ms
	Processing time (w/o IO): 124ms
	Processing time (w/o IO): 95ms
	Processing time (w/o IO): 94ms
	Processing time (w/o IO): 93ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 93ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 93ms
	Processing time (w/o IO): 108ms
	  Time (mean ± σ):     573.7 ms ±  24.1 ms    [User: 640.5 ms, System: 146.2 ms]
	  Range (min … max):   556.8 ms … 631.5 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 142ms
	Processing time (w/o IO): 142ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 141ms
	  Time (mean ± σ):     284.0 ms ±   2.1 ms    [User: 265.3 ms, System: 22.9 ms]
	  Range (min … max):   281.2 ms … 288.5 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 65.83702564239502ms
	Processing time (w/o IO): 65.42694568634033ms
	Processing time (w/o IO): 65.93501567840576ms
	Processing time (w/o IO): 65.71197509765625ms
	Processing time (w/o IO): 65.72699546813965ms
	Processing time (w/o IO): 66.12193584442139ms
	Processing time (w/o IO): 65.62507152557373ms
	Processing time (w/o IO): 65.57893753051758ms
	Processing time (w/o IO): 65.5139684677124ms
	Processing time (w/o IO): 65.64903259277344ms
	Processing time (w/o IO): 65.44196605682373ms
	Processing time (w/o IO): 65.52207469940186ms
	Processing time (w/o IO): 65.7120943069458ms
	  Time (mean ± σ):     440.9 ms ±   6.3 ms    [User: 399.8 ms, System: 36.0 ms]
	  Range (min … max):   435.8 ms … 458.1 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 40.629326ms
	Processing time (w/o IO): 40.766228ms
	Processing time (w/o IO): 40.15962ms
	Processing time (w/o IO): 41.197134ms
	Processing time (w/o IO): 40.801129ms
	Processing time (w/o IO): 40.632226ms
	Processing time (w/o IO): 41.547538ms
	Processing time (w/o IO): 40.918429ms
	Processing time (w/o IO): 40.564425ms
	Processing time (w/o IO): 40.590125ms
	Processing time (w/o IO): 41.050432ms
	Processing time (w/o IO): 40.862029ms
	Processing time (w/o IO): 72.58284ms
	  Time (mean ± σ):     434.1 ms ±  11.8 ms    [User: 419.0 ms, System: 43.9 ms]
	  Range (min … max):   424.4 ms … 458.5 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 194ms
	Processing time (w/o IO): 195ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 189ms
	Processing time (w/o IO): 190ms
	Processing time (w/o IO): 190ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 190ms
	Processing time (w/o IO): 194ms
	Processing time (w/o IO): 190ms
	Processing time (w/o IO): 189ms
	Processing time (w/o IO): 190ms
	  Time (mean ± σ):     283.9 ms ±   5.9 ms    [User: 271.5 ms, System: 51.1 ms]
	  Range (min … max):   277.6 ms … 292.6 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 685ms
	Processing time (w/o IO): 691ms
	Processing time (w/o IO): 850ms
	Processing time (w/o IO): 700ms
	Processing time (w/o IO): 833ms
	Processing time (w/o IO): 672ms
	Processing time (w/o IO): 696ms
	Processing time (w/o IO): 837ms
	Processing time (w/o IO): 681ms
	Processing time (w/o IO): 692ms
	Processing time (w/o IO): 688ms
	Processing time (w/o IO): 688ms
	Processing time (w/o IO): 682ms
	  Time (mean ± σ):     780.7 ms ±  62.5 ms    [User: 791.5 ms, System: 37.4 ms]
	  Range (min … max):   734.5 ms … 900.4 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 227ms
	Processing time (w/o IO): 217ms
	Processing time (w/o IO): 218ms
	Processing time (w/o IO): 216ms
	Processing time (w/o IO): 217ms
	Processing time (w/o IO): 217ms
	Processing time (w/o IO): 216ms
	Processing time (w/o IO): 216ms
	Processing time (w/o IO): 217ms
	Processing time (w/o IO): 217ms
	Processing time (w/o IO): 219ms
	Processing time (w/o IO): 216ms
	Processing time (w/o IO): 218ms
	  Time (mean ± σ):     292.0 ms ±   0.9 ms    [User: 282.4 ms, System: 31.0 ms]
	  Range (min … max):   290.7 ms … 293.7 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 37 ms
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
	  Time (mean ± σ):      67.5 ms ±   0.5 ms    [User: 56.3 ms, System: 11.2 ms]
	  Range (min … max):    66.9 ms …  68.4 ms    10 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 88 ms
	Processing time (w/o IO): 88 ms
	Processing time (w/o IO): 88 ms
	Processing time (w/o IO): 88 ms
	Processing time (w/o IO): 88 ms
	Processing time (w/o IO): 88 ms
	Processing time (w/o IO): 88 ms
	Processing time (w/o IO): 88 ms
	Processing time (w/o IO): 88 ms
	Processing time (w/o IO): 88 ms
	Processing time (w/o IO): 89 ms
	Processing time (w/o IO): 88 ms
	Processing time (w/o IO): 88 ms
	  Time (mean ± σ):     120.7 ms ±   1.3 ms    [User: 107.9 ms, System: 12.2 ms]
	  Range (min … max):   119.7 ms … 124.2 ms    10 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	  Time (mean ± σ):      67.5 ms ±   0.5 ms    [User: 53.8 ms, System: 13.6 ms]
	  Range (min … max):    67.0 ms …  68.4 ms    10 runs
	 
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
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 50ms
	  Time (mean ± σ):     302.9 ms ±   5.3 ms    [User: 248.8 ms, System: 43.2 ms]
	  Range (min … max):   295.4 ms … 312.4 ms    10 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net7.0/fsharp_con
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 41ms
	Processing time (w/o IO): 41ms
	Processing time (w/o IO): 42ms
	Processing time (w/o IO): 55ms
	Processing time (w/o IO): 41ms
	Processing time (w/o IO): 41ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 42ms
	Processing time (w/o IO): 41ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 51ms
	Processing time (w/o IO): 41ms
	  Time (mean ± σ):     869.5 ms ±   7.8 ms    [User: 821.3 ms, System: 85.7 ms]
	  Range (min … max):   857.4 ms … 881.1 ms    10 runs
	 
C#:

	Benchmark 1: ./bin/release/net7.0/publish/related
	Processing time (w/o IO): 79.3256ms
	Processing time (w/o IO): 79.7037ms
	Processing time (w/o IO): 79.6824ms
	Processing time (w/o IO): 79.5576ms
	Processing time (w/o IO): 79.4982ms
	Processing time (w/o IO): 79.4215ms
	Processing time (w/o IO): 79.6873ms
	Processing time (w/o IO): 79.3668ms
	Processing time (w/o IO): 79.6079ms
	Processing time (w/o IO): 79.8436ms
	Processing time (w/o IO): 80.172ms
	Processing time (w/o IO): 79.4952ms
	Processing time (w/o IO): 80.1652ms
	  Time (mean ± σ):     140.7 ms ±   1.0 ms    [User: 130.3 ms, System: 22.4 ms]
	  Range (min … max):   139.6 ms … 142.7 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	119.55308914185	ms
	Processing time (w/o IO):	118.89600753784	ms
	Processing time (w/o IO):	120.68700790405	ms
	Processing time (w/o IO):	120.05615234375	ms
	Processing time (w/o IO):	120.44906616211	ms
	Processing time (w/o IO):	119.19498443604	ms
	Processing time (w/o IO):	118.88909339905	ms
	Processing time (w/o IO):	119.58885192871	ms
	Processing time (w/o IO):	120.99480628967	ms
	Processing time (w/o IO):	119.80199813843	ms
	Processing time (w/o IO):	121.40202522278	ms
	Processing time (w/o IO):	120.4719543457	ms
	Processing time (w/o IO):	119.07720565796	ms
	  Time (mean ± σ):     421.3 ms ±  46.7 ms    [User: 382.1 ms, System: 24.5 ms]
	  Range (min … max):   401.6 ms … 553.7 ms    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	2357.8350543976	ms
	Processing time (w/o IO):	2381.5908432007	ms
	Processing time (w/o IO):	2355.4890155792	ms
	Processing time (w/o IO):	2354.6540737152	ms
	Processing time (w/o IO):	2356.6839694977	ms
	Processing time (w/o IO):	2360.7370853424	ms
	Processing time (w/o IO):	2393.6491012573	ms
	Processing time (w/o IO):	2353.4250259399	ms
	Processing time (w/o IO):	2371.5419769287	ms
	Processing time (w/o IO):	2358.6709499359	ms
	Processing time (w/o IO):	2356.7547798157	ms
	Processing time (w/o IO):	2425.3618717194	ms
	Processing time (w/o IO):	2401.5049934387	ms
	  Time (mean ± σ):      3.062 s ±  0.026 s    [User: 3.026 s, System: 0.035 s]
	  Range (min … max):    3.034 s …  3.115 s    10 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 202ms
	Processing time (w/o IO): 202ms
	Processing time (w/o IO): 200ms
	Processing time (w/o IO): 206ms
	Processing time (w/o IO): 202ms
	Processing time (w/o IO): 203ms
	Processing time (w/o IO): 207ms
	Processing time (w/o IO): 202ms
	Processing time (w/o IO): 202ms
	Processing time (w/o IO): 201ms
	Processing time (w/o IO): 204ms
	Processing time (w/o IO): 204ms
	Processing time (w/o IO): 205ms
	  Time (mean ± σ):     313.9 ms ±   4.4 ms    [User: 291.6 ms, System: 20.9 ms]
	  Range (min … max):   308.1 ms … 322.1 ms    10 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 222.164166ms
	Processing time (w/o IO): 220.742051ms
	Processing time (w/o IO): 220.109044ms
	  Time (mean ± σ):     312.6 ms ±   2.1 ms    [User: 312.3 ms, System: 30.4 ms]
	  Range (min … max):   311.1 ms … 314.1 ms    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 154.140142ms
	Processing time (w/o IO): 157.405075ms
	Processing time (w/o IO): 155.19175ms
	  Time (mean ± σ):     244.9 ms ±   2.8 ms    [User: 390.1 ms, System: 34.0 ms]
	  Range (min … max):   242.9 ms … 246.9 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 266.565206ms
	Processing time (w/o IO): 265.573394ms
	Processing time (w/o IO): 266.198502ms
	  Time (mean ± σ):     320.3 ms ±   0.2 ms    [User: 299.8 ms, System: 20.4 ms]
	  Range (min … max):   320.2 ms … 320.5 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 131.24908ms
	Processing time (w/o IO): 131.888687ms
	Processing time (w/o IO): 131.078578ms
	  Time (mean ± σ):     185.2 ms ±   0.3 ms    [User: 291.1 ms, System: 20.3 ms]
	  Range (min … max):   185.0 ms … 185.4 ms    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 15.263s
	Processing time (w/o IO): 15.230s
	Processing time (w/o IO): 15.252s
	  Time (mean ± σ):     15.387 s ±  0.018 s    [User: 15.331 s, System: 0.048 s]
	  Range (min … max):   15.374 s … 15.400 s    2 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 3.020s
	Processing time (w/o IO): 2.948s
	Processing time (w/o IO): 2.956s
	  Time (mean ± σ):      3.251 s ±  0.003 s    [User: 2.976 s, System: 0.470 s]
	  Range (min … max):    3.249 s …  3.253 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 596.593372ms
	Processing time (w/o IO): 597.232078ms
	Processing time (w/o IO): 595.784986ms
	  Time (mean ± σ):     777.4 ms ±   5.2 ms    [User: 744.8 ms, System: 27.2 ms]
	  Range (min … max):   773.7 ms … 781.0 ms    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 324ms
	Processing time (w/o IO): 323ms
	Processing time (w/o IO): 323ms
	  Time (mean ± σ):     405.5 ms ±   0.5 ms    [User: 378.2 ms, System: 27.2 ms]
	  Range (min … max):   405.1 ms … 405.9 ms    2 runs
	 
Julia:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 337 milliseconds
	Processing time (w/o IO): 338 milliseconds
	Processing time (w/o IO): 338 milliseconds
	  Time (mean ± σ):      3.784 s ±  0.001 s    [User: 3.579 s, System: 0.200 s]
	  Range (min … max):    3.784 s …  3.785 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  370.485473ms
	Processing time (w/o IO):  372.248484ms
	Processing time (w/o IO):  371.345078ms
	  Time (mean ± σ):      1.034 s ±  0.001 s    [User: 1.019 s, System: 0.014 s]
	  Range (min … max):    1.033 s …  1.035 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 511.754ms
	Processing time (w/o IO): 497.518ms
	Processing time (w/o IO): 496.031ms
	  Time (mean ± σ):      3.452 s ±  0.031 s    [User: 3.387 s, System: 0.060 s]
	  Range (min … max):    3.430 s …  3.474 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 889ms
	Processing time (w/o IO): 892ms
	Processing time (w/o IO): 892ms
	  Time (mean ± σ):      1.608 s ±  0.024 s    [User: 1.601 s, System: 0.189 s]
	  Range (min … max):    1.591 s …  1.626 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 1221ms
	Processing time (w/o IO): 1224ms
	Processing time (w/o IO): 1224ms
	  Time (mean ± σ):      1.639 s ±  0.001 s    [User: 1.597 s, System: 0.052 s]
	  Range (min … max):    1.638 s …  1.639 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 527.0859003067017ms
	Processing time (w/o IO): 526.1729955673218ms
	Processing time (w/o IO): 525.8059501647949ms
	  Time (mean ± σ):      1.668 s ±  0.042 s    [User: 1.549 s, System: 0.105 s]
	  Range (min … max):    1.638 s …  1.698 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 290.226699ms
	Processing time (w/o IO): 294.107941ms
	Processing time (w/o IO): 290.932196ms
	  Time (mean ± σ):      1.470 s ±  0.028 s    [User: 1.614 s, System: 0.119 s]
	  Range (min … max):    1.450 s …  1.490 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 1487ms
	Processing time (w/o IO): 1478ms
	Processing time (w/o IO): 1481ms
	  Time (mean ± σ):      1.675 s ±  0.003 s    [User: 1.644 s, System: 0.078 s]
	  Range (min … max):    1.673 s …  1.678 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 5976ms
	Processing time (w/o IO): 7570ms
	Processing time (w/o IO): 5448ms
	  Time (mean ± σ):      6.654 s ±  1.501 s    [User: 6.645 s, System: 0.071 s]
	  Range (min … max):    5.593 s …  7.716 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 1764ms
	Processing time (w/o IO): 1758ms
	Processing time (w/o IO): 1758ms
	  Time (mean ± σ):      1.922 s ±  0.010 s    [User: 1.904 s, System: 0.059 s]
	  Range (min … max):    1.915 s …  1.929 s    2 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 290 ms
	Processing time (w/o IO): 290 ms
	Processing time (w/o IO): 290 ms
	  Time (mean ± σ):     373.3 ms ±   1.1 ms    [User: 350.4 ms, System: 22.3 ms]
	  Range (min … max):   372.5 ms … 374.1 ms    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 588 ms
	Processing time (w/o IO): 586 ms
	Processing time (w/o IO): 585 ms
	  Time (mean ± σ):     674.9 ms ±   0.5 ms    [User: 650.2 ms, System: 19.5 ms]
	  Range (min … max):   674.5 ms … 675.2 ms    2 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 402ms
	Processing time (w/o IO): 403ms
	Processing time (w/o IO): 401ms
	  Time (mean ± σ):     478.6 ms ±   0.7 ms    [User: 453.9 ms, System: 24.4 ms]
	  Range (min … max):   478.1 ms … 479.1 ms    2 runs
	 
F#:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 329ms
	Processing time (w/o IO): 329ms
	Processing time (w/o IO): 329ms
	  Time (mean ± σ):     760.1 ms ±   4.6 ms    [User: 687.1 ms, System: 73.4 ms]
	  Range (min … max):   756.8 ms … 763.3 ms    2 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net7.0/fsharp_con
	Processing time (w/o IO): 246ms
	Processing time (w/o IO): 247ms
	Processing time (w/o IO): 323ms
	  Time (mean ± σ):      2.386 s ±  0.042 s    [User: 2.564 s, System: 0.129 s]
	  Range (min … max):    2.357 s …  2.416 s    2 runs
	 
C#:

	Benchmark 1: ./bin/release/net7.0/publish/related
	Processing time (w/o IO): 689.1875ms
	Processing time (w/o IO): 687.5066ms
	Processing time (w/o IO): 692.5981ms
	  Time (mean ± σ):     820.5 ms ±   3.3 ms    [User: 804.4 ms, System: 41.7 ms]
	  Range (min … max):   818.2 ms … 822.8 ms    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	961.68398857117	ms
	Processing time (w/o IO):	963.11497688293	ms
	Processing time (w/o IO):	967.35382080078	ms
	  Time (mean ± σ):      1.983 s ±  0.002 s    [User: 1.923 s, System: 0.059 s]
	  Range (min … max):    1.982 s …  1.985 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	20585.810899734	ms
	Processing time (w/o IO):	20605.319976807	ms
	Processing time (w/o IO):	20627.04205513	ms
	  Time (mean ± σ):     22.836 s ±  0.031 s    [User: 22.712 s, System: 0.110 s]
	  Range (min … max):   22.814 s … 22.859 s    2 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 1925ms
	Processing time (w/o IO): 1910ms
	Processing time (w/o IO): 1873ms
	  Time (mean ± σ):      2.248 s ±  0.025 s    [User: 2.160 s, System: 0.084 s]
	  Range (min … max):    2.230 s …  2.266 s    2 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 854.812492ms
	Processing time (w/o IO): 853.870581ms
	Processing time (w/o IO): 854.660291ms
	  Time (mean ± σ):      1.043 s ±  0.004 s    [User: 1.021 s, System: 0.081 s]
	  Range (min … max):    1.040 s …  1.045 s    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 605.598208ms
	Processing time (w/o IO): 612.335286ms
	Processing time (w/o IO): 610.292962ms
	  Time (mean ± σ):     806.8 ms ±  10.4 ms    [User: 1399.1 ms, System: 71.3 ms]
	  Range (min … max):   799.5 ms … 814.1 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 1.07853078s
	Processing time (w/o IO): 1.077522105s
	Processing time (w/o IO): 1.077265885s
	  Time (mean ± σ):      1.201 s ±  0.002 s    [User: 1.163 s, System: 0.038 s]
	  Range (min … max):    1.199 s …  1.203 s    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 516.272452ms
	Processing time (w/o IO): 515.924448ms
	Processing time (w/o IO): 585.177394ms
	  Time (mean ± σ):     669.3 ms ±  49.8 ms    [User: 1092.5 ms, System: 44.5 ms]
	  Range (min … max):   634.1 ms … 704.5 ms    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 61.506s
	Processing time (w/o IO): 62.052s
	Processing time (w/o IO): 61.346s
	  Time (mean ± σ):     61.990 s ±  0.505 s    [User: 61.877 s, System: 0.095 s]
	  Range (min … max):   61.633 s … 62.347 s    2 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 14.156s
	Processing time (w/o IO): 12.027s
	Processing time (w/o IO): 11.900s
	  Time (mean ± σ):     12.527 s ±  0.189 s    [User: 10.930 s, System: 1.725 s]
	  Range (min … max):   12.393 s … 12.661 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 2399.243536ms
	Processing time (w/o IO): 2353.631991ms
	Processing time (w/o IO): 2356.916545ms
	  Time (mean ± σ):      2.749 s ±  0.021 s    [User: 2.698 s, System: 0.043 s]
	  Range (min … max):    2.734 s …  2.764 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 1348ms
	Processing time (w/o IO): 1348ms
	Processing time (w/o IO): 1347ms
	  Time (mean ± σ):      1.529 s ±  0.012 s    [User: 1.477 s, System: 0.037 s]
	  Range (min … max):    1.520 s …  1.537 s    2 runs
	 
Julia:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 1326 milliseconds
	Processing time (w/o IO): 1323 milliseconds
	Processing time (w/o IO): 1324 milliseconds
	  Time (mean ± σ):      4.976 s ±  0.025 s    [User: 4.741 s, System: 0.220 s]
	  Range (min … max):    4.958 s …  4.994 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  1.73496394s
	Processing time (w/o IO):  1.738710181s
	Processing time (w/o IO):  1.730496751s
	  Time (mean ± σ):      3.096 s ±  0.008 s    [User: 3.038 s, System: 0.038 s]
	  Range (min … max):    3.091 s …  3.102 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 1.924s
	Processing time (w/o IO): 1.920s
	Processing time (w/o IO): 1.921s
	  Time (mean ± σ):     18.502 s ±  0.063 s    [User: 18.334 s, System: 0.146 s]
	  Range (min … max):   18.458 s … 18.547 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 3294ms
	Processing time (w/o IO): 2590ms
	Processing time (w/o IO): 2579ms
	  Time (mean ± σ):      3.582 s ±  0.017 s    [User: 3.645 s, System: 0.226 s]
	  Range (min … max):    3.570 s …  3.594 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 4871ms
	Processing time (w/o IO): 4856ms
	Processing time (w/o IO): 4860ms
	  Time (mean ± σ):      5.684 s ±  0.000 s    [User: 5.631 s, System: 0.098 s]
	  Range (min … max):    5.684 s …  5.684 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 2036.1889600753784ms
	Processing time (w/o IO): 2030.9970378875732ms
	Processing time (w/o IO): 2031.7320823669434ms
	  Time (mean ± σ):      4.299 s ±  0.009 s    [User: 4.069 s, System: 0.201 s]
	  Range (min … max):    4.292 s …  4.305 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 1132.613979ms
	Processing time (w/o IO): 1076.305083ms
	Processing time (w/o IO): 1060.565981ms
	  Time (mean ± σ):      3.351 s ±  0.026 s    [User: 4.106 s, System: 0.251 s]
	  Range (min … max):    3.333 s …  3.369 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 5801ms
	Processing time (w/o IO): 5782ms
	Processing time (w/o IO): 5789ms
	  Time (mean ± σ):      6.158 s ±  0.004 s    [User: 6.076 s, System: 0.133 s]
	  Range (min … max):    6.155 s …  6.160 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 27739ms
	Processing time (w/o IO): 28339ms
	Processing time (w/o IO): 28103ms
	  Time (mean ± σ):     28.497 s ±  0.154 s    [User: 28.498 s, System: 0.089 s]
	  Range (min … max):   28.389 s … 28.606 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 5714ms
	Processing time (w/o IO): 5708ms
	Processing time (w/o IO): 5695ms
	  Time (mean ± σ):      5.987 s ±  0.013 s    [User: 5.929 s, System: 0.107 s]
	  Range (min … max):    5.978 s …  5.996 s    2 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 1362 ms
	Processing time (w/o IO): 1365 ms
	Processing time (w/o IO): 1361 ms
	  Time (mean ± σ):      1.536 s ±  0.002 s    [User: 1.481 s, System: 0.049 s]
	  Range (min … max):    1.534 s …  1.537 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 3109 ms
	Processing time (w/o IO): 2963 ms
	Processing time (w/o IO): 2962 ms
	  Time (mean ± σ):      3.139 s ±  0.008 s    [User: 3.074 s, System: 0.051 s]
	  Range (min … max):    3.133 s …  3.144 s    2 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 2262ms
	Processing time (w/o IO): 2260ms
	Processing time (w/o IO): 2261ms
	  Time (mean ± σ):      2.437 s ±  0.015 s    [User: 2.382 s, System: 0.045 s]
	  Range (min … max):    2.427 s …  2.448 s    2 runs
	 
F#:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 1256ms
	Processing time (w/o IO): 1254ms
	Processing time (w/o IO): 1257ms
	  Time (mean ± σ):      1.931 s ±  0.004 s    [User: 1.854 s, System: 0.106 s]
	  Range (min … max):    1.928 s …  1.934 s    2 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net7.0/fsharp_con
	Processing time (w/o IO): 925ms
	Processing time (w/o IO): 923ms
	Processing time (w/o IO): 770ms
	  Time (mean ± σ):      4.672 s ±  0.093 s    [User: 5.452 s, System: 0.247 s]
	  Range (min … max):    4.606 s …  4.737 s    2 runs
	 
C#:

	Benchmark 1: ./bin/release/net7.0/publish/related
	Processing time (w/o IO): 2644.9207ms
	Processing time (w/o IO): 2639.934ms
	Processing time (w/o IO): 2650.0539ms
	  Time (mean ± σ):      2.912 s ±  0.010 s    [User: 2.882 s, System: 0.062 s]
	  Range (min … max):    2.905 s …  2.919 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	3707.573890686	ms
	Processing time (w/o IO):	3678.1198978424	ms
	Processing time (w/o IO):	3685.6880187988	ms
	  Time (mean ± σ):      5.923 s ±  0.008 s    [User: 5.821 s, System: 0.093 s]
	  Range (min … max):    5.918 s …  5.929 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	81743.724822998	ms
	Processing time (w/o IO):	81691.610097885	ms
	Processing time (w/o IO):	81697.599887848	ms
	  Time (mean ± σ):     86.153 s ±  0.033 s    [User: 85.875 s, System: 0.231 s]
	  Range (min … max):   86.130 s … 86.177 s    2 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 7375ms
	Processing time (w/o IO): 7299ms
	Processing time (w/o IO): 7290ms
	  Time (mean ± σ):      8.004 s ±  0.013 s    [User: 7.780 s, System: 0.212 s]
	  Range (min … max):    7.995 s …  8.013 s    2 runs
	 
