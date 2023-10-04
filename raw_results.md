Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 30.802788ms
	Processing time (w/o IO): 30.773788ms
	Processing time (w/o IO): 31.021895ms
	Processing time (w/o IO): 31.779517ms
	Processing time (w/o IO): 32.362533ms
	Processing time (w/o IO): 31.89412ms
	Processing time (w/o IO): 30.977194ms
	Processing time (w/o IO): 31.89752ms
	Processing time (w/o IO): 31.291603ms
	Processing time (w/o IO): 31.019395ms
	Processing time (w/o IO): 37.507182ms
	Processing time (w/o IO): 36.806562ms
	Processing time (w/o IO): 31.520309ms
	  Time (mean ± σ):      68.3 ms ±   2.8 ms    [User: 63.4 ms, System: 13.3 ms]
	  Range (min … max):    64.9 ms …  72.9 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 16.561776ms
	Processing time (w/o IO): 16.762082ms
	Processing time (w/o IO): 16.546076ms
	Processing time (w/o IO): 16.792983ms
	Processing time (w/o IO): 17.604507ms
	Processing time (w/o IO): 16.34157ms
	Processing time (w/o IO): 16.35107ms
	Processing time (w/o IO): 16.928486ms
	Processing time (w/o IO): 16.937588ms
	Processing time (w/o IO): 16.785382ms
	Processing time (w/o IO): 16.32137ms
	Processing time (w/o IO): 16.422773ms
	Processing time (w/o IO): 16.641578ms
	  Time (mean ± σ):      52.3 ms ±   1.2 ms    [User: 56.4 ms, System: 16.2 ms]
	  Range (min … max):    50.4 ms …  53.7 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 33.797346ms
	Processing time (w/o IO): 35.504394ms
	Processing time (w/o IO): 34.922778ms
	Processing time (w/o IO): 33.940551ms
	Processing time (w/o IO): 33.91225ms
	Processing time (w/o IO): 33.734445ms
	Processing time (w/o IO): 33.886549ms
	Processing time (w/o IO): 33.813947ms
	Processing time (w/o IO): 33.816547ms
	Processing time (w/o IO): 33.954351ms
	Processing time (w/o IO): 33.957751ms
	Processing time (w/o IO): 34.29396ms
	Processing time (w/o IO): 34.073254ms
	  Time (mean ± σ):      55.8 ms ±   2.9 ms    [User: 46.4 ms, System: 8.3 ms]
	  Range (min … max):    54.4 ms …  64.0 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 19.789257ms
	Processing time (w/o IO): 19.272842ms
	Processing time (w/o IO): 19.057837ms
	Processing time (w/o IO): 19.110838ms
	Processing time (w/o IO): 19.116939ms
	Processing time (w/o IO): 18.876331ms
	Processing time (w/o IO): 18.887932ms
	Processing time (w/o IO): 19.253742ms
	Processing time (w/o IO): 19.296443ms
	Processing time (w/o IO): 18.951134ms
	Processing time (w/o IO): 20.054864ms
	Processing time (w/o IO): 19.509449ms
	Processing time (w/o IO): 19.425547ms
	  Time (mean ± σ):      39.3 ms ±   0.9 ms    [User: 46.1 ms, System: 10.6 ms]
	  Range (min … max):    38.3 ms …  41.2 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 2.698s
	Processing time (w/o IO): 2.709s
	Processing time (w/o IO): 2.711s
	Processing time (w/o IO): 2.704s
	Processing time (w/o IO): 2.705s
	  Time (mean ± σ):      2.789 s ±  0.005 s    [User: 2.768 s, System: 0.019 s]
	  Range (min … max):    2.782 s …  2.795 s    5 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 0.454s
	Processing time (w/o IO): 0.417s
	Processing time (w/o IO): 0.424s
	Processing time (w/o IO): 0.386s
	Processing time (w/o IO): 0.389s
	  Time (mean ± σ):     669.3 ms ±  29.2 ms    [User: 663.0 ms, System: 209.0 ms]
	  Range (min … max):   644.3 ms … 715.8 ms    5 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 56.644159ms
	Processing time (w/o IO): 57.446981ms
	Processing time (w/o IO): 56.343951ms
	Processing time (w/o IO): 56.33105ms
	Processing time (w/o IO): 56.107044ms
	Processing time (w/o IO): 56.548157ms
	Processing time (w/o IO): 56.372351ms
	Processing time (w/o IO): 57.095371ms
	Processing time (w/o IO): 56.333851ms
	Processing time (w/o IO): 56.377552ms
	  Time (mean ± σ):     116.5 ms ±   1.0 ms    [User: 106.7 ms, System: 9.6 ms]
	  Range (min … max):   115.2 ms … 117.9 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 178ms
	  Time (mean ± σ):     221.2 ms ±   1.7 ms    [User: 214.3 ms, System: 6.3 ms]
	  Range (min … max):   220.3 ms … 226.0 ms    10 runs
	 
