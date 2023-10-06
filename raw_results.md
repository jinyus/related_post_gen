Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 25.544414ms
	Processing time (w/o IO): 25.323706ms
	Processing time (w/o IO): 25.945329ms
	Processing time (w/o IO): 25.375608ms
	Processing time (w/o IO): 26.107734ms
	Processing time (w/o IO): 25.857225ms
	Processing time (w/o IO): 28.004302ms
	Processing time (w/o IO): 26.911863ms
	Processing time (w/o IO): 25.920628ms
	Processing time (w/o IO): 26.01383ms
	Processing time (w/o IO): 27.475083ms
	Processing time (w/o IO): 27.514284ms
	Processing time (w/o IO): 28.947836ms
	Processing time (w/o IO): 25.43311ms
	Processing time (w/o IO): 25.521013ms
	  Time (mean ± σ):      58.1 ms ±   2.0 ms    [User: 48.6 ms, System: 15.1 ms]
	  Range (min … max):    55.8 ms …  61.6 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 18.383058ms
	Processing time (w/o IO): 18.521163ms
	Processing time (w/o IO): 18.556664ms
	Processing time (w/o IO): 18.73577ms
	Processing time (w/o IO): 18.914477ms
	Processing time (w/o IO): 18.319455ms
	Processing time (w/o IO): 18.751871ms
	Processing time (w/o IO): 20.666439ms
	Processing time (w/o IO): 18.867175ms
	Processing time (w/o IO): 18.508062ms
	Processing time (w/o IO): 18.44316ms
	Processing time (w/o IO): 19.256289ms
	Processing time (w/o IO): 19.158985ms
	Processing time (w/o IO): 19.353093ms
	Processing time (w/o IO): 18.922177ms
	  Time (mean ± σ):      49.6 ms ±   1.8 ms    [User: 59.8 ms, System: 13.5 ms]
	  Range (min … max):    47.2 ms …  52.2 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 38.888637ms
	Processing time (w/o IO): 39.543858ms
	Processing time (w/o IO): 39.211347ms
	Processing time (w/o IO): 39.008341ms
	Processing time (w/o IO): 38.734132ms
	Processing time (w/o IO): 38.932138ms
	Processing time (w/o IO): 38.925539ms
	Processing time (w/o IO): 38.795034ms
	Processing time (w/o IO): 38.807735ms
	Processing time (w/o IO): 38.858336ms
	Processing time (w/o IO): 38.915838ms
	Processing time (w/o IO): 38.754333ms
	Processing time (w/o IO): 38.766933ms
	Processing time (w/o IO): 38.68313ms
	Processing time (w/o IO): 38.842836ms
	  Time (mean ± σ):      56.7 ms ±   0.5 ms    [User: 50.0 ms, System: 6.6 ms]
	  Range (min … max):    56.1 ms …  57.7 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 24.324646ms
	Processing time (w/o IO): 22.569592ms
	Processing time (w/o IO): 22.916103ms
	Processing time (w/o IO): 28.67428ms
	Processing time (w/o IO): 23.14101ms
	Processing time (w/o IO): 23.077808ms
	Processing time (w/o IO): 22.367286ms
	Processing time (w/o IO): 22.651495ms
	Processing time (w/o IO): 23.11001ms
	Processing time (w/o IO): 24.074139ms
	Processing time (w/o IO): 23.916434ms
	Processing time (w/o IO): 23.391018ms
	Processing time (w/o IO): 24.207243ms
	Processing time (w/o IO): 23.12411ms
	Processing time (w/o IO): 23.049407ms
	  Time (mean ± σ):      41.8 ms ±   0.8 ms    [User: 56.7 ms, System: 6.4 ms]
	  Range (min … max):    40.1 ms …  42.6 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 2.811s
	Processing time (w/o IO): 2.800s
	Processing time (w/o IO): 2.802s
	Processing time (w/o IO): 2.874s
	Processing time (w/o IO): 2.857s
	  Time (mean ± σ):      2.904 s ±  0.033 s    [User: 2.886 s, System: 0.017 s]
	  Range (min … max):    2.875 s …  2.948 s    5 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 0.448s
	Processing time (w/o IO): 0.425s
	Processing time (w/o IO): 0.391s
	Processing time (w/o IO): 0.389s
	Processing time (w/o IO): 0.384s
	  Time (mean ± σ):     640.1 ms ±  29.9 ms    [User: 613.7 ms, System: 231.6 ms]
	  Range (min … max):   613.1 ms … 682.7 ms    5 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 68.591147ms
	Processing time (w/o IO): 68.384043ms
	Processing time (w/o IO): 68.383542ms
	Processing time (w/o IO): 68.919556ms
	Processing time (w/o IO): 68.365342ms
	Processing time (w/o IO): 68.456762ms
	Processing time (w/o IO): 68.505064ms
	Processing time (w/o IO): 68.478463ms
	Processing time (w/o IO): 68.579366ms
	Processing time (w/o IO): 68.610167ms
	  Time (mean ± σ):     126.0 ms ±   2.0 ms    [User: 114.4 ms, System: 11.2 ms]
	  Range (min … max):   124.2 ms … 131.4 ms    10 runs
	 
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
	  Time (mean ± σ):      79.5 ms ±   1.1 ms    [User: 72.1 ms, System: 7.3 ms]
	  Range (min … max):    78.8 ms …  82.5 ms    10 runs
	 
