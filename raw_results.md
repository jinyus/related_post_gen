Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 24.260269ms
	Processing time (w/o IO): 24.728976ms
	Processing time (w/o IO): 24.27097ms
	Processing time (w/o IO): 24.194369ms
	Processing time (w/o IO): 24.223469ms
	Processing time (w/o IO): 24.240869ms
	Processing time (w/o IO): 26.838808ms
	Processing time (w/o IO): 24.164367ms
	Processing time (w/o IO): 25.120782ms
	Processing time (w/o IO): 24.237069ms
	Processing time (w/o IO): 24.814777ms
	Processing time (w/o IO): 25.350286ms
	Processing time (w/o IO): 24.084566ms
	  Time (mean ± σ):      65.8 ms ±   1.4 ms    [User: 61.1 ms, System: 11.6 ms]
	  Range (min … max):    64.3 ms …  67.8 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 13.261702ms
	Processing time (w/o IO): 12.880496ms
	Processing time (w/o IO): 12.925497ms
	Processing time (w/o IO): 15.211831ms
	Processing time (w/o IO): 13.213401ms
	Processing time (w/o IO): 12.978898ms
	Processing time (w/o IO): 13.550907ms
	Processing time (w/o IO): 15.144931ms
	Processing time (w/o IO): 12.769194ms
	Processing time (w/o IO): 13.81341ms
	Processing time (w/o IO): 13.476205ms
	Processing time (w/o IO): 13.467705ms
	Processing time (w/o IO): 13.469505ms
	  Time (mean ± σ):      52.9 ms ±   1.9 ms    [User: 82.7 ms, System: 10.8 ms]
	  Range (min … max):    50.8 ms …  56.7 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 24.459395ms
	Processing time (w/o IO): 23.748283ms
	Processing time (w/o IO): 23.777184ms
	Processing time (w/o IO): 25.269208ms
	Processing time (w/o IO): 23.801084ms
	Processing time (w/o IO): 24.14829ms
	Processing time (w/o IO): 23.809984ms
	Processing time (w/o IO): 24.071488ms
	Processing time (w/o IO): 23.740683ms
	Processing time (w/o IO): 23.819985ms
	Processing time (w/o IO): 24.192791ms
	Processing time (w/o IO): 23.766983ms
	Processing time (w/o IO): 23.792384ms
	  Time (mean ± σ):      43.5 ms ±   1.6 ms    [User: 35.6 ms, System: 8.0 ms]
	  Range (min … max):    42.1 ms …  47.6 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 21.083625ms
	Processing time (w/o IO): 20.76292ms
	Processing time (w/o IO): 20.753121ms
	Processing time (w/o IO): 20.902323ms
	Processing time (w/o IO): 20.878722ms
	Processing time (w/o IO): 23.221858ms
	Processing time (w/o IO): 24.846783ms
	Processing time (w/o IO): 21.633334ms
	Processing time (w/o IO): 22.528747ms
	Processing time (w/o IO): 22.295544ms
	Processing time (w/o IO): 21.126626ms
	Processing time (w/o IO): 20.499316ms
	Processing time (w/o IO): 21.681735ms
	  Time (mean ± σ):      42.1 ms ±   1.9 ms    [User: 54.7 ms, System: 7.6 ms]
	  Range (min … max):    39.8 ms …  45.2 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 1.482s
	Processing time (w/o IO): 1.474s
	Processing time (w/o IO): 1.466s
	Processing time (w/o IO): 1.467s
	Processing time (w/o IO): 1.468s
	Processing time (w/o IO): 1.480s
	Processing time (w/o IO): 1.470s
	Processing time (w/o IO): 1.466s
	Processing time (w/o IO): 1.464s
	Processing time (w/o IO): 1.464s
	Processing time (w/o IO): 1.471s
	Processing time (w/o IO): 1.485s
	Processing time (w/o IO): 1.472s
	  Time (mean ± σ):      1.539 s ±  0.006 s    [User: 1.518 s, System: 0.021 s]
	  Range (min … max):    1.532 s …  1.552 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 349.7ms
	Processing time (w/o IO): 361.5ms
	Processing time (w/o IO): 361.6ms
	Processing time (w/o IO): 354.0ms
	Processing time (w/o IO): 351.4ms
	Processing time (w/o IO): 350.1ms
	Processing time (w/o IO): 352.5ms
	Processing time (w/o IO): 352.8ms
	Processing time (w/o IO): 349.6ms
	Processing time (w/o IO): 351.4ms
	Processing time (w/o IO): 350.2ms
	Processing time (w/o IO): 350.8ms
	Processing time (w/o IO): 348.5ms
	  Time (mean ± σ):     704.6 ms ± 186.7 ms    [User: 826.2 ms, System: 427.1 ms]
	  Range (min … max):   635.4 ms … 1235.0 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 60.734871ms
	Processing time (w/o IO): 60.839573ms
	Processing time (w/o IO): 60.518369ms
	Processing time (w/o IO): 60.949773ms
	Processing time (w/o IO): 60.473068ms
	Processing time (w/o IO): 60.492669ms
	Processing time (w/o IO): 60.718171ms
	Processing time (w/o IO): 60.66267ms
	Processing time (w/o IO): 60.479668ms
	Processing time (w/o IO): 60.446768ms
	Processing time (w/o IO): 60.61347ms
	Processing time (w/o IO): 60.57347ms
	Processing time (w/o IO): 60.470368ms
	  Time (mean ± σ):     113.8 ms ±   0.5 ms    [User: 104.3 ms, System: 9.4 ms]
	  Range (min … max):   112.9 ms … 114.7 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	  Time (mean ± σ):      77.3 ms ±   0.2 ms    [User: 70.9 ms, System: 6.3 ms]
	  Range (min … max):    77.0 ms …  77.6 ms    10 runs
	 
