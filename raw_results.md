Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 30.19699ms
	Processing time (w/o IO): 30.477189ms
	Processing time (w/o IO): 30.676989ms
	Processing time (w/o IO): 30.04849ms
	Processing time (w/o IO): 30.414789ms
	Processing time (w/o IO): 30.567089ms
	Processing time (w/o IO): 30.115789ms
	Processing time (w/o IO): 30.09869ms
	Processing time (w/o IO): 30.169089ms
	Processing time (w/o IO): 29.92299ms
	Processing time (w/o IO): 30.38919ms
	Processing time (w/o IO): 31.006589ms
	Processing time (w/o IO): 30.47989ms
	Processing time (w/o IO): 30.520489ms
	Processing time (w/o IO): 30.72379ms
	  Time (mean ± σ):      61.3 ms ±   6.5 ms    [User: 53.7 ms, System: 12.1 ms]
	  Range (min … max):    55.7 ms …  77.8 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 22.050692ms
	Processing time (w/o IO): 21.823892ms
	Processing time (w/o IO): 21.801693ms
	Processing time (w/o IO): 21.898292ms
	Processing time (w/o IO): 21.959492ms
	Processing time (w/o IO): 22.190693ms
	Processing time (w/o IO): 21.641393ms
	Processing time (w/o IO): 22.019092ms
	Processing time (w/o IO): 21.598992ms
	Processing time (w/o IO): 21.913393ms
	Processing time (w/o IO): 23.950492ms
	Processing time (w/o IO): 21.886893ms
	Processing time (w/o IO): 21.687993ms
	Processing time (w/o IO): 21.990993ms
	Processing time (w/o IO): 22.127692ms
	  Time (mean ± σ):      50.9 ms ±   1.0 ms    [User: 65.0 ms, System: 13.0 ms]
	  Range (min … max):    49.4 ms …  52.4 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 39.258697ms
	Processing time (w/o IO): 39.109097ms
	Processing time (w/o IO): 39.794797ms
	Processing time (w/o IO): 39.179797ms
	Processing time (w/o IO): 39.072197ms
	Processing time (w/o IO): 39.078797ms
	Processing time (w/o IO): 39.087797ms
	Processing time (w/o IO): 39.037198ms
	Processing time (w/o IO): 39.109597ms
	Processing time (w/o IO): 38.892397ms
	Processing time (w/o IO): 39.075197ms
	Processing time (w/o IO): 39.038597ms
	Processing time (w/o IO): 39.063497ms
	Processing time (w/o IO): 39.044797ms
	Processing time (w/o IO): 38.874197ms
	  Time (mean ± σ):      53.7 ms ±   0.3 ms    [User: 48.8 ms, System: 5.0 ms]
	  Range (min … max):    53.3 ms …  54.3 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 20.077597ms
	Processing time (w/o IO): 19.460697ms
	Processing time (w/o IO): 19.952197ms
	Processing time (w/o IO): 19.695997ms
	Processing time (w/o IO): 19.564097ms
	Processing time (w/o IO): 19.454297ms
	Processing time (w/o IO): 19.338597ms
	Processing time (w/o IO): 19.747797ms
	Processing time (w/o IO): 19.630197ms
	Processing time (w/o IO): 19.468897ms
	Processing time (w/o IO): 19.536797ms
	Processing time (w/o IO): 19.747396ms
	Processing time (w/o IO): 19.491197ms
	Processing time (w/o IO): 19.347897ms
	Processing time (w/o IO): 19.306497ms
	  Time (mean ± σ):      35.5 ms ±   0.3 ms    [User: 46.8 ms, System: 7.1 ms]
	  Range (min … max):    34.9 ms …  35.9 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 2.565s
	Processing time (w/o IO): 2.549s
	Processing time (w/o IO): 2.562s
	Processing time (w/o IO): 2.551s
	Processing time (w/o IO): 2.560s
	  Time (mean ± σ):      2.622 s ±  0.007 s    [User: 2.603 s, System: 0.018 s]
	  Range (min … max):    2.614 s …  2.631 s    5 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 0.423s
	Processing time (w/o IO): 0.394s
	Processing time (w/o IO): 0.374s
	Processing time (w/o IO): 0.373s
	Processing time (w/o IO): 0.370s
	  Time (mean ± σ):     596.4 ms ±  22.9 ms    [User: 626.8 ms, System: 160.1 ms]
	  Range (min … max):   579.7 ms … 633.2 ms    5 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 58.156487ms
	Processing time (w/o IO): 58.076686ms
	Processing time (w/o IO): 59.121986ms
	Processing time (w/o IO): 58.587386ms
	Processing time (w/o IO): 58.784487ms
	Processing time (w/o IO): 58.066186ms
	Processing time (w/o IO): 58.562387ms
	Processing time (w/o IO): 58.181486ms
	Processing time (w/o IO): 58.476987ms
	Processing time (w/o IO): 58.868287ms
	  Time (mean ± σ):     105.3 ms ±   0.9 ms    [User: 98.9 ms, System: 6.2 ms]
	  Range (min … max):   104.1 ms … 107.4 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 31ms
	Processing time (w/o IO): 30ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	  Time (mean ± σ):      71.3 ms ±   0.7 ms    [User: 65.2 ms, System: 5.7 ms]
	  Range (min … max):    70.7 ms …  72.9 ms    10 runs
	 