Julia:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 41 milliseconds
	Processing time (w/o IO): 41 milliseconds
	Processing time (w/o IO): 50 milliseconds
	Processing time (w/o IO): 41 milliseconds
	Processing time (w/o IO): 41 milliseconds
	Processing time (w/o IO): 42 milliseconds
	  Time (mean ± σ):      2.717 s ±  0.019 s    [User: 2.556 s, System: 0.159 s]
	  Range (min … max):    2.698 s …  2.747 s    5 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  46.459444ms
	Processing time (w/o IO):  46.454244ms
	Processing time (w/o IO):  46.381342ms
	Processing time (w/o IO):  46.27194ms
	Processing time (w/o IO):  46.680249ms
	Processing time (w/o IO):  46.536247ms
	Processing time (w/o IO):  46.415443ms
	Processing time (w/o IO):  46.863854ms
	Processing time (w/o IO):  46.317141ms
	Processing time (w/o IO):  46.819653ms
	  Time (mean ± σ):     294.3 ms ±   0.9 ms    [User: 284.5 ms, System: 9.8 ms]
	  Range (min … max):   293.3 ms … 296.2 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 59.567ms
	Processing time (w/o IO): 59.145ms
	Processing time (w/o IO): 58.928ms
	Processing time (w/o IO): 59.593ms
	Processing time (w/o IO): 59.458ms
	  Time (mean ± σ):     400.6 ms ±   1.2 ms    [User: 360.7 ms, System: 39.1 ms]
	  Range (min … max):   399.5 ms … 402.0 ms    5 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 93ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 116ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 115ms
	Processing time (w/o IO): 98ms
	Processing time (w/o IO): 93ms
	Processing time (w/o IO): 131ms
	  Time (mean ± σ):     573.1 ms ±  20.9 ms    [User: 644.1 ms, System: 150.5 ms]
	  Range (min … max):   551.5 ms … 598.8 ms    5 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 142ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 144ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 141ms
	  Time (mean ± σ):     283.8 ms ±   1.7 ms    [User: 257.2 ms, System: 30.5 ms]
	  Range (min … max):   282.0 ms … 285.8 ms    5 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 65.2700662612915ms
	Processing time (w/o IO): 65.46211242675781ms
	Processing time (w/o IO): 65.43195247650146ms
	Processing time (w/o IO): 65.1320219039917ms
	Processing time (w/o IO): 65.28198719024658ms
	Processing time (w/o IO): 65.14894962310791ms
	Processing time (w/o IO): 65.28496742248535ms
	Processing time (w/o IO): 65.31095504760742ms
	Processing time (w/o IO): 66.16795063018799ms
	Processing time (w/o IO): 65.67108631134033ms
	  Time (mean ± σ):     442.3 ms ±   3.0 ms    [User: 395.6 ms, System: 41.5 ms]
	  Range (min … max):   437.8 ms … 448.4 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 39.868911ms
	Processing time (w/o IO): 39.915799ms
	Processing time (w/o IO): 40.110743ms
	Processing time (w/o IO): 40.395049ms
	Processing time (w/o IO): 39.469227ms
	Processing time (w/o IO): 39.650232ms
	Processing time (w/o IO): 39.795935ms
	Processing time (w/o IO): 40.41065ms
	Processing time (w/o IO): 39.849137ms
	Processing time (w/o IO): 40.695066ms
	  Time (mean ± σ):     421.3 ms ±   1.8 ms    [User: 408.7 ms, System: 43.9 ms]
	  Range (min … max):   418.7 ms … 425.1 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 206ms
	Processing time (w/o IO): 202ms
	Processing time (w/o IO): 203ms
	Processing time (w/o IO): 200ms
	Processing time (w/o IO): 200ms
	  Time (mean ± σ):     278.4 ms ±   3.6 ms    [User: 260.1 ms, System: 53.6 ms]
	  Range (min … max):   272.9 ms … 281.9 ms    5 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 700ms
	Processing time (w/o IO): 811ms
	Processing time (w/o IO): 811ms
	Processing time (w/o IO): 690ms
	Processing time (w/o IO): 810ms
	  Time (mean ± σ):     838.6 ms ±  53.6 ms    [User: 832.1 ms, System: 38.7 ms]
	  Range (min … max):   743.5 ms … 868.6 ms    5 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 190ms
	Processing time (w/o IO): 180ms
	Processing time (w/o IO): 181ms
	Processing time (w/o IO): 183ms
	Processing time (w/o IO): 182ms
	  Time (mean ± σ):     272.4 ms ±  48.8 ms    [User: 247.3 ms, System: 24.8 ms]
	  Range (min … max):   248.5 ms … 359.6 ms    5 runs
	 
