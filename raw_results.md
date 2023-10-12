Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 69.401304ms
	Processing time (w/o IO): 69.332323ms
	Processing time (w/o IO): 68.800853ms
	Processing time (w/o IO): 69.333023ms
	Processing time (w/o IO): 69.823573ms
	Processing time (w/o IO): 69.979183ms
	Processing time (w/o IO): 70.330683ms
	Processing time (w/o IO): 69.127783ms
	Processing time (w/o IO): 69.896173ms
	Processing time (w/o IO): 70.766293ms
	Processing time (w/o IO): 69.324722ms
	Processing time (w/o IO): 69.513043ms
	Processing time (w/o IO): 70.458723ms
	  Time (mean ± σ):     113.5 ms ±   3.1 ms    [User: 109.4 ms, System: 12.5 ms]
	  Range (min … max):   110.2 ms … 119.8 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 27.902671ms
	Processing time (w/o IO): 28.069831ms
	Processing time (w/o IO): 37.772598ms
	Processing time (w/o IO): 26.94981ms
	Processing time (w/o IO): 28.473331ms
	Processing time (w/o IO): 30.925813ms
	Processing time (w/o IO): 30.858233ms
	Processing time (w/o IO): 28.279591ms
	Processing time (w/o IO): 29.116651ms
	Processing time (w/o IO): 29.070262ms
	Processing time (w/o IO): 30.947073ms
	Processing time (w/o IO): 28.559531ms
	Processing time (w/o IO): 31.118593ms
	  Time (mean ± σ):      75.1 ms ±   3.6 ms    [User: 141.6 ms, System: 17.8 ms]
	  Range (min … max):    70.4 ms …  80.4 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 77.409728ms
	Processing time (w/o IO): 77.219727ms
	Processing time (w/o IO): 76.985997ms
	Processing time (w/o IO): 76.355267ms
	Processing time (w/o IO): 77.088428ms
	Processing time (w/o IO): 76.786347ms
	Processing time (w/o IO): 77.533207ms
	Processing time (w/o IO): 77.206867ms
	Processing time (w/o IO): 77.346007ms
	Processing time (w/o IO): 76.680497ms
	Processing time (w/o IO): 79.863148ms
	Processing time (w/o IO): 87.412212ms
	Processing time (w/o IO): 77.746886ms
	  Time (mean ± σ):     100.9 ms ±   4.6 ms    [User: 91.3 ms, System: 9.3 ms]
	  Range (min … max):    97.9 ms … 112.7 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 29.051847ms
	Processing time (w/o IO): 29.026897ms
	Processing time (w/o IO): 28.389527ms
	Processing time (w/o IO): 28.536037ms
	Processing time (w/o IO): 28.948217ms
	Processing time (w/o IO): 28.779947ms
	Processing time (w/o IO): 30.002168ms
	Processing time (w/o IO): 28.616127ms
	Processing time (w/o IO): 29.157427ms
	Processing time (w/o IO): 28.535157ms
	Processing time (w/o IO): 31.649778ms
	Processing time (w/o IO): 28.557747ms
	Processing time (w/o IO): 28.556197ms
	  Time (mean ± σ):      51.1 ms ±   1.3 ms    [User: 119.1 ms, System: 10.9 ms]
	  Range (min … max):    49.5 ms …  53.6 ms    10 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 71.679ms
	Processing time (w/o IO): 72.044ms
	Processing time (w/o IO): 71.615ms
	Processing time (w/o IO): 71.855ms
	Processing time (w/o IO): 72.128ms
	Processing time (w/o IO): 72.072ms
	Processing time (w/o IO): 72.141ms
	Processing time (w/o IO): 73.881ms
	Processing time (w/o IO): 74.119ms
	Processing time (w/o IO): 71.77ms
	Processing time (w/o IO): 72.125ms
	Processing time (w/o IO): 71.728ms
	Processing time (w/o IO): 72.51ms
	  Time (mean ± σ):     168.9 ms ±   2.6 ms    [User: 157.4 ms, System: 12.3 ms]
	  Range (min … max):   166.5 ms … 175.0 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 3.390s
	Processing time (w/o IO): 3.392s
	Processing time (w/o IO): 3.408s
	Processing time (w/o IO): 3.391s
	Processing time (w/o IO): 3.393s
	Processing time (w/o IO): 3.381s
	Processing time (w/o IO): 3.385s
	Processing time (w/o IO): 3.403s
	Processing time (w/o IO): 3.406s
	Processing time (w/o IO): 3.417s
	Processing time (w/o IO): 3.386s
	Processing time (w/o IO): 3.399s
	Processing time (w/o IO): 3.372s
	  Time (mean ± σ):      3.469 s ±  0.014 s    [User: 3.452 s, System: 0.016 s]
	  Range (min … max):    3.445 s …  3.493 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 612.2ms
	Processing time (w/o IO): 575.4ms
	Processing time (w/o IO): 556.8ms
	Processing time (w/o IO): 570.3ms
	Processing time (w/o IO): 557.4ms
	Processing time (w/o IO): 554.6ms
	Processing time (w/o IO): 557.7ms
	Processing time (w/o IO): 556.4ms
	Processing time (w/o IO): 559.0ms
	Processing time (w/o IO): 558.1ms
	Processing time (w/o IO): 554.8ms
	Processing time (w/o IO): 558.9ms
	Processing time (w/o IO): 558.0ms
	  Time (mean ± σ):     813.4 ms ±   6.7 ms    [User: 890.5 ms, System: 665.4 ms]
	  Range (min … max):   807.2 ms … 825.7 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 134.69335ms
	Processing time (w/o IO): 133.19683ms
	Processing time (w/o IO): 132.4466ms
	Processing time (w/o IO): 132.71081ms
	Processing time (w/o IO): 132.022691ms
	Processing time (w/o IO): 132.70509ms
	Processing time (w/o IO): 132.94802ms
	Processing time (w/o IO): 133.2069ms
	Processing time (w/o IO): 132.28366ms
	Processing time (w/o IO): 132.72278ms
	Processing time (w/o IO): 133.363099ms
	Processing time (w/o IO): 132.381779ms
	Processing time (w/o IO): 132.118919ms
	  Time (mean ± σ):     187.0 ms ±   2.5 ms    [User: 177.9 ms, System: 8.8 ms]
	  Range (min … max):   185.0 ms … 192.7 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 72ms
	Processing time (w/o IO): 72ms
	Processing time (w/o IO): 72ms
	Processing time (w/o IO): 72ms
	Processing time (w/o IO): 73ms
	Processing time (w/o IO): 73ms
	Processing time (w/o IO): 73ms
	Processing time (w/o IO): 73ms
	Processing time (w/o IO): 72ms
	Processing time (w/o IO): 72ms
	Processing time (w/o IO): 72ms
	Processing time (w/o IO): 71ms
	Processing time (w/o IO): 72ms
	  Time (mean ± σ):     118.1 ms ±   0.9 ms    [User: 109.6 ms, System: 8.4 ms]
	  Range (min … max):   116.5 ms … 119.6 ms    10 runs
	 
