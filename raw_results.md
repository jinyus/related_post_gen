Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 56.286238ms
	Processing time (w/o IO): 55.011354ms
	Processing time (w/o IO): 55.659926ms
	Processing time (w/o IO): 57.066962ms
	Processing time (w/o IO): 55.644135ms
	Processing time (w/o IO): 55.970845ms
	Processing time (w/o IO): 55.94688ms
	Processing time (w/o IO): 56.354481ms
	Processing time (w/o IO): 55.433073ms
	Processing time (w/o IO): 56.150419ms
	Processing time (w/o IO): 55.620257ms
	Processing time (w/o IO): 55.560155ms
	Processing time (w/o IO): 55.973199ms
	  Time (mean ± σ):     114.3 ms ±   3.3 ms    [User: 109.0 ms, System: 16.2 ms]
	  Range (min … max):   107.1 ms … 117.8 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 24.233227ms
	Processing time (w/o IO): 24.223201ms
	Processing time (w/o IO): 24.154879ms
	Processing time (w/o IO): 26.108653ms
	Processing time (w/o IO): 29.923782ms
	Processing time (w/o IO): 23.752238ms
	Processing time (w/o IO): 24.618454ms
	Processing time (w/o IO): 24.108455ms
	Processing time (w/o IO): 24.46219ms
	Processing time (w/o IO): 24.767084ms
	Processing time (w/o IO): 24.368894ms
	Processing time (w/o IO): 23.46325ms
	Processing time (w/o IO): 24.090854ms
	  Time (mean ± σ):     104.1 ms ±  44.9 ms    [User: 141.3 ms, System: 18.8 ms]
	  Range (min … max):    76.9 ms … 227.3 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 56.735617ms
	Processing time (w/o IO): 56.154345ms
	Processing time (w/o IO): 56.071071ms
	Processing time (w/o IO): 56.067654ms
	Processing time (w/o IO): 57.06375ms
	Processing time (w/o IO): 56.330695ms
	Processing time (w/o IO): 56.796255ms
	Processing time (w/o IO): 56.161632ms
	Processing time (w/o IO): 56.331395ms
	Processing time (w/o IO): 56.018194ms
	Processing time (w/o IO): 56.075014ms
	Processing time (w/o IO): 56.761494ms
	Processing time (w/o IO): 55.939187ms
	  Time (mean ± σ):      82.1 ms ±   1.7 ms    [User: 71.8 ms, System: 10.1 ms]
	  Range (min … max):    80.3 ms …  86.2 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 21.88937ms
	Processing time (w/o IO): 21.982514ms
	Processing time (w/o IO): 22.125218ms
	Processing time (w/o IO): 22.687026ms
	Processing time (w/o IO): 22.206536ms
	Processing time (w/o IO): 22.696601ms
	Processing time (w/o IO): 21.775952ms
	Processing time (w/o IO): 21.949495ms
	Processing time (w/o IO): 22.110329ms
	Processing time (w/o IO): 22.652565ms
	Processing time (w/o IO): 21.823158ms
	Processing time (w/o IO): 23.137652ms
	Processing time (w/o IO): 22.040152ms
	  Time (mean ± σ):      48.8 ms ±   1.4 ms    [User: 99.8 ms, System: 10.9 ms]
	  Range (min … max):    46.2 ms …  50.7 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 3.360s
	Processing time (w/o IO): 3.061s
	Processing time (w/o IO): 3.456s
	Processing time (w/o IO): 3.776s
	Processing time (w/o IO): 3.718s
	Processing time (w/o IO): 3.221s
	Processing time (w/o IO): 3.791s
	Processing time (w/o IO): 3.293s
	Processing time (w/o IO): 3.688s
	Processing time (w/o IO): 3.459s
	Processing time (w/o IO): 3.487s
	Processing time (w/o IO): 2.954s
	Processing time (w/o IO): 3.350s
	  Time (mean ± σ):      3.566 s ±  0.277 s    [User: 3.537 s, System: 0.023 s]
	  Range (min … max):    3.044 s …  3.897 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 545.1ms
	Processing time (w/o IO): 548.4ms
	Processing time (w/o IO): 561.4ms
	Processing time (w/o IO): 541.6ms
	Processing time (w/o IO): 561.2ms
	Processing time (w/o IO): 556.3ms
	Processing time (w/o IO): 550.7ms
	Processing time (w/o IO): 567.8ms
	Processing time (w/o IO): 560.3ms
	Processing time (w/o IO): 554.6ms
	Processing time (w/o IO): 536.3ms
	Processing time (w/o IO): 571.3ms
	Processing time (w/o IO): 551.4ms
	  Time (mean ± σ):     893.3 ms ±  14.5 ms    [User: 1048.7 ms, System: 438.4 ms]
	  Range (min … max):   870.0 ms … 914.4 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 96.668232ms
	Processing time (w/o IO): 96.776999ms
	Processing time (w/o IO): 96.496254ms
	Processing time (w/o IO): 96.826076ms
	Processing time (w/o IO): 96.753609ms
	Processing time (w/o IO): 96.389945ms
	Processing time (w/o IO): 96.826263ms
	Processing time (w/o IO): 97.06388ms
	Processing time (w/o IO): 96.631707ms
	Processing time (w/o IO): 96.720909ms
	Processing time (w/o IO): 96.564467ms
	Processing time (w/o IO): 97.063704ms
	Processing time (w/o IO): 96.602955ms
	  Time (mean ± σ):     162.8 ms ±   5.4 ms    [User: 148.7 ms, System: 13.7 ms]
	  Range (min … max):   157.5 ms … 174.9 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 65ms
	Processing time (w/o IO): 66ms
	Processing time (w/o IO): 66ms
	Processing time (w/o IO): 65ms
	Processing time (w/o IO): 66ms
	Processing time (w/o IO): 65ms
	Processing time (w/o IO): 65ms
	Processing time (w/o IO): 66ms
	Processing time (w/o IO): 65ms
	Processing time (w/o IO): 66ms
	Processing time (w/o IO): 65ms
	Processing time (w/o IO): 66ms
	Processing time (w/o IO): 65ms
	  Time (mean ± σ):     124.2 ms ±   4.4 ms    [User: 117.6 ms, System: 6.5 ms]
	  Range (min … max):   119.2 ms … 130.8 ms    10 runs
	 
