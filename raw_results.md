Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 31.257848ms
	Processing time (w/o IO): 24.278492ms
	Processing time (w/o IO): 31.041246ms
	Processing time (w/o IO): 24.572194ms
	Processing time (w/o IO): 24.616995ms
	Processing time (w/o IO): 26.644311ms
	Processing time (w/o IO): 24.139691ms
	Processing time (w/o IO): 24.313592ms
	Processing time (w/o IO): 24.090391ms
	Processing time (w/o IO): 24.182791ms
	Processing time (w/o IO): 24.635095ms
	Processing time (w/o IO): 24.104191ms
	Processing time (w/o IO): 24.160992ms
	  Time (mean ± σ):      64.9 ms ±   2.2 ms    [User: 58.4 ms, System: 12.8 ms]
	  Range (min … max):    62.3 ms …  69.0 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 12.812495ms
	Processing time (w/o IO): 16.715223ms
	Processing time (w/o IO): 19.226342ms
	Processing time (w/o IO): 13.094196ms
	Processing time (w/o IO): 13.555099ms
	Processing time (w/o IO): 15.133011ms
	Processing time (w/o IO): 13.456699ms
	Processing time (w/o IO): 18.031632ms
	Processing time (w/o IO): 13.446799ms
	Processing time (w/o IO): 14.426606ms
	Processing time (w/o IO): 13.159497ms
	Processing time (w/o IO): 14.97481ms
	Processing time (w/o IO): 13.052596ms
	  Time (mean ± σ):      54.3 ms ±   3.1 ms    [User: 81.2 ms, System: 14.0 ms]
	  Range (min … max):    51.3 ms …  60.5 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 23.967217ms
	Processing time (w/o IO): 23.819215ms
	Processing time (w/o IO): 23.768315ms
	Processing time (w/o IO): 23.732915ms
	Processing time (w/o IO): 23.978116ms
	Processing time (w/o IO): 23.725714ms
	Processing time (w/o IO): 24.068717ms
	Processing time (w/o IO): 23.727414ms
	Processing time (w/o IO): 23.756915ms
	Processing time (w/o IO): 23.757414ms
	Processing time (w/o IO): 24.055018ms
	Processing time (w/o IO): 24.093117ms
	Processing time (w/o IO): 24.172218ms
	  Time (mean ± σ):      40.5 ms ±   0.4 ms    [User: 33.7 ms, System: 6.7 ms]
	  Range (min … max):    40.0 ms …  41.1 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 22.814976ms
	Processing time (w/o IO): 21.655672ms
	Processing time (w/o IO): 20.148667ms
	Processing time (w/o IO): 20.404668ms
	Processing time (w/o IO): 20.469769ms
	Processing time (w/o IO): 20.414069ms
	Processing time (w/o IO): 20.788469ms
	Processing time (w/o IO): 21.226871ms
	Processing time (w/o IO): 20.386168ms
	Processing time (w/o IO): 20.401169ms
	Processing time (w/o IO): 21.900774ms
	Processing time (w/o IO): 22.687276ms
	Processing time (w/o IO): 20.318768ms
	  Time (mean ± σ):      38.0 ms ±   1.0 ms    [User: 47.5 ms, System: 9.4 ms]
	  Range (min … max):    37.1 ms …  40.1 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 1.483s
	Processing time (w/o IO): 1.465s
	Processing time (w/o IO): 1.482s
	Processing time (w/o IO): 1.483s
	Processing time (w/o IO): 1.467s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.457s
	Processing time (w/o IO): 1.474s
	Processing time (w/o IO): 1.482s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.463s
	Processing time (w/o IO): 1.561s
	  Time (mean ± σ):      1.542 s ±  0.031 s    [User: 1.527 s, System: 0.015 s]
	  Range (min … max):    1.523 s …  1.627 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 346.9ms
	Processing time (w/o IO): 349.3ms
	Processing time (w/o IO): 349.4ms
	Processing time (w/o IO): 347.6ms
	Processing time (w/o IO): 347.0ms
	Processing time (w/o IO): 348.1ms
	Processing time (w/o IO): 348.4ms
	Processing time (w/o IO): 346.2ms
	Processing time (w/o IO): 347.1ms
	Processing time (w/o IO): 345.7ms
	Processing time (w/o IO): 366.9ms
	Processing time (w/o IO): 338.3ms
	Processing time (w/o IO): 345.9ms
	  Time (mean ± σ):     639.8 ms ±  22.2 ms    [User: 813.0 ms, System: 429.1 ms]
	  Range (min … max):   625.1 ms … 687.9 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 60.532571ms
	Processing time (w/o IO): 60.259768ms
	Processing time (w/o IO): 60.062365ms
	Processing time (w/o IO): 60.204967ms
	Processing time (w/o IO): 60.36427ms
	Processing time (w/o IO): 60.610973ms
	Processing time (w/o IO): 60.297669ms
	Processing time (w/o IO): 60.350869ms
	Processing time (w/o IO): 60.279068ms
	Processing time (w/o IO): 60.058366ms
	Processing time (w/o IO): 60.145966ms
	Processing time (w/o IO): 60.39967ms
	Processing time (w/o IO): 60.252967ms
	  Time (mean ± σ):     111.7 ms ±   0.6 ms    [User: 100.9 ms, System: 10.8 ms]
	  Range (min … max):   110.9 ms … 112.5 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 34ms
	Processing time (w/o IO): 34ms
	Processing time (w/o IO): 36ms
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
	  Time (mean ± σ):      80.8 ms ±   0.4 ms    [User: 76.4 ms, System: 4.4 ms]
	  Range (min … max):    80.2 ms …  81.4 ms    10 runs
	 
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
	Processing time (w/o IO): 22 milliseconds
	Processing time (w/o IO): 23 milliseconds
	  Time (mean ± σ):      3.276 s ±  0.030 s    [User: 3.085 s, System: 0.190 s]
	  Range (min … max):    3.253 s …  3.355 s    10 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads auto related.jl
	Processing time (w/o IO): 12 milliseconds
	Processing time (w/o IO): 12 milliseconds
	Processing time (w/o IO): 12 milliseconds
	Processing time (w/o IO): 12 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 12 milliseconds
	Processing time (w/o IO): 11 milliseconds
	Processing time (w/o IO): 12 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 12 milliseconds
	Processing time (w/o IO): 12 milliseconds
	Processing time (w/o IO): 12 milliseconds
	Processing time (w/o IO): 15 milliseconds
	  Time (mean ± σ):      3.460 s ±  0.046 s    [User: 4.849 s, System: 0.205 s]
	  Range (min … max):    3.409 s …  3.570 s    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  41.154808ms
	Processing time (w/o IO):  41.063804ms
	Processing time (w/o IO):  49.357748ms
	Processing time (w/o IO):  43.101065ms
	Processing time (w/o IO):  41.783026ms
	Processing time (w/o IO):  40.820797ms
	Processing time (w/o IO):  41.060405ms
	Processing time (w/o IO):  41.879848ms
	Processing time (w/o IO):  41.603512ms
	Processing time (w/o IO):  40.883917ms
	Processing time (w/o IO):  41.211259ms
	Processing time (w/o IO):  41.126548ms
	Processing time (w/o IO):  42.108579ms
	  Time (mean ± σ):     265.9 ms ±   8.0 ms    [User: 258.5 ms, System: 7.3 ms]
	  Range (min … max):   260.4 ms … 282.8 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 51.951ms
	Processing time (w/o IO): 51.832ms
	Processing time (w/o IO): 52.128ms
	Processing time (w/o IO): 51.522ms
	Processing time (w/o IO): 51.785ms
	Processing time (w/o IO): 51.835ms
	Processing time (w/o IO): 52.276ms
	Processing time (w/o IO): 51.997ms
	Processing time (w/o IO): 51.664ms
	Processing time (w/o IO): 51.751ms
	Processing time (w/o IO): 52.397ms
	Processing time (w/o IO): 51.809ms
	Processing time (w/o IO): 51.839ms
	  Time (mean ± σ):     384.6 ms ±   0.9 ms    [User: 354.7 ms, System: 29.8 ms]
	  Range (min … max):   383.4 ms … 386.1 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 153ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 133ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 132ms
	  Time (mean ± σ):     520.8 ms ±  17.8 ms    [User: 626.5 ms, System: 119.7 ms]
	  Range (min … max):   500.0 ms … 554.9 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 187ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 187ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 204ms
	Processing time (w/o IO): 203ms
	Processing time (w/o IO): 201ms
	Processing time (w/o IO): 187ms
	Processing time (w/o IO): 185ms
	  Time (mean ± σ):     322.2 ms ±  14.6 ms    [User: 306.5 ms, System: 20.0 ms]
	  Range (min … max):   310.9 ms … 346.5 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 51.78999900817871ms
	Processing time (w/o IO): 51.20706558227539ms
	Processing time (w/o IO): 51.6810417175293ms
	Processing time (w/o IO): 51.534056663513184ms
	Processing time (w/o IO): 51.275014877319336ms
	Processing time (w/o IO): 51.51808261871338ms
	Processing time (w/o IO): 51.65302753448486ms
	Processing time (w/o IO): 51.301002502441406ms
	Processing time (w/o IO): 51.08201503753662ms
	Processing time (w/o IO): 51.18000507354736ms
	Processing time (w/o IO): 51.725029945373535ms
	Processing time (w/o IO): 51.57005786895752ms
	Processing time (w/o IO): 51.576972007751465ms
	  Time (mean ± σ):     410.7 ms ±   6.8 ms    [User: 350.6 ms, System: 37.8 ms]
	  Range (min … max):   402.2 ms … 421.2 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 32.528014ms
	Processing time (w/o IO): 38.740041ms
	Processing time (w/o IO): 31.972685ms
	Processing time (w/o IO): 31.31075ms
	Processing time (w/o IO): 32.465511ms
	Processing time (w/o IO): 31.642168ms
	Processing time (w/o IO): 32.2575ms
	Processing time (w/o IO): 31.935884ms
	Processing time (w/o IO): 31.431157ms
	Processing time (w/o IO): 32.555416ms
	Processing time (w/o IO): 41.388582ms
	Processing time (w/o IO): 31.675769ms
	Processing time (w/o IO): 32.099992ms
	  Time (mean ± σ):     413.1 ms ±  54.4 ms    [User: 427.0 ms, System: 43.9 ms]
	  Range (min … max):   387.6 ms … 565.2 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 188ms
	Processing time (w/o IO): 176ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 184ms
	Processing time (w/o IO): 183ms
	Processing time (w/o IO): 188ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 193ms
	Processing time (w/o IO): 181ms
	Processing time (w/o IO): 180ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 178ms
	  Time (mean ± σ):     357.9 ms ±   9.1 ms    [User: 365.0 ms, System: 62.9 ms]
	  Range (min … max):   348.5 ms … 377.1 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 728ms
	Processing time (w/o IO): 718ms
	Processing time (w/o IO): 627ms
	Processing time (w/o IO): 759ms
	Processing time (w/o IO): 719ms
	Processing time (w/o IO): 715ms
	Processing time (w/o IO): 609ms
	Processing time (w/o IO): 752ms
	Processing time (w/o IO): 729ms
	Processing time (w/o IO): 757ms
	Processing time (w/o IO): 734ms
	Processing time (w/o IO): 732ms
	Processing time (w/o IO): 718ms
	  Time (mean ± σ):     777.1 ms ±  43.0 ms    [User: 797.7 ms, System: 37.9 ms]
	  Range (min … max):   663.7 ms … 813.0 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 223ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 193ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 190ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 194ms
	Processing time (w/o IO): 193ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 191ms
	  Time (mean ± σ):     259.2 ms ±   1.6 ms    [User: 253.6 ms, System: 27.6 ms]
	  Range (min … max):   257.4 ms … 261.8 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 108 ms
	Processing time (w/o IO): 124 ms
	Processing time (w/o IO): 102 ms
	Processing time (w/o IO): 112 ms
	Processing time (w/o IO): 107 ms
	Processing time (w/o IO): 113 ms
	Processing time (w/o IO): 112 ms
	Processing time (w/o IO): 104 ms
	Processing time (w/o IO): 101 ms
	Processing time (w/o IO): 113 ms
	Processing time (w/o IO): 102 ms
	Processing time (w/o IO): 112 ms
	Processing time (w/o IO): 102 ms
	  Time (mean ± σ):     333.4 ms ±   6.9 ms    [User: 626.6 ms, System: 49.3 ms]
	  Range (min … max):   324.5 ms … 344.8 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 38 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 37 ms
	  Time (mean ± σ):      66.8 ms ±   2.3 ms    [User: 53.6 ms, System: 13.3 ms]
	  Range (min … max):    64.2 ms …  70.5 ms    10 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 46 ms
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 49 ms
	Processing time (w/o IO): 49 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 49 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 49 ms
	Processing time (w/o IO): 50 ms
	  Time (mean ± σ):      82.9 ms ±   4.4 ms    [User: 144.6 ms, System: 14.0 ms]
	  Range (min … max):    76.2 ms …  89.2 ms    10 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 31ms
	Processing time (w/o IO): 31ms
	Processing time (w/o IO): 31ms
	Processing time (w/o IO): 31ms
	Processing time (w/o IO): 31ms
	Processing time (w/o IO): 31ms
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 33ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 31ms
	Processing time (w/o IO): 31ms
	  Time (mean ± σ):      59.3 ms ±   2.1 ms    [User: 48.4 ms, System: 10.9 ms]
	  Range (min … max):    57.2 ms …  62.5 ms    10 runs
	 
