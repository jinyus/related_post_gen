Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 31.066171ms
	Processing time (w/o IO): 31.031671ms
	Processing time (w/o IO): 30.700357ms
	Processing time (w/o IO): 30.385944ms
	Processing time (w/o IO): 30.656855ms
	Processing time (w/o IO): 31.285881ms
	Processing time (w/o IO): 31.00087ms
	Processing time (w/o IO): 30.968568ms
	Processing time (w/o IO): 31.124375ms
	Processing time (w/o IO): 30.828662ms
	Processing time (w/o IO): 31.437987ms
	Processing time (w/o IO): 31.644596ms
	Processing time (w/o IO): 30.498449ms
	Processing time (w/o IO): 30.465047ms
	Processing time (w/o IO): 31.382384ms
	  Time (mean ± σ):      70.9 ms ±   3.8 ms    [User: 63.4 ms, System: 14.9 ms]
	  Range (min … max):    66.7 ms …  77.7 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 22.646527ms
	Processing time (w/o IO): 25.229633ms
	Processing time (w/o IO): 24.401009ms
	Processing time (w/o IO): 23.860494ms
	Processing time (w/o IO): 25.709947ms
	Processing time (w/o IO): 22.328948ms
	Processing time (w/o IO): 22.409151ms
	Processing time (w/o IO): 22.587456ms
	Processing time (w/o IO): 23.279576ms
	Processing time (w/o IO): 24.0915ms
	Processing time (w/o IO): 23.128872ms
	Processing time (w/o IO): 24.654216ms
	Processing time (w/o IO): 22.477153ms
	Processing time (w/o IO): 22.583356ms
	Processing time (w/o IO): 22.849364ms
	  Time (mean ± σ):      60.4 ms ±   2.9 ms    [User: 72.9 ms, System: 14.8 ms]
	  Range (min … max):    56.1 ms …  65.7 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 37.046688ms
	Processing time (w/o IO): 36.813679ms
	Processing time (w/o IO): 36.881482ms
	Processing time (w/o IO): 36.83318ms
	Processing time (w/o IO): 36.616371ms
	Processing time (w/o IO): 36.886182ms
	Processing time (w/o IO): 36.849881ms
	Processing time (w/o IO): 37.245395ms
	Processing time (w/o IO): 36.874281ms
	Processing time (w/o IO): 36.862981ms
	Processing time (w/o IO): 36.885081ms
	Processing time (w/o IO): 36.85318ms
	Processing time (w/o IO): 36.83278ms
	Processing time (w/o IO): 36.82498ms
	Processing time (w/o IO): 36.959184ms
	  Time (mean ± σ):      58.3 ms ±   0.7 ms    [User: 49.5 ms, System: 8.8 ms]
	  Range (min … max):    57.0 ms …  59.7 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 20.135832ms
	Processing time (w/o IO): 21.276374ms
	Processing time (w/o IO): 21.066066ms
	Processing time (w/o IO): 21.471681ms
	Processing time (w/o IO): 20.798456ms
	Processing time (w/o IO): 23.510254ms
	Processing time (w/o IO): 19.425307ms
	Processing time (w/o IO): 20.513646ms
	Processing time (w/o IO): 19.220799ms
	Processing time (w/o IO): 18.625077ms
	Processing time (w/o IO): 20.317739ms
	Processing time (w/o IO): 18.814584ms
	Processing time (w/o IO): 19.112995ms
	Processing time (w/o IO): 18.788183ms
	Processing time (w/o IO): 19.330903ms
	  Time (mean ± σ):      42.1 ms ±   3.1 ms    [User: 46.4 ms, System: 12.8 ms]
	  Range (min … max):    39.6 ms …  48.2 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 3.386s
	Processing time (w/o IO): 3.363s
	Processing time (w/o IO): 3.361s
	Processing time (w/o IO): 3.380s
	Processing time (w/o IO): 3.360s
	  Time (mean ± σ):      3.459 s ±  0.014 s    [User: 3.438 s, System: 0.019 s]
	  Range (min … max):    3.448 s …  3.478 s    5 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 0.482s
	Processing time (w/o IO): 0.451s
	Processing time (w/o IO): 0.454s
	Processing time (w/o IO): 0.444s
	Processing time (w/o IO): 0.440s
	  Time (mean ± σ):     737.1 ms ±  18.8 ms    [User: 743.9 ms, System: 237.8 ms]
	  Range (min … max):   720.5 ms … 759.1 ms    5 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 84.412489ms
	Processing time (w/o IO): 81.994397ms
	Processing time (w/o IO): 81.892194ms
	Processing time (w/o IO): 82.209706ms
	Processing time (w/o IO): 85.017912ms
	Processing time (w/o IO): 85.76924ms
	Processing time (w/o IO): 90.982137ms
	Processing time (w/o IO): 82.061001ms
	Processing time (w/o IO): 82.32221ms
	Processing time (w/o IO): 82.261608ms
	  Time (mean ± σ):     152.4 ms ±   4.0 ms    [User: 137.6 ms, System: 14.5 ms]
	  Range (min … max):   148.5 ms … 158.5 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 54ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 46ms
	  Time (mean ± σ):      95.5 ms ±   0.5 ms    [User: 88.9 ms, System: 6.5 ms]
	  Range (min … max):    94.9 ms …  96.4 ms    10 runs
	 