Julia:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 68 milliseconds
	Processing time (w/o IO): 68 milliseconds
	Processing time (w/o IO): 68 milliseconds
	Processing time (w/o IO): 67 milliseconds
	Processing time (w/o IO): 61 milliseconds
	Processing time (w/o IO): 69 milliseconds
	Processing time (w/o IO): 68 milliseconds
	Processing time (w/o IO): 67 milliseconds
	Processing time (w/o IO): 68 milliseconds
	Processing time (w/o IO): 68 milliseconds
	Processing time (w/o IO): 71 milliseconds
	Processing time (w/o IO): 68 milliseconds
	Processing time (w/o IO): 69 milliseconds
	  Time (mean ± σ):      3.569 s ±  0.091 s    [User: 3.328 s, System: 0.239 s]
	  Range (min … max):    3.464 s …  3.722 s    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  101.680907ms
	Processing time (w/o IO):  101.120879ms
	Processing time (w/o IO):  100.961607ms
	Processing time (w/o IO):  100.932398ms
	Processing time (w/o IO):  101.361387ms
	Processing time (w/o IO):  100.334016ms
	Processing time (w/o IO):  101.758717ms
	Processing time (w/o IO):  99.791416ms
	Processing time (w/o IO):  100.680378ms
	Processing time (w/o IO):  101.125047ms
	Processing time (w/o IO):  100.923619ms
	Processing time (w/o IO):  101.009012ms
	Processing time (w/o IO):  102.169863ms
	  Time (mean ± σ):     351.9 ms ±  10.2 ms    [User: 338.1 ms, System: 13.4 ms]
	  Range (min … max):   332.4 ms … 362.6 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 74.407ms
	Processing time (w/o IO): 74.872ms
	Processing time (w/o IO): 75.076ms
	Processing time (w/o IO): 74.989ms
	Processing time (w/o IO): 74.150ms
	Processing time (w/o IO): 75.046ms
	Processing time (w/o IO): 73.615ms
	Processing time (w/o IO): 74.388ms
	Processing time (w/o IO): 74.779ms
	Processing time (w/o IO): 74.126ms
	Processing time (w/o IO): 75.351ms
	Processing time (w/o IO): 73.878ms
	Processing time (w/o IO): 75.307ms
	  Time (mean ± σ):     431.7 ms ±   6.3 ms    [User: 402.8 ms, System: 28.2 ms]
	  Range (min … max):   425.1 ms … 447.0 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 176ms
	Processing time (w/o IO): 181ms
	Processing time (w/o IO): 203ms
	Processing time (w/o IO): 174ms
	Processing time (w/o IO): 194ms
	Processing time (w/o IO): 181ms
	Processing time (w/o IO): 217ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 181ms
	Processing time (w/o IO): 181ms
	Processing time (w/o IO): 176ms
	Processing time (w/o IO): 201ms
	Processing time (w/o IO): 206ms
	  Time (mean ± σ):     679.0 ms ±  15.9 ms    [User: 814.9 ms, System: 114.5 ms]
	  Range (min … max):   657.9 ms … 697.8 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 282ms
	Processing time (w/o IO): 306ms
	Processing time (w/o IO): 302ms
	Processing time (w/o IO): 338ms
	Processing time (w/o IO): 273ms
	Processing time (w/o IO): 363ms
	Processing time (w/o IO): 274ms
	Processing time (w/o IO): 333ms
	Processing time (w/o IO): 362ms
	Processing time (w/o IO): 283ms
	Processing time (w/o IO): 355ms
	Processing time (w/o IO): 285ms
	Processing time (w/o IO): 289ms
	  Time (mean ± σ):     490.8 ms ±  48.9 ms    [User: 468.0 ms, System: 26.8 ms]
	  Range (min … max):   431.2 ms … 565.7 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 81.42805099487305ms
	Processing time (w/o IO): 83.80401134490967ms
	Processing time (w/o IO): 83.32490921020508ms
	Processing time (w/o IO): 83.02700519561768ms
	Processing time (w/o IO): 82.5200080871582ms
	Processing time (w/o IO): 92.8870439529419ms
	Processing time (w/o IO): 84.81204509735107ms
	Processing time (w/o IO): 83.20403099060059ms
	Processing time (w/o IO): 86.00795269012451ms
	Processing time (w/o IO): 80.73198795318604ms
	Processing time (w/o IO): 82.31198787689209ms
	Processing time (w/o IO): 84.70499515533447ms
	Processing time (w/o IO): 78.9250135421753ms
	  Time (mean ± σ):     521.0 ms ±  37.8 ms    [User: 455.9 ms, System: 45.6 ms]
	  Range (min … max):   472.3 ms … 604.3 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 31.796326ms
	Processing time (w/o IO): 32.483438ms
	Processing time (w/o IO): 31.703669ms
	Processing time (w/o IO): 32.747953ms
	Processing time (w/o IO): 32.43693ms
	Processing time (w/o IO): 30.569403ms
	Processing time (w/o IO): 30.993259ms
	Processing time (w/o IO): 31.692061ms
	Processing time (w/o IO): 31.550961ms
	Processing time (w/o IO): 33.171687ms
	Processing time (w/o IO): 32.511993ms
	Processing time (w/o IO): 30.958028ms
	Processing time (w/o IO): 33.366245ms
	  Time (mean ± σ):     503.1 ms ±  37.6 ms    [User: 529.0 ms, System: 43.1 ms]
	  Range (min … max):   449.6 ms … 590.3 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 271ms
	Processing time (w/o IO): 278ms
	Processing time (w/o IO): 269ms
	Processing time (w/o IO): 269ms
	Processing time (w/o IO): 274ms
	Processing time (w/o IO): 276ms
	Processing time (w/o IO): 273ms
	Processing time (w/o IO): 269ms
	Processing time (w/o IO): 273ms
	Processing time (w/o IO): 277ms
	Processing time (w/o IO): 266ms
	Processing time (w/o IO): 271ms
	Processing time (w/o IO): 269ms
	  Time (mean ± σ):     512.8 ms ±  17.1 ms    [User: 510.0 ms, System: 80.2 ms]
	  Range (min … max):   487.2 ms … 548.2 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 743ms
	Processing time (w/o IO): 734ms
	Processing time (w/o IO): 711ms
	Processing time (w/o IO): 681ms
	Processing time (w/o IO): 693ms
	Processing time (w/o IO): 696ms
	Processing time (w/o IO): 723ms
	Processing time (w/o IO): 701ms
	Processing time (w/o IO): 721ms
	Processing time (w/o IO): 769ms
	Processing time (w/o IO): 731ms
	Processing time (w/o IO): 716ms
	Processing time (w/o IO): 731ms
	  Time (mean ± σ):     782.3 ms ±  26.1 ms    [User: 810.4 ms, System: 43.5 ms]
	  Range (min … max):   747.2 ms … 836.7 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 277ms
	Processing time (w/o IO): 271ms
	Processing time (w/o IO): 270ms
	Processing time (w/o IO): 271ms
	Processing time (w/o IO): 281ms
	Processing time (w/o IO): 275ms
	Processing time (w/o IO): 274ms
	Processing time (w/o IO): 273ms
	Processing time (w/o IO): 275ms
	Processing time (w/o IO): 277ms
	Processing time (w/o IO): 279ms
	Processing time (w/o IO): 289ms
	Processing time (w/o IO): 278ms
	  Time (mean ± σ):     367.1 ms ±   8.5 ms    [User: 353.3 ms, System: 40.5 ms]
	  Range (min … max):   353.7 ms … 383.2 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 187 ms
	Processing time (w/o IO): 190 ms
	Processing time (w/o IO): 169 ms
	Processing time (w/o IO): 164 ms
	Processing time (w/o IO): 174 ms
	Processing time (w/o IO): 165 ms
	Processing time (w/o IO): 164 ms
	Processing time (w/o IO): 168 ms
	Processing time (w/o IO): 165 ms
	Processing time (w/o IO): 161 ms
	Processing time (w/o IO): 163 ms
	Processing time (w/o IO): 164 ms
	Processing time (w/o IO): 160 ms
	  Time (mean ± σ):     439.6 ms ±  11.6 ms    [User: 777.5 ms, System: 64.4 ms]
	  Range (min … max):   428.8 ms … 468.1 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 63 ms
	Processing time (w/o IO): 63 ms
	Processing time (w/o IO): 64 ms
	Processing time (w/o IO): 63 ms
	Processing time (w/o IO): 63 ms
	Processing time (w/o IO): 63 ms
	Processing time (w/o IO): 64 ms
	Processing time (w/o IO): 63 ms
	Processing time (w/o IO): 64 ms
	Processing time (w/o IO): 63 ms
	Processing time (w/o IO): 64 ms
	Processing time (w/o IO): 64 ms
	Processing time (w/o IO): 63 ms
	  Time (mean ± σ):      96.2 ms ±   2.1 ms    [User: 81.3 ms, System: 14.7 ms]
	  Range (min … max):    92.7 ms … 100.1 ms    10 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	Processing time (w/o IO): 43 ms
	  Time (mean ± σ):      75.1 ms ±   1.9 ms    [User: 129.1 ms, System: 18.2 ms]
	  Range (min … max):    72.5 ms …  77.7 ms    10 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 71ms
	Processing time (w/o IO): 71ms
	Processing time (w/o IO): 72ms
	Processing time (w/o IO): 72ms
	Processing time (w/o IO): 72ms
	Processing time (w/o IO): 72ms
	Processing time (w/o IO): 71ms
	Processing time (w/o IO): 71ms
	Processing time (w/o IO): 71ms
	Processing time (w/o IO): 71ms
	Processing time (w/o IO): 72ms
	Processing time (w/o IO): 71ms
	Processing time (w/o IO): 72ms
	  Time (mean ± σ):     107.7 ms ±   1.0 ms    [User: 92.9 ms, System: 14.5 ms]
	  Range (min … max):   105.8 ms … 109.5 ms    10 runs
	 