F#:

	Benchmark 1: ./bin/release/net7.0/fsharp
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
	  Time (mean ± σ):     285.9 ms ±   2.7 ms    [User: 234.6 ms, System: 34.3 ms]
	  Range (min … max):   282.6 ms … 290.4 ms    10 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net7.0/fsharp_con
	Processing time (w/o IO): 34ms
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 34ms
	Processing time (w/o IO): 34ms
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 34ms
	  Time (mean ± σ):     812.3 ms ±  13.0 ms    [User: 819.8 ms, System: 67.5 ms]
	  Range (min … max):   801.2 ms … 842.5 ms    10 runs
	 
C#:

	Benchmark 1: ./bin/release/net7.0/publish/related
	Processing time (w/o IO): 45.0635ms
	Processing time (w/o IO): 44.8817ms
	Processing time (w/o IO): 44.7785ms
	Processing time (w/o IO): 44.814ms
	Processing time (w/o IO): 44.8433ms
	Processing time (w/o IO): 44.9253ms
	Processing time (w/o IO): 45.0721ms
	Processing time (w/o IO): 44.7598ms
	Processing time (w/o IO): 45.1609ms
	Processing time (w/o IO): 44.8348ms
	Processing time (w/o IO): 45.0273ms
	Processing time (w/o IO): 44.9405ms
	Processing time (w/o IO): 44.8814ms
	  Time (mean ± σ):      91.1 ms ±   1.0 ms    [User: 87.0 ms, System: 14.2 ms]
	  Range (min … max):    89.8 ms …  93.2 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	109.92693901062	ms
	Processing time (w/o IO):	115.67807197571	ms
	Processing time (w/o IO):	106.37617111206	ms
	Processing time (w/o IO):	114.92395401001	ms
	Processing time (w/o IO):	110.01515388489	ms
	Processing time (w/o IO):	90.348958969116	ms
	Processing time (w/o IO):	88.603019714355	ms
	Processing time (w/o IO):	90.954065322876	ms
	Processing time (w/o IO):	91.150999069214	ms
	Processing time (w/o IO):	114.27402496338	ms
	Processing time (w/o IO):	92.182874679565	ms
	Processing time (w/o IO):	106.82702064514	ms
	Processing time (w/o IO):	113.26217651367	ms
	  Time (mean ± σ):     347.2 ms ±  12.6 ms    [User: 326.4 ms, System: 20.7 ms]
	  Range (min … max):   325.9 ms … 365.0 ms    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1093.5859680176	ms
	Processing time (w/o IO):	1165.796995163	ms
	Processing time (w/o IO):	1100.5930900574	ms
	Processing time (w/o IO):	1097.090959549	ms
	Processing time (w/o IO):	1093.3392047882	ms
	Processing time (w/o IO):	1091.4669036865	ms
	Processing time (w/o IO):	1092.1700000763	ms
	Processing time (w/o IO):	1089.5102024078	ms
	Processing time (w/o IO):	1092.1580791473	ms
	Processing time (w/o IO):	1091.0968780518	ms
	Processing time (w/o IO):	1090.9810066223	ms
	Processing time (w/o IO):	1089.8270606995	ms
	Processing time (w/o IO):	1097.2208976746	ms
	  Time (mean ± σ):      1.526 s ±  0.004 s    [User: 1.513 s, System: 0.013 s]
	  Range (min … max):    1.521 s …  1.533 s    10 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 142ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 142ms
	Processing time (w/o IO): 144ms
	Processing time (w/o IO): 143ms
	Processing time (w/o IO): 143ms
	Processing time (w/o IO): 142ms
	Processing time (w/o IO): 142ms
	  Time (mean ± σ):     237.7 ms ±  38.9 ms    [User: 203.3 ms, System: 22.8 ms]
	  Range (min … max):   222.1 ms … 348.3 ms    10 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 212.131714ms
	Processing time (w/o IO): 210.133191ms
	Processing time (w/o IO): 212.027213ms
	  Time (mean ± σ):     329.7 ms ±   6.5 ms    [User: 332.5 ms, System: 29.1 ms]
	  Range (min … max):   325.1 ms … 334.3 ms    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 93.12976ms
	Processing time (w/o IO): 93.713067ms
	Processing time (w/o IO): 93.590034ms
	  Time (mean ± σ):     199.6 ms ±   0.5 ms    [User: 473.7 ms, System: 22.8 ms]
	  Range (min … max):   199.3 ms … 200.0 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 236.182385ms
	Processing time (w/o IO): 233.889662ms
	Processing time (w/o IO): 234.541969ms
	  Time (mean ± σ):     291.9 ms ±   0.4 ms    [User: 272.4 ms, System: 19.4 ms]
	  Range (min … max):   291.6 ms … 292.1 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 175.519198ms
	Processing time (w/o IO): 184.731087ms
	Processing time (w/o IO): 182.502565ms
	  Time (mean ± σ):     236.4 ms ±   0.6 ms    [User: 386.7 ms, System: 19.4 ms]
	  Range (min … max):   236.0 ms … 236.9 ms    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 13.175s
	Processing time (w/o IO): 13.006s
	Processing time (w/o IO): 13.184s
	  Time (mean ± σ):     13.225 s ±  0.124 s    [User: 13.184 s, System: 0.037 s]
	  Range (min … max):   13.137 s … 13.312 s    2 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 2.886s
	Processing time (w/o IO): 2.712s
	Processing time (w/o IO): 2.700s
	  Time (mean ± σ):      3.080 s ±  0.009 s    [User: 2.972 s, System: 0.724 s]
	  Range (min … max):    3.073 s …  3.086 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 525.692366ms
	Processing time (w/o IO): 525.098961ms
	Processing time (w/o IO): 523.624347ms
	  Time (mean ± σ):     685.9 ms ±   0.3 ms    [User: 658.3 ms, System: 27.4 ms]
	  Range (min … max):   685.7 ms … 686.1 ms    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 307ms
	Processing time (w/o IO): 306ms
	Processing time (w/o IO): 305ms
	  Time (mean ± σ):     445.4 ms ±   0.5 ms    [User: 429.7 ms, System: 15.6 ms]
	  Range (min … max):   445.0 ms … 445.8 ms    2 runs
	 
