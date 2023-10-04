Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 32.946895ms
	Processing time (w/o IO): 33.414495ms
	Processing time (w/o IO): 32.073695ms
	Processing time (w/o IO): 32.461795ms
	Processing time (w/o IO): 32.709796ms
	Processing time (w/o IO): 33.774396ms
	Processing time (w/o IO): 32.885395ms
	Processing time (w/o IO): 32.640995ms
	Processing time (w/o IO): 34.479695ms
	Processing time (w/o IO): 32.245695ms
	Processing time (w/o IO): 32.561995ms
	Processing time (w/o IO): 34.104096ms
	Processing time (w/o IO): 33.063195ms
	  Time (mean ± σ):      65.3 ms ±   3.8 ms    [User: 62.6 ms, System: 12.1 ms]
	  Range (min … max):    62.9 ms …  75.7 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 17.381502ms
	Processing time (w/o IO): 17.649602ms
	Processing time (w/o IO): 17.357902ms
	Processing time (w/o IO): 18.566503ms
	Processing time (w/o IO): 17.304202ms
	Processing time (w/o IO): 17.578102ms
	Processing time (w/o IO): 17.723802ms
	Processing time (w/o IO): 17.419502ms
	Processing time (w/o IO): 17.391102ms
	Processing time (w/o IO): 17.630603ms
	Processing time (w/o IO): 17.758602ms
	Processing time (w/o IO): 17.353203ms
	Processing time (w/o IO): 17.068402ms
	  Time (mean ± σ):      51.0 ms ±   1.6 ms    [User: 56.6 ms, System: 14.9 ms]
	  Range (min … max):    49.8 ms …  54.9 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 32.529916ms
	Processing time (w/o IO): 32.232816ms
	Processing time (w/o IO): 31.775416ms
	Processing time (w/o IO): 31.923416ms
	Processing time (w/o IO): 31.797916ms
	Processing time (w/o IO): 31.806316ms
	Processing time (w/o IO): 31.752016ms
	Processing time (w/o IO): 36.463619ms
	Processing time (w/o IO): 31.997517ms
	Processing time (w/o IO): 32.318917ms
	Processing time (w/o IO): 32.238416ms
	Processing time (w/o IO): 32.276217ms
	Processing time (w/o IO): 32.246916ms
	  Time (mean ± σ):      50.5 ms ±   2.1 ms    [User: 43.9 ms, System: 6.5 ms]
	  Range (min … max):    49.2 ms …  56.2 ms    10 runs
	 
Rust Rayon:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 18.148212ms
	Processing time (w/o IO): 18.682813ms
	Processing time (w/o IO): 17.882012ms
	Processing time (w/o IO): 17.800312ms
	Processing time (w/o IO): 17.959012ms
	Processing time (w/o IO): 17.511111ms
	Processing time (w/o IO): 18.118212ms
	Processing time (w/o IO): 17.786412ms
	Processing time (w/o IO): 17.401111ms
	Processing time (w/o IO): 18.923512ms
	Processing time (w/o IO): 17.848112ms
	Processing time (w/o IO): 17.902812ms
	Processing time (w/o IO): 17.921612ms
	  Time (mean ± σ):      36.5 ms ±   0.9 ms    [User: 43.5 ms, System: 9.6 ms]
	  Range (min … max):    35.1 ms …  37.8 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 2.327s
	Processing time (w/o IO): 2.309s
	Processing time (w/o IO): 2.307s
	Processing time (w/o IO): 2.306s
	Processing time (w/o IO): 2.320s
	  Time (mean ± σ):      2.382 s ±  0.011 s    [User: 2.361 s, System: 0.020 s]
	  Range (min … max):    2.373 s …  2.398 s    5 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 0.953s
	Processing time (w/o IO): 0.903s
	Processing time (w/o IO): 0.886s
	Processing time (w/o IO): 0.875s
	Processing time (w/o IO): 0.871s
	  Time (mean ± σ):      1.067 s ±  0.035 s    [User: 1.017 s, System: 0.143 s]
	  Range (min … max):    1.038 s …  1.126 s    5 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 60.421038ms
	Processing time (w/o IO): 60.66234ms
	Processing time (w/o IO): 58.85933ms
	Processing time (w/o IO): 57.855424ms
	Processing time (w/o IO): 58.142226ms
	Processing time (w/o IO): 58.273627ms
	Processing time (w/o IO): 58.759129ms
	Processing time (w/o IO): 59.855635ms
	Processing time (w/o IO): 59.520233ms
	Processing time (w/o IO): 59.664935ms
	  Time (mean ± σ):     110.7 ms ±   1.0 ms    [User: 100.3 ms, System: 10.3 ms]
	  Range (min … max):   109.5 ms … 112.6 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 236ms
	Processing time (w/o IO): 233ms
	Processing time (w/o IO): 232ms
	Processing time (w/o IO): 231ms
	Processing time (w/o IO): 233ms
	Processing time (w/o IO): 232ms
	Processing time (w/o IO): 235ms
	Processing time (w/o IO): 231ms
	Processing time (w/o IO): 231ms
	Processing time (w/o IO): 232ms
	Processing time (w/o IO): 232ms
	Processing time (w/o IO): 231ms
	Processing time (w/o IO): 231ms
	  Time (mean ± σ):     274.7 ms ±   1.2 ms    [User: 264.9 ms, System: 9.8 ms]
	  Range (min … max):   273.8 ms … 277.4 ms    10 runs
	 