F#:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 79ms
	Processing time (w/o IO): 77ms
	Processing time (w/o IO): 78ms
	Processing time (w/o IO): 77ms
	Processing time (w/o IO): 78ms
	Processing time (w/o IO): 77ms
	Processing time (w/o IO): 79ms
	Processing time (w/o IO): 78ms
	Processing time (w/o IO): 79ms
	Processing time (w/o IO): 80ms
	Processing time (w/o IO): 76ms
	Processing time (w/o IO): 76ms
	Processing time (w/o IO): 76ms
	  Time (mean ± σ):     397.5 ms ±  32.2 ms    [User: 341.9 ms, System: 40.2 ms]
	  Range (min … max):   344.1 ms … 446.6 ms    10 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net7.0/fsharp_con
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 48ms
	Processing time (w/o IO): 45ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 52ms
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 55ms
	Processing time (w/o IO): 50ms
	  Time (mean ± σ):      1.084 s ±  0.128 s    [User: 1.160 s, System: 0.072 s]
	  Range (min … max):    0.880 s …  1.308 s    10 runs
	 
C#:

	Benchmark 1: ./bin/release/net7.0/publish/related
	Processing time (w/o IO): 78.4837ms
	Processing time (w/o IO): 78.8688ms
	Processing time (w/o IO): 80.4912ms
	Processing time (w/o IO): 79.567ms
	Processing time (w/o IO): 78.7367ms
	Processing time (w/o IO): 80.0126ms
	Processing time (w/o IO): 78.3718ms
	Processing time (w/o IO): 79.3165ms
	Processing time (w/o IO): 78.6383ms
	Processing time (w/o IO): 79.9476ms
	Processing time (w/o IO): 78.4539ms
	Processing time (w/o IO): 78.9779ms
	Processing time (w/o IO): 79.674ms
	  Time (mean ± σ):     138.4 ms ±   3.8 ms    [User: 132.2 ms, System: 19.9 ms]
	  Range (min … max):   134.7 ms … 144.3 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	146.91090583801	ms
	Processing time (w/o IO):	144.71197128296	ms
	Processing time (w/o IO):	148.54884147644	ms
	Processing time (w/o IO):	145.03598213196	ms
	Processing time (w/o IO):	153.74803543091	ms
	Processing time (w/o IO):	147.38392829895	ms
	Processing time (w/o IO):	147.20988273621	ms
	Processing time (w/o IO):	148.57816696167	ms
	Processing time (w/o IO):	146.52991294861	ms
	Processing time (w/o IO):	145.27010917664	ms
	Processing time (w/o IO):	141.86096191406	ms
	Processing time (w/o IO):	144.779920578	ms
	Processing time (w/o IO):	149.81818199158	ms
	  Time (mean ± σ):     436.3 ms ±  26.2 ms    [User: 414.9 ms, System: 20.8 ms]
	  Range (min … max):   404.2 ms … 468.1 ms    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1449.1288661957	ms
	Processing time (w/o IO):	1912.8270149231	ms
	Processing time (w/o IO):	1478.364944458	ms
	Processing time (w/o IO):	1562.3860359192	ms
	Processing time (w/o IO):	1877.8080940247	ms
	Processing time (w/o IO):	1929.4579029083	ms
	Processing time (w/o IO):	1592.6501750946	ms
	Processing time (w/o IO):	2296.4689731598	ms
	Processing time (w/o IO):	2336.4901542664	ms
	Processing time (w/o IO):	1509.7329616547	ms
	Processing time (w/o IO):	1672.9331016541	ms
	Processing time (w/o IO):	1508.6240768433	ms
	Processing time (w/o IO):	1698.7791061401	ms
	  Time (mean ± σ):      2.353 s ±  0.361 s    [User: 2.333 s, System: 0.017 s]
	  Range (min … max):    1.986 s …  2.963 s    10 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 355ms
	Processing time (w/o IO): 259ms
	Processing time (w/o IO): 255ms
	Processing time (w/o IO): 259ms
	Processing time (w/o IO): 324ms
	Processing time (w/o IO): 363ms
	Processing time (w/o IO): 307ms
	Processing time (w/o IO): 260ms
	Processing time (w/o IO): 359ms
	Processing time (w/o IO): 304ms
	Processing time (w/o IO): 341ms
	Processing time (w/o IO): 346ms
	Processing time (w/o IO): 309ms
	  Time (mean ± σ):     434.0 ms ±  45.0 ms    [User: 401.8 ms, System: 31.1 ms]
	  Range (min … max):   361.4 ms … 490.3 ms    10 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 506.284094ms
	Processing time (w/o IO): 494.446371ms
	Processing time (w/o IO): 493.279123ms
	  Time (mean ± σ):     652.5 ms ±  10.5 ms    [User: 655.5 ms, System: 37.2 ms]
	  Range (min … max):   645.1 ms … 659.9 ms    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 182.095242ms
	Processing time (w/o IO): 182.690871ms
	Processing time (w/o IO): 181.416086ms
	  Time (mean ± σ):     353.6 ms ±   3.0 ms    [User: 861.8 ms, System: 52.0 ms]
	  Range (min … max):   351.5 ms … 355.7 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 487.702277ms
	Processing time (w/o IO): 485.398803ms
	Processing time (w/o IO): 485.259614ms
	  Time (mean ± σ):     564.7 ms ±   7.3 ms    [User: 527.9 ms, System: 36.6 ms]
	  Range (min … max):   559.6 ms … 569.9 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 186.986372ms
	Processing time (w/o IO): 185.035173ms
	Processing time (w/o IO): 186.043462ms
	  Time (mean ± σ):     264.4 ms ±   0.9 ms    [User: 771.4 ms, System: 37.1 ms]
	  Range (min … max):   263.8 ms … 265.0 ms    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 33.602s
	Processing time (w/o IO): 35.122s
	Processing time (w/o IO): 33.492s
	  Time (mean ± σ):     34.485 s ±  1.148 s    [User: 34.411 s, System: 0.043 s]
	  Range (min … max):   33.673 s … 35.297 s    2 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 4.397s
	Processing time (w/o IO): 4.300s
	Processing time (w/o IO): 4.286s
	  Time (mean ± σ):      4.728 s ±  0.022 s    [User: 4.539 s, System: 0.767 s]
	  Range (min … max):    4.712 s …  4.744 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 831.153375ms
	Processing time (w/o IO): 823.660735ms
	Processing time (w/o IO): 830.75514ms
	  Time (mean ± σ):      1.063 s ±  0.012 s    [User: 0.994 s, System: 0.047 s]
	  Range (min … max):    1.054 s …  1.071 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 571ms
	Processing time (w/o IO): 571ms
	Processing time (w/o IO): 573ms
	  Time (mean ± σ):     754.9 ms ±  11.8 ms    [User: 708.5 ms, System: 25.4 ms]
	  Range (min … max):   746.5 ms … 763.2 ms    2 runs
	 