Julia v2:

	Benchmark 1: julia related_v2.jl
	Processing time (w/o IO): 677 milliseconds
	Processing time (w/o IO): 674 milliseconds
	Processing time (w/o IO): 668 milliseconds
	Processing time (w/o IO): 656 milliseconds
	Processing time (w/o IO): 662 milliseconds
	Processing time (w/o IO): 660 milliseconds
	  Time (mean ± σ):      5.523 s ±  0.050 s    [User: 5.270 s, System: 0.249 s]
	  Range (min … max):    5.485 s …  5.596 s    5 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  70.758444ms
	Processing time (w/o IO):  70.384236ms
	Processing time (w/o IO):  70.817846ms
	Processing time (w/o IO):  70.692443ms
	Processing time (w/o IO):  70.764145ms
	Processing time (w/o IO):  71.04455ms
	Processing time (w/o IO):  71.038451ms
	Processing time (w/o IO):  70.912248ms
	Processing time (w/o IO):  71.083752ms
	Processing time (w/o IO):  71.316557ms
	  Time (mean ± σ):     321.7 ms ±   1.2 ms    [User: 311.9 ms, System: 9.5 ms]
	  Range (min … max):   320.5 ms … 325.0 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 72.150ms
	Processing time (w/o IO): 61.100ms
	Processing time (w/o IO): 61.149ms
	Processing time (w/o IO): 61.352ms
	Processing time (w/o IO): 61.131ms
	  Time (mean ± σ):     413.3 ms ±   9.4 ms    [User: 373.0 ms, System: 39.5 ms]
	  Range (min … max):   406.9 ms … 429.9 ms    5 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 94ms
	Processing time (w/o IO): 94ms
	Processing time (w/o IO): 133ms
	Processing time (w/o IO): 95ms
	Processing time (w/o IO): 134ms
	Processing time (w/o IO): 95ms
	Processing time (w/o IO): 109ms
	Processing time (w/o IO): 111ms
	  Time (mean ± σ):     623.4 ms ±  33.7 ms    [User: 695.6 ms, System: 153.8 ms]
	  Range (min … max):   593.2 ms … 674.9 ms    5 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 145ms
	Processing time (w/o IO): 142ms
	Processing time (w/o IO): 142ms
	Processing time (w/o IO): 142ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 142ms
	Processing time (w/o IO): 141ms
	  Time (mean ± σ):     292.1 ms ±   1.9 ms    [User: 270.1 ms, System: 25.7 ms]
	  Range (min … max):   290.4 ms … 294.6 ms    5 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 66.85900688171387ms
	Processing time (w/o IO): 66.17796421051025ms
	Processing time (w/o IO): 66.85292720794678ms
	Processing time (w/o IO): 65.99795818328857ms
	Processing time (w/o IO): 66.52200222015381ms
	Processing time (w/o IO): 66.9180154800415ms
	Processing time (w/o IO): 66.54500961303711ms
	Processing time (w/o IO): 65.95790386199951ms
	Processing time (w/o IO): 66.22493267059326ms
	Processing time (w/o IO): 66.87092781066895ms
	  Time (mean ± σ):     456.4 ms ±   7.1 ms    [User: 411.5 ms, System: 38.9 ms]
	  Range (min … max):   449.8 ms … 475.0 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 40.96517ms
	Processing time (w/o IO): 40.896767ms
	Processing time (w/o IO): 40.788165ms
	Processing time (w/o IO): 41.119273ms
	Processing time (w/o IO): 40.847566ms
	Processing time (w/o IO): 40.605861ms
	Processing time (w/o IO): 42.109296ms
	Processing time (w/o IO): 42.234499ms
	Processing time (w/o IO): 41.86499ms
	Processing time (w/o IO): 40.884467ms
	  Time (mean ± σ):     445.0 ms ±  10.2 ms    [User: 431.0 ms, System: 42.4 ms]
	  Range (min … max):   437.9 ms … 472.8 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 224ms
	Processing time (w/o IO): 205ms
	Processing time (w/o IO): 210ms
	Processing time (w/o IO): 201ms
	Processing time (w/o IO): 201ms
	  Time (mean ± σ):     292.5 ms ±  12.3 ms    [User: 261.1 ms, System: 63.4 ms]
	  Range (min … max):   274.3 ms … 303.0 ms    5 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 691ms
	Processing time (w/o IO): 817ms
	Processing time (w/o IO): 715ms
	Processing time (w/o IO): 680ms
	Processing time (w/o IO): 816ms
	  Time (mean ± σ):     831.4 ms ±  67.5 ms    [User: 807.4 ms, System: 44.9 ms]
	  Range (min … max):   742.0 ms … 884.4 ms    5 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 198ms
	Processing time (w/o IO): 182ms
	Processing time (w/o IO): 181ms
	Processing time (w/o IO): 181ms
	Processing time (w/o IO): 182ms
	  Time (mean ± σ):     290.7 ms ±  78.3 ms    [User: 240.5 ms, System: 37.3 ms]
	  Range (min … max):   254.6 ms … 430.7 ms    5 runs
	 
