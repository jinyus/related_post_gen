Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 30.946268ms
	Processing time (w/o IO): 30.638064ms
	Processing time (w/o IO): 30.770665ms
	Processing time (w/o IO): 30.754265ms
	Processing time (w/o IO): 31.261372ms
	Processing time (w/o IO): 30.509362ms
	Processing time (w/o IO): 30.546662ms
	Processing time (w/o IO): 30.701964ms
	Processing time (w/o IO): 31.569777ms
	Processing time (w/o IO): 31.10597ms
	Processing time (w/o IO): 30.379059ms
	Processing time (w/o IO): 30.962568ms
	Processing time (w/o IO): 30.843867ms
	  Time (mean ± σ):      62.6 ms ±   0.8 ms    [User: 55.8 ms, System: 14.0 ms]
	  Range (min … max):    61.3 ms …  63.5 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 17.750266ms
	Processing time (w/o IO): 16.182043ms
	Processing time (w/o IO): 15.853438ms
	Processing time (w/o IO): 15.892639ms
	Processing time (w/o IO): 15.97064ms
	Processing time (w/o IO): 15.793537ms
	Processing time (w/o IO): 16.526348ms
	Processing time (w/o IO): 15.99554ms
	Processing time (w/o IO): 15.883838ms
	Processing time (w/o IO): 15.915039ms
	Processing time (w/o IO): 15.851238ms
	Processing time (w/o IO): 16.072041ms
	Processing time (w/o IO): 16.265944ms
	  Time (mean ± σ):      49.0 ms ±   2.8 ms    [User: 52.5 ms, System: 15.5 ms]
	  Range (min … max):    46.8 ms …  56.5 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 34.848686ms
	Processing time (w/o IO): 33.587368ms
	Processing time (w/o IO): 33.636569ms
	Processing time (w/o IO): 33.634369ms
	Processing time (w/o IO): 33.69707ms
	Processing time (w/o IO): 33.590368ms
	Processing time (w/o IO): 33.594868ms
	Processing time (w/o IO): 33.69767ms
	Processing time (w/o IO): 33.552868ms
	Processing time (w/o IO): 33.67027ms
	Processing time (w/o IO): 33.828472ms
	Processing time (w/o IO): 33.69127ms
	Processing time (w/o IO): 33.888473ms
	  Time (mean ± σ):      51.2 ms ±   0.4 ms    [User: 43.7 ms, System: 7.6 ms]
	  Range (min … max):    50.5 ms …  51.9 ms    10 runs
	 
Rust Rayon:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 19.22648ms
	Processing time (w/o IO): 18.160065ms
	Processing time (w/o IO): 17.744059ms
	Processing time (w/o IO): 17.971162ms
	Processing time (w/o IO): 18.134164ms
	Processing time (w/o IO): 17.998963ms
	Processing time (w/o IO): 17.85356ms
	Processing time (w/o IO): 17.969562ms
	Processing time (w/o IO): 18.006662ms
	Processing time (w/o IO): 17.957961ms
	Processing time (w/o IO): 18.081564ms
	Processing time (w/o IO): 17.994662ms
	Processing time (w/o IO): 18.318967ms
	  Time (mean ± σ):      34.6 ms ±   0.3 ms    [User: 45.7 ms, System: 5.6 ms]
	  Range (min … max):    34.2 ms …  35.1 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 2.714s
	Processing time (w/o IO): 2.713s
	Processing time (w/o IO): 2.716s
	Processing time (w/o IO): 2.721s
	Processing time (w/o IO): 2.745s
	  Time (mean ± σ):      3.013 s ±  0.015 s    [User: 2.989 s, System: 0.023 s]
	  Range (min … max):    3.004 s …  3.039 s    5 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO):  1.008s
	Processing time (w/o IO):  0.965s
	Processing time (w/o IO):  0.941s
	Processing time (w/o IO):  0.951s
	Processing time (w/o IO):  0.935s
	  Time (mean ± σ):      1.346 s ±  0.030 s    [User: 1.278 s, System: 0.166 s]
	  Range (min … max):    1.320 s …  1.393 s    5 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 56.294425ms
	Processing time (w/o IO): 55.752117ms
	Processing time (w/o IO): 55.523215ms
	Processing time (w/o IO): 56.271425ms
	Processing time (w/o IO): 55.618916ms
	Processing time (w/o IO): 55.291011ms
	Processing time (w/o IO): 55.782918ms
	Processing time (w/o IO): 55.845919ms
	Processing time (w/o IO): 56.501928ms
	Processing time (w/o IO): 55.475513ms
	  Time (mean ± σ):     109.5 ms ±   1.0 ms    [User: 97.2 ms, System: 12.3 ms]
	  Range (min … max):   107.7 ms … 111.1 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 180ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 177ms
	  Time (mean ± σ):     218.8 ms ±   1.0 ms    [User: 208.9 ms, System: 9.5 ms]
	  Range (min … max):   218.0 ms … 221.4 ms    10 runs
	 