Julia:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 590 milliseconds
	Processing time (w/o IO): 587 milliseconds
	Processing time (w/o IO): 587 milliseconds
	  Time (mean ± σ):      4.476 s ±  0.038 s    [User: 4.197 s, System: 0.256 s]
	  Range (min … max):    4.450 s …  4.503 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  854.601606ms
	Processing time (w/o IO):  861.705775ms
	Processing time (w/o IO):  851.235488ms
	  Time (mean ± σ):      1.586 s ±  0.016 s    [User: 1.531 s, System: 0.038 s]
	  Range (min … max):    1.575 s …  1.598 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 640.651ms
	Processing time (w/o IO): 630.910ms
	Processing time (w/o IO): 635.712ms
	  Time (mean ± σ):      4.042 s ±  0.228 s    [User: 3.886 s, System: 0.149 s]
	  Range (min … max):    3.881 s …  4.204 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 1670ms
	Processing time (w/o IO): 1580ms
	Processing time (w/o IO): 1602ms
	  Time (mean ± σ):      2.365 s ±  0.008 s    [User: 2.554 s, System: 0.168 s]
	  Range (min … max):    2.359 s …  2.370 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 3028ms
	Processing time (w/o IO): 2675ms
	Processing time (w/o IO): 2716ms
	  Time (mean ± σ):      3.212 s ±  0.041 s    [User: 3.154 s, System: 0.070 s]
	  Range (min … max):    3.183 s …  3.240 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 669.9910163879395ms
	Processing time (w/o IO): 666.7050123214722ms
	Processing time (w/o IO): 678.8640022277832ms
	  Time (mean ± σ):      1.988 s ±  0.121 s    [User: 1.822 s, System: 0.141 s]
	  Range (min … max):    1.902 s …  2.073 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 225.989631ms
	Processing time (w/o IO): 222.136554ms
	Processing time (w/o IO): 225.691642ms
	  Time (mean ± σ):      1.567 s ±  0.148 s    [User: 2.041 s, System: 0.119 s]
	  Range (min … max):    1.463 s …  1.672 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 2175ms
	Processing time (w/o IO): 2194ms
	Processing time (w/o IO): 2170ms
	  Time (mean ± σ):      2.587 s ±  0.024 s    [User: 2.566 s, System: 0.121 s]
	  Range (min … max):    2.570 s …  2.603 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 8194ms
	Processing time (w/o IO): 9065ms
	Processing time (w/o IO): 9231ms
	  Time (mean ± σ):      9.370 s ±  0.176 s    [User: 9.304 s, System: 0.113 s]
	  Range (min … max):    9.245 s …  9.494 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 2250ms
	Processing time (w/o IO): 2253ms
	Processing time (w/o IO): 2272ms
	  Time (mean ± σ):      2.494 s ±  0.031 s    [User: 2.432 s, System: 0.095 s]
	  Range (min … max):    2.472 s …  2.515 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 819 ms
	Processing time (w/o IO): 856 ms
	Processing time (w/o IO): 842 ms
	  Time (mean ± σ):      1.206 s ±  0.005 s    [User: 1.844 s, System: 0.093 s]
	  Range (min … max):    1.203 s …  1.210 s    2 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 582 ms
	Processing time (w/o IO): 588 ms
	Processing time (w/o IO): 576 ms
	  Time (mean ± σ):     662.4 ms ±   9.9 ms    [User: 636.1 ms, System: 25.4 ms]
	  Range (min … max):   655.4 ms … 669.5 ms    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 423 ms
	Processing time (w/o IO): 424 ms
	Processing time (w/o IO): 383 ms
	  Time (mean ± σ):     483.6 ms ±  29.3 ms    [User: 1122.1 ms, System: 33.7 ms]
	  Range (min … max):   462.8 ms … 504.3 ms    2 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 615ms
	Processing time (w/o IO): 616ms
	Processing time (w/o IO): 617ms
	  Time (mean ± σ):     716.4 ms ±   0.6 ms    [User: 678.5 ms, System: 37.4 ms]
	  Range (min … max):   715.9 ms … 716.8 ms    2 runs
	 