Java (JIT):

	Benchmark 1: java -Xms10m -Xmx10m -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 267 ms
	Processing time (w/o IO): 359 ms
	Processing time (w/o IO): 278 ms
	Processing time (w/o IO): 280 ms
	Processing time (w/o IO): 267 ms
	Processing time (w/o IO): 284 ms
	Processing time (w/o IO): 258 ms
	Processing time (w/o IO): 279 ms
	Processing time (w/o IO): 277 ms
	Processing time (w/o IO): 260 ms
	Processing time (w/o IO): 259 ms
	Processing time (w/o IO): 251 ms
	Processing time (w/o IO): 302 ms
	  Time (mean ± σ):     567.3 ms ±  20.6 ms    [User: 951.3 ms, System: 59.2 ms]
	  Range (min … max):   540.6 ms … 600.3 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 35 ms
	Processing time (w/o IO): 35 ms
	  Time (mean ± σ):      65.5 ms ±   0.6 ms    [User: 52.2 ms, System: 13.3 ms]
	  Range (min … max):    65.0 ms …  66.9 ms    10 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	  Time (mean ± σ):     122.5 ms ±   0.6 ms    [User: 106.3 ms, System: 15.9 ms]
	  Range (min … max):   121.4 ms … 123.4 ms    10 runs
	 
Fsharp:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 49ms
	Processing time (w/o IO): 49ms
	  Time (mean ± σ):     900.4 ms ±   5.4 ms    [User: 845.9 ms, System: 70.4 ms]
	  Range (min … max):   891.4 ms … 904.8 ms    5 runs
	 
Fsharp Concurrent:

	Benchmark 1: ./bin/release/net7.0/fsharp_con
	Processing time (w/o IO): 42ms
	Processing time (w/o IO): 43ms
	Processing time (w/o IO): 42ms
	Processing time (w/o IO): 43ms
	Processing time (w/o IO): 42ms
	Processing time (w/o IO): 43ms
	Processing time (w/o IO): 43ms
	  Time (mean ± σ):     906.2 ms ±  15.0 ms    [User: 878.9 ms, System: 74.4 ms]
	  Range (min … max):   883.2 ms … 922.6 ms    5 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	121.71387672424	ms
	Processing time (w/o IO):	121.96898460388	ms
	Processing time (w/o IO):	126.92189216614	ms
	Processing time (w/o IO):	124.62306022644	ms
	Processing time (w/o IO):	123.37207794189	ms
	Processing time (w/o IO):	124.40299987793	ms
	Processing time (w/o IO):	124.44806098938	ms
	  Time (mean ± σ):     435.7 ms ±   4.3 ms    [User: 411.3 ms, System: 24.3 ms]
	  Range (min … max):   431.1 ms … 441.9 ms    5 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	2365.8969402313	ms
	Processing time (w/o IO):	2387.5169754028	ms
	Processing time (w/o IO):	2411.8890762329	ms
	Processing time (w/o IO):	2361.7370128632	ms
	Processing time (w/o IO):	2369.8949813843	ms
	Processing time (w/o IO):	2364.2549514771	ms
	Processing time (w/o IO):	2365.3938770294	ms
	  Time (mean ± σ):      3.095 s ±  0.029 s    [User: 3.057 s, System: 0.036 s]
	  Range (min … max):    3.062 s …  3.142 s    5 runs
	 