Julia:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 189 milliseconds
	Processing time (w/o IO): 189 milliseconds
	Processing time (w/o IO): 188 milliseconds
	  Time (mean ± σ):      3.661 s ±  0.014 s    [User: 3.432 s, System: 0.226 s]
	  Range (min … max):    3.651 s …  3.671 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads auto related.jl
	Processing time (w/o IO): 93 milliseconds
	Processing time (w/o IO): 93 milliseconds
	Processing time (w/o IO): 92 milliseconds
	  Time (mean ± σ):      3.631 s ±  0.012 s    [User: 5.418 s, System: 0.203 s]
	  Range (min … max):    3.623 s …  3.639 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  387.619906ms
	Processing time (w/o IO):  384.653381ms
	Processing time (w/o IO):  384.855982ms
	  Time (mean ± σ):     971.4 ms ±   1.5 ms    [User: 950.6 ms, System: 19.6 ms]
	  Range (min … max):   970.4 ms … 972.5 ms    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 433.698ms
	Processing time (w/o IO): 433.918ms
	Processing time (w/o IO): 436.821ms
	  Time (mean ± σ):      4.003 s ±  0.047 s    [User: 3.916 s, System: 0.083 s]
	  Range (min … max):    3.970 s …  4.036 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 1255ms
	Processing time (w/o IO): 1373ms
	Processing time (w/o IO): 1216ms
	  Time (mean ± σ):      1.873 s ±  0.111 s    [User: 2.076 s, System: 0.133 s]
	  Range (min … max):    1.795 s …  1.952 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 1619ms
	Processing time (w/o IO): 1626ms
	Processing time (w/o IO): 1646ms
	  Time (mean ± σ):      2.014 s ±  0.007 s    [User: 1.974 s, System: 0.045 s]
	  Range (min … max):    2.010 s …  2.019 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 406.07893466949463ms
	Processing time (w/o IO): 403.83994579315186ms
	Processing time (w/o IO): 405.0259590148926ms
	  Time (mean ± σ):      1.446 s ±  0.036 s    [User: 1.300 s, System: 0.113 s]
	  Range (min … max):    1.421 s …  1.471 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 235.957457ms
	Processing time (w/o IO): 227.020205ms
	Processing time (w/o IO): 226.39941ms
	  Time (mean ± σ):      1.301 s ±  0.033 s    [User: 1.823 s, System: 0.103 s]
	  Range (min … max):    1.278 s …  1.324 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 1385ms
	Processing time (w/o IO): 1387ms
	Processing time (w/o IO): 1467ms
	  Time (mean ± σ):      1.715 s ±  0.079 s    [User: 1.711 s, System: 0.099 s]
	  Range (min … max):    1.659 s …  1.770 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 6275ms
	Processing time (w/o IO): 6429ms
	Processing time (w/o IO): 6278ms
	  Time (mean ± σ):      6.476 s ±  0.106 s    [User: 6.506 s, System: 0.056 s]
	  Range (min … max):    6.400 s …  6.551 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 1607ms
	Processing time (w/o IO): 1551ms
	Processing time (w/o IO): 1548ms
	  Time (mean ± σ):      1.702 s ±  0.017 s    [User: 1.718 s, System: 0.049 s]
	  Range (min … max):    1.690 s …  1.714 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 506 ms
	Processing time (w/o IO): 513 ms
	Processing time (w/o IO): 503 ms
	  Time (mean ± σ):     796.3 ms ±  29.3 ms    [User: 1320.4 ms, System: 73.3 ms]
	  Range (min … max):   775.6 ms … 817.0 ms    2 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 261 ms
	Processing time (w/o IO): 288 ms
	Processing time (w/o IO): 284 ms
	  Time (mean ± σ):     369.1 ms ±   0.7 ms    [User: 339.5 ms, System: 29.7 ms]
	  Range (min … max):   368.6 ms … 369.6 ms    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 268 ms
	Processing time (w/o IO): 266 ms
	Processing time (w/o IO): 264 ms
	  Time (mean ± σ):     340.2 ms ±   1.9 ms    [User: 742.9 ms, System: 31.5 ms]
	  Range (min … max):   338.9 ms … 341.6 ms    2 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 264ms
	Processing time (w/o IO): 263ms
	Processing time (w/o IO): 264ms
	  Time (mean ± σ):     339.9 ms ±   0.8 ms    [User: 310.4 ms, System: 29.4 ms]
	  Range (min … max):   339.4 ms … 340.5 ms    2 runs
	 