F#:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 688ms
	Processing time (w/o IO): 686ms
	Processing time (w/o IO): 686ms
	  Time (mean ± σ):      1.237 s ±  0.067 s    [User: 1.157 s, System: 0.078 s]
	  Range (min … max):    1.189 s …  1.284 s    2 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net7.0/fsharp_con
	Processing time (w/o IO): 263ms
	Processing time (w/o IO): 289ms
	Processing time (w/o IO): 287ms
	  Time (mean ± σ):      2.580 s ±  0.385 s    [User: 3.402 s, System: 0.131 s]
	  Range (min … max):    2.308 s …  2.852 s    2 runs
	 
C#:

	Benchmark 1: ./bin/release/net7.0/publish/related
	Processing time (w/o IO): 681.644ms
	Processing time (w/o IO): 698.5268ms
	Processing time (w/o IO): 680.5502ms
	  Time (mean ± σ):     851.1 ms ±   6.0 ms    [User: 805.9 ms, System: 61.7 ms]
	  Range (min … max):   846.8 ms … 855.3 ms    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	1146.359205246	ms
	Processing time (w/o IO):	1189.740896225	ms
	Processing time (w/o IO):	1186.320066452	ms
	  Time (mean ± σ):      2.254 s ±  0.084 s    [User: 2.186 s, System: 0.065 s]
	  Range (min … max):    2.194 s …  2.313 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	16634.954929352	ms
	Processing time (w/o IO):	15317.560911179	ms
	Processing time (w/o IO):	19476.233005524	ms
	  Time (mean ± σ):     19.349 s ±  2.907 s    [User: 19.270 s, System: 0.065 s]
	  Range (min … max):   17.294 s … 21.404 s    2 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 2427ms
	Processing time (w/o IO): 2809ms
	Processing time (w/o IO): 3060ms
	  Time (mean ± σ):      3.377 s ±  0.203 s    [User: 3.274 s, System: 0.097 s]
	  Range (min … max):    3.234 s …  3.520 s    2 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 2.045192885s
	Processing time (w/o IO): 1.973131155s
	Processing time (w/o IO): 1.97462034s
	  Time (mean ± σ):      2.338 s ±  0.004 s    [User: 2.311 s, System: 0.113 s]
	  Range (min … max):    2.335 s …  2.341 s    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 705.435925ms
	Processing time (w/o IO): 705.213085ms
	Processing time (w/o IO): 708.57408ms
	  Time (mean ± σ):      1.073 s ±  0.022 s    [User: 3.081 s, System: 0.134 s]
	  Range (min … max):    1.057 s …  1.088 s    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 1.926106022s
	Processing time (w/o IO): 1.923174359s
	Processing time (w/o IO): 1.927094177s
	  Time (mean ± σ):      2.160 s ±  0.013 s    [User: 2.046 s, System: 0.061 s]
	  Range (min … max):    2.150 s …  2.169 s    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 747.583296ms
	Processing time (w/o IO): 742.819002ms
	Processing time (w/o IO): 741.000789ms
	  Time (mean ± σ):     975.6 ms ±  87.7 ms    [User: 3048.9 ms, System: 60.9 ms]
	  Range (min … max):   913.6 ms … 1037.6 ms    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 143.388s
	Processing time (w/o IO): 143.341s
	Processing time (w/o IO): 140.690s
	  Time (mean ± σ):     142.346 s ±  1.872 s    [User: 142.123 s, System: 0.123 s]
	  Range (min … max):   141.022 s … 143.670 s    2 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 19.300s
	Processing time (w/o IO): 17.808s
	Processing time (w/o IO): 17.518s
	  Time (mean ± σ):     18.394 s ±  0.246 s    [User: 16.557 s, System: 2.359 s]
	  Range (min … max):   18.220 s … 18.568 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 3300.176893ms
	Processing time (w/o IO): 3269.358537ms
	Processing time (w/o IO): 3264.649805ms
	  Time (mean ± σ):      3.808 s ±  0.027 s    [User: 3.661 s, System: 0.079 s]
	  Range (min … max):    3.788 s …  3.827 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 2338ms
	Processing time (w/o IO): 2348ms
	Processing time (w/o IO): 2363ms
	  Time (mean ± σ):      2.823 s ±  0.021 s    [User: 2.730 s, System: 0.055 s]
	  Range (min … max):    2.808 s …  2.838 s    2 runs
	 