Julia v2:

	Benchmark 1: julia related_v2.jl
	Processing time (w/o IO): 577 milliseconds
	Processing time (w/o IO): 574 milliseconds
	Processing time (w/o IO): 634 milliseconds
	Processing time (w/o IO): 572 milliseconds
	Processing time (w/o IO): 576 milliseconds
	Processing time (w/o IO): 576 milliseconds
	  Time (mean ± σ):      4.770 s ±  0.081 s    [User: 4.594 s, System: 0.173 s]
	  Range (min … max):    4.717 s …  4.911 s    5 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  44.658987ms
	Processing time (w/o IO):  44.744487ms
	Processing time (w/o IO):  45.654287ms
	Processing time (w/o IO):  45.161987ms
	Processing time (w/o IO):  44.888987ms
	Processing time (w/o IO):  45.210187ms
	Processing time (w/o IO):  44.842087ms
	Processing time (w/o IO):  44.729187ms
	Processing time (w/o IO):  45.434287ms
	Processing time (w/o IO):  45.067887ms
	  Time (mean ± σ):     326.6 ms ±   0.8 ms    [User: 316.9 ms, System: 9.6 ms]
	  Range (min … max):   325.3 ms … 328.0 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 46.360ms
	Processing time (w/o IO): 46.006ms
	Processing time (w/o IO): 46.064ms
	Processing time (w/o IO): 46.359ms
	Processing time (w/o IO): 45.831ms
	  Time (mean ± σ):     335.8 ms ±   3.1 ms    [User: 312.4 ms, System: 22.7 ms]
	  Range (min … max):   330.5 ms … 338.1 ms    5 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 77ms
	Processing time (w/o IO): 77ms
	Processing time (w/o IO): 77ms
	Processing time (w/o IO): 78ms
	Processing time (w/o IO): 78ms
	Processing time (w/o IO): 75ms
	Processing time (w/o IO): 76ms
	Processing time (w/o IO): 78ms
	  Time (mean ± σ):     501.0 ms ±   5.7 ms    [User: 576.2 ms, System: 125.7 ms]
	  Range (min … max):   494.2 ms … 507.6 ms    5 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 115ms
	Processing time (w/o IO): 116ms
	Processing time (w/o IO): 115ms
	Processing time (w/o IO): 114ms
	Processing time (w/o IO): 118ms
	Processing time (w/o IO): 115ms
	Processing time (w/o IO): 117ms
	Processing time (w/o IO): 116ms
	  Time (mean ± σ):     239.5 ms ±   1.7 ms    [User: 224.7 ms, System: 18.1 ms]
	  Range (min … max):   236.9 ms … 241.3 ms    5 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 49.44205284118652ms
	Processing time (w/o IO): 48.6760139465332ms
	Processing time (w/o IO): 48.98989200592041ms
	Processing time (w/o IO): 48.66302013397217ms
	Processing time (w/o IO): 48.72298240661621ms
	Processing time (w/o IO): 48.6760139465332ms
	Processing time (w/o IO): 48.734068870544434ms
	Processing time (w/o IO): 48.828959465026855ms
	Processing time (w/o IO): 48.606038093566895ms
	Processing time (w/o IO): 48.570990562438965ms
	  Time (mean ± σ):     402.5 ms ±   1.7 ms    [User: 363.8 ms, System: 34.9 ms]
	  Range (min … max):   400.6 ms … 406.4 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 30.570491ms
	Processing time (w/o IO): 29.969191ms
	Processing time (w/o IO): 29.989191ms
	Processing time (w/o IO): 29.88789ms
	Processing time (w/o IO): 30.34859ms
	Processing time (w/o IO): 31.59339ms
	Processing time (w/o IO): 29.992291ms
	Processing time (w/o IO): 29.827391ms
	Processing time (w/o IO): 30.281291ms
	Processing time (w/o IO): 30.06859ms
	  Time (mean ± σ):     392.7 ms ±   3.1 ms    [User: 376.9 ms, System: 38.8 ms]
	  Range (min … max):   386.4 ms … 397.5 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 165ms
	Processing time (w/o IO): 164ms
	Processing time (w/o IO): 162ms
	Processing time (w/o IO): 160ms
	Processing time (w/o IO): 161ms
	  Time (mean ± σ):     230.0 ms ±   7.3 ms    [User: 216.0 ms, System: 54.4 ms]
	  Range (min … max):   221.9 ms … 238.7 ms    5 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 560ms
	Processing time (w/o IO): 548ms
	Processing time (w/o IO): 687ms
	Processing time (w/o IO): 698ms
	Processing time (w/o IO): 700ms
	  Time (mean ± σ):     700.9 ms ±  64.1 ms    [User: 701.0 ms, System: 30.8 ms]
	  Range (min … max):   593.4 ms … 745.3 ms    5 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 157ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 145ms
	Processing time (w/o IO): 149ms
	Processing time (w/o IO): 147ms
	  Time (mean ± σ):     233.7 ms ±  46.1 ms    [User: 206.9 ms, System: 27.5 ms]
	  Range (min … max):   208.7 ms … 316.0 ms    5 runs
	 