Julia:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 77 milliseconds
	Processing time (w/o IO): 77 milliseconds
	Processing time (w/o IO): 82 milliseconds
	Processing time (w/o IO): 76 milliseconds
	Processing time (w/o IO): 83 milliseconds
	Processing time (w/o IO): 83 milliseconds
	Processing time (w/o IO): 76 milliseconds
	Processing time (w/o IO): 83 milliseconds
	Processing time (w/o IO): 77 milliseconds
	Processing time (w/o IO): 82 milliseconds
	Processing time (w/o IO): 82 milliseconds
	Processing time (w/o IO): 83 milliseconds
	Processing time (w/o IO): 80 milliseconds
	  Time (mean ± σ):      3.626 s ±  0.023 s    [User: 3.443 s, System: 0.182 s]
	  Range (min … max):    3.594 s …  3.665 s    10 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads auto related.jl
	Processing time (w/o IO): 28 milliseconds
	Processing time (w/o IO): 25 milliseconds
	Processing time (w/o IO): 25 milliseconds
	Processing time (w/o IO): 25 milliseconds
	Processing time (w/o IO): 24 milliseconds
	Processing time (w/o IO): 25 milliseconds
	Processing time (w/o IO): 25 milliseconds
	Processing time (w/o IO): 24 milliseconds
	Processing time (w/o IO): 26 milliseconds
	Processing time (w/o IO): 24 milliseconds
	Processing time (w/o IO): 25 milliseconds
	Processing time (w/o IO): 24 milliseconds
	Processing time (w/o IO): 28 milliseconds
	  Time (mean ± σ):      3.598 s ±  0.025 s    [User: 4.936 s, System: 0.186 s]
	  Range (min … max):    3.555 s …  3.641 s    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  142.926635ms
	Processing time (w/o IO):  143.947123ms
	Processing time (w/o IO):  142.330546ms
	Processing time (w/o IO):  142.321526ms
	Processing time (w/o IO):  143.080465ms
	Processing time (w/o IO):  144.906932ms
	Processing time (w/o IO):  141.909257ms
	Processing time (w/o IO):  142.546775ms
	Processing time (w/o IO):  142.329235ms
	Processing time (w/o IO):  142.781385ms
	Processing time (w/o IO):  143.537604ms
	Processing time (w/o IO):  142.807695ms
	Processing time (w/o IO):  142.476865ms
	  Time (mean ± σ):     387.9 ms ±   3.5 ms    [User: 375.9 ms, System: 11.5 ms]
	  Range (min … max):   384.5 ms … 396.7 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 78.533ms
	Processing time (w/o IO): 77.843ms
	Processing time (w/o IO): 77.595ms
	Processing time (w/o IO): 78.277ms
	Processing time (w/o IO): 77.723ms
	Processing time (w/o IO): 79.183ms
	Processing time (w/o IO): 78.509ms
	Processing time (w/o IO): 78.421ms
	Processing time (w/o IO): 78.013ms
	Processing time (w/o IO): 76.717ms
	Processing time (w/o IO): 78.535ms
	Processing time (w/o IO): 78.147ms
	Processing time (w/o IO): 78.257ms
	  Time (mean ± σ):     451.0 ms ±   5.6 ms    [User: 426.1 ms, System: 24.6 ms]
	  Range (min … max):   445.7 ms … 463.1 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 220ms
	Processing time (w/o IO): 220ms
	Processing time (w/o IO): 221ms
	Processing time (w/o IO): 222ms
	Processing time (w/o IO): 223ms
	Processing time (w/o IO): 223ms
	Processing time (w/o IO): 225ms
	Processing time (w/o IO): 220ms
	Processing time (w/o IO): 220ms
	Processing time (w/o IO): 223ms
	Processing time (w/o IO): 223ms
	Processing time (w/o IO): 221ms
	Processing time (w/o IO): 225ms
	  Time (mean ± σ):     656.6 ms ±  10.1 ms    [User: 781.3 ms, System: 107.1 ms]
	  Range (min … max):   643.9 ms … 672.1 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 294ms
	Processing time (w/o IO): 295ms
	Processing time (w/o IO): 293ms
	Processing time (w/o IO): 293ms
	Processing time (w/o IO): 299ms
	Processing time (w/o IO): 295ms
	Processing time (w/o IO): 294ms
	Processing time (w/o IO): 294ms
	Processing time (w/o IO): 295ms
	Processing time (w/o IO): 293ms
	Processing time (w/o IO): 293ms
	Processing time (w/o IO): 294ms
	Processing time (w/o IO): 293ms
	  Time (mean ± σ):     437.7 ms ±   2.9 ms    [User: 422.5 ms, System: 18.2 ms]
	  Range (min … max):   434.6 ms … 443.9 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 82.5049877166748ms
	Processing time (w/o IO): 81.96496963500977ms
	Processing time (w/o IO): 81.40909671783447ms
	Processing time (w/o IO): 80.1849365234375ms
	Processing time (w/o IO): 82.84008502960205ms
	Processing time (w/o IO): 82.73100852966309ms
	Processing time (w/o IO): 81.56394958496094ms
	Processing time (w/o IO): 81.00688457489014ms
	Processing time (w/o IO): 83.00900459289551ms
	Processing time (w/o IO): 85.5480432510376ms
	Processing time (w/o IO): 82.18991756439209ms
	Processing time (w/o IO): 84.90002155303955ms
	Processing time (w/o IO): 82.44097232818604ms
	  Time (mean ± σ):     391.3 ms ±   5.6 ms    [User: 357.9 ms, System: 31.9 ms]
	  Range (min … max):   386.8 ms … 405.7 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 33.962647ms
	Processing time (w/o IO): 33.397238ms
	Processing time (w/o IO): 35.862044ms
	Processing time (w/o IO): 33.494198ms
	Processing time (w/o IO): 33.268109ms
	Processing time (w/o IO): 34.764006ms
	Processing time (w/o IO): 33.856007ms
	Processing time (w/o IO): 34.588366ms
	Processing time (w/o IO): 33.613198ms
	Processing time (w/o IO): 35.840184ms
	Processing time (w/o IO): 34.018487ms
	Processing time (w/o IO): 34.270947ms
	Processing time (w/o IO): 34.174677ms
	  Time (mean ± σ):     349.8 ms ±   5.6 ms    [User: 402.0 ms, System: 40.0 ms]
	  Range (min … max):   340.3 ms … 358.0 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 296ms
	Processing time (w/o IO): 283ms
	Processing time (w/o IO): 290ms
	Processing time (w/o IO): 293ms
	Processing time (w/o IO): 291ms
	Processing time (w/o IO): 291ms
	Processing time (w/o IO): 286ms
	Processing time (w/o IO): 287ms
	Processing time (w/o IO): 294ms
	Processing time (w/o IO): 287ms
	Processing time (w/o IO): 293ms
	Processing time (w/o IO): 284ms
	Processing time (w/o IO): 283ms
	  Time (mean ± σ):     486.2 ms ±   5.6 ms    [User: 485.3 ms, System: 62.6 ms]
	  Range (min … max):   474.4 ms … 493.7 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 638ms
	Processing time (w/o IO): 639ms
	Processing time (w/o IO): 628ms
	Processing time (w/o IO): 644ms
	Processing time (w/o IO): 619ms
	Processing time (w/o IO): 578ms
	Processing time (w/o IO): 634ms
	Processing time (w/o IO): 629ms
	Processing time (w/o IO): 635ms
	Processing time (w/o IO): 639ms
	Processing time (w/o IO): 641ms
	Processing time (w/o IO): 630ms
	Processing time (w/o IO): 712ms
	  Time (mean ± σ):     694.1 ms ±  32.1 ms    [User: 722.8 ms, System: 30.8 ms]
	  Range (min … max):   638.5 ms … 769.7 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 294ms
	Processing time (w/o IO): 286ms
	Processing time (w/o IO): 290ms
	Processing time (w/o IO): 290ms
	Processing time (w/o IO): 290ms
	Processing time (w/o IO): 286ms
	Processing time (w/o IO): 287ms
	Processing time (w/o IO): 289ms
	Processing time (w/o IO): 287ms
	Processing time (w/o IO): 290ms
	Processing time (w/o IO): 288ms
	Processing time (w/o IO): 283ms
	Processing time (w/o IO): 289ms
	  Time (mean ± σ):     356.2 ms ±   2.1 ms    [User: 352.4 ms, System: 26.2 ms]
	  Range (min … max):   352.3 ms … 359.9 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 186 ms
	Processing time (w/o IO): 184 ms
	Processing time (w/o IO): 193 ms
	Processing time (w/o IO): 196 ms
	Processing time (w/o IO): 196 ms
	Processing time (w/o IO): 181 ms
	Processing time (w/o IO): 184 ms
	Processing time (w/o IO): 184 ms
	Processing time (w/o IO): 191 ms
	Processing time (w/o IO): 189 ms
	Processing time (w/o IO): 180 ms
	Processing time (w/o IO): 190 ms
	Processing time (w/o IO): 183 ms
	  Time (mean ± σ):     439.4 ms ±  17.7 ms    [User: 738.1 ms, System: 48.2 ms]
	  Range (min … max):   413.7 ms … 460.0 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 69 ms
	Processing time (w/o IO): 70 ms
	Processing time (w/o IO): 69 ms
	Processing time (w/o IO): 69 ms
	Processing time (w/o IO): 69 ms
	Processing time (w/o IO): 69 ms
	Processing time (w/o IO): 69 ms
	Processing time (w/o IO): 70 ms
	Processing time (w/o IO): 69 ms
	Processing time (w/o IO): 69 ms
	Processing time (w/o IO): 69 ms
	Processing time (w/o IO): 69 ms
	Processing time (w/o IO): 69 ms
	  Time (mean ± σ):      96.6 ms ±   0.7 ms    [User: 83.0 ms, System: 13.5 ms]
	  Range (min … max):    95.7 ms …  98.0 ms    10 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 44 ms
	Processing time (w/o IO): 44 ms
	Processing time (w/o IO): 45 ms
	Processing time (w/o IO): 44 ms
	Processing time (w/o IO): 45 ms
	Processing time (w/o IO): 44 ms
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 44 ms
	Processing time (w/o IO): 44 ms
	Processing time (w/o IO): 44 ms
	Processing time (w/o IO): 45 ms
	Processing time (w/o IO): 44 ms
	Processing time (w/o IO): 45 ms
	  Time (mean ± σ):      72.2 ms ±   1.3 ms    [User: 137.2 ms, System: 11.3 ms]
	  Range (min … max):    70.6 ms …  75.5 ms    10 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 86ms
	Processing time (w/o IO): 86ms
	Processing time (w/o IO): 87ms
	Processing time (w/o IO): 86ms
	Processing time (w/o IO): 85ms
	Processing time (w/o IO): 86ms
	Processing time (w/o IO): 85ms
	Processing time (w/o IO): 85ms
	Processing time (w/o IO): 85ms
	Processing time (w/o IO): 86ms
	Processing time (w/o IO): 86ms
	Processing time (w/o IO): 85ms
	Processing time (w/o IO): 85ms
	  Time (mean ± σ):     114.3 ms ±   0.7 ms    [User: 101.0 ms, System: 13.1 ms]
	  Range (min … max):   113.5 ms … 115.7 ms    10 runs
	 
