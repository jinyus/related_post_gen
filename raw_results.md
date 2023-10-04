Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 31.3299ms
	Processing time (w/o IO): 30.608091ms
	Processing time (w/o IO): 31.486402ms
	Processing time (w/o IO): 31.2932ms
	Processing time (w/o IO): 31.146698ms
	Processing time (w/o IO): 31.332ms
	Processing time (w/o IO): 31.495102ms
	Processing time (w/o IO): 31.234299ms
	Processing time (w/o IO): 31.163298ms
	Processing time (w/o IO): 31.143997ms
	Processing time (w/o IO): 30.928994ms
	Processing time (w/o IO): 31.167098ms
	Processing time (w/o IO): 31.007196ms
	  Time (mean ± σ):      62.6 ms ±   1.6 ms    [User: 57.9 ms, System: 11.4 ms]
	  Range (min … max):    60.3 ms …  65.2 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 16.237109ms
	Processing time (w/o IO): 16.353011ms
	Processing time (w/o IO): 16.437712ms
	Processing time (w/o IO): 16.034607ms
	Processing time (w/o IO): 15.927005ms
	Processing time (w/o IO): 16.124708ms
	Processing time (w/o IO): 16.388911ms
	Processing time (w/o IO): 16.025706ms
	Processing time (w/o IO): 16.467613ms
	Processing time (w/o IO): 17.06172ms
	Processing time (w/o IO): 15.983506ms
	Processing time (w/o IO): 15.869605ms
	Processing time (w/o IO): 16.210109ms
	  Time (mean ± σ):      49.3 ms ±   1.6 ms    [User: 55.5 ms, System: 12.9 ms]
	  Range (min … max):    47.9 ms …  53.3 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 33.587221ms
	Processing time (w/o IO): 33.890425ms
	Processing time (w/o IO): 33.632622ms
	Processing time (w/o IO): 33.728823ms
	Processing time (w/o IO): 33.680322ms
	Processing time (w/o IO): 33.797024ms
	Processing time (w/o IO): 33.676723ms
	Processing time (w/o IO): 33.686322ms
	Processing time (w/o IO): 33.612222ms
	Processing time (w/o IO): 33.687522ms
	Processing time (w/o IO): 33.621922ms
	Processing time (w/o IO): 33.714223ms
	Processing time (w/o IO): 33.647921ms
	  Time (mean ± σ):      52.9 ms ±   0.2 ms    [User: 44.0 ms, System: 8.9 ms]
	  Range (min … max):    52.6 ms …  53.4 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 18.842936ms
	Processing time (w/o IO): 18.597333ms
	Processing time (w/o IO): 18.764036ms
	Processing time (w/o IO): 18.39763ms
	Processing time (w/o IO): 18.506632ms
	Processing time (w/o IO): 18.873637ms
	Processing time (w/o IO): 18.37193ms
	Processing time (w/o IO): 18.486732ms
	Processing time (w/o IO): 18.889037ms
	Processing time (w/o IO): 18.683534ms
	Processing time (w/o IO): 18.898137ms
	Processing time (w/o IO): 18.832037ms
	Processing time (w/o IO): 19.021539ms
	  Time (mean ± σ):      37.6 ms ±   0.6 ms    [User: 43.9 ms, System: 10.8 ms]
	  Range (min … max):    36.6 ms …  38.5 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 2.708s
	Processing time (w/o IO): 2.691s
	Processing time (w/o IO): 2.697s
	Processing time (w/o IO): 2.694s
	Processing time (w/o IO): 2.699s
	  Time (mean ± σ):      2.776 s ±  0.007 s    [User: 2.754 s, System: 0.021 s]
	  Range (min … max):    2.768 s …  2.788 s    5 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 0.451s
	Processing time (w/o IO): 0.378s
	Processing time (w/o IO): 0.383s
	Processing time (w/o IO): 0.380s
	Processing time (w/o IO): 0.380s
	  Time (mean ± σ):     642.0 ms ±  31.3 ms    [User: 639.9 ms, System: 192.3 ms]
	  Range (min … max):   618.7 ms … 690.5 ms    5 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 56.186297ms
	Processing time (w/o IO): 56.252398ms
	Processing time (w/o IO): 56.078996ms
	Processing time (w/o IO): 56.839406ms
	Processing time (w/o IO): 56.002095ms
	Processing time (w/o IO): 56.067197ms
	Processing time (w/o IO): 56.109497ms
	Processing time (w/o IO): 56.230098ms
	Processing time (w/o IO): 55.929495ms
	Processing time (w/o IO): 56.047196ms
	  Time (mean ± σ):     114.0 ms ±   0.6 ms    [User: 102.8 ms, System: 11.0 ms]
	  Range (min … max):   112.8 ms … 115.0 ms    10 runs
	 
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
	  Time (mean ± σ):      80.4 ms ±   0.3 ms    [User: 73.7 ms, System: 6.7 ms]
	  Range (min … max):    79.9 ms …  80.8 ms    10 runs
	 