Julia v2:

	Benchmark 1: julia related_v2.jl
	Processing time (w/o IO): 651 milliseconds
	Processing time (w/o IO): 629 milliseconds
	Processing time (w/o IO): 621 milliseconds
	Processing time (w/o IO): 704 milliseconds
	Processing time (w/o IO): 704 milliseconds
	Processing time (w/o IO): 695 milliseconds
	  Time (mean ± σ):      5.032 s ±  0.048 s    [User: 4.811 s, System: 0.214 s]
	  Range (min … max):    4.977 s …  5.081 s    5 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  327.388876ms
	Processing time (w/o IO):  326.496463ms
	Processing time (w/o IO):  327.754981ms
	Processing time (w/o IO):  326.124658ms
	Processing time (w/o IO):  326.579642ms
	Processing time (w/o IO):  326.318657ms
	Processing time (w/o IO):  329.212499ms
	Processing time (w/o IO):  330.306914ms
	Processing time (w/o IO):  328.66019ms
	Processing time (w/o IO):  328.468588ms
	  Time (mean ± σ):     860.3 ms ±   2.5 ms    [User: 849.4 ms, System: 10.6 ms]
	  Range (min … max):   857.3 ms … 863.9 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 58.625ms
	Processing time (w/o IO): 58.516ms
	Processing time (w/o IO): 58.387ms
	Processing time (w/o IO): 58.312ms
	Processing time (w/o IO): 58.284ms
	  Time (mean ± σ):     383.4 ms ±   3.7 ms    [User: 355.7 ms, System: 27.1 ms]
	  Range (min … max):   380.5 ms … 389.5 ms    5 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 223ms
	Processing time (w/o IO): 222ms
	Processing time (w/o IO): 204ms
	Processing time (w/o IO): 239ms
	Processing time (w/o IO): 243ms
	Processing time (w/o IO): 203ms
	Processing time (w/o IO): 201ms
	Processing time (w/o IO): 224ms
	  Time (mean ± σ):     716.0 ms ±  20.1 ms    [User: 778.0 ms, System: 150.9 ms]
	  Range (min … max):   695.2 ms … 738.7 ms    5 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 57.51395225524902ms
	Processing time (w/o IO): 57.80196189880371ms
	Processing time (w/o IO): 57.28602409362793ms
	Processing time (w/o IO): 57.116031646728516ms
	Processing time (w/o IO): 56.970953941345215ms
	Processing time (w/o IO): 57.29997158050537ms
	Processing time (w/o IO): 57.048916816711426ms
	Processing time (w/o IO): 56.85901641845703ms
	Processing time (w/o IO): 57.22200870513916ms
	Processing time (w/o IO): 56.95295333862305ms
	  Time (mean ± σ):     468.5 ms ±   1.2 ms    [User: 420.9 ms, System: 41.9 ms]
	  Range (min … max):   466.5 ms … 470.7 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 298ms
	Processing time (w/o IO): 281ms
	Processing time (w/o IO): 283ms
	Processing time (w/o IO): 287ms
	Processing time (w/o IO): 286ms
	  Time (mean ± σ):     366.2 ms ±   5.3 ms    [User: 339.8 ms, System: 61.3 ms]
	  Range (min … max):   358.3 ms … 373.1 ms    5 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 745ms
	Processing time (w/o IO): 906ms
	Processing time (w/o IO): 900ms
	Processing time (w/o IO): 713ms
	Processing time (w/o IO): 496ms
	  Time (mean ± σ):     828.0 ms ± 174.6 ms    [User: 830.4 ms, System: 46.2 ms]
	  Range (min … max):   549.4 ms … 964.7 ms    5 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 332ms
	Processing time (w/o IO): 322ms
	Processing time (w/o IO): 321ms
	Processing time (w/o IO): 323ms
	Processing time (w/o IO): 323ms
	  Time (mean ± σ):     408.0 ms ±  37.1 ms    [User: 382.6 ms, System: 31.5 ms]
	  Range (min … max):   389.7 ms … 474.3 ms    5 runs
	 
Java (JIT):

	Benchmark 1: java -jar ./target/main.jar
	Processing time (w/o IO): 232 ms
	Processing time (w/o IO): 209 ms
	Processing time (w/o IO): 211 ms
	Processing time (w/o IO): 209 ms
	Processing time (w/o IO): 276 ms
	Processing time (w/o IO): 201 ms
	Processing time (w/o IO): 252 ms
	Processing time (w/o IO): 208 ms
	Processing time (w/o IO): 276 ms
	Processing time (w/o IO): 241 ms
	Processing time (w/o IO): 218 ms
	Processing time (w/o IO): 265 ms
	Processing time (w/o IO): 261 ms
	  Time (mean ± σ):     511.6 ms ±  48.6 ms    [User: 825.6 ms, System: 66.3 ms]
	  Range (min … max):   438.0 ms … 585.6 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 45 ms
	Processing time (w/o IO): 45 ms
	Processing time (w/o IO): 46 ms
	Processing time (w/o IO): 46 ms
	Processing time (w/o IO): 46 ms
	Processing time (w/o IO): 46 ms
	Processing time (w/o IO): 45 ms
	Processing time (w/o IO): 45 ms
	Processing time (w/o IO): 46 ms
	Processing time (w/o IO): 46 ms
	Processing time (w/o IO): 45 ms
	Processing time (w/o IO): 45 ms
	Processing time (w/o IO): 45 ms
	  Time (mean ± σ):      79.4 ms ±   0.3 ms    [User: 68.3 ms, System: 11.1 ms]
	  Range (min … max):    78.9 ms …  80.0 ms    10 runs
	 