F#:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 356ms
	Processing time (w/o IO): 356ms
	Processing time (w/o IO): 356ms
	  Time (mean ± σ):     765.7 ms ±   1.4 ms    [User: 695.5 ms, System: 67.4 ms]
	  Range (min … max):   764.7 ms … 766.7 ms    2 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net7.0/fsharp_con
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 163ms
	Processing time (w/o IO): 164ms
	  Time (mean ± σ):      2.029 s ±  0.040 s    [User: 2.460 s, System: 0.137 s]
	  Range (min … max):    2.001 s …  2.057 s    2 runs
	 
C#:

	Benchmark 1: ./bin/release/net7.0/publish/related
	Processing time (w/o IO): 374.3153ms
	Processing time (w/o IO): 370.5843ms
	Processing time (w/o IO): 373.2318ms
	  Time (mean ± σ):     514.7 ms ±   6.4 ms    [User: 494.5 ms, System: 41.8 ms]
	  Range (min … max):   510.2 ms … 519.3 ms    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	903.92708778381	ms
	Processing time (w/o IO):	906.87918663025	ms
	Processing time (w/o IO):	870.83888053894	ms
	  Time (mean ± σ):      1.769 s ±  0.033 s    [User: 1.701 s, System: 0.056 s]
	  Range (min … max):    1.746 s …  1.792 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	9825.3190517426	ms
	Processing time (w/o IO):	9449.991941452	ms
	Processing time (w/o IO):	9442.1579837799	ms
	  Time (mean ± σ):     10.855 s ±  0.020 s    [User: 10.805 s, System: 0.045 s]
	  Range (min … max):   10.841 s … 10.869 s    2 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 1556ms
	Processing time (w/o IO): 1572ms
	Processing time (w/o IO): 1574ms
	  Time (mean ± σ):      1.897 s ±  0.000 s    [User: 1.807 s, System: 0.087 s]
	  Range (min … max):    1.897 s …  1.897 s    2 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 823.327393ms
	Processing time (w/o IO): 825.956792ms
	Processing time (w/o IO): 827.307542ms
	  Time (mean ± σ):      1.070 s ±  0.000 s    [User: 1.091 s, System: 0.048 s]
	  Range (min … max):    1.069 s …  1.070 s    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 382.801064ms
	Processing time (w/o IO): 380.642283ms
	Processing time (w/o IO): 363.169164ms
	  Time (mean ± σ):     618.4 ms ±  11.6 ms    [User: 1683.1 ms, System: 69.9 ms]
	  Range (min … max):   610.3 ms … 626.6 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 890.739616ms
	Processing time (w/o IO): 866.818795ms
	Processing time (w/o IO): 867.478571ms
	  Time (mean ± σ):     988.6 ms ±   0.8 ms    [User: 955.0 ms, System: 33.5 ms]
	  Range (min … max):   988.0 ms … 989.2 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 686.261123ms
	Processing time (w/o IO): 686.632836ms
	Processing time (w/o IO): 686.706638ms
	  Time (mean ± σ):     803.6 ms ±   0.2 ms    [User: 1446.0 ms, System: 39.7 ms]
	  Range (min … max):   803.5 ms … 803.8 ms    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 53.709s
	Processing time (w/o IO): 53.319s
	Processing time (w/o IO): 53.461s
	  Time (mean ± σ):     53.633 s ±  0.107 s    [User: 53.555 s, System: 0.073 s]
	  Range (min … max):   53.558 s … 53.709 s    2 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 12.733s
	Processing time (w/o IO): 11.559s
	Processing time (w/o IO): 11.603s
	  Time (mean ± σ):     12.188 s ±  0.014 s    [User: 10.167 s, System: 2.595 s]
	  Range (min … max):   12.178 s … 12.198 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 2077.967092ms
	Processing time (w/o IO): 2074.82658ms
	Processing time (w/o IO): 2079.603347ms
	  Time (mean ± σ):      2.436 s ±  0.007 s    [User: 2.377 s, System: 0.050 s]
	  Range (min … max):    2.431 s …  2.441 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 1207ms
	Processing time (w/o IO): 1208ms
	Processing time (w/o IO): 1211ms
	  Time (mean ± σ):      1.502 s ±  0.002 s    [User: 1.465 s, System: 0.038 s]
	  Range (min … max):    1.501 s …  1.504 s    2 runs
	 