Julia v2:

	Benchmark 1: julia related_v2.jl
	Processing time (w/o IO): 639 milliseconds
	Processing time (w/o IO): 658 milliseconds
	Processing time (w/o IO): 640 milliseconds
	Processing time (w/o IO): 615 milliseconds
	Processing time (w/o IO): 625 milliseconds
	Processing time (w/o IO): 628 milliseconds
	  Time (mean ± σ):      5.210 s ±  0.033 s    [User: 4.991 s, System: 0.216 s]
	  Range (min … max):    5.162 s …  5.250 s    5 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  64.312391ms
	Processing time (w/o IO):  63.807285ms
	Processing time (w/o IO):  63.524181ms
	Processing time (w/o IO):  63.42688ms
	Processing time (w/o IO):  63.504581ms
	Processing time (w/o IO):  63.210378ms
	Processing time (w/o IO):  63.902787ms
	Processing time (w/o IO):  63.297279ms
	Processing time (w/o IO):  63.253981ms
	Processing time (w/o IO):  63.486184ms
	  Time (mean ± σ):     312.6 ms ±   0.7 ms    [User: 302.9 ms, System: 9.5 ms]
	  Range (min … max):   311.4 ms … 313.4 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 58.960ms
	Processing time (w/o IO): 59.427ms
	Processing time (w/o IO): 59.739ms
	Processing time (w/o IO): 58.658ms
	Processing time (w/o IO): 58.751ms
	  Time (mean ± σ):     395.3 ms ±   8.0 ms    [User: 360.2 ms, System: 33.6 ms]
	  Range (min … max):   381.9 ms … 403.4 ms    5 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 108ms
	Processing time (w/o IO): 94ms
	Processing time (w/o IO): 95ms
	Processing time (w/o IO): 94ms
	Processing time (w/o IO): 94ms
	Processing time (w/o IO): 125ms
	Processing time (w/o IO): 94ms
	  Time (mean ± σ):     595.5 ms ±  13.0 ms    [User: 658.4 ms, System: 165.7 ms]
	  Range (min … max):   582.1 ms … 615.5 ms    5 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 142ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 143ms
	Processing time (w/o IO): 142ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 143ms
	Processing time (w/o IO): 141ms
	  Time (mean ± σ):     285.8 ms ±   2.0 ms    [User: 271.2 ms, System: 20.6 ms]
	  Range (min … max):   284.0 ms … 289.3 ms    5 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 65.82796573638916ms
	Processing time (w/o IO): 65.81711769104004ms
	Processing time (w/o IO): 65.69898128509521ms
	Processing time (w/o IO): 65.76895713806152ms
	Processing time (w/o IO): 65.94407558441162ms
	Processing time (w/o IO): 65.58394432067871ms
	Processing time (w/o IO): 66.06090068817139ms
	Processing time (w/o IO): 65.19603729248047ms
	Processing time (w/o IO): 66.32208824157715ms
	Processing time (w/o IO): 65.80996513366699ms
	  Time (mean ± σ):     451.8 ms ±   3.1 ms    [User: 409.1 ms, System: 36.8 ms]
	  Range (min … max):   448.9 ms … 458.2 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 41.289309ms
	Processing time (w/o IO): 41.123404ms
	Processing time (w/o IO): 40.031591ms
	Processing time (w/o IO): 42.026215ms
	Processing time (w/o IO): 40.461196ms
	Processing time (w/o IO): 40.627798ms
	Processing time (w/o IO): 40.516197ms
	Processing time (w/o IO): 39.672987ms
	Processing time (w/o IO): 40.564097ms
	Processing time (w/o IO): 39.95759ms
	  Time (mean ± σ):     435.3 ms ±   2.3 ms    [User: 424.4 ms, System: 41.9 ms]
	  Range (min … max):   431.8 ms … 438.4 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 219ms
	Processing time (w/o IO): 203ms
	Processing time (w/o IO): 203ms
	Processing time (w/o IO): 202ms
	Processing time (w/o IO): 204ms
	  Time (mean ± σ):     289.6 ms ±  15.1 ms    [User: 263.2 ms, System: 61.5 ms]
	  Range (min … max):   273.8 ms … 314.8 ms    5 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 681ms
	Processing time (w/o IO): 661ms
	Processing time (w/o IO): 832ms
	Processing time (w/o IO): 857ms
	Processing time (w/o IO): 661ms
	  Time (mean ± σ):     820.2 ms ±  95.5 ms    [User: 802.0 ms, System: 40.0 ms]
	  Range (min … max):   717.1 ms … 913.0 ms    5 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 199ms
	Processing time (w/o IO): 181ms
	Processing time (w/o IO): 181ms
	Processing time (w/o IO): 181ms
	Processing time (w/o IO): 183ms
	  Time (mean ± σ):     285.9 ms ±  72.8 ms    [User: 238.9 ms, System: 34.5 ms]
	  Range (min … max):   251.7 ms … 416.2 ms    5 runs
	 