Julia:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	  Time (mean ± σ):      2.553 s ±  0.031 s    [User: 2.372 s, System: 0.180 s]
	  Range (min … max):    2.503 s …  2.617 s    10 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads auto related.jl
	Processing time (w/o IO): 12 milliseconds
	Processing time (w/o IO): 15 milliseconds
	Processing time (w/o IO): 12 milliseconds
	Processing time (w/o IO): 12 milliseconds
	Processing time (w/o IO): 15 milliseconds
	Processing time (w/o IO): 15 milliseconds
	Processing time (w/o IO): 13 milliseconds
	Processing time (w/o IO): 12 milliseconds
	Processing time (w/o IO): 11 milliseconds
	Processing time (w/o IO): 12 milliseconds
	Processing time (w/o IO): 12 milliseconds
	Processing time (w/o IO): 15 milliseconds
	Processing time (w/o IO): 15 milliseconds
	  Time (mean ± σ):      3.497 s ±  0.057 s    [User: 4.919 s, System: 0.196 s]
	  Range (min … max):    3.390 s …  3.578 s    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  48.234489ms
	Processing time (w/o IO):  48.28149ms
	Processing time (w/o IO):  48.590395ms
	Processing time (w/o IO):  47.775684ms
	Processing time (w/o IO):  48.063688ms
	Processing time (w/o IO):  47.947386ms
	Processing time (w/o IO):  48.26929ms
	Processing time (w/o IO):  48.26319ms
	Processing time (w/o IO):  47.657882ms
	Processing time (w/o IO):  47.590483ms
	Processing time (w/o IO):  48.174291ms
	Processing time (w/o IO):  47.769284ms
	Processing time (w/o IO):  47.793586ms
	  Time (mean ± σ):     269.1 ms ±   0.4 ms    [User: 257.5 ms, System: 11.5 ms]
	  Range (min … max):   268.5 ms … 269.6 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 52.308ms
	Processing time (w/o IO): 52.159ms
	Processing time (w/o IO): 52.091ms
	Processing time (w/o IO): 52.249ms
	Processing time (w/o IO): 52.314ms
	Processing time (w/o IO): 52.322ms
	Processing time (w/o IO): 52.361ms
	Processing time (w/o IO): 52.381ms
	Processing time (w/o IO): 52.494ms
	Processing time (w/o IO): 51.898ms
	Processing time (w/o IO): 52.181ms
	Processing time (w/o IO): 51.917ms
	Processing time (w/o IO): 51.747ms
	  Time (mean ± σ):     365.8 ms ±   2.6 ms    [User: 340.1 ms, System: 25.6 ms]
	  Range (min … max):   361.9 ms … 370.1 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 133ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 160ms
	Processing time (w/o IO): 147ms
	  Time (mean ± σ):     524.2 ms ±  25.7 ms    [User: 639.0 ms, System: 106.5 ms]
	  Range (min … max):   492.7 ms … 587.5 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 204ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 188ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 188ms
	Processing time (w/o IO): 188ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 187ms
	Processing time (w/o IO): 188ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 209ms
	Processing time (w/o IO): 189ms
	  Time (mean ± σ):     318.5 ms ±  11.7 ms    [User: 303.2 ms, System: 19.4 ms]
	  Range (min … max):   312.8 ms … 351.5 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 51.524996757507324ms
	Processing time (w/o IO): 51.88298225402832ms
	Processing time (w/o IO): 51.2239933013916ms
	Processing time (w/o IO): 51.7120361328125ms
	Processing time (w/o IO): 51.629066467285156ms
	Processing time (w/o IO): 51.69498920440674ms
	Processing time (w/o IO): 51.71096324920654ms
	Processing time (w/o IO): 52.14405059814453ms
	Processing time (w/o IO): 51.856040954589844ms
	Processing time (w/o IO): 51.79190635681152ms
	Processing time (w/o IO): 51.6810417175293ms
	Processing time (w/o IO): 52.01399326324463ms
	Processing time (w/o IO): 51.36597156524658ms
	  Time (mean ± σ):     410.9 ms ±   6.2 ms    [User: 355.9 ms, System: 35.9 ms]
	  Range (min … max):   403.5 ms … 421.7 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 31.664105ms
	Processing time (w/o IO): 32.194023ms
	Processing time (w/o IO): 31.894514ms
	Processing time (w/o IO): 31.983216ms
	Processing time (w/o IO): 31.392395ms
	Processing time (w/o IO): 31.013883ms
	Processing time (w/o IO): 31.851812ms
	Processing time (w/o IO): 31.368995ms
	Processing time (w/o IO): 32.974251ms
	Processing time (w/o IO): 31.606403ms
	Processing time (w/o IO): 31.21399ms
	Processing time (w/o IO): 30.888178ms
	Processing time (w/o IO): 34.236695ms
	  Time (mean ± σ):     394.0 ms ±   7.3 ms    [User: 419.3 ms, System: 43.4 ms]
	  Range (min … max):   383.7 ms … 409.2 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 194ms
	Processing time (w/o IO): 182ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 181ms
	Processing time (w/o IO): 187ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 184ms
	Processing time (w/o IO): 188ms
	Processing time (w/o IO): 183ms
	Processing time (w/o IO): 198ms
	  Time (mean ± σ):     358.8 ms ±  11.5 ms    [User: 360.7 ms, System: 63.9 ms]
	  Range (min … max):   347.7 ms … 382.2 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 742ms
	Processing time (w/o IO): 767ms
	Processing time (w/o IO): 766ms
	Processing time (w/o IO): 752ms
	Processing time (w/o IO): 790ms
	Processing time (w/o IO): 706ms
	Processing time (w/o IO): 717ms
	Processing time (w/o IO): 731ms
	Processing time (w/o IO): 741ms
	Processing time (w/o IO): 720ms
	Processing time (w/o IO): 727ms
	Processing time (w/o IO): 717ms
	Processing time (w/o IO): 755ms
	  Time (mean ± σ):     791.0 ms ±  25.9 ms    [User: 819.2 ms, System: 29.6 ms]
	  Range (min … max):   760.7 ms … 845.7 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 195ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 193ms
	Processing time (w/o IO): 197ms
	Processing time (w/o IO): 193ms
	Processing time (w/o IO): 193ms
	Processing time (w/o IO): 190ms
	Processing time (w/o IO): 194ms
	Processing time (w/o IO): 194ms
	Processing time (w/o IO): 195ms
	Processing time (w/o IO): 199ms
	Processing time (w/o IO): 194ms
	  Time (mean ± σ):     260.3 ms ±   2.5 ms    [User: 255.7 ms, System: 28.7 ms]
	  Range (min … max):   256.5 ms … 265.9 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 103 ms
	Processing time (w/o IO): 120 ms
	Processing time (w/o IO): 118 ms
	Processing time (w/o IO): 111 ms
	Processing time (w/o IO): 104 ms
	Processing time (w/o IO): 114 ms
	Processing time (w/o IO): 115 ms
	Processing time (w/o IO): 105 ms
	Processing time (w/o IO): 115 ms
	Processing time (w/o IO): 115 ms
	Processing time (w/o IO): 113 ms
	Processing time (w/o IO): 104 ms
	Processing time (w/o IO): 105 ms
	  Time (mean ± σ):     342.5 ms ±   4.3 ms    [User: 644.8 ms, System: 52.2 ms]
	  Range (min … max):   334.2 ms … 347.8 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 38 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 38 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 39 ms
	  Time (mean ± σ):      67.6 ms ±   3.3 ms    [User: 57.4 ms, System: 10.4 ms]
	  Range (min … max):    64.0 ms …  74.6 ms    10 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 38 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 42 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 40 ms
	  Time (mean ± σ):      69.3 ms ±   1.2 ms    [User: 120.8 ms, System: 8.7 ms]
	  Range (min … max):    67.8 ms …  71.8 ms    10 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 34ms
	Processing time (w/o IO): 33ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	  Time (mean ± σ):      60.0 ms ±   0.7 ms    [User: 47.7 ms, System: 12.4 ms]
	  Range (min … max):    59.1 ms …  61.1 ms    10 runs
	 