Julia:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 744 milliseconds
	Processing time (w/o IO): 742 milliseconds
	Processing time (w/o IO): 744 milliseconds
	  Time (mean ± σ):      5.015 s ±  0.009 s    [User: 4.753 s, System: 0.257 s]
	  Range (min … max):    5.009 s …  5.022 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads auto related.jl
	Processing time (w/o IO): 358 milliseconds
	Processing time (w/o IO): 357 milliseconds
	Processing time (w/o IO): 358 milliseconds
	  Time (mean ± σ):      4.400 s ±  0.007 s    [User: 7.786 s, System: 0.270 s]
	  Range (min … max):    4.395 s …  4.405 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  1.525443282s
	Processing time (w/o IO):  1.524353928s
	Processing time (w/o IO):  1.534244444s
	  Time (mean ± σ):      2.746 s ±  0.010 s    [User: 2.703 s, System: 0.039 s]
	  Range (min … max):    2.739 s …  2.752 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 1.683s
	Processing time (w/o IO): 1.686s
	Processing time (w/o IO): 1.685s
	  Time (mean ± σ):     19.926 s ±  0.183 s    [User: 19.745 s, System: 0.164 s]
	  Range (min … max):   19.796 s … 20.056 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 5210ms
	Processing time (w/o IO): 5253ms
	Processing time (w/o IO): 5241ms
	  Time (mean ± σ):      6.143 s ±  0.000 s    [User: 6.359 s, System: 0.189 s]
	  Range (min … max):    6.143 s …  6.143 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 6488ms
	Processing time (w/o IO): 6475ms
	Processing time (w/o IO): 6477ms
	  Time (mean ± σ):      7.207 s ±  0.006 s    [User: 7.164 s, System: 0.088 s]
	  Range (min … max):    7.203 s …  7.211 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 1570.8119869232178ms
	Processing time (w/o IO): 1572.2289085388184ms
	Processing time (w/o IO): 1568.7379837036133ms
	  Time (mean ± σ):      3.634 s ±  0.057 s    [User: 3.401 s, System: 0.168 s]
	  Range (min … max):    3.594 s …  3.674 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 901.127944ms
	Processing time (w/o IO): 856.954929ms
	Processing time (w/o IO): 900.190175ms
	  Time (mean ± σ):      3.001 s ±  0.036 s    [User: 5.232 s, System: 0.198 s]
	  Range (min … max):    2.975 s …  3.026 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 5383ms
	Processing time (w/o IO): 5373ms
	Processing time (w/o IO): 5362ms
	  Time (mean ± σ):      5.824 s ±  0.003 s    [User: 5.864 s, System: 0.106 s]
	  Range (min … max):    5.822 s …  5.827 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 24712ms
	Processing time (w/o IO): 26395ms
	Processing time (w/o IO): 24393ms
	  Time (mean ± σ):     25.632 s ±  1.414 s    [User: 25.671 s, System: 0.091 s]
	  Range (min … max):   24.632 s … 26.632 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 5041ms
	Processing time (w/o IO): 5040ms
	Processing time (w/o IO): 5023ms
	  Time (mean ± σ):      5.305 s ±  0.051 s    [User: 5.266 s, System: 0.114 s]
	  Range (min … max):    5.269 s …  5.342 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 1728 ms
	Processing time (w/o IO): 1742 ms
	Processing time (w/o IO): 2122 ms
	  Time (mean ± σ):      2.298 s ±  0.297 s    [User: 2.947 s, System: 0.088 s]
	  Range (min … max):    2.088 s …  2.508 s    2 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 1212 ms
	Processing time (w/o IO): 1203 ms
	Processing time (w/o IO): 1204 ms
	  Time (mean ± σ):      1.353 s ±  0.001 s    [User: 1.303 s, System: 0.047 s]
	  Range (min … max):    1.353 s …  1.354 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 1019 ms
	Processing time (w/o IO): 1023 ms
	Processing time (w/o IO): 1019 ms
	  Time (mean ± σ):      1.175 s ±  0.005 s    [User: 2.819 s, System: 0.051 s]
	  Range (min … max):    1.172 s …  1.179 s    2 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 1952ms
	Processing time (w/o IO): 1952ms
	Processing time (w/o IO): 1947ms
	  Time (mean ± σ):      2.106 s ±  0.000 s    [User: 2.056 s, System: 0.047 s]
	  Range (min … max):    2.106 s …  2.106 s    2 runs
	 