Java (JIT):

	Benchmark 1: java -Xms10m -Xmx10m -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 263 ms
	Processing time (w/o IO): 258 ms
	Processing time (w/o IO): 297 ms
	Processing time (w/o IO): 265 ms
	Processing time (w/o IO): 259 ms
	Processing time (w/o IO): 259 ms
	Processing time (w/o IO): 254 ms
	Processing time (w/o IO): 255 ms
	Processing time (w/o IO): 256 ms
	Processing time (w/o IO): 274 ms
	Processing time (w/o IO): 270 ms
	Processing time (w/o IO): 246 ms
	Processing time (w/o IO): 268 ms
	  Time (mean ± σ):     547.8 ms ±  27.5 ms    [User: 917.3 ms, System: 65.6 ms]
	  Range (min … max):   527.1 ms … 619.6 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 35 ms
	  Time (mean ± σ):      66.1 ms ±   0.6 ms    [User: 52.8 ms, System: 13.2 ms]
	  Range (min … max):    65.4 ms …  67.0 ms    10 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	  Time (mean ± σ):     122.3 ms ±   0.7 ms    [User: 108.4 ms, System: 13.8 ms]
	  Range (min … max):   121.3 ms … 123.6 ms    10 runs
	 
Fsharp:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 57ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 49ms
	  Time (mean ± σ):     876.8 ms ±   8.1 ms    [User: 815.8 ms, System: 77.7 ms]
	  Range (min … max):   867.5 ms … 886.9 ms    5 runs
	 
Fsharp Concurrent:

	Benchmark 1: ./bin/release/net7.0/fsharp_con
	Processing time (w/o IO): 41ms
	Processing time (w/o IO): 41ms
	Processing time (w/o IO): 42ms
	Processing time (w/o IO): 41ms
	Processing time (w/o IO): 41ms
	Processing time (w/o IO): 41ms
	Processing time (w/o IO): 41ms
	  Time (mean ± σ):     879.2 ms ±   6.3 ms    [User: 842.2 ms, System: 78.0 ms]
	  Range (min … max):   869.3 ms … 884.2 ms    5 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	119.18091773987	ms
	Processing time (w/o IO):	119.13895606995	ms
	Processing time (w/o IO):	118.21103096008	ms
	Processing time (w/o IO):	118.35789680481	ms
	Processing time (w/o IO):	119.23599243164	ms
	Processing time (w/o IO):	118.06488037109	ms
	Processing time (w/o IO):	122.09010124207	ms
	  Time (mean ± σ):     400.2 ms ±   4.0 ms    [User: 373.3 ms, System: 26.8 ms]
	  Range (min … max):   396.5 ms … 406.3 ms    5 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	2358.0040931702	ms
	Processing time (w/o IO):	2363.2700443268	ms
	Processing time (w/o IO):	2358.9079380035	ms
	Processing time (w/o IO):	2357.3970794678	ms
	Processing time (w/o IO):	2359.3938350677	ms
	Processing time (w/o IO):	2362.4348640442	ms
	Processing time (w/o IO):	2381.6421031952	ms
	  Time (mean ± σ):      3.050 s ±  0.011 s    [User: 3.019 s, System: 0.030 s]
	  Range (min … max):    3.039 s …  3.064 s    5 runs
	 
