Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 25.918913ms
	Processing time (w/o IO): 26.088215ms
	Processing time (w/o IO): 26.136915ms
	Processing time (w/o IO): 25.320106ms
	Processing time (w/o IO): 25.66401ms
	Processing time (w/o IO): 25.245405ms
	Processing time (w/o IO): 26.046915ms
	Processing time (w/o IO): 33.562502ms
	Processing time (w/o IO): 26.232102ms
	Processing time (w/o IO): 26.267002ms
	Processing time (w/o IO): 25.892298ms
	Processing time (w/o IO): 25.769196ms
	Processing time (w/o IO): 25.817897ms
	Processing time (w/o IO): 28.324026ms
	Processing time (w/o IO): 27.02841ms
	  Time (mean ± σ):      57.2 ms ±   4.4 ms    [User: 51.8 ms, System: 11.5 ms]
	  Range (min … max):    53.1 ms …  67.6 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 24.601083ms
	Processing time (w/o IO): 18.974318ms
	Processing time (w/o IO): 18.27361ms
	Processing time (w/o IO): 19.057419ms
	Processing time (w/o IO): 19.150821ms
	Processing time (w/o IO): 18.673115ms
	Processing time (w/o IO): 19.107219ms
	Processing time (w/o IO): 18.417812ms
	Processing time (w/o IO): 18.561113ms
	Processing time (w/o IO): 19.812828ms
	Processing time (w/o IO): 18.829216ms
	Processing time (w/o IO): 20.650137ms
	Processing time (w/o IO): 39.295152ms
	Processing time (w/o IO): 31.817365ms
	Processing time (w/o IO): 19.220921ms
	  Time (mean ± σ):      54.4 ms ±  11.0 ms    [User: 63.4 ms, System: 9.6 ms]
	  Range (min … max):    46.5 ms …  82.5 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 30.823143ms
	Processing time (w/o IO): 30.875443ms
	Processing time (w/o IO): 30.748342ms
	Processing time (w/o IO): 30.930744ms
	Processing time (w/o IO): 30.900444ms
	Processing time (w/o IO): 30.734441ms
	Processing time (w/o IO): 30.733441ms
	Processing time (w/o IO): 30.865143ms
	Processing time (w/o IO): 30.906343ms
	Processing time (w/o IO): 32.903466ms
	Processing time (w/o IO): 30.802642ms
	Processing time (w/o IO): 30.717541ms
	Processing time (w/o IO): 30.853143ms
	Processing time (w/o IO): 30.720941ms
	Processing time (w/o IO): 30.724142ms
	  Time (mean ± σ):      48.7 ms ±   0.8 ms    [User: 41.1 ms, System: 7.5 ms]
	  Range (min … max):    48.2 ms …  50.8 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 15.499178ms
	Processing time (w/o IO): 15.62948ms
	Processing time (w/o IO): 15.337877ms
	Processing time (w/o IO): 16.082285ms
	Processing time (w/o IO): 15.510479ms
	Processing time (w/o IO): 15.347877ms
	Processing time (w/o IO): 15.364577ms
	Processing time (w/o IO): 15.62238ms
	Processing time (w/o IO): 16.435689ms
	Processing time (w/o IO): 16.060885ms
	Processing time (w/o IO): 15.60778ms
	Processing time (w/o IO): 15.895983ms
	Processing time (w/o IO): 15.376177ms
	Processing time (w/o IO): 16.168486ms
	Processing time (w/o IO): 15.537579ms
	  Time (mean ± σ):      32.9 ms ±   0.5 ms    [User: 36.9 ms, System: 9.9 ms]
	  Range (min … max):    32.4 ms …  33.8 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 1.734s
	Processing time (w/o IO): 1.685s
	Processing time (w/o IO): 1.724s
	Processing time (w/o IO): 1.684s
	Processing time (w/o IO): 1.682s
	Processing time (w/o IO): 1.682s
	Processing time (w/o IO): 1.733s
	Processing time (w/o IO): 1.730s
	Processing time (w/o IO): 1.688s
	Processing time (w/o IO): 1.683s
	Processing time (w/o IO): 1.708s
	Processing time (w/o IO): 1.689s
	Processing time (w/o IO): 1.686s
	  Time (mean ± σ):      1.769 s ±  0.020 s    [User: 1.752 s, System: 0.017 s]
	  Range (min … max):    1.754 s …  1.805 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 436.2ms
	Processing time (w/o IO): 377.9ms
	Processing time (w/o IO): 366.2ms
	Processing time (w/o IO): 385.8ms
	Processing time (w/o IO): 375.5ms
	Processing time (w/o IO): 362.8ms
	Processing time (w/o IO): 362.3ms
	Processing time (w/o IO): 361.8ms
	Processing time (w/o IO): 362.2ms
	Processing time (w/o IO): 362.3ms
	Processing time (w/o IO): 362.9ms
	Processing time (w/o IO): 363.0ms
	Processing time (w/o IO): 362.8ms
	  Time (mean ± σ):     589.8 ms ±  13.1 ms    [User: 603.4 ms, System: 171.7 ms]
	  Range (min … max):   582.6 ms … 625.0 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 68.493952ms
	Processing time (w/o IO): 68.41005ms
	Processing time (w/o IO): 68.254049ms
	Processing time (w/o IO): 68.507352ms
	Processing time (w/o IO): 68.653653ms
	Processing time (w/o IO): 68.836655ms
	Processing time (w/o IO): 68.217449ms
	Processing time (w/o IO): 68.578352ms
	Processing time (w/o IO): 68.439551ms
	Processing time (w/o IO): 68.452852ms
	Processing time (w/o IO): 68.145248ms
	Processing time (w/o IO): 68.35695ms
	Processing time (w/o IO): 68.576952ms
	Processing time (w/o IO): 68.307449ms
	Processing time (w/o IO): 68.385551ms
	  Time (mean ± σ):     124.8 ms ±   0.9 ms    [User: 113.3 ms, System: 11.3 ms]
	  Range (min … max):   123.6 ms … 127.1 ms    10 runs
	 
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
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	  Time (mean ± σ):      79.0 ms ±   0.3 ms    [User: 72.7 ms, System: 6.4 ms]
	  Range (min … max):    78.6 ms …  79.7 ms    10 runs
	 