F#:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 1372ms
	Processing time (w/o IO): 1376ms
	Processing time (w/o IO): 1371ms
	  Time (mean ± σ):      2.019 s ±  0.027 s    [User: 1.942 s, System: 0.100 s]
	  Range (min … max):    2.000 s …  2.038 s    2 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net7.0/fsharp_con
	Processing time (w/o IO): 651ms
	Processing time (w/o IO): 605ms
	Processing time (w/o IO): 708ms
	  Time (mean ± σ):      3.978 s ±  0.039 s    [User: 5.843 s, System: 0.203 s]
	  Range (min … max):    3.950 s …  4.006 s    2 runs
	 
C#:

	Benchmark 1: ./bin/release/net7.0/publish/related
	Processing time (w/o IO): 1439.0431ms
	Processing time (w/o IO): 1451.8389ms
	Processing time (w/o IO): 1486.9941ms
	  Time (mean ± σ):      1.744 s ±  0.030 s    [User: 1.702 s, System: 0.086 s]
	  Range (min … max):    1.724 s …  1.765 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	3421.0388660431	ms
	Processing time (w/o IO):	3081.484079361	ms
	Processing time (w/o IO):	3361.2930774689	ms
	  Time (mean ± σ):      5.079 s ±  0.200 s    [User: 4.989 s, System: 0.083 s]
	  Range (min … max):    4.938 s …  5.221 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	37545.495986938	ms
	Processing time (w/o IO):	37397.629976273	ms
	Processing time (w/o IO):	37424.75104332	ms
	  Time (mean ± σ):     40.314 s ±  0.040 s    [User: 40.228 s, System: 0.076 s]
	  Range (min … max):   40.285 s … 40.342 s    2 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 6728ms
	Processing time (w/o IO): 6439ms
	Processing time (w/o IO): 6617ms
	  Time (mean ± σ):      7.155 s ±  0.128 s    [User: 6.850 s, System: 0.299 s]
	  Range (min … max):    7.064 s …  7.245 s    2 runs
	 
