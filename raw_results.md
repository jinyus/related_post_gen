Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 30.312274ms
	Processing time (w/o IO): 31.359484ms
	Processing time (w/o IO): 31.725587ms
	Processing time (w/o IO): 30.619877ms
	Processing time (w/o IO): 30.871279ms
	Processing time (w/o IO): 30.876279ms
	Processing time (w/o IO): 30.622477ms
	Processing time (w/o IO): 30.632177ms
	Processing time (w/o IO): 30.790579ms
	Processing time (w/o IO): 31.148882ms
	Processing time (w/o IO): 30.97978ms
	Processing time (w/o IO): 31.472885ms
	Processing time (w/o IO): 30.442875ms
	  Time (mean ± σ):      62.8 ms ±   1.1 ms    [User: 56.4 ms, System: 13.5 ms]
	  Range (min … max):    60.9 ms …  64.1 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 16.709546ms
	Processing time (w/o IO): 18.117059ms
	Processing time (w/o IO): 16.705646ms
	Processing time (w/o IO): 16.785647ms
	Processing time (w/o IO): 16.541344ms
	Processing time (w/o IO): 18.152359ms
	Processing time (w/o IO): 15.99514ms
	Processing time (w/o IO): 16.536545ms
	Processing time (w/o IO): 16.067941ms
	Processing time (w/o IO): 16.052241ms
	Processing time (w/o IO): 17.645454ms
	Processing time (w/o IO): 16.04694ms
	Processing time (w/o IO): 15.863339ms
	  Time (mean ± σ):      50.8 ms ±   1.7 ms    [User: 55.6 ms, System: 15.4 ms]
	  Range (min … max):    48.7 ms …  53.8 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 28.183758ms
	Processing time (w/o IO): 28.054957ms
	Processing time (w/o IO): 28.598662ms
	Processing time (w/o IO): 28.297059ms
	Processing time (w/o IO): 28.104157ms
	Processing time (w/o IO): 28.601862ms
	Processing time (w/o IO): 28.155358ms
	Processing time (w/o IO): 28.584862ms
	Processing time (w/o IO): 28.131158ms
	Processing time (w/o IO): 28.064057ms
	Processing time (w/o IO): 28.029557ms
	Processing time (w/o IO): 28.105057ms
	Processing time (w/o IO): 28.157858ms
	  Time (mean ± σ):      47.7 ms ±   0.3 ms    [User: 38.7 ms, System: 8.8 ms]
	  Range (min … max):    47.2 ms …  48.2 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 17.771158ms
	Processing time (w/o IO): 18.262762ms
	Processing time (w/o IO): 18.127461ms
	Processing time (w/o IO): 34.389206ms
	Processing time (w/o IO): 26.657237ms
	Processing time (w/o IO): 26.440534ms
	Processing time (w/o IO): 19.517073ms
	Processing time (w/o IO): 17.705957ms
	Processing time (w/o IO): 17.766957ms
	Processing time (w/o IO): 17.847459ms
	Processing time (w/o IO): 17.778958ms
	Processing time (w/o IO): 17.715757ms
	Processing time (w/o IO): 17.91356ms
	  Time (mean ± σ):      41.8 ms ±   6.2 ms    [User: 45.7 ms, System: 9.2 ms]
	  Range (min … max):    37.5 ms …  55.2 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 2.688s
	Processing time (w/o IO): 2.704s
	Processing time (w/o IO): 2.701s
	Processing time (w/o IO): 2.694s
	Processing time (w/o IO): 2.688s
	  Time (mean ± σ):      2.775 s ±  0.010 s    [User: 2.756 s, System: 0.014 s]
	  Range (min … max):    2.765 s …  2.787 s    5 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 0.433s
	Processing time (w/o IO): 0.389s
	Processing time (w/o IO): 0.411s
	Processing time (w/o IO): 0.377s
	Processing time (w/o IO): 0.378s
	  Time (mean ± σ):     634.0 ms ±  24.1 ms    [User: 642.8 ms, System: 191.0 ms]
	  Range (min … max):   612.0 ms … 668.4 ms    5 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 55.965921ms
	Processing time (w/o IO): 56.758729ms
	Processing time (w/o IO): 55.92292ms
	Processing time (w/o IO): 56.032121ms
	Processing time (w/o IO): 55.981821ms
	Processing time (w/o IO): 55.91082ms
	Processing time (w/o IO): 57.196932ms
	Processing time (w/o IO): 55.993821ms
	Processing time (w/o IO): 56.393625ms
	Processing time (w/o IO): 55.89332ms
	  Time (mean ± σ):     112.6 ms ±   0.8 ms    [User: 100.7 ms, System: 11.9 ms]
	  Range (min … max):   111.6 ms … 114.2 ms    10 runs
	 
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
	  Time (mean ± σ):      79.9 ms ±   0.4 ms    [User: 76.6 ms, System: 3.3 ms]
	  Range (min … max):    79.5 ms …  80.7 ms    10 runs
	 