Julia:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 48 milliseconds
	Processing time (w/o IO): 48 milliseconds
	Processing time (w/o IO): 49 milliseconds
	Processing time (w/o IO): 48 milliseconds
	Processing time (w/o IO): 49 milliseconds
	Processing time (w/o IO): 48 milliseconds
	Processing time (w/o IO): 49 milliseconds
	Processing time (w/o IO): 49 milliseconds
	Processing time (w/o IO): 49 milliseconds
	Processing time (w/o IO): 48 milliseconds
	Processing time (w/o IO): 48 milliseconds
	Processing time (w/o IO): 49 milliseconds
	Processing time (w/o IO): 49 milliseconds
	Processing time (w/o IO): 49 milliseconds
	Processing time (w/o IO): 49 milliseconds
	  Time (mean ± σ):      3.337 s ±  0.020 s    [User: 3.143 s, System: 0.188 s]
	  Range (min … max):    3.294 s …  3.357 s    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  54.170851ms
	Processing time (w/o IO):  54.081947ms
	Processing time (w/o IO):  53.410036ms
	Processing time (w/o IO):  53.369836ms
	Processing time (w/o IO):  53.702139ms
	Processing time (w/o IO):  53.75264ms
	Processing time (w/o IO):  54.207945ms
	Processing time (w/o IO):  53.506137ms
	Processing time (w/o IO):  53.717539ms
	Processing time (w/o IO):  53.340536ms
	Processing time (w/o IO):  53.439036ms
	Processing time (w/o IO):  53.755706ms
	Processing time (w/o IO):  54.020618ms
	Processing time (w/o IO):  53.670103ms
	Processing time (w/o IO):  53.749006ms
	  Time (mean ± σ):     302.3 ms ±   0.6 ms    [User: 293.2 ms, System: 9.0 ms]
	  Range (min … max):   301.5 ms … 303.1 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 58.665ms
	Processing time (w/o IO): 58.440ms
	Processing time (w/o IO): 59.061ms
	Processing time (w/o IO): 58.786ms
	Processing time (w/o IO): 58.746ms
	Processing time (w/o IO): 58.806ms
	Processing time (w/o IO): 58.714ms
	Processing time (w/o IO): 58.986ms
	Processing time (w/o IO): 59.018ms
	Processing time (w/o IO): 59.479ms
	Processing time (w/o IO): 59.452ms
	Processing time (w/o IO): 59.560ms
	Processing time (w/o IO): 59.027ms
	Processing time (w/o IO): 59.567ms
	Processing time (w/o IO): 59.122ms
	  Time (mean ± σ):     396.9 ms ±   1.4 ms    [User: 361.4 ms, System: 34.9 ms]
	  Range (min … max):   394.0 ms … 398.6 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 108ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 114ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 133ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 93ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 93ms
	Processing time (w/o IO): 114ms
	  Time (mean ± σ):     579.9 ms ±  26.5 ms    [User: 645.2 ms, System: 149.3 ms]
	  Range (min … max):   554.7 ms … 633.7 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 141ms
	  Time (mean ± σ):     283.9 ms ±   2.0 ms    [User: 265.4 ms, System: 23.2 ms]
	  Range (min … max):   282.0 ms … 288.1 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 64.91100788116455ms
	Processing time (w/o IO): 64.79203701019287ms
	Processing time (w/o IO): 64.68498706817627ms
	Processing time (w/o IO): 65.21093845367432ms
	Processing time (w/o IO): 71.81692123413086ms
	Processing time (w/o IO): 65.56391716003418ms
	Processing time (w/o IO): 65.46592712402344ms
	Processing time (w/o IO): 65.58597087860107ms
	Processing time (w/o IO): 65.80901145935059ms
	Processing time (w/o IO): 65.49191474914551ms
	Processing time (w/o IO): 65.09697437286377ms
	Processing time (w/o IO): 65.53792953491211ms
	Processing time (w/o IO): 65.18805027008057ms
	Processing time (w/o IO): 65.0019645690918ms
	Processing time (w/o IO): 65.33694267272949ms
	  Time (mean ± σ):     442.9 ms ±   8.4 ms    [User: 401.2 ms, System: 36.0 ms]
	  Range (min … max):   434.7 ms … 460.0 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 39.724644ms
	Processing time (w/o IO): 41.540196ms
	Processing time (w/o IO): 40.395463ms
	Processing time (w/o IO): 40.016853ms
	Processing time (w/o IO): 39.553639ms
	Processing time (w/o IO): 42.655029ms
	Processing time (w/o IO): 39.596141ms
	Processing time (w/o IO): 40.397164ms
	Processing time (w/o IO): 40.917178ms
	Processing time (w/o IO): 41.165586ms
	Processing time (w/o IO): 40.676672ms
	Processing time (w/o IO): 39.674943ms
	Processing time (w/o IO): 48.834907ms
	Processing time (w/o IO): 40.319662ms
	Processing time (w/o IO): 40.223259ms
	  Time (mean ± σ):     429.8 ms ±   3.0 ms    [User: 414.2 ms, System: 44.4 ms]
	  Range (min … max):   424.2 ms … 434.2 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 201ms
	Processing time (w/o IO): 200ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 189ms
	Processing time (w/o IO): 190ms
	Processing time (w/o IO): 190ms
	Processing time (w/o IO): 190ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 201ms
	Processing time (w/o IO): 197ms
	Processing time (w/o IO): 190ms
	Processing time (w/o IO): 196ms
	Processing time (w/o IO): 188ms
	  Time (mean ± σ):     290.4 ms ±  11.9 ms    [User: 267.4 ms, System: 59.6 ms]
	  Range (min … max):   279.4 ms … 322.4 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 674ms
	Processing time (w/o IO): 823ms
	Processing time (w/o IO): 886ms
	Processing time (w/o IO): 813ms
	Processing time (w/o IO): 694ms
	Processing time (w/o IO): 680ms
	Processing time (w/o IO): 667ms
	Processing time (w/o IO): 826ms
	Processing time (w/o IO): 671ms
	Processing time (w/o IO): 859ms
	Processing time (w/o IO): 675ms
	Processing time (w/o IO): 660ms
	Processing time (w/o IO): 678ms
	  Time (mean ± σ):     780.7 ms ±  77.4 ms    [User: 793.0 ms, System: 36.9 ms]
	  Range (min … max):   716.0 ms … 917.3 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 230ms
	Processing time (w/o IO): 217ms
	Processing time (w/o IO): 216ms
	Processing time (w/o IO): 217ms
	Processing time (w/o IO): 217ms
	Processing time (w/o IO): 216ms
	Processing time (w/o IO): 220ms
	Processing time (w/o IO): 216ms
	Processing time (w/o IO): 217ms
	Processing time (w/o IO): 217ms
	Processing time (w/o IO): 225ms
	Processing time (w/o IO): 216ms
	Processing time (w/o IO): 216ms
	  Time (mean ± σ):     292.5 ms ±   2.9 ms    [User: 280.3 ms, System: 32.7 ms]
	  Range (min … max):   290.1 ms … 299.8 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -Xms10m -Xmx10m -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 267 ms
	Processing time (w/o IO): 249 ms
	Processing time (w/o IO): 266 ms
	Processing time (w/o IO): 264 ms
	Processing time (w/o IO): 255 ms
	Processing time (w/o IO): 268 ms
	Processing time (w/o IO): 263 ms
	Processing time (w/o IO): 252 ms
	Processing time (w/o IO): 247 ms
	Processing time (w/o IO): 253 ms
	Processing time (w/o IO): 258 ms
	Processing time (w/o IO): 256 ms
	Processing time (w/o IO): 266 ms
	  Time (mean ± σ):     542.3 ms ±  13.3 ms    [User: 906.0 ms, System: 63.8 ms]
	  Range (min … max):   526.6 ms … 567.4 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 38 ms
	Processing time (w/o IO): 44 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 38 ms
	Processing time (w/o IO): 36 ms
	  Time (mean ± σ):      69.6 ms ±   4.3 ms    [User: 55.2 ms, System: 14.3 ms]
	  Range (min … max):    66.5 ms …  80.5 ms    10 runs
	 
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
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	  Time (mean ± σ):      67.1 ms ±   0.8 ms    [User: 54.3 ms, System: 12.6 ms]
	  Range (min … max):    65.9 ms …  68.8 ms    10 runs
	 
