Fsharp:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 210ms
	Processing time (w/o IO): 218ms
	Processing time (w/o IO): 209ms
	Processing time (w/o IO): 212ms
	Processing time (w/o IO): 211ms
	Processing time (w/o IO): 220ms
	Processing time (w/o IO): 219ms
	  Time (mean ± σ):      1.095 s ±  0.008 s    [User: 1.065 s, System: 0.096 s]
	  Range (min … max):    1.087 s …  1.107 s    5 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 36.456444ms
	Processing time (w/o IO): 37.185103ms
	Processing time (w/o IO): 36.414941ms
	Processing time (w/o IO): 37.1364ms
	Processing time (w/o IO): 36.640659ms
	Processing time (w/o IO): 36.981487ms
	Processing time (w/o IO): 36.818474ms
	Processing time (w/o IO): 36.976386ms
	Processing time (w/o IO): 37.100797ms
	Processing time (w/o IO): 36.491647ms
	Processing time (w/o IO): 36.487247ms
	Processing time (w/o IO): 36.685163ms
	Processing time (w/o IO): 37.383919ms
	  Time (mean ± σ):      73.2 ms ±   1.5 ms    [User: 67.2 ms, System: 15.2 ms]
	  Range (min … max):    70.8 ms …  75.6 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 19.197336ms
	Processing time (w/o IO): 19.24824ms
	Processing time (w/o IO): 20.941276ms
	Processing time (w/o IO): 19.536063ms
	Processing time (w/o IO): 19.407353ms
	Processing time (w/o IO): 18.971619ms
	Processing time (w/o IO): 19.471958ms
	Processing time (w/o IO): 19.637571ms
	Processing time (w/o IO): 19.076427ms
	Processing time (w/o IO): 19.436055ms
	Processing time (w/o IO): 19.087627ms
	Processing time (w/o IO): 19.232739ms
	Processing time (w/o IO): 18.899412ms
	  Time (mean ± σ):      58.7 ms ±   2.1 ms    [User: 66.7 ms, System: 15.4 ms]
	  Range (min … max):    55.6 ms …  62.4 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 39.887992ms
	Processing time (w/o IO): 39.648472ms
	Processing time (w/o IO): 40.24622ms
	Processing time (w/o IO): 39.836887ms
	Processing time (w/o IO): 39.769082ms
	Processing time (w/o IO): 39.829587ms
	Processing time (w/o IO): 39.710977ms
	Processing time (w/o IO): 39.780283ms
	Processing time (w/o IO): 39.813185ms
	Processing time (w/o IO): 39.564865ms
	Processing time (w/o IO): 39.965298ms
	Processing time (w/o IO): 39.879491ms
	Processing time (w/o IO): 39.792683ms
	  Time (mean ± σ):      60.5 ms ±   0.3 ms    [User: 51.9 ms, System: 8.5 ms]
	  Range (min … max):    60.2 ms …  61.0 ms    10 runs
	 
Rust Rayon:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 22.269956ms
	Processing time (w/o IO): 21.472893ms
	Processing time (w/o IO): 21.737614ms
	Processing time (w/o IO): 21.193871ms
	Processing time (w/o IO): 21.806019ms
	Processing time (w/o IO): 21.277377ms
	Processing time (w/o IO): 21.5697ms
	Processing time (w/o IO): 22.19995ms
	Processing time (w/o IO): 21.628605ms
	Processing time (w/o IO): 21.783717ms
	Processing time (w/o IO): 22.318759ms
	Processing time (w/o IO): 28.114116ms
	Processing time (w/o IO): 22.777296ms
	  Time (mean ± σ):      42.7 ms ±   2.7 ms    [User: 52.6 ms, System: 9.7 ms]
	  Range (min … max):    40.6 ms …  50.1 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 3.249s
	Processing time (w/o IO): 3.225s
	Processing time (w/o IO): 3.218s
	Processing time (w/o IO): 3.229s
	Processing time (w/o IO): 3.220s
	  Time (mean ± σ):      3.315 s ±  0.013 s    [User: 3.291 s, System: 0.022 s]
	  Range (min … max):    3.304 s …  3.337 s    5 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 1.053s
	Processing time (w/o IO): 1.036s
	Processing time (w/o IO): 1.008s
	Processing time (w/o IO): 1.004s
	Processing time (w/o IO): 1.007s
	  Time (mean ± σ):      1.228 s ±  0.022 s    [User: 1.174 s, System: 0.165 s]
	  Range (min … max):    1.208 s …  1.258 s    5 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 66.804576ms
	Processing time (w/o IO): 67.422025ms
	Processing time (w/o IO): 66.886283ms
	Processing time (w/o IO): 66.625263ms
	Processing time (w/o IO): 66.946588ms
	Processing time (w/o IO): 66.692768ms
	Processing time (w/o IO): 66.397044ms
	Processing time (w/o IO): 66.71887ms
	Processing time (w/o IO): 67.35502ms
	Processing time (w/o IO): 67.47513ms
	  Time (mean ± σ):     131.1 ms ±   1.3 ms    [User: 119.9 ms, System: 11.0 ms]
	  Range (min … max):   129.2 ms … 132.7 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 214ms
	Processing time (w/o IO): 212ms
	Processing time (w/o IO): 213ms
	Processing time (w/o IO): 213ms
	Processing time (w/o IO): 213ms
	Processing time (w/o IO): 213ms
	Processing time (w/o IO): 213ms
	Processing time (w/o IO): 213ms
	Processing time (w/o IO): 213ms
	Processing time (w/o IO): 213ms
	Processing time (w/o IO): 213ms
	Processing time (w/o IO): 213ms
	Processing time (w/o IO): 213ms
	  Time (mean ± σ):     262.0 ms ±   0.5 ms    [User: 253.9 ms, System: 8.0 ms]
	  Range (min … max):   261.3 ms … 262.7 ms    10 runs
	 