Julia v2:

	Benchmark 1: julia related_v2.jl
	Processing time (w/o IO): 635 milliseconds
	Processing time (w/o IO): 670 milliseconds
	Processing time (w/o IO): 643 milliseconds
	Processing time (w/o IO): 636 milliseconds
	Processing time (w/o IO): 673 milliseconds
	Processing time (w/o IO): 636 milliseconds
	  Time (mean ± σ):      5.130 s ±  0.023 s    [User: 4.921 s, System: 0.207 s]
	  Range (min … max):    5.104 s …  5.155 s    5 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  63.771728ms
	Processing time (w/o IO):  63.148423ms
	Processing time (w/o IO):  63.166724ms
	Processing time (w/o IO):  63.493152ms
	Processing time (w/o IO):  63.899955ms
	Processing time (w/o IO):  63.550552ms
	Processing time (w/o IO):  63.691554ms
	Processing time (w/o IO):  63.312651ms
	Processing time (w/o IO):  63.28125ms
	Processing time (w/o IO):  63.579953ms
	  Time (mean ± σ):     311.8 ms ±   0.7 ms    [User: 301.4 ms, System: 10.3 ms]
	  Range (min … max):   310.6 ms … 312.6 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 59.380ms
	Processing time (w/o IO): 59.982ms
	Processing time (w/o IO): 60.051ms
	Processing time (w/o IO): 59.837ms
	Processing time (w/o IO): 59.946ms
	  Time (mean ± σ):     385.7 ms ±   3.2 ms    [User: 355.6 ms, System: 29.4 ms]
	  Range (min … max):   382.2 ms … 390.7 ms    5 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 93ms
	Processing time (w/o IO): 94ms
	Processing time (w/o IO): 115ms
	Processing time (w/o IO): 93ms
	Processing time (w/o IO): 94ms
	Processing time (w/o IO): 93ms
	Processing time (w/o IO): 115ms
	Processing time (w/o IO): 132ms
	  Time (mean ± σ):     590.9 ms ±  38.9 ms    [User: 647.1 ms, System: 161.6 ms]
	  Range (min … max):   563.4 ms … 657.3 ms    5 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 142ms
	Processing time (w/o IO): 142ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 143ms
	  Time (mean ± σ):     285.8 ms ±   4.7 ms    [User: 266.2 ms, System: 22.2 ms]
	  Range (min … max):   282.9 ms … 294.1 ms    5 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 65.58704376220703ms
	Processing time (w/o IO): 65.5299425125122ms
	Processing time (w/o IO): 66.36106967926025ms
	Processing time (w/o IO): 65.93203544616699ms
	Processing time (w/o IO): 65.33098220825195ms
	Processing time (w/o IO): 65.77801704406738ms
	Processing time (w/o IO): 65.47510623931885ms
	Processing time (w/o IO): 65.83905220031738ms
	Processing time (w/o IO): 65.31596183776855ms
	Processing time (w/o IO): 66.10500812530518ms
	  Time (mean ± σ):     444.5 ms ±   7.8 ms    [User: 397.9 ms, System: 41.6 ms]
	  Range (min … max):   437.8 ms … 458.8 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 40.335461ms
	Processing time (w/o IO): 40.130359ms
	Processing time (w/o IO): 41.770474ms
	Processing time (w/o IO): 41.31217ms
	Processing time (w/o IO): 40.088571ms
	Processing time (w/o IO): 40.390975ms
	Processing time (w/o IO): 40.567476ms
	Processing time (w/o IO): 40.99888ms
	Processing time (w/o IO): 41.241282ms
	Processing time (w/o IO): 40.661177ms
	  Time (mean ± σ):     428.3 ms ±   8.3 ms    [User: 422.6 ms, System: 37.7 ms]
	  Range (min … max):   421.0 ms … 444.5 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 204ms
	Processing time (w/o IO): 202ms
	Processing time (w/o IO): 203ms
	Processing time (w/o IO): 200ms
	Processing time (w/o IO): 200ms
	  Time (mean ± σ):     277.2 ms ±   8.5 ms    [User: 258.8 ms, System: 52.6 ms]
	  Range (min … max):   270.0 ms … 289.9 ms    5 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 674ms
	Processing time (w/o IO): 690ms
	Processing time (w/o IO): 673ms
	Processing time (w/o IO): 654ms
	Processing time (w/o IO): 866ms
	  Time (mean ± σ):     787.3 ms ±  87.6 ms    [User: 766.8 ms, System: 32.0 ms]
	  Range (min … max):   710.2 ms … 919.9 ms    5 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 182ms
	Processing time (w/o IO): 181ms
	Processing time (w/o IO): 181ms
	Processing time (w/o IO): 181ms
	  Time (mean ± σ):     276.7 ms ±  56.2 ms    [User: 237.5 ms, System: 36.7 ms]
	  Range (min … max):   249.9 ms … 377.2 ms    5 runs
	 