F#:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	  Time (mean ± σ):     289.4 ms ±  12.6 ms    [User: 236.8 ms, System: 37.5 ms]
	  Range (min … max):   280.2 ms … 323.8 ms    10 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net7.0/fsharp_con
	Processing time (w/o IO): 37ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 34ms
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 35ms
	  Time (mean ± σ):     825.0 ms ±  10.9 ms    [User: 832.8 ms, System: 67.3 ms]
	  Range (min … max):   812.5 ms … 851.3 ms    10 runs
	 
C#:

	Benchmark 1: ./bin/release/net7.0/publish/related
	Processing time (w/o IO): 45.1157ms
	Processing time (w/o IO): 45.0654ms
	Processing time (w/o IO): 44.9435ms
	Processing time (w/o IO): 44.9163ms
	Processing time (w/o IO): 44.9161ms
	Processing time (w/o IO): 44.8144ms
	Processing time (w/o IO): 44.9496ms
	Processing time (w/o IO): 45.131ms
	Processing time (w/o IO): 44.9141ms
	Processing time (w/o IO): 44.867ms
	Processing time (w/o IO): 44.764ms
	Processing time (w/o IO): 44.8466ms
	Processing time (w/o IO): 45.0594ms
	  Time (mean ± σ):      89.7 ms ±   0.6 ms    [User: 81.8 ms, System: 18.1 ms]
	  Range (min … max):    88.7 ms …  90.8 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	122.8711605072	ms
	Processing time (w/o IO):	127.39205360413	ms
	Processing time (w/o IO):	120.86200714111	ms
	Processing time (w/o IO):	109.65919494629	ms
	Processing time (w/o IO):	114.70818519592	ms
	Processing time (w/o IO):	117.66314506531	ms
	Processing time (w/o IO):	116.42909049988	ms
	Processing time (w/o IO):	92.812061309814	ms
	Processing time (w/o IO):	116.37806892395	ms
	Processing time (w/o IO):	111.6771697998	ms
	Processing time (w/o IO):	116.6410446167	ms
	Processing time (w/o IO):	115.22579193115	ms
	Processing time (w/o IO):	91.962099075317	ms
	  Time (mean ± σ):     370.7 ms ±  14.4 ms    [User: 353.2 ms, System: 17.5 ms]
	  Range (min … max):   345.9 ms … 386.8 ms    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1106.0080528259	ms
	Processing time (w/o IO):	1101.1340618134	ms
	Processing time (w/o IO):	1111.6368770599	ms
	Processing time (w/o IO):	1159.4610214233	ms
	Processing time (w/o IO):	1108.9971065521	ms
	Processing time (w/o IO):	1092.5459861755	ms
	Processing time (w/o IO):	1092.8030014038	ms
	Processing time (w/o IO):	1101.0761260986	ms
	Processing time (w/o IO):	1091.8078422546	ms
	Processing time (w/o IO):	1096.165895462	ms
	Processing time (w/o IO):	1089.1070365906	ms
	Processing time (w/o IO):	1091.3760662079	ms
	Processing time (w/o IO):	1099.417924881	ms
	  Time (mean ± σ):      1.539 s ±  0.027 s    [User: 1.524 s, System: 0.015 s]
	  Range (min … max):    1.519 s …  1.610 s    10 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 163ms
	Processing time (w/o IO): 154ms
	Processing time (w/o IO): 150ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 149ms
	Processing time (w/o IO): 149ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 148ms
	  Time (mean ± σ):     244.0 ms ±  22.4 ms    [User: 209.3 ms, System: 27.5 ms]
	  Range (min … max):   235.4 ms … 307.7 ms    10 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 373.892463ms
	Processing time (w/o IO): 372.938947ms
	Processing time (w/o IO): 375.131884ms
	  Time (mean ± σ):     547.6 ms ±  13.4 ms    [User: 543.7 ms, System: 35.6 ms]
	  Range (min … max):   538.2 ms … 557.1 ms    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 171.807024ms
	Processing time (w/o IO): 170.073795ms
	Processing time (w/o IO): 171.486419ms
	  Time (mean ± σ):     323.4 ms ±   3.9 ms    [User: 802.1 ms, System: 48.1 ms]
	  Range (min … max):   320.7 ms … 326.2 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 395.105024ms
	Processing time (w/o IO): 390.15734ms
	Processing time (w/o IO): 389.893128ms
	  Time (mean ± σ):     466.0 ms ±   1.8 ms    [User: 448.6 ms, System: 17.2 ms]
	  Range (min … max):   464.7 ms … 467.3 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 331.394541ms
	Processing time (w/o IO): 311.076461ms
	Processing time (w/o IO): 312.09447ms
	  Time (mean ± σ):     388.2 ms ±   4.2 ms    [User: 677.7 ms, System: 19.3 ms]
	  Range (min … max):   385.2 ms … 391.2 ms    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 23.601s
	Processing time (w/o IO): 23.605s
	  Time (abs ≡):        23.767 s               [User: 23.708 s, System: 0.051 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 5.280s
	Processing time (w/o IO): 5.326s
	Processing time (w/o IO): 5.199s
	  Time (mean ± σ):      5.729 s ±  0.114 s    [User: 4.879 s, System: 1.437 s]
	  Range (min … max):    5.648 s …  5.810 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 932.194445ms
	Processing time (w/o IO): 932.877258ms
	Processing time (w/o IO): 935.191796ms
	  Time (mean ± σ):      1.158 s ±  0.008 s    [User: 1.115 s, System: 0.041 s]
	  Range (min … max):    1.153 s …  1.164 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 434ms
	Processing time (w/o IO): 434ms
	Processing time (w/o IO): 435ms
	  Time (mean ± σ):     628.7 ms ±   0.2 ms    [User: 609.2 ms, System: 19.4 ms]
	  Range (min … max):   628.5 ms … 628.8 ms    2 runs
	 
Julia:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 339 milliseconds
	Processing time (w/o IO): 337 milliseconds
	Processing time (w/o IO): 338 milliseconds
	  Time (mean ± σ):      3.325 s ±  0.025 s    [User: 3.116 s, System: 0.210 s]
	  Range (min … max):    3.308 s …  3.343 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads auto related.jl
	Processing time (w/o IO): 162 milliseconds
	Processing time (w/o IO): 164 milliseconds
	Processing time (w/o IO): 162 milliseconds
	  Time (mean ± σ):      3.959 s ±  0.059 s    [User: 6.224 s, System: 0.248 s]
	  Range (min … max):    3.917 s …  4.000 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  690.331734ms
	Processing time (w/o IO):  688.931412ms
	Processing time (w/o IO):  690.139333ms
	  Time (mean ± σ):      1.477 s ±  0.003 s    [User: 1.447 s, System: 0.029 s]
	  Range (min … max):    1.475 s …  1.479 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 755.075ms
	Processing time (w/o IO): 754.224ms
	Processing time (w/o IO): 754.105ms
	  Time (mean ± σ):      8.718 s ±  0.122 s    [User: 8.597 s, System: 0.118 s]
	  Range (min … max):    8.631 s …  8.804 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 2124ms
	Processing time (w/o IO): 2393ms
	Processing time (w/o IO): 2516ms
	  Time (mean ± σ):      3.143 s ±  0.066 s    [User: 3.350 s, System: 0.132 s]
	  Range (min … max):    3.096 s …  3.190 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 2881ms
	Processing time (w/o IO): 2886ms
	Processing time (w/o IO): 2895ms
	  Time (mean ± σ):      3.389 s ±  0.003 s    [User: 3.348 s, System: 0.062 s]
	  Range (min … max):    3.387 s …  3.391 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 714.743971824646ms
	Processing time (w/o IO): 720.0920581817627ms
	Processing time (w/o IO): 714.9319648742676ms
	  Time (mean ± σ):      2.174 s ±  0.022 s    [User: 1.921 s, System: 0.134 s]
	  Range (min … max):    2.158 s …  2.189 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 393.902836ms
	Processing time (w/o IO): 392.959921ms
	Processing time (w/o IO): 396.843086ms
	  Time (mean ± σ):      1.817 s ±  0.008 s    [User: 2.787 s, System: 0.134 s]
	  Range (min … max):    1.812 s …  1.823 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 2439ms
	Processing time (w/o IO): 2422ms
	Processing time (w/o IO): 2427ms
	  Time (mean ± σ):      2.758 s ±  0.018 s    [User: 2.763 s, System: 0.100 s]
	  Range (min … max):    2.745 s …  2.771 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 11021ms
	Processing time (w/o IO): 11417ms
	Processing time (w/o IO): 11014ms
	  Time (mean ± σ):     11.375 s ±  0.289 s    [User: 11.411 s, System: 0.070 s]
	  Range (min … max):   11.171 s … 11.579 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 2264ms
	Processing time (w/o IO): 2263ms
	Processing time (w/o IO): 2261ms
	  Time (mean ± σ):      2.498 s ±  0.037 s    [User: 2.450 s, System: 0.075 s]
	  Range (min … max):    2.472 s …  2.524 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 826 ms
	Processing time (w/o IO): 833 ms
	Processing time (w/o IO): 827 ms
	  Time (mean ± σ):      1.150 s ±  0.021 s    [User: 1.714 s, System: 0.087 s]
	  Range (min … max):    1.136 s …  1.165 s    2 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 544 ms
	Processing time (w/o IO): 544 ms
	Processing time (w/o IO): 545 ms
	  Time (mean ± σ):     645.5 ms ±   2.7 ms    [User: 629.9 ms, System: 15.6 ms]
	  Range (min … max):   643.6 ms … 647.5 ms    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 598 ms
	Processing time (w/o IO): 595 ms
	Processing time (w/o IO): 596 ms
	  Time (mean ± σ):     696.9 ms ±   2.0 ms    [User: 1641.7 ms, System: 37.5 ms]
	  Range (min … max):   695.4 ms … 698.3 ms    2 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 803ms
	Processing time (w/o IO): 778ms
	Processing time (w/o IO): 785ms
	  Time (mean ± σ):     886.2 ms ±   3.2 ms    [User: 842.6 ms, System: 43.5 ms]
	  Range (min … max):   884.0 ms … 888.4 ms    2 runs
	 
F#:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 618ms
	Processing time (w/o IO): 619ms
	Processing time (w/o IO): 620ms
	  Time (mean ± σ):      1.161 s ±  0.002 s    [User: 1.115 s, System: 0.069 s]
	  Range (min … max):    1.159 s …  1.162 s    2 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net7.0/fsharp_con
	Processing time (w/o IO): 295ms
	Processing time (w/o IO): 330ms
	Processing time (w/o IO): 279ms
	  Time (mean ± σ):      2.709 s ±  0.033 s    [User: 3.530 s, System: 0.155 s]
	  Range (min … max):    2.685 s …  2.732 s    2 runs
	 
C#:

	Benchmark 1: ./bin/release/net7.0/publish/related
	Processing time (w/o IO): 652.3197ms
	Processing time (w/o IO): 652.0186ms
	Processing time (w/o IO): 653.128ms
	  Time (mean ± σ):     844.8 ms ±   3.0 ms    [User: 829.8 ms, System: 49.7 ms]
	  Range (min … max):   842.7 ms … 846.9 ms    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	1427.2661209106	ms
	Processing time (w/o IO):	1495.7189559937	ms
	Processing time (w/o IO):	1418.8649654388	ms
	  Time (mean ± σ):      2.812 s ±  0.069 s    [User: 2.727 s, System: 0.083 s]
	  Range (min … max):    2.763 s …  2.860 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	17014.694929123	ms
	Processing time (w/o IO):	16761.457920074	ms
	  Time (abs ≡):        18.717 s               [User: 18.665 s, System: 0.048 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 3083ms
	Processing time (w/o IO): 3133ms
	Processing time (w/o IO): 3137ms
	  Time (mean ± σ):      3.569 s ±  0.014 s    [User: 3.374 s, System: 0.193 s]
	  Range (min … max):    3.559 s …  3.578 s    2 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 3.291692813s
	Processing time (w/o IO): 3.29686203s
	Processing time (w/o IO): 3.295763832s
	  Time (mean ± σ):      3.805 s ±  0.003 s    [User: 3.838 s, System: 0.110 s]
	  Range (min … max):    3.803 s …  3.807 s    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1.425356957s
	Processing time (w/o IO): 1.42468074s
	Processing time (w/o IO): 1.552682387s
	  Time (mean ± σ):      1.993 s ±  0.093 s    [User: 6.212 s, System: 0.132 s]
	  Range (min … max):    1.928 s …  2.059 s    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 3.482409368s
	Processing time (w/o IO): 3.477230648s
	Processing time (w/o IO): 3.46579415s
	  Time (mean ± σ):      3.746 s ±  0.021 s    [User: 3.653 s, System: 0.084 s]
	  Range (min … max):    3.731 s …  3.761 s    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 2.743937333s
	Processing time (w/o IO): 2.742515231s
	Processing time (w/o IO): 2.760319134s
	  Time (mean ± σ):      3.008 s ±  0.010 s    [User: 5.676 s, System: 0.064 s]
	  Range (min … max):    3.001 s …  3.015 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 217.460s
	Processing time (w/o IO): 217.192s
	  Time (abs ≡):        217.645 s               [User: 217.478 s, System: 0.139 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 8301.312472ms
	Processing time (w/o IO): 8238.140999ms
	Processing time (w/o IO): 8236.330015ms
	  Time (mean ± σ):      8.966 s ±  0.002 s    [User: 8.857 s, System: 0.102 s]
	  Range (min … max):    8.965 s …  8.967 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 3858ms
	Processing time (w/o IO): 3855ms
	Processing time (w/o IO): 3859ms
	  Time (mean ± σ):      4.477 s ±  0.023 s    [User: 4.427 s, System: 0.043 s]
	  Range (min … max):    4.461 s …  4.493 s    2 runs
	 
Julia:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 3982 milliseconds
	Processing time (w/o IO): 3986 milliseconds
	Processing time (w/o IO): 3984 milliseconds
	  Time (mean ± σ):     10.982 s ±  0.027 s    [User: 10.719 s, System: 0.256 s]
	  Range (min … max):   10.963 s … 11.000 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads auto related.jl
	Processing time (w/o IO): 1438 milliseconds
	Processing time (w/o IO): 1481 milliseconds
	Processing time (w/o IO): 1447 milliseconds
	  Time (mean ± σ):      6.923 s ±  0.052 s    [User: 16.393 s, System: 0.307 s]
	  Range (min … max):    6.886 s …  6.960 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  5.172152661s
	Processing time (w/o IO):  5.081609346s
	Processing time (w/o IO):  5.058731846s
	  Time (mean ± σ):      7.477 s ±  0.014 s    [User: 7.397 s, System: 0.072 s]
	  Range (min … max):    7.467 s …  7.487 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 6.709s
	Processing time (w/o IO): 6.656s
	Processing time (w/o IO): 6.654s
	  Time (mean ± σ):     91.491 s ±  9.262 s    [User: 91.009 s, System: 0.467 s]
	  Range (min … max):   84.942 s … 98.040 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 21055ms
	Processing time (w/o IO): 20893ms
	Processing time (w/o IO): 20992ms
	  Time (mean ± σ):     22.443 s ±  0.084 s    [User: 22.646 s, System: 0.239 s]
	  Range (min … max):   22.384 s … 22.502 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 25805ms
	Processing time (w/o IO): 25776ms
	Processing time (w/o IO): 25793ms
	  Time (mean ± σ):     27.295 s ±  0.030 s    [User: 27.252 s, System: 0.135 s]
	  Range (min … max):   27.274 s … 27.317 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 6167.18602180481ms
	Processing time (w/o IO): 6202.828049659729ms
	Processing time (w/o IO): 6185.07993221283ms
	  Time (mean ± σ):     11.548 s ±  0.067 s    [User: 10.037 s, System: 0.321 s]
	  Range (min … max):   11.501 s … 11.595 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 3440.342319ms
	Processing time (w/o IO): 3532.127408ms
	Processing time (w/o IO): 3519.502582ms
	  Time (mean ± σ):      8.797 s ±  0.001 s    [User: 17.599 s, System: 0.385 s]
	  Range (min … max):    8.796 s …  8.798 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 24527ms
	Processing time (w/o IO): 21387ms
	Processing time (w/o IO): 24453ms
	  Time (mean ± σ):     23.766 s ±  2.186 s    [User: 23.791 s, System: 0.211 s]
	  Range (min … max):   22.221 s … 25.312 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 104486ms
	Processing time (w/o IO): 103340ms
	Processing time (w/o IO): 98899ms
	  Time (mean ± σ):     101.599 s ±  3.129 s    [User: 101.623 s, System: 0.133 s]
	  Range (min … max):   99.386 s … 103.811 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 20297ms
	Processing time (w/o IO): 20685ms
	Processing time (w/o IO): 20327ms
	  Time (mean ± σ):     21.200 s ±  0.531 s    [User: 21.025 s, System: 0.176 s]
	  Range (min … max):   20.825 s … 21.575 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 6728 ms
	Processing time (w/o IO): 6929 ms
	Processing time (w/o IO): 6853 ms
	  Time (mean ± σ):      7.439 s ±  0.055 s    [User: 8.288 s, System: 0.106 s]
	  Range (min … max):    7.400 s …  7.478 s    2 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 4772 ms
	Processing time (w/o IO): 4771 ms
	Processing time (w/o IO): 4763 ms
	  Time (mean ± σ):      5.149 s ±  0.011 s    [User: 5.058 s, System: 0.086 s]
	  Range (min … max):    5.141 s …  5.157 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 5331 ms
	Processing time (w/o IO): 5440 ms
	Processing time (w/o IO): 5368 ms
	  Time (mean ± σ):      5.803 s ±  0.057 s    [User: 14.451 s, System: 0.087 s]
	  Range (min … max):    5.763 s …  5.843 s    2 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 7346ms
	Processing time (w/o IO): 7359ms
	Processing time (w/o IO): 7385ms
	  Time (mean ± σ):      7.744 s ±  0.019 s    [User: 7.638 s, System: 0.098 s]
	  Range (min … max):    7.730 s …  7.758 s    2 runs
	 
F#:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 5446ms
	Processing time (w/o IO): 5434ms
	Processing time (w/o IO): 5446ms
	  Time (mean ± σ):      6.558 s ±  0.014 s    [User: 6.422 s, System: 0.188 s]
	  Range (min … max):    6.548 s …  6.568 s    2 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net7.0/fsharp_con
	Processing time (w/o IO): 2759ms
	Processing time (w/o IO): 2417ms
	Processing time (w/o IO): 2341ms
	  Time (mean ± σ):      9.003 s ±  0.026 s    [User: 15.885 s, System: 0.375 s]
	  Range (min … max):    8.984 s …  9.021 s    2 runs
	 
C#:

	Benchmark 1: ./bin/release/net7.0/publish/related
	Processing time (w/o IO): 5736.345ms
	Processing time (w/o IO): 5760.7227ms
	Processing time (w/o IO): 5720.1273ms
	  Time (mean ± σ):      6.322 s ±  0.015 s    [User: 6.352 s, System: 0.154 s]
	  Range (min … max):    6.311 s …  6.333 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	9872.7819919586	ms
	Processing time (w/o IO):	12485.339164734	ms
	Processing time (w/o IO):	12381.65807724	ms
	  Time (mean ± σ):     16.664 s ±  0.176 s    [User: 16.473 s, System: 0.181 s]
	  Range (min … max):   16.539 s … 16.788 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	150229.36105728	ms
	Processing time (w/o IO):	156757.46393204	ms
	  Time (abs ≡):        163.302 s               [User: 163.033 s, System: 0.251 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 32623ms
	Processing time (w/o IO): 32600ms
	Processing time (w/o IO): 32497ms
	  Time (mean ± σ):     34.101 s ±  0.103 s    [User: 32.921 s, System: 1.169 s]
	  Range (min … max):   34.028 s … 34.174 s    2 runs
	 