Julia v2:

	Benchmark 1: julia related_v2.jl
	Processing time (w/o IO): 664 milliseconds
	Processing time (w/o IO): 658 milliseconds
	Processing time (w/o IO): 659 milliseconds
	Processing time (w/o IO): 680 milliseconds
	Processing time (w/o IO): 658 milliseconds
	Processing time (w/o IO): 686 milliseconds
	  Time (mean ± σ):      5.821 s ±  0.020 s    [User: 5.577 s, System: 0.242 s]
	  Range (min … max):    5.799 s …  5.854 s    5 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  90.405979ms
	Processing time (w/o IO):  84.529107ms
	Processing time (w/o IO):  84.95184ms
	Processing time (w/o IO):  84.94494ms
	Processing time (w/o IO):  84.460701ms
	Processing time (w/o IO):  84.307288ms
	Processing time (w/o IO):  84.673018ms
	Processing time (w/o IO):  84.57871ms
	Processing time (w/o IO):  84.348292ms
	Processing time (w/o IO):  84.646616ms
	  Time (mean ± σ):     381.9 ms ±   3.6 ms    [User: 370.2 ms, System: 11.5 ms]
	  Range (min … max):   379.9 ms … 391.9 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 69.892ms
	Processing time (w/o IO): 69.983ms
	Processing time (w/o IO): 70.034ms
	Processing time (w/o IO): 70.885ms
	Processing time (w/o IO): 70.130ms
	  Time (mean ± σ):     454.2 ms ±   1.9 ms    [User: 411.9 ms, System: 41.7 ms]
	  Range (min … max):   451.4 ms … 456.7 ms    5 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 111ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 111ms
	Processing time (w/o IO): 110ms
	Processing time (w/o IO): 109ms
	Processing time (w/o IO): 158ms
	Processing time (w/o IO): 157ms
	Processing time (w/o IO): 110ms
	  Time (mean ± σ):     681.0 ms ±  26.7 ms    [User: 752.2 ms, System: 178.3 ms]
	  Range (min … max):   651.0 ms … 701.2 ms    5 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 168ms
	Processing time (w/o IO): 168ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 168ms
	Processing time (w/o IO): 168ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 175ms
	  Time (mean ± σ):     335.4 ms ±   3.6 ms    [User: 318.4 ms, System: 21.2 ms]
	  Range (min … max):   332.3 ms … 341.4 ms    5 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 77.67701148986816ms
	Processing time (w/o IO): 77.35908031463623ms
	Processing time (w/o IO): 77.67999172210693ms
	Processing time (w/o IO): 77.0120620727539ms
	Processing time (w/o IO): 77.75998115539551ms
	Processing time (w/o IO): 77.1099328994751ms
	Processing time (w/o IO): 77.58104801177979ms
	Processing time (w/o IO): 77.50105857849121ms
	Processing time (w/o IO): 77.39198207855225ms
	Processing time (w/o IO): 77.2099494934082ms
	  Time (mean ± σ):     562.9 ms ±  10.3 ms    [User: 509.6 ms, System: 47.0 ms]
	  Range (min … max):   554.1 ms … 581.3 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 272ms
	Processing time (w/o IO): 239ms
	Processing time (w/o IO): 238ms
	Processing time (w/o IO): 239ms
	Processing time (w/o IO): 243ms
	  Time (mean ± σ):     337.7 ms ±  17.5 ms    [User: 308.8 ms, System: 65.2 ms]
	  Range (min … max):   325.3 ms … 368.5 ms    5 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 796ms
	Processing time (w/o IO): 1027ms
	Processing time (w/o IO): 829ms
	Processing time (w/o IO): 938ms
	Processing time (w/o IO): 988ms
	  Time (mean ± σ):      1.004 s ±  0.076 s    [User: 0.990 s, System: 0.043 s]
	  Range (min … max):    0.889 s …  1.090 s    5 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 230ms
	Processing time (w/o IO): 216ms
	Processing time (w/o IO): 219ms
	Processing time (w/o IO): 217ms
	Processing time (w/o IO): 217ms
	  Time (mean ± σ):     330.5 ms ±  73.0 ms    [User: 289.9 ms, System: 33.5 ms]
	  Range (min … max):   297.1 ms … 461.1 ms    5 runs
	 
Java (JIT):

	Benchmark 1: java -jar ./target/main.jar
	Processing time (w/o IO): 244 ms
	Processing time (w/o IO): 324 ms
	Processing time (w/o IO): 254 ms
	Processing time (w/o IO): 297 ms
	Processing time (w/o IO): 303 ms
	Processing time (w/o IO): 295 ms
	Processing time (w/o IO): 291 ms
	Processing time (w/o IO): 239 ms
	Processing time (w/o IO): 322 ms
	Processing time (w/o IO): 248 ms
	Processing time (w/o IO): 287 ms
	Processing time (w/o IO): 396 ms
	Processing time (w/o IO): 298 ms
	  Time (mean ± σ):     610.2 ms ±  38.8 ms    [User: 1009.8 ms, System: 87.7 ms]
	  Range (min … max):   559.7 ms … 707.0 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	  Time (mean ± σ):      96.4 ms ±   1.1 ms    [User: 81.9 ms, System: 13.9 ms]
	  Range (min … max):    95.1 ms …  99.1 ms    10 runs
	 