Julia v2:

	Benchmark 1: julia related_v2.jl
	Processing time (w/o IO): 597 milliseconds
	Processing time (w/o IO): 584 milliseconds
	Processing time (w/o IO): 594 milliseconds
	Processing time (w/o IO): 603 milliseconds
	Processing time (w/o IO): 600 milliseconds
	Processing time (w/o IO): 555 milliseconds
	  Time (mean ± σ):      4.905 s ±  0.052 s    [User: 4.713 s, System: 0.190 s]
	  Range (min … max):    4.842 s …  4.966 s    5 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  64.85952ms
	Processing time (w/o IO):  65.897827ms
	Processing time (w/o IO):  65.224622ms
	Processing time (w/o IO):  65.628625ms
	Processing time (w/o IO):  65.020821ms
	Processing time (w/o IO):  65.035221ms
	Processing time (w/o IO):  64.89822ms
	Processing time (w/o IO):  66.006827ms
	Processing time (w/o IO):  65.131322ms
	Processing time (w/o IO):  65.57831ms
	  Time (mean ± σ):     346.5 ms ±   1.0 ms    [User: 334.3 ms, System: 12.1 ms]
	  Range (min … max):   345.1 ms … 348.9 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 46.981ms
	Processing time (w/o IO): 47.114ms
	Processing time (w/o IO): 47.260ms
	Processing time (w/o IO): 47.178ms
	Processing time (w/o IO): 53.490ms
	  Time (mean ± σ):     353.2 ms ±   6.7 ms    [User: 322.5 ms, System: 30.1 ms]
	  Range (min … max):   348.3 ms … 365.1 ms    5 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 84ms
	Processing time (w/o IO): 89ms
	Processing time (w/o IO): 89ms
	Processing time (w/o IO): 79ms
	Processing time (w/o IO): 76ms
	Processing time (w/o IO): 81ms
	Processing time (w/o IO): 78ms
	Processing time (w/o IO): 82ms
	  Time (mean ± σ):     532.2 ms ±   8.4 ms    [User: 609.2 ms, System: 131.5 ms]
	  Range (min … max):   522.8 ms … 544.0 ms    5 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 117ms
	Processing time (w/o IO): 116ms
	Processing time (w/o IO): 116ms
	Processing time (w/o IO): 118ms
	Processing time (w/o IO): 120ms
	Processing time (w/o IO): 117ms
	Processing time (w/o IO): 119ms
	Processing time (w/o IO): 118ms
	  Time (mean ± σ):     249.8 ms ±   2.2 ms    [User: 230.2 ms, System: 22.6 ms]
	  Range (min … max):   247.6 ms … 252.3 ms    5 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 56.14209175109863ms
	Processing time (w/o IO): 50.43303966522217ms
	Processing time (w/o IO): 50.32801628112793ms
	Processing time (w/o IO): 50.52196979522705ms
	Processing time (w/o IO): 51.28204822540283ms
	Processing time (w/o IO): 50.97198486328125ms
	Processing time (w/o IO): 49.914002418518066ms
	Processing time (w/o IO): 51.22196674346924ms
	Processing time (w/o IO): 50.66800117492676ms
	Processing time (w/o IO): 50.99296569824219ms
	  Time (mean ± σ):     464.2 ms ±   4.0 ms    [User: 429.5 ms, System: 30.7 ms]
	  Range (min … max):   459.5 ms … 471.2 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 172ms
	Processing time (w/o IO): 172ms
	Processing time (w/o IO): 164ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 166ms
	  Time (mean ± σ):     242.3 ms ±   8.1 ms    [User: 226.5 ms, System: 58.0 ms]
	  Range (min … max):   228.9 ms … 250.3 ms    5 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 550ms
	Processing time (w/o IO): 580ms
	Processing time (w/o IO): 696ms
	Processing time (w/o IO): 742ms
	Processing time (w/o IO): 675ms
	  Time (mean ± σ):     714.4 ms ±  65.1 ms    [User: 716.6 ms, System: 30.4 ms]
	  Range (min … max):   626.4 ms … 798.4 ms    5 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 166ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 149ms
	  Time (mean ± σ):     240.5 ms ±  56.2 ms    [User: 206.7 ms, System: 34.5 ms]
	  Range (min … max):   213.8 ms … 341.0 ms    5 runs
	 