Java (JIT):

	Benchmark 1: java -Xms10m -Xmx10m -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 258 ms
	Processing time (w/o IO): 249 ms
	Processing time (w/o IO): 245 ms
	Processing time (w/o IO): 266 ms
	Processing time (w/o IO): 266 ms
	Processing time (w/o IO): 250 ms
	Processing time (w/o IO): 250 ms
	Processing time (w/o IO): 270 ms
	Processing time (w/o IO): 253 ms
	Processing time (w/o IO): 254 ms
	Processing time (w/o IO): 271 ms
	Processing time (w/o IO): 254 ms
	Processing time (w/o IO): 251 ms
	  Time (mean ± σ):     548.1 ms ±  27.9 ms    [User: 915.9 ms, System: 61.5 ms]
	  Range (min … max):   527.1 ms … 622.4 ms    10 runs
	 
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
	  Time (mean ± σ):      70.4 ms ±   0.4 ms    [User: 56.6 ms, System: 13.9 ms]
	  Range (min … max):    69.6 ms …  71.3 ms    10 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 56ms
	Processing time (w/o IO): 56ms
	Processing time (w/o IO): 56ms
	Processing time (w/o IO): 56ms
	Processing time (w/o IO): 56ms
	Processing time (w/o IO): 56ms
	Processing time (w/o IO): 56ms
	Processing time (w/o IO): 56ms
	Processing time (w/o IO): 56ms
	Processing time (w/o IO): 56ms
	Processing time (w/o IO): 56ms
	Processing time (w/o IO): 56ms
	  Time (mean ± σ):      85.6 ms ±   0.6 ms    [User: 75.0 ms, System: 10.5 ms]
	  Range (min … max):    84.5 ms …  86.6 ms    10 runs
	 
F#:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 45ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 46ms
	  Time (mean ± σ):     304.2 ms ±  15.0 ms    [User: 246.3 ms, System: 43.5 ms]
	  Range (min … max):   293.8 ms … 330.4 ms    5 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net7.0/fsharp_con
	Processing time (w/o IO): 41ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 41ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 41ms
	Processing time (w/o IO): 41ms
	Processing time (w/o IO): 40ms
	  Time (mean ± σ):     854.3 ms ±  11.1 ms    [User: 812.0 ms, System: 85.2 ms]
	  Range (min … max):   839.7 ms … 867.2 ms    5 runs
	 
C#:

	Benchmark 1: ./bin/release/net7.0/publish/related
	Processing time (w/o IO): 73.4924ms
	Processing time (w/o IO): 73.5858ms
	Processing time (w/o IO): 73.3498ms
	Processing time (w/o IO): 73.3994ms
	Processing time (w/o IO): 73.5503ms
	Processing time (w/o IO): 73.5544ms
	Processing time (w/o IO): 73.4332ms
	  Time (mean ± σ):     283.7 ms ±   5.3 ms    [User: 236.8 ms, System: 34.5 ms]
	  Range (min … max):   276.2 ms … 291.2 ms    5 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	116.6660785675	ms
	Processing time (w/o IO):	117.48290061951	ms
	Processing time (w/o IO):	117.91491508484	ms
	Processing time (w/o IO):	116.84989929199	ms
	Processing time (w/o IO):	117.62189865112	ms
	Processing time (w/o IO):	120.1479434967	ms
	Processing time (w/o IO):	119.34494972229	ms
	  Time (mean ± σ):     400.1 ms ±   9.8 ms    [User: 375.1 ms, System: 24.8 ms]
	  Range (min … max):   387.6 ms … 412.1 ms    5 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	2350.4400253296	ms
	Processing time (w/o IO):	2352.3828983307	ms
	Processing time (w/o IO):	2354.6769618988	ms
	Processing time (w/o IO):	2351.0789871216	ms
	Processing time (w/o IO):	2348.0439186096	ms
	Processing time (w/o IO):	2426.8488883972	ms
	Processing time (w/o IO):	2355.5920124054	ms
	  Time (mean ± σ):      3.037 s ±  0.045 s    [User: 3.011 s, System: 0.023 s]
	  Range (min … max):    3.002 s …  3.114 s    5 runs
	 