F#:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 90ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 98ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 90ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	  Time (mean ± σ):     351.8 ms ±   6.0 ms    [User: 298.3 ms, System: 33.7 ms]
	  Range (min … max):   342.2 ms … 359.0 ms    10 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net7.0/fsharp_con
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 48ms
	Processing time (w/o IO): 51ms
	Processing time (w/o IO): 53ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 48ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 48ms
	Processing time (w/o IO): 51ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 50ms
	  Time (mean ± σ):     863.0 ms ±  16.6 ms    [User: 924.4 ms, System: 61.1 ms]
	  Range (min … max):   842.5 ms … 904.3 ms    10 runs
	 
C#:

	Benchmark 1: ./bin/release/net7.0/publish/related
	Processing time (w/o IO): 104.645ms
	Processing time (w/o IO): 102.9687ms
	Processing time (w/o IO): 103.8593ms
	Processing time (w/o IO): 102.9758ms
	Processing time (w/o IO): 104.5361ms
	Processing time (w/o IO): 104.3497ms
	Processing time (w/o IO): 101.3908ms
	Processing time (w/o IO): 110.6012ms
	Processing time (w/o IO): 101.7916ms
	Processing time (w/o IO): 102.3069ms
	Processing time (w/o IO): 112.8247ms
	Processing time (w/o IO): 101.0824ms
	Processing time (w/o IO): 101.002ms
	  Time (mean ± σ):     150.8 ms ±   3.8 ms    [User: 144.9 ms, System: 15.8 ms]
	  Range (min … max):   145.7 ms … 157.0 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	170.96281051636	ms
	Processing time (w/o IO):	169.8579788208	ms
	Processing time (w/o IO):	188.14992904663	ms
	Processing time (w/o IO):	191.49613380432	ms
	Processing time (w/o IO):	173.94304275513	ms
	Processing time (w/o IO):	169.63505744934	ms
	Processing time (w/o IO):	169.43192481995	ms
	Processing time (w/o IO):	171.01097106934	ms
	Processing time (w/o IO):	168.86591911316	ms
	Processing time (w/o IO):	172.3690032959	ms
	Processing time (w/o IO):	171.87404632568	ms
	Processing time (w/o IO):	172.45507240295	ms
	Processing time (w/o IO):	171.61798477173	ms
	  Time (mean ± σ):     431.6 ms ±  28.7 ms    [User: 414.1 ms, System: 16.8 ms]
	  Range (min … max):   414.1 ms … 511.9 ms    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1728.6429405212	ms
	Processing time (w/o IO):	1731.9469451904	ms
	Processing time (w/o IO):	1717.7548408508	ms
	Processing time (w/o IO):	1727.5910377502	ms
	Processing time (w/o IO):	1712.8319740295	ms
	Processing time (w/o IO):	1723.1659889221	ms
	Processing time (w/o IO):	1715.0130271912	ms
	Processing time (w/o IO):	1713.6640548706	ms
	Processing time (w/o IO):	1720.0360298157	ms
	Processing time (w/o IO):	1758.9190006256	ms
	Processing time (w/o IO):	1729.7739982605	ms
	Processing time (w/o IO):	1723.2418060303	ms
	Processing time (w/o IO):	1718.4720039368	ms
	  Time (mean ± σ):      2.161 s ±  0.017 s    [User: 2.144 s, System: 0.016 s]
	  Range (min … max):    2.143 s …  2.198 s    10 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 265ms
	Processing time (w/o IO): 275ms
	Processing time (w/o IO): 267ms
	Processing time (w/o IO): 275ms
	Processing time (w/o IO): 266ms
	Processing time (w/o IO): 271ms
	Processing time (w/o IO): 273ms
	Processing time (w/o IO): 270ms
	Processing time (w/o IO): 270ms
	Processing time (w/o IO): 265ms
	Processing time (w/o IO): 269ms
	Processing time (w/o IO): 267ms
	Processing time (w/o IO): 270ms
	  Time (mean ± σ):     374.6 ms ±   6.8 ms    [User: 348.0 ms, System: 25.2 ms]
	  Range (min … max):   365.7 ms … 385.8 ms    10 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 1.088566372s
	Processing time (w/o IO): 1.08998429s
	Processing time (w/o IO): 1.086727207s
	  Time (mean ± σ):      1.250 s ±  0.001 s    [User: 1.235 s, System: 0.050 s]
	  Range (min … max):    1.249 s …  1.251 s    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 401.478719ms
	Processing time (w/o IO): 402.894887ms
	Processing time (w/o IO): 395.76867ms
	  Time (mean ± σ):     566.1 ms ±  12.2 ms    [User: 1686.9 ms, System: 75.3 ms]
	  Range (min … max):   557.4 ms … 574.7 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 1.221002956s
	Processing time (w/o IO): 1.216780505s
	Processing time (w/o IO): 1.218448261s
	  Time (mean ± σ):      1.315 s ±  0.003 s    [User: 1.281 s, System: 0.032 s]
	  Range (min … max):    1.313 s …  1.317 s    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 425.874334ms
	Processing time (w/o IO): 426.499522ms
	Processing time (w/o IO): 426.900993ms
	  Time (mean ± σ):     519.0 ms ±   0.3 ms    [User: 1739.4 ms, System: 31.6 ms]
	  Range (min … max):   518.8 ms … 519.2 ms    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 1105.07ms
	Processing time (w/o IO): 1098.16ms
	Processing time (w/o IO): 1097.86ms
	  Time (mean ± σ):      1.460 s ±  0.003 s    [User: 1.439 s, System: 0.022 s]
	  Range (min … max):    1.457 s …  1.462 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 53.668s
	Processing time (w/o IO): 53.452s
	  Time (abs ≡):        53.689 s               [User: 53.590 s, System: 0.071 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 8.381s
	Processing time (w/o IO): 8.282s
	Processing time (w/o IO): 8.137s
	  Time (mean ± σ):      8.612 s ±  0.102 s    [User: 8.188 s, System: 1.153 s]
	  Range (min … max):    8.540 s …  8.684 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 2074.23679ms
	Processing time (w/o IO): 2058.673271ms
	Processing time (w/o IO): 2067.450585ms
	  Time (mean ± σ):      2.286 s ±  0.013 s    [User: 2.240 s, System: 0.043 s]
	  Range (min … max):    2.277 s …  2.295 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 1125ms
	Processing time (w/o IO): 1129ms
	Processing time (w/o IO): 1122ms
	  Time (mean ± σ):      1.308 s ±  0.003 s    [User: 1.282 s, System: 0.024 s]
	  Range (min … max):    1.306 s …  1.310 s    2 runs
	 
Julia:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 1173 milliseconds
	Processing time (w/o IO): 1196 milliseconds
	Processing time (w/o IO): 1189 milliseconds
	  Time (mean ± σ):      5.987 s ±  0.002 s    [User: 5.799 s, System: 0.185 s]
	  Range (min … max):    5.986 s …  5.988 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads auto related.jl
	Processing time (w/o IO): 364 milliseconds
	Processing time (w/o IO): 364 milliseconds
	Processing time (w/o IO): 363 milliseconds
	  Time (mean ± σ):      4.352 s ±  0.000 s    [User: 7.665 s, System: 0.183 s]
	  Range (min … max):    4.352 s …  4.352 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  2.20891774s
	Processing time (w/o IO):  2.179026806s
	Processing time (w/o IO):  2.18853072s
	  Time (mean ± σ):      3.038 s ±  0.005 s    [User: 3.001 s, System: 0.035 s]
	  Range (min … max):    3.035 s …  3.042 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 1.183s
	Processing time (w/o IO): 1.194s
	Processing time (w/o IO): 1.181s
	  Time (mean ± σ):      7.438 s ±  0.009 s    [User: 7.337 s, System: 0.091 s]
	  Range (min … max):    7.431 s …  7.444 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 3427ms
	Processing time (w/o IO): 3376ms
	Processing time (w/o IO): 3387ms
	  Time (mean ± σ):      4.188 s ±  0.014 s    [User: 4.415 s, System: 0.122 s]
	  Range (min … max):    4.178 s …  4.198 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 4607ms
	Processing time (w/o IO): 4594ms
	Processing time (w/o IO): 4593ms
	  Time (mean ± σ):      5.169 s ±  0.001 s    [User: 5.136 s, System: 0.054 s]
	  Range (min … max):    5.168 s …  5.170 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 1211.8350267410278ms
	Processing time (w/o IO): 1226.2389659881592ms
	Processing time (w/o IO): 1199.8510360717773ms
	  Time (mean ± σ):      2.454 s ±  0.002 s    [User: 2.346 s, System: 0.105 s]
	  Range (min … max):    2.453 s …  2.456 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 457.286247ms
	Processing time (w/o IO): 458.383745ms
	Processing time (w/o IO): 471.132112ms
	  Time (mean ± σ):      1.726 s ±  0.009 s    [User: 2.964 s, System: 0.106 s]
	  Range (min … max):    1.720 s …  1.732 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 4018ms
	Processing time (w/o IO): 4050ms
	Processing time (w/o IO): 4073ms
	  Time (mean ± σ):      4.434 s ±  0.017 s    [User: 4.413 s, System: 0.100 s]
	  Range (min … max):    4.422 s …  4.446 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 10709ms
	Processing time (w/o IO): 10730ms
	Processing time (w/o IO): 10702ms
	  Time (mean ± σ):     10.910 s ±  0.022 s    [User: 10.904 s, System: 0.094 s]
	  Range (min … max):   10.895 s … 10.926 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 3956ms
	Processing time (w/o IO): 3998ms
	Processing time (w/o IO): 4005ms
	  Time (mean ± σ):      4.202 s ±  0.005 s    [User: 4.186 s, System: 0.085 s]
	  Range (min … max):    4.198 s …  4.205 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 1930 ms
	Processing time (w/o IO): 1633 ms
	Processing time (w/o IO): 1976 ms
	  Time (mean ± σ):      2.176 s ±  0.225 s    [User: 2.845 s, System: 0.102 s]
	  Range (min … max):    2.016 s …  2.335 s    2 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 1086 ms
	Processing time (w/o IO): 1077 ms
	Processing time (w/o IO): 1098 ms
	  Time (mean ± σ):      1.182 s ±  0.013 s    [User: 1.162 s, System: 0.017 s]
	  Range (min … max):    1.172 s …  1.191 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 764 ms
	Processing time (w/o IO): 733 ms
	Processing time (w/o IO): 726 ms
	  Time (mean ± σ):     825.1 ms ±   5.0 ms    [User: 2062.5 ms, System: 21.7 ms]
	  Range (min … max):   821.6 ms … 828.7 ms    2 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 2187ms
	Processing time (w/o IO): 2189ms
	Processing time (w/o IO): 2201ms
	  Time (mean ± σ):      2.323 s ±  0.009 s    [User: 2.276 s, System: 0.043 s]
	  Range (min … max):    2.317 s …  2.330 s    2 runs
	 
F#:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 1307ms
	Processing time (w/o IO): 1314ms
	Processing time (w/o IO): 1310ms
	  Time (mean ± σ):      1.840 s ±  0.004 s    [User: 1.764 s, System: 0.106 s]
	  Range (min … max):    1.837 s …  1.843 s    2 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net7.0/fsharp_con
	Processing time (w/o IO): 438ms
	Processing time (w/o IO): 546ms
	Processing time (w/o IO): 549ms
	  Time (mean ± σ):      2.949 s ±  0.016 s    [User: 4.552 s, System: 0.142 s]
	  Range (min … max):    2.938 s …  2.961 s    2 runs
	 
C#:

	Benchmark 1: ./bin/release/net7.0/publish/related
	Processing time (w/o IO): 1561.3275ms
	Processing time (w/o IO): 1553.3383ms
	Processing time (w/o IO): 1563.0502ms
	  Time (mean ± σ):      1.748 s ±  0.008 s    [User: 1.724 s, System: 0.062 s]
	  Range (min … max):    1.742 s …  1.753 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	2370.8539009094	ms
	Processing time (w/o IO):	2348.4668731689	ms
	Processing time (w/o IO):	2378.1609535217	ms
	  Time (mean ± σ):      3.912 s ±  0.051 s    [User: 3.825 s, System: 0.083 s]
	  Range (min … max):    3.876 s …  3.948 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	26809.308052063	ms
	Processing time (w/o IO):	26665.521860123	ms
	  Time (abs ≡):        28.836 s               [User: 28.757 s, System: 0.068 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 5177ms
	Processing time (w/o IO): 5113ms
	Processing time (w/o IO): 5198ms
	  Time (mean ± σ):      5.711 s ±  0.061 s    [User: 5.544 s, System: 0.161 s]
	  Range (min … max):    5.668 s …  5.754 s    2 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 9.581623206s
	Processing time (w/o IO): 9.544851735s
	Processing time (w/o IO): 9.596478079s
	  Time (mean ± σ):     10.173 s ±  0.014 s    [User: 10.124 s, System: 0.244 s]
	  Range (min … max):   10.163 s … 10.183 s    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 3.51434053s
	Processing time (w/o IO): 3.399007843s
	Processing time (w/o IO): 3.42381731s
	  Time (mean ± σ):      4.020 s ±  0.035 s    [User: 13.993 s, System: 0.272 s]
	  Range (min … max):    3.995 s …  4.045 s    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 10.818536723s
	Processing time (w/o IO): 10.797513385s
	Processing time (w/o IO): 10.796776731s
	  Time (mean ± σ):     11.170 s ±  0.018 s    [User: 11.047 s, System: 0.111 s]
	  Range (min … max):   11.157 s … 11.183 s    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 3.618707163s
	Processing time (w/o IO): 3.636715563s
	Processing time (w/o IO): 3.620501791s
	  Time (mean ± σ):      4.005 s ±  0.035 s    [User: 14.658 s, System: 0.121 s]
	  Range (min … max):    3.980 s …  4.030 s    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 9728.07ms
	Processing time (w/o IO): 9733.44ms
	Processing time (w/o IO): 9718.34ms
	  Time (mean ± σ):     10.895 s ±  0.013 s    [User: 10.802 s, System: 0.102 s]
	  Range (min … max):   10.885 s … 10.904 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 482.244s
	Processing time (w/o IO): 482.269s
	  Time (abs ≡):        482.909 s               [User: 482.670 s, System: 0.184 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 18272.908456ms
	Processing time (w/o IO): 18230.062702ms
	Processing time (w/o IO): 18206.066652ms
	  Time (mean ± σ):     19.039 s ±  0.026 s    [User: 18.893 s, System: 0.132 s]
	  Range (min … max):   19.021 s … 19.058 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 10012ms
	Processing time (w/o IO): 10145ms
	Processing time (w/o IO): 10016ms
	  Time (mean ± σ):     10.683 s ±  0.091 s    [User: 10.614 s, System: 0.063 s]
	  Range (min … max):   10.619 s … 10.748 s    2 runs
	 
Julia:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 10433 milliseconds
	Processing time (w/o IO): 11403 milliseconds
	Processing time (w/o IO): 11409 milliseconds
	  Time (mean ± σ):     26.976 s ±  0.070 s    [User: 26.653 s, System: 0.310 s]
	  Range (min … max):   26.927 s … 27.025 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads auto related.jl
	Processing time (w/o IO): 3610 milliseconds
	Processing time (w/o IO): 3619 milliseconds
	Processing time (w/o IO): 3625 milliseconds
	  Time (mean ± σ):     11.408 s ±  0.001 s    [User: 34.032 s, System: 0.293 s]
	  Range (min … max):   11.407 s … 11.408 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  18.00502221s
	Processing time (w/o IO):  18.036476833s
	Processing time (w/o IO):  17.9085475s
	  Time (mean ± σ):     20.548 s ±  0.099 s    [User: 20.453 s, System: 0.092 s]
	  Range (min … max):   20.478 s … 20.618 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 10.379s
	Processing time (w/o IO): 10.383s
	Processing time (w/o IO): 10.361s
	  Time (mean ± σ):     70.595 s ±  2.844 s    [User: 70.240 s, System: 0.346 s]
	  Range (min … max):   68.584 s … 72.606 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 30086ms
	Processing time (w/o IO): 30041ms
	Processing time (w/o IO): 29906ms
	  Time (mean ± σ):     31.891 s ±  0.096 s    [User: 32.098 s, System: 0.271 s]
	  Range (min … max):   31.823 s … 31.959 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 41391ms
	Processing time (w/o IO): 41369ms
	Processing time (w/o IO): 41240ms
	  Time (mean ± σ):     43.133 s ±  0.115 s    [User: 43.073 s, System: 0.163 s]
	  Range (min … max):   43.051 s … 43.214 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 10807.422041893005ms
	Processing time (w/o IO): 10495.419025421143ms
	Processing time (w/o IO): 10591.364026069641ms
	  Time (mean ± σ):     14.346 s ±  0.080 s    [User: 14.050 s, System: 0.292 s]
	  Range (min … max):   14.289 s … 14.403 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 3959.040675ms
	Processing time (w/o IO): 3973.909275ms
	Processing time (w/o IO): 3956.129139ms
	  Time (mean ± σ):      7.796 s ±  0.024 s    [User: 19.218 s, System: 0.346 s]
	  Range (min … max):    7.779 s …  7.813 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 36172ms
	Processing time (w/o IO): 37180ms
	Processing time (w/o IO): 35325ms
	  Time (mean ± σ):     37.191 s ±  1.309 s    [User: 37.208 s, System: 0.178 s]
	  Range (min … max):   36.266 s … 38.116 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 95522ms
	Processing time (w/o IO): 95706ms
	Processing time (w/o IO): 95472ms
	  Time (mean ± σ):     96.268 s ±  0.128 s    [User: 96.218 s, System: 0.207 s]
	  Range (min … max):   96.177 s … 96.358 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 56666ms
	Processing time (w/o IO): 56969ms
	Processing time (w/o IO): 56885ms
	  Time (mean ± σ):     57.567 s ±  0.036 s    [User: 57.505 s, System: 0.210 s]
	  Range (min … max):   57.542 s … 57.593 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 16747 ms
	Processing time (w/o IO): 16695 ms
	Processing time (w/o IO): 16858 ms
	  Time (mean ± σ):     17.548 s ±  0.112 s    [User: 18.481 s, System: 0.138 s]
	  Range (min … max):   17.470 s … 17.627 s    2 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 9808 ms
	Processing time (w/o IO): 9740 ms
	Processing time (w/o IO): 10061 ms
	  Time (mean ± σ):     10.476 s ±  0.235 s    [User: 10.358 s, System: 0.113 s]
	  Range (min … max):   10.310 s … 10.643 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 6154 ms
	Processing time (w/o IO): 6232 ms
	Processing time (w/o IO): 6625 ms
	  Time (mean ± σ):      6.991 s ±  0.263 s    [User: 17.907 s, System: 0.107 s]
	  Range (min … max):    6.805 s …  7.177 s    2 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 19685ms
	Processing time (w/o IO): 19695ms
	Processing time (w/o IO): 19825ms
	  Time (mean ± σ):     20.281 s ±  0.082 s    [User: 20.135 s, System: 0.133 s]
	  Range (min … max):   20.223 s … 20.339 s    2 runs
	 
F#:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 11794ms
	Processing time (w/o IO): 11775ms
	Processing time (w/o IO): 12783ms
	  Time (mean ± σ):     13.429 s ±  0.660 s    [User: 13.396 s, System: 0.214 s]
	  Range (min … max):   12.963 s … 13.896 s    2 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net7.0/fsharp_con
	Processing time (w/o IO): 4826ms
	Processing time (w/o IO): 4774ms
	Processing time (w/o IO): 4760ms
	  Time (mean ± σ):     11.706 s ±  0.196 s    [User: 25.947 s, System: 0.376 s]
	  Range (min … max):   11.568 s … 11.845 s    2 runs
	 
C#:

	Benchmark 1: ./bin/release/net7.0/publish/related
	Processing time (w/o IO): 14093.0495ms
	Processing time (w/o IO): 14164.8966ms
	Processing time (w/o IO): 14206.8996ms
	  Time (mean ± σ):     14.711 s ±  0.028 s    [User: 14.585 s, System: 0.159 s]
	  Range (min … max):   14.692 s … 14.731 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	20136.703968048	ms
	Processing time (w/o IO):	20610.178947449	ms
	Processing time (w/o IO):	20412.718057632	ms
	  Time (mean ± σ):     25.875 s ±  0.201 s    [User: 25.633 s, System: 0.237 s]
	  Range (min … max):   25.732 s … 26.017 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	238921.73600197	ms
	Processing time (w/o IO):	240367.26808548	ms
	  Time (abs ≡):        248.170 s               [User: 247.901 s, System: 0.231 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 53079ms
	Processing time (w/o IO): 53100ms
	Processing time (w/o IO): 53036ms
	  Time (mean ± σ):     55.123 s ±  0.023 s    [User: 54.747 s, System: 0.369 s]
	  Range (min … max):   55.107 s … 55.140 s    2 runs
	 
