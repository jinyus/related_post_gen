Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 28.862896ms
	Processing time (w/o IO): 29.895996ms
	Processing time (w/o IO): 29.376296ms
	Processing time (w/o IO): 28.606896ms
	Processing time (w/o IO): 29.553496ms
	Processing time (w/o IO): 29.992796ms
	Processing time (w/o IO): 29.415597ms
	Processing time (w/o IO): 28.953497ms
	Processing time (w/o IO): 29.508997ms
	Processing time (w/o IO): 29.721996ms
	Processing time (w/o IO): 29.099696ms
	Processing time (w/o IO): 29.780096ms
	Processing time (w/o IO): 28.919296ms
	  Time (mean ± σ):      60.9 ms ±   2.0 ms    [User: 56.1 ms, System: 12.8 ms]
	  Range (min … max):    59.1 ms …  65.9 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 24.06039ms
	Processing time (w/o IO): 16.128193ms
	Processing time (w/o IO): 16.211693ms
	Processing time (w/o IO): 16.205293ms
	Processing time (w/o IO): 16.174993ms
	Processing time (w/o IO): 16.688893ms
	Processing time (w/o IO): 16.180894ms
	Processing time (w/o IO): 16.330793ms
	Processing time (w/o IO): 16.347094ms
	Processing time (w/o IO): 16.256493ms
	Processing time (w/o IO): 16.172994ms
	Processing time (w/o IO): 16.668893ms
	Processing time (w/o IO): 16.101994ms
	  Time (mean ± σ):      50.4 ms ±   1.3 ms    [User: 57.3 ms, System: 12.7 ms]
	  Range (min … max):    47.9 ms …  52.0 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 29.247283ms
	Processing time (w/o IO): 29.190883ms
	Processing time (w/o IO): 29.208983ms
	Processing time (w/o IO): 29.237083ms
	Processing time (w/o IO): 29.234583ms
	Processing time (w/o IO): 29.235583ms
	Processing time (w/o IO): 29.325883ms
	Processing time (w/o IO): 29.232783ms
	Processing time (w/o IO): 29.849983ms
	Processing time (w/o IO): 29.308483ms
	Processing time (w/o IO): 29.268183ms
	Processing time (w/o IO): 29.292583ms
	Processing time (w/o IO): 29.263483ms
	  Time (mean ± σ):      46.5 ms ±   0.7 ms    [User: 40.5 ms, System: 5.8 ms]
	  Range (min … max):    46.0 ms …  48.0 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 15.163686ms
	Processing time (w/o IO): 14.901687ms
	Processing time (w/o IO): 15.258986ms
	Processing time (w/o IO): 15.228486ms
	Processing time (w/o IO): 16.948085ms
	Processing time (w/o IO): 16.076785ms
	Processing time (w/o IO): 15.014786ms
	Processing time (w/o IO): 15.336087ms
	Processing time (w/o IO): 15.154187ms
	Processing time (w/o IO): 15.013887ms
	Processing time (w/o IO): 15.034787ms
	Processing time (w/o IO): 15.033587ms
	Processing time (w/o IO): 15.230087ms
	  Time (mean ± σ):      33.1 ms ±   1.7 ms    [User: 39.1 ms, System: 7.9 ms]
	  Range (min … max):    31.5 ms …  36.9 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 2.620s
	Processing time (w/o IO): 2.645s
	Processing time (w/o IO): 2.578s
	Processing time (w/o IO): 2.551s
	Processing time (w/o IO): 2.572s
	  Time (mean ± σ):      2.664 s ±  0.039 s    [User: 2.647 s, System: 0.017 s]
	  Range (min … max):    2.621 s …  2.717 s    5 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 0.435s
	Processing time (w/o IO): 0.410s
	Processing time (w/o IO): 0.412s
	Processing time (w/o IO): 0.389s
	Processing time (w/o IO): 0.392s
	  Time (mean ± σ):     632.3 ms ±  17.7 ms    [User: 651.0 ms, System: 169.9 ms]
	  Range (min … max):   610.8 ms … 656.2 ms    5 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 58.294182ms
	Processing time (w/o IO): 59.052681ms
	Processing time (w/o IO): 58.332582ms
	Processing time (w/o IO): 58.151382ms
	Processing time (w/o IO): 58.203882ms
	Processing time (w/o IO): 58.252682ms
	Processing time (w/o IO): 59.030581ms
	Processing time (w/o IO): 58.833081ms
	Processing time (w/o IO): 58.068683ms
	Processing time (w/o IO): 58.204283ms
	  Time (mean ± σ):     108.8 ms ±   0.8 ms    [User: 96.8 ms, System: 11.8 ms]
	  Range (min … max):   107.6 ms … 109.7 ms    10 runs
	 
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
	  Time (mean ± σ):      71.4 ms ±   0.3 ms    [User: 64.8 ms, System: 6.5 ms]
	  Range (min … max):    71.0 ms …  71.7 ms    10 runs
	 