Julia:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 41 milliseconds
	Processing time (w/o IO): 32 milliseconds
	Processing time (w/o IO): 43 milliseconds
	Processing time (w/o IO): 32 milliseconds
	Processing time (w/o IO): 41 milliseconds
	Processing time (w/o IO): 32 milliseconds
	  Time (mean ± σ):      7.545 s ±  0.054 s    [User: 7.243 s, System: 0.297 s]
	  Range (min … max):    7.486 s …  7.606 s    5 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  56.163497ms
	Processing time (w/o IO):  55.547762ms
	Processing time (w/o IO):  55.67967ms
	Processing time (w/o IO):  55.86378ms
	Processing time (w/o IO):  55.968886ms
	Processing time (w/o IO):  56.494415ms
	Processing time (w/o IO):  55.958385ms
	Processing time (w/o IO):  56.378909ms
	Processing time (w/o IO):  56.551919ms
	Processing time (w/o IO):  55.588664ms
	  Time (mean ± σ):     355.2 ms ±   1.0 ms    [User: 345.2 ms, System: 10.0 ms]
	  Range (min … max):   353.6 ms … 357.1 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 74.778ms
	Processing time (w/o IO): 77.259ms
	Processing time (w/o IO): 71.881ms
	Processing time (w/o IO): 71.911ms
	Processing time (w/o IO): 71.363ms
	  Time (mean ± σ):     480.0 ms ±  16.2 ms    [User: 441.6 ms, System: 37.5 ms]
	  Range (min … max):   469.3 ms … 508.6 ms    5 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 111ms
	Processing time (w/o IO): 171ms
	Processing time (w/o IO): 111ms
	Processing time (w/o IO): 111ms
	Processing time (w/o IO): 174ms
	Processing time (w/o IO): 111ms
	Processing time (w/o IO): 111ms
	Processing time (w/o IO): 116ms
	  Time (mean ± σ):     695.6 ms ±  35.5 ms    [User: 791.2 ms, System: 183.6 ms]
	  Range (min … max):   666.6 ms … 754.1 ms    5 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 176ms
	Processing time (w/o IO): 180ms
	Processing time (w/o IO): 183ms
	Processing time (w/o IO): 182ms
	Processing time (w/o IO): 182ms
	Processing time (w/o IO): 170ms
	  Time (mean ± σ):     357.6 ms ±  11.4 ms    [User: 330.7 ms, System: 32.0 ms]
	  Range (min … max):   337.3 ms … 364.0 ms    5 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 78.67491245269775ms
	Processing time (w/o IO): 78.89807224273682ms
	Processing time (w/o IO): 78.73106002807617ms
	Processing time (w/o IO): 78.54795455932617ms
	Processing time (w/o IO): 78.87303829193115ms
	Processing time (w/o IO): 80.33490180969238ms
	Processing time (w/o IO): 78.67801189422607ms
	Processing time (w/o IO): 79.10597324371338ms
	Processing time (w/o IO): 78.75502109527588ms
	Processing time (w/o IO): 78.43303680419922ms
	  Time (mean ± σ):     526.1 ms ±  17.0 ms    [User: 481.9 ms, System: 37.1 ms]
	  Range (min … max):   514.3 ms … 570.2 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 48.626962ms
	Processing time (w/o IO): 48.64534ms
	Processing time (w/o IO): 49.831498ms
	Processing time (w/o IO): 50.174016ms
	Processing time (w/o IO): 48.492328ms
	Processing time (w/o IO): 49.938303ms
	Processing time (w/o IO): 48.593334ms
	Processing time (w/o IO): 49.8853ms
	Processing time (w/o IO): 50.64414ms
	Processing time (w/o IO): 49.610787ms
	  Time (mean ± σ):     510.4 ms ±  13.3 ms    [User: 490.3 ms, System: 58.8 ms]
	  Range (min … max):   496.1 ms … 529.3 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 246ms
	Processing time (w/o IO): 241ms
	Processing time (w/o IO): 257ms
	Processing time (w/o IO): 259ms
	Processing time (w/o IO): 249ms
	  Time (mean ± σ):     341.5 ms ±  11.7 ms    [User: 317.6 ms, System: 66.5 ms]
	  Range (min … max):   331.9 ms … 357.9 ms    5 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 809ms
	Processing time (w/o IO): 944ms
	Processing time (w/o IO): 831ms
	Processing time (w/o IO): 1031ms
	Processing time (w/o IO): 927ms
	  Time (mean ± σ):      1.005 s ±  0.071 s    [User: 0.986 s, System: 0.046 s]
	  Range (min … max):    0.899 s …  1.096 s    5 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 241ms
	Processing time (w/o IO): 227ms
	Processing time (w/o IO): 226ms
	Processing time (w/o IO): 231ms
	Processing time (w/o IO): 220ms
	  Time (mean ± σ):     347.6 ms ±  78.8 ms    [User: 304.7 ms, System: 35.5 ms]
	  Range (min … max):   301.1 ms … 488.0 ms    5 runs
	 