Java (JIT):

	Benchmark 1: java -Xms10m -Xmx10m -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 252 ms
	Processing time (w/o IO): 219 ms
	Processing time (w/o IO): 231 ms
	Processing time (w/o IO): 231 ms
	Processing time (w/o IO): 236 ms
	Processing time (w/o IO): 223 ms
	Processing time (w/o IO): 237 ms
	Processing time (w/o IO): 297 ms
	Processing time (w/o IO): 227 ms
	Processing time (w/o IO): 224 ms
	Processing time (w/o IO): 231 ms
	Processing time (w/o IO): 225 ms
	Processing time (w/o IO): 231 ms
	  Time (mean ± σ):     496.3 ms ±  28.9 ms    [User: 830.9 ms, System: 52.6 ms]
	  Range (min … max):   465.2 ms … 569.2 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
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
	  Time (mean ± σ):      61.4 ms ±   0.2 ms    [User: 54.2 ms, System: 7.4 ms]
	  Range (min … max):    61.2 ms …  61.7 ms    10 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 48ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 46ms
	  Time (mean ± σ):      71.3 ms ±   0.7 ms    [User: 60.3 ms, System: 11.1 ms]
	  Range (min … max):    70.1 ms …  72.1 ms    10 runs
	 
F#:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 48ms
	Processing time (w/o IO): 48ms
	Processing time (w/o IO): 48ms
	Processing time (w/o IO): 48ms
	Processing time (w/o IO): 48ms
	Processing time (w/o IO): 48ms
	Processing time (w/o IO): 48ms
	  Time (mean ± σ):     287.1 ms ±   3.1 ms    [User: 232.2 ms, System: 41.2 ms]
	  Range (min … max):   283.4 ms … 289.8 ms    5 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net7.0/fsharp_con
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 57ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	  Time (mean ± σ):     787.6 ms ±   9.4 ms    [User: 732.6 ms, System: 68.0 ms]
	  Range (min … max):   778.3 ms … 803.2 ms    5 runs
	 
C#:

	Benchmark 1: ./bin/release/net7.0/publish/related
	Processing time (w/o IO): 98.5621ms
	Processing time (w/o IO): 97.422ms
	Processing time (w/o IO): 97.117ms
	Processing time (w/o IO): 97.8907ms
	Processing time (w/o IO): 96.9073ms
	Processing time (w/o IO): 98.5127ms
	Processing time (w/o IO): 97.0021ms
	  Time (mean ± σ):     298.8 ms ±   6.3 ms    [User: 248.1 ms, System: 36.3 ms]
	  Range (min … max):   289.1 ms … 303.9 ms    5 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	101.7210483551	ms
	Processing time (w/o IO):	101.34696960449	ms
	Processing time (w/o IO):	101.09496116638	ms
	Processing time (w/o IO):	102.76699066162	ms
	Processing time (w/o IO):	102.63204574585	ms
	Processing time (w/o IO):	101.27997398376	ms
	Processing time (w/o IO):	101.52697563171	ms
	  Time (mean ± σ):     351.2 ms ±   5.3 ms    [User: 335.1 ms, System: 15.8 ms]
	  Range (min … max):   345.6 ms … 359.7 ms    5 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1934.3340396881	ms
	Processing time (w/o IO):	1932.5261116028	ms
	Processing time (w/o IO):	1944.8871612549	ms
	Processing time (w/o IO):	1989.7770881653	ms
	Processing time (w/o IO):	1968.8100814819	ms
	Processing time (w/o IO):	1935.7149600983	ms
	Processing time (w/o IO):	1988.8510704041	ms
	  Time (mean ± σ):      2.534 s ±  0.027 s    [User: 2.497 s, System: 0.033 s]
	  Range (min … max):    2.507 s …  2.563 s    5 runs
	 