Julia v2:

	Benchmark 1: julia related_v2.jl
	Processing time (w/o IO): 594 milliseconds
	Processing time (w/o IO): 596 milliseconds
	Processing time (w/o IO): 586 milliseconds
	Processing time (w/o IO): 604 milliseconds
	Processing time (w/o IO): 555 milliseconds
	Processing time (w/o IO): 595 milliseconds
	  Time (mean ± σ):      4.924 s ±  0.066 s    [User: 4.742 s, System: 0.179 s]
	  Range (min … max):    4.862 s …  5.013 s    5 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  45.311533ms
	Processing time (w/o IO):  45.214033ms
	Processing time (w/o IO):  46.031032ms
	Processing time (w/o IO):  45.725832ms
	Processing time (w/o IO):  44.930933ms
	Processing time (w/o IO):  45.683032ms
	Processing time (w/o IO):  45.170634ms
	Processing time (w/o IO):  45.344233ms
	Processing time (w/o IO):  46.002933ms
	Processing time (w/o IO):  49.089128ms
	  Time (mean ± σ):     329.3 ms ±   2.1 ms    [User: 320.7 ms, System: 8.5 ms]
	  Range (min … max):   327.6 ms … 334.6 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 46.683ms
	Processing time (w/o IO): 46.815ms
	Processing time (w/o IO): 47.044ms
	Processing time (w/o IO): 47.945ms
	Processing time (w/o IO): 47.959ms
	  Time (mean ± σ):     350.4 ms ±   4.4 ms    [User: 321.2 ms, System: 28.7 ms]
	  Range (min … max):   343.6 ms … 354.3 ms    5 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 78ms
	Processing time (w/o IO): 78ms
	Processing time (w/o IO): 80ms
	Processing time (w/o IO): 78ms
	Processing time (w/o IO): 78ms
	Processing time (w/o IO): 79ms
	Processing time (w/o IO): 85ms
	Processing time (w/o IO): 83ms
	  Time (mean ± σ):     552.8 ms ±   9.0 ms    [User: 631.3 ms, System: 143.9 ms]
	  Range (min … max):   540.4 ms … 565.6 ms    5 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 117ms
	Processing time (w/o IO): 116ms
	Processing time (w/o IO): 118ms
	Processing time (w/o IO): 116ms
	Processing time (w/o IO): 117ms
	Processing time (w/o IO): 116ms
	Processing time (w/o IO): 116ms
	Processing time (w/o IO): 118ms
	  Time (mean ± σ):     248.8 ms ±   2.0 ms    [User: 225.4 ms, System: 26.6 ms]
	  Range (min … max):   246.6 ms … 252.0 ms    5 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 50.45795440673828ms
	Processing time (w/o IO): 50.85301399230957ms
	Processing time (w/o IO): 50.55105686187744ms
	Processing time (w/o IO): 49.908995628356934ms
	Processing time (w/o IO): 50.47893524169922ms
	Processing time (w/o IO): 50.576090812683105ms
	Processing time (w/o IO): 50.118088722229004ms
	Processing time (w/o IO): 50.340890884399414ms
	Processing time (w/o IO): 50.45604705810547ms
	Processing time (w/o IO): 50.38595199584961ms
	  Time (mean ± σ):     417.8 ms ±   1.5 ms    [User: 380.3 ms, System: 33.2 ms]
	  Range (min … max):   415.4 ms … 419.8 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 32.07775ms
	Processing time (w/o IO): 33.705948ms
	Processing time (w/o IO): 32.930549ms
	Processing time (w/o IO): 32.545449ms
	Processing time (w/o IO): 31.837651ms
	Processing time (w/o IO): 31.85595ms
	Processing time (w/o IO): 32.754449ms
	Processing time (w/o IO): 33.360349ms
	Processing time (w/o IO): 32.938449ms
	Processing time (w/o IO): 33.079548ms
	  Time (mean ± σ):     409.5 ms ±   1.8 ms    [User: 393.4 ms, System: 41.1 ms]
	  Range (min … max):   406.5 ms … 411.6 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 176ms
	Processing time (w/o IO): 165ms
	Processing time (w/o IO): 164ms
	Processing time (w/o IO): 164ms
	Processing time (w/o IO): 165ms
	  Time (mean ± σ):     240.8 ms ±   6.6 ms    [User: 218.8 ms, System: 58.7 ms]
	  Range (min … max):   230.7 ms … 246.8 ms    5 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 571ms
	Processing time (w/o IO): 547ms
	Processing time (w/o IO): 706ms
	Processing time (w/o IO): 702ms
	Processing time (w/o IO): 547ms
	  Time (mean ± σ):     684.5 ms ±  80.8 ms    [User: 684.7 ms, System: 32.8 ms]
	  Range (min … max):   595.0 ms … 758.3 ms    5 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 163ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 150ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 147ms
	  Time (mean ± σ):     240.0 ms ±  50.3 ms    [User: 206.0 ms, System: 35.7 ms]
	  Range (min … max):   215.8 ms … 329.9 ms    5 runs
	 