Java (JIT):

	Benchmark 1: java -Xms10m -Xmx10m -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 302 ms
	Processing time (w/o IO): 316 ms
	Processing time (w/o IO): 307 ms
	Processing time (w/o IO): 301 ms
	Processing time (w/o IO): 311 ms
	Processing time (w/o IO): 314 ms
	Processing time (w/o IO): 304 ms
	Processing time (w/o IO): 299 ms
	Processing time (w/o IO): 317 ms
	Processing time (w/o IO): 286 ms
	Processing time (w/o IO): 307 ms
	Processing time (w/o IO): 304 ms
	Processing time (w/o IO): 303 ms
	  Time (mean ± σ):     639.2 ms ±  12.7 ms    [User: 1089.5 ms, System: 69.1 ms]
	  Range (min … max):   618.4 ms … 659.5 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 42 ms
	Processing time (w/o IO): 48 ms
	Processing time (w/o IO): 44 ms
	Processing time (w/o IO): 46 ms
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 44 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 44 ms
	Processing time (w/o IO): 45 ms
	Processing time (w/o IO): 48 ms
	  Time (mean ± σ):      81.8 ms ±   2.5 ms    [User: 66.5 ms, System: 15.2 ms]
	  Range (min … max):    79.1 ms …  86.9 ms    10 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 48ms
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 53ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 47ms
	  Time (mean ± σ):      84.0 ms ±   4.1 ms    [User: 66.9 ms, System: 16.9 ms]
	  Range (min … max):    80.1 ms …  92.2 ms    10 runs
	 
F#:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 62ms
	Processing time (w/o IO): 63ms
	Processing time (w/o IO): 61ms
	Processing time (w/o IO): 61ms
	Processing time (w/o IO): 60ms
	Processing time (w/o IO): 60ms
	Processing time (w/o IO): 65ms
	  Time (mean ± σ):     374.6 ms ±   9.4 ms    [User: 310.2 ms, System: 49.4 ms]
	  Range (min … max):   363.5 ms … 384.2 ms    5 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net7.0/fsharp_con
	Processing time (w/o IO): 48ms
	Processing time (w/o IO): 52ms
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 48ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 48ms
	Processing time (w/o IO): 51ms
	  Time (mean ± σ):      1.031 s ±  0.026 s    [User: 1.042 s, System: 0.100 s]
	  Range (min … max):    1.014 s …  1.077 s    5 runs
	 
C#:

	Benchmark 1: ./bin/release/net7.0/publish/related
	Processing time (w/o IO): 83.9608ms
	Processing time (w/o IO): 89.6712ms
	Processing time (w/o IO): 87.9541ms
	Processing time (w/o IO): 92.0635ms
	Processing time (w/o IO): 85.3983ms
	Processing time (w/o IO): 83.81ms
	Processing time (w/o IO): 83.7306ms
	  Time (mean ± σ):     154.3 ms ±   4.6 ms    [User: 128.8 ms, System: 37.4 ms]
	  Range (min … max):   148.3 ms … 159.3 ms    5 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	142.48394966125	ms
	Processing time (w/o IO):	140.96689224243	ms
	Processing time (w/o IO):	142.58909225464	ms
	Processing time (w/o IO):	142.80486106873	ms
	Processing time (w/o IO):	143.54801177979	ms
	Processing time (w/o IO):	141.12281799316	ms
	Processing time (w/o IO):	141.39795303345	ms
	  Time (mean ± σ):     472.5 ms ±   5.9 ms    [User: 450.9 ms, System: 21.5 ms]
	  Range (min … max):   465.3 ms … 481.0 ms    5 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	2824.1999149323	ms
	Processing time (w/o IO):	2851.5708446503	ms
	Processing time (w/o IO):	2824.9778747559	ms
	Processing time (w/o IO):	2822.2541809082	ms
	Processing time (w/o IO):	2823.0931758881	ms
	Processing time (w/o IO):	2829.5440673828	ms
	Processing time (w/o IO):	2825.8371353149	ms
	  Time (mean ± σ):      3.638 s ±  0.024 s    [User: 3.600 s, System: 0.037 s]
	  Range (min … max):    3.616 s …  3.667 s    5 runs
	 