Java (JIT):

	Benchmark 1: java -Xms10m -Xmx10m -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 267 ms
	Processing time (w/o IO): 253 ms
	Processing time (w/o IO): 270 ms
	Processing time (w/o IO): 274 ms
	Processing time (w/o IO): 258 ms
	Processing time (w/o IO): 271 ms
	Processing time (w/o IO): 259 ms
	Processing time (w/o IO): 271 ms
	Processing time (w/o IO): 270 ms
	Processing time (w/o IO): 258 ms
	Processing time (w/o IO): 256 ms
	Processing time (w/o IO): 275 ms
	Processing time (w/o IO): 265 ms
	  Time (mean ± σ):     551.2 ms ±  24.3 ms    [User: 923.3 ms, System: 66.3 ms]
	  Range (min … max):   529.1 ms … 611.8 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 38 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 35 ms
	  Time (mean ± σ):      64.4 ms ±   0.6 ms    [User: 52.9 ms, System: 11.6 ms]
	  Range (min … max):    63.4 ms …  65.8 ms    10 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	  Time (mean ± σ):     121.1 ms ±   0.4 ms    [User: 110.1 ms, System: 11.0 ms]
	  Range (min … max):   120.7 ms … 121.7 ms    10 runs
	 
Fsharp:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 48ms
	Processing time (w/o IO): 48ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 48ms
	Processing time (w/o IO): 48ms
	Processing time (w/o IO): 48ms
	  Time (mean ± σ):     866.5 ms ±   5.0 ms    [User: 804.6 ms, System: 74.6 ms]
	  Range (min … max):   860.0 ms … 871.8 ms    5 runs
	 
Fsharp Concurrent:

	Benchmark 1: ./bin/release/net7.0/fsharp_con
	Processing time (w/o IO): 41ms
	Processing time (w/o IO): 70ms
	Processing time (w/o IO): 41ms
	Processing time (w/o IO): 41ms
	Processing time (w/o IO): 41ms
	Processing time (w/o IO): 41ms
	Processing time (w/o IO): 40ms
	  Time (mean ± σ):     868.0 ms ±   9.5 ms    [User: 834.5 ms, System: 76.2 ms]
	  Range (min … max):   856.7 ms … 879.7 ms    5 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	118.90292167664	ms
	Processing time (w/o IO):	120.61500549316	ms
	Processing time (w/o IO):	120.84794044495	ms
	Processing time (w/o IO):	120.57900428772	ms
	Processing time (w/o IO):	120.34511566162	ms
	Processing time (w/o IO):	120.68605422974	ms
	Processing time (w/o IO):	120.63217163086	ms
	  Time (mean ± σ):     418.6 ms ±   4.2 ms    [User: 390.9 ms, System: 27.5 ms]
	  Range (min … max):   412.9 ms … 423.0 ms    5 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	2395.9238529205	ms
	Processing time (w/o IO):	2437.4830722809	ms
	Processing time (w/o IO):	2352.2047996521	ms
	Processing time (w/o IO):	2354.3269634247	ms
	Processing time (w/o IO):	2355.2551269531	ms
	Processing time (w/o IO):	2359.3628406525	ms
	Processing time (w/o IO):	2357.3760986328	ms
	  Time (mean ± σ):      3.048 s ±  0.011 s    [User: 3.014 s, System: 0.033 s]
	  Range (min … max):    3.036 s …  3.064 s    5 runs
	 