F#:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 51ms
	Processing time (w/o IO): 55ms
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 51ms
	  Time (mean ± σ):     304.0 ms ±   5.2 ms    [User: 247.4 ms, System: 43.1 ms]
	  Range (min … max):   297.3 ms … 311.8 ms    10 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net7.0/fsharp_con
	Processing time (w/o IO): 41ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 41ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 41ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 41ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 40ms
	  Time (mean ± σ):     859.2 ms ±   9.0 ms    [User: 812.8 ms, System: 86.0 ms]
	  Range (min … max):   847.5 ms … 874.4 ms    10 runs
	 
C#:

	Benchmark 1: ./bin/release/net7.0/publish/related
	Processing time (w/o IO): 79.5112ms
	Processing time (w/o IO): 79.242ms
	Processing time (w/o IO): 79.6093ms
	Processing time (w/o IO): 79.2318ms
	Processing time (w/o IO): 79.3849ms
	Processing time (w/o IO): 85.8052ms
	Processing time (w/o IO): 79.4864ms
	Processing time (w/o IO): 79.8622ms
	Processing time (w/o IO): 80.3857ms
	Processing time (w/o IO): 79.5522ms
	Processing time (w/o IO): 79.4353ms
	Processing time (w/o IO): 79.7483ms
	Processing time (w/o IO): 94.2657ms
	Processing time (w/o IO): 80.0394ms
	Processing time (w/o IO): 80.4178ms
	  Time (mean ± σ):     147.1 ms ±  10.0 ms    [User: 130.5 ms, System: 26.2 ms]
	  Range (min … max):   139.9 ms … 173.8 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	118.15500259399	ms
	Processing time (w/o IO):	116.82891845703	ms
	Processing time (w/o IO):	117.48695373535	ms
	Processing time (w/o IO):	117.74706840515	ms
	Processing time (w/o IO):	117.72108078003	ms
	Processing time (w/o IO):	116.51706695557	ms
	Processing time (w/o IO):	117.33388900757	ms
	Processing time (w/o IO):	118.75605583191	ms
	Processing time (w/o IO):	119.33779716492	ms
	Processing time (w/o IO):	115.88907241821	ms
	Processing time (w/o IO):	117.10500717163	ms
	Processing time (w/o IO):	116.30296707153	ms
	Processing time (w/o IO):	116.84107780457	ms
	Processing time (w/o IO):	120.44382095337	ms
	Processing time (w/o IO):	116.5030002594	ms
	  Time (mean ± σ):     388.4 ms ±   6.2 ms    [User: 363.6 ms, System: 24.2 ms]
	  Range (min … max):   382.2 ms … 398.7 ms    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	2356.9521903992	ms
	Processing time (w/o IO):	2370.3489303589	ms
	Processing time (w/o IO):	2357.6128482819	ms
	Processing time (w/o IO):	2437.2749328613	ms
	Processing time (w/o IO):	2351.900100708	ms
	Processing time (w/o IO):	2392.2111988068	ms
	Processing time (w/o IO):	2351.6199588776	ms
	Processing time (w/o IO):	2352.1649837494	ms
	Processing time (w/o IO):	2353.3709049225	ms
	Processing time (w/o IO):	2351.8540859222	ms
	Processing time (w/o IO):	2355.4270267487	ms
	Processing time (w/o IO):	2353.639125824	ms
	  Time (mean ± σ):      3.025 s ±  0.030 s    [User: 2.996 s, System: 0.027 s]
	  Range (min … max):    3.006 s …  3.101 s    10 runs
	 