Julia:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 2322 milliseconds
	Processing time (w/o IO): 2313 milliseconds
	Processing time (w/o IO): 2308 milliseconds
	  Time (mean ± σ):      6.218 s ±  0.191 s    [User: 5.913 s, System: 0.267 s]
	  Range (min … max):    6.082 s …  6.353 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  3.408243435s
	Processing time (w/o IO):  3.381260913s
	Processing time (w/o IO):  3.382624604s
	  Time (mean ± σ):      4.897 s ±  0.040 s    [User: 4.805 s, System: 0.051 s]
	  Range (min … max):    4.868 s …  4.925 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 2.510s
	Processing time (w/o IO): 2.484s
	Processing time (w/o IO): 2.477s
	  Time (mean ± σ):     20.395 s ±  0.622 s    [User: 20.081 s, System: 0.265 s]
	  Range (min … max):   19.955 s … 20.835 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 6817ms
	Processing time (w/o IO): 6260ms
	Processing time (w/o IO): 6546ms
	  Time (mean ± σ):      7.674 s ±  0.012 s    [User: 7.833 s, System: 0.227 s]
	  Range (min … max):    7.665 s …  7.682 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 11280ms
	Processing time (w/o IO): 10026ms
	Processing time (w/o IO): 14101ms
	  Time (mean ± σ):     13.083 s ±  2.729 s    [User: 12.949 s, System: 0.111 s]
	  Range (min … max):   11.153 s … 15.012 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 2617.998957633972ms
	Processing time (w/o IO): 2615.6100034713745ms
	Processing time (w/o IO): 2596.371054649353ms
	  Time (mean ± σ):      5.480 s ±  0.003 s    [User: 5.184 s, System: 0.247 s]
	  Range (min … max):    5.478 s …  5.483 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 832.645385ms
	Processing time (w/o IO): 813.185512ms
	Processing time (w/o IO): 817.793744ms
	  Time (mean ± σ):      3.107 s ±  0.060 s    [User: 5.206 s, System: 0.253 s]
	  Range (min … max):    3.065 s …  3.149 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 8214ms
	Processing time (w/o IO): 9294ms
	Processing time (w/o IO): 8490ms
	  Time (mean ± σ):      9.593 s ±  0.528 s    [User: 9.530 s, System: 0.173 s]
	  Range (min … max):    9.219 s …  9.966 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 37519ms
	Processing time (w/o IO): 40949ms
	Processing time (w/o IO): 42580ms
	  Time (mean ± σ):     42.093 s ±  1.158 s    [User: 42.067 s, System: 0.149 s]
	  Range (min … max):   41.274 s … 42.912 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 7820ms
	Processing time (w/o IO): 7773ms
	Processing time (w/o IO): 7786ms
	  Time (mean ± σ):      8.167 s ±  0.021 s    [User: 8.091 s, System: 0.145 s]
	  Range (min … max):    8.152 s …  8.182 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 2944 ms
	Processing time (w/o IO): 3405 ms
	Processing time (w/o IO): 2944 ms
	  Time (mean ± σ):      3.862 s ±  0.631 s    [User: 4.316 s, System: 0.157 s]
	  Range (min … max):    3.416 s …  4.309 s    2 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 2407 ms
	Processing time (w/o IO): 2303 ms
	Processing time (w/o IO): 2350 ms
	  Time (mean ± σ):      2.606 s ±  0.168 s    [User: 2.433 s, System: 0.057 s]
	  Range (min … max):    2.487 s …  2.724 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 1348 ms
	Processing time (w/o IO): 1339 ms
	Processing time (w/o IO): 1348 ms
	  Time (mean ± σ):      1.540 s ±  0.000 s    [User: 3.796 s, System: 0.065 s]
	  Range (min … max):    1.540 s …  1.540 s    2 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 4685ms
	Processing time (w/o IO): 4670ms
	Processing time (w/o IO): 4644ms
	  Time (mean ± σ):      4.888 s ±  0.017 s    [User: 4.785 s, System: 0.073 s]
	  Range (min … max):    4.876 s …  4.900 s    2 runs
	 