Java (JIT):

	Benchmark 1: java -Xms10m -Xmx10m -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 229 ms
	Processing time (w/o IO): 239 ms
	Processing time (w/o IO): 234 ms
	Processing time (w/o IO): 238 ms
	Processing time (w/o IO): 236 ms
	Processing time (w/o IO): 240 ms
	Processing time (w/o IO): 244 ms
	Processing time (w/o IO): 222 ms
	Processing time (w/o IO): 245 ms
	Processing time (w/o IO): 236 ms
	Processing time (w/o IO): 223 ms
	Processing time (w/o IO): 229 ms
	Processing time (w/o IO): 236 ms
	  Time (mean ± σ):     505.5 ms ±  10.0 ms    [User: 852.1 ms, System: 59.3 ms]
	  Range (min … max):   489.9 ms … 527.2 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	  Time (mean ± σ):      63.4 ms ±   1.7 ms    [User: 54.4 ms, System: 9.0 ms]
	  Range (min … max):    62.7 ms …  68.1 ms    10 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 77ms
	Processing time (w/o IO): 76ms
	Processing time (w/o IO): 76ms
	Processing time (w/o IO): 75ms
	Processing time (w/o IO): 77ms
	Processing time (w/o IO): 76ms
	Processing time (w/o IO): 76ms
	Processing time (w/o IO): 79ms
	Processing time (w/o IO): 79ms
	Processing time (w/o IO): 81ms
	Processing time (w/o IO): 77ms
	Processing time (w/o IO): 77ms
	  Time (mean ± σ):     104.0 ms ±   2.5 ms    [User: 95.3 ms, System: 8.5 ms]
	  Range (min … max):   101.4 ms … 108.3 ms    10 runs
	 
Fsharp:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 160ms
	Processing time (w/o IO): 160ms
	Processing time (w/o IO): 160ms
	Processing time (w/o IO): 160ms
	Processing time (w/o IO): 160ms
	Processing time (w/o IO): 160ms
	Processing time (w/o IO): 160ms
	  Time (mean ± σ):     912.1 ms ±   5.5 ms    [User: 862.8 ms, System: 70.7 ms]
	  Range (min … max):   908.7 ms … 922.0 ms    5 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	109.83681678772	ms
	Processing time (w/o IO):	101.50504112244	ms
	Processing time (w/o IO):	101.21893882751	ms
	Processing time (w/o IO):	102.99396514893	ms
	Processing time (w/o IO):	102.51498222351	ms
	Processing time (w/o IO):	102.10108757019	ms
	Processing time (w/o IO):	102.50902175903	ms
	  Time (mean ± σ):     358.6 ms ±   6.8 ms    [User: 344.6 ms, System: 13.8 ms]
	  Range (min … max):   352.7 ms … 370.4 ms    5 runs
	 
LuaJIT:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1939.7640228271	ms
	Processing time (w/o IO):	1944.7510242462	ms
	Processing time (w/o IO):	1940.1140213013	ms
	Processing time (w/o IO):	1939.6820068359	ms
	Processing time (w/o IO):	1954.7049999237	ms
	Processing time (w/o IO):	1942.361831665	ms
	Processing time (w/o IO):	1945.4829692841	ms
	  Time (mean ± σ):      2.539 s ±  0.014 s    [User: 2.509 s, System: 0.029 s]
	  Range (min … max):    2.521 s …  2.555 s    5 runs
	 