Java (JIT):

	Benchmark 1: java -Xms10m -Xmx10m -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 255 ms
	Processing time (w/o IO): 245 ms
	Processing time (w/o IO): 240 ms
	Processing time (w/o IO): 246 ms
	Processing time (w/o IO): 234 ms
	Processing time (w/o IO): 262 ms
	Processing time (w/o IO): 240 ms
	Processing time (w/o IO): 229 ms
	Processing time (w/o IO): 234 ms
	Processing time (w/o IO): 235 ms
	Processing time (w/o IO): 227 ms
	Processing time (w/o IO): 232 ms
	Processing time (w/o IO): 233 ms
	  Time (mean ± σ):     523.6 ms ±   7.9 ms    [User: 891.4 ms, System: 55.3 ms]
	  Range (min … max):   514.0 ms … 538.2 ms    10 runs
	 
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
	  Time (mean ± σ):      64.2 ms ±   0.3 ms    [User: 55.6 ms, System: 8.6 ms]
	  Range (min … max):    63.9 ms …  64.7 ms    10 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 48ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 47ms
	  Time (mean ± σ):      75.5 ms ±   0.6 ms    [User: 66.8 ms, System: 8.6 ms]
	  Range (min … max):    74.2 ms …  76.3 ms    10 runs
	 
Fsharp:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 50ms
	Processing time (w/o IO): 52ms
	  Time (mean ± σ):     830.5 ms ±   4.1 ms    [User: 779.7 ms, System: 66.8 ms]
	  Range (min … max):   824.5 ms … 834.2 ms    5 runs
	 
Fsharp Concurrent:

	Benchmark 1: ./bin/release/net7.0/fsharp_con
	Processing time (w/o IO): 41ms
	Processing time (w/o IO): 42ms
	Processing time (w/o IO): 41ms
	Processing time (w/o IO): 42ms
	Processing time (w/o IO): 41ms
	Processing time (w/o IO): 41ms
	Processing time (w/o IO): 41ms
	  Time (mean ± σ):     830.9 ms ±   3.4 ms    [User: 783.2 ms, System: 67.2 ms]
	  Range (min … max):   827.1 ms … 836.4 ms    5 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	107.66291618347	ms
	Processing time (w/o IO):	107.06305503845	ms
	Processing time (w/o IO):	107.11097717285	ms
	Processing time (w/o IO):	107.74302482605	ms
	Processing time (w/o IO):	107.14912414551	ms
	Processing time (w/o IO):	106.85920715332	ms
	Processing time (w/o IO):	107.05590248108	ms
	  Time (mean ± σ):     403.7 ms ±   7.9 ms    [User: 381.6 ms, System: 21.4 ms]
	  Range (min … max):   397.9 ms … 416.9 ms    5 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1962.7029895782	ms
	Processing time (w/o IO):	1943.5660839081	ms
	Processing time (w/o IO):	1947.5510120392	ms
	Processing time (w/o IO):	1946.8429088593	ms
	Processing time (w/o IO):	1951.7180919647	ms
	Processing time (w/o IO):	1949.2268562317	ms
	Processing time (w/o IO):	1964.9069309235	ms
	  Time (mean ± σ):      2.601 s ±  0.007 s    [User: 2.563 s, System: 0.037 s]
	  Range (min … max):    2.597 s …  2.612 s    5 runs
	 