F#:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 2449ms
	Processing time (w/o IO): 2439ms
	Processing time (w/o IO): 2435ms
	  Time (mean ± σ):      3.199 s ±  0.046 s    [User: 3.120 s, System: 0.133 s]
	  Range (min … max):    3.166 s …  3.232 s    2 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net7.0/fsharp_con
	Processing time (w/o IO): 972ms
	Processing time (w/o IO): 966ms
	Processing time (w/o IO): 970ms
	  Time (mean ± σ):      5.234 s ±  0.215 s    [User: 8.093 s, System: 0.258 s]
	  Range (min … max):    5.081 s …  5.386 s    2 runs
	 
C#:

	Benchmark 1: ./bin/release/net7.0/publish/related
	Processing time (w/o IO): 2692.4227ms
	Processing time (w/o IO): 2694.5354ms
	Processing time (w/o IO): 2690.6726ms
	  Time (mean ± σ):      3.048 s ±  0.008 s    [User: 3.000 s, System: 0.114 s]
	  Range (min … max):    3.043 s …  3.053 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	4291.6128635406	ms
	Processing time (w/o IO):	4428.279876709	ms
	Processing time (w/o IO):	4455.4350376129	ms
	  Time (mean ± σ):      6.811 s ±  0.261 s    [User: 6.645 s, System: 0.123 s]
	  Range (min … max):    6.626 s …  6.995 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	67840.011119843	ms
	Processing time (w/o IO):	72746.783018112	ms
	Processing time (w/o IO):	66273.611068726	ms
	  Time (mean ± σ):     73.627 s ±  4.613 s    [User: 73.418 s, System: 0.139 s]
	  Range (min … max):   70.366 s … 76.889 s    2 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 12106ms
	Processing time (w/o IO): 12125ms
	Processing time (w/o IO): 11908ms
	  Time (mean ± σ):     12.818 s ±  0.128 s    [User: 12.308 s, System: 0.483 s]
	  Range (min … max):   12.727 s … 12.908 s    2 runs
	 
