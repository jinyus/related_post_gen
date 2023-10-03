Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 31.012392ms
	Processing time (w/o IO): 30.699288ms
	Processing time (w/o IO): 30.534586ms
	Processing time (w/o IO): 30.629387ms
	Processing time (w/o IO): 30.626087ms
	Processing time (w/o IO): 31.204395ms
	Processing time (w/o IO): 30.326684ms
	Processing time (w/o IO): 30.869891ms
	Processing time (w/o IO): 31.032892ms
	Processing time (w/o IO): 30.774689ms
	Processing time (w/o IO): 30.307883ms
	Processing time (w/o IO): 31.144894ms
	Processing time (w/o IO): 30.643388ms
	  Time (mean ± σ):      60.8 ms ±   1.5 ms    [User: 56.2 ms, System: 11.7 ms]
	  Range (min … max):    58.8 ms …  64.1 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 16.055101ms
	Processing time (w/o IO): 16.308104ms
	Processing time (w/o IO): 15.9796ms
	Processing time (w/o IO): 15.957ms
	Processing time (w/o IO): 16.239903ms
	Processing time (w/o IO): 16.635709ms
	Processing time (w/o IO): 16.549707ms
	Processing time (w/o IO): 16.081059ms
	Processing time (w/o IO): 15.946858ms
	Processing time (w/o IO): 16.520464ms
	Processing time (w/o IO): 16.242261ms
	Processing time (w/o IO): 15.959058ms
	Processing time (w/o IO): 15.913857ms
	  Time (mean ± σ):      49.7 ms ±   2.0 ms    [User: 52.3 ms, System: 17.0 ms]
	  Range (min … max):    46.0 ms …  51.7 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 33.061241ms
	Processing time (w/o IO): 33.453343ms
	Processing time (w/o IO): 33.140142ms
	Processing time (w/o IO): 33.113742ms
	Processing time (w/o IO): 33.088542ms
	Processing time (w/o IO): 33.130142ms
	Processing time (w/o IO): 33.131641ms
	Processing time (w/o IO): 33.075741ms
	Processing time (w/o IO): 33.101042ms
	Processing time (w/o IO): 33.060341ms
	Processing time (w/o IO): 33.153942ms
	Processing time (w/o IO): 33.103841ms
	Processing time (w/o IO): 33.308842ms
	  Time (mean ± σ):      51.1 ms ±   0.5 ms    [User: 44.4 ms, System: 6.7 ms]
	  Range (min … max):    50.6 ms …  52.2 ms    10 runs
	 
Rust Rayon:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 18.308988ms
	Processing time (w/o IO): 18.425389ms
	Processing time (w/o IO): 18.058485ms
	Processing time (w/o IO): 18.215387ms
	Processing time (w/o IO): 18.145686ms
	Processing time (w/o IO): 18.301087ms
	Processing time (w/o IO): 18.270187ms
	Processing time (w/o IO): 18.54439ms
	Processing time (w/o IO): 18.424089ms
	Processing time (w/o IO): 18.160386ms
	Processing time (w/o IO): 18.49519ms
	Processing time (w/o IO): 18.335289ms
	Processing time (w/o IO): 18.779192ms
	  Time (mean ± σ):      36.0 ms ±   0.7 ms    [User: 44.0 ms, System: 8.9 ms]
	  Range (min … max):    35.2 ms …  37.3 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 2.720s
	Processing time (w/o IO): 2.708s
	Processing time (w/o IO): 2.719s
	Processing time (w/o IO): 2.714s
	Processing time (w/o IO): 2.715s
	  Time (mean ± σ):      3.005 s ±  0.005 s    [User: 2.988 s, System: 0.017 s]
	  Range (min … max):    2.997 s …  3.009 s    5 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO):  1.017s
	Processing time (w/o IO):  0.951s
	Processing time (w/o IO):  0.943s
	Processing time (w/o IO):  0.919s
	Processing time (w/o IO):  0.919s
	  Time (mean ± σ):      1.335 s ±  0.042 s    [User: 1.259 s, System: 0.168 s]
	  Range (min … max):    1.301 s …  1.405 s    5 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 56.293471ms
	Processing time (w/o IO): 55.363961ms
	Processing time (w/o IO): 55.621464ms
	Processing time (w/o IO): 56.046968ms
	Processing time (w/o IO): 55.340762ms
	Processing time (w/o IO): 56.579274ms
	Processing time (w/o IO): 55.328561ms
	Processing time (w/o IO): 55.598664ms
	Processing time (w/o IO): 56.125369ms
	Processing time (w/o IO): 55.366462ms
	  Time (mean ± σ):     108.6 ms ±   0.7 ms    [User: 98.3 ms, System: 10.2 ms]
	  Range (min … max):   107.9 ms … 109.7 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 180ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 180ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 179ms
	  Time (mean ± σ):     220.2 ms ±   0.4 ms    [User: 214.5 ms, System: 5.6 ms]
	  Range (min … max):   219.5 ms … 221.0 ms    10 runs
	 
Julia v2:

	Benchmark 1: julia related_v2.jl
	Processing time (w/o IO): 610 milliseconds
	Processing time (w/o IO): 597 milliseconds
	Processing time (w/o IO): 694 milliseconds
	Processing time (w/o IO): 603 milliseconds
	Processing time (w/o IO): 597 milliseconds
	Processing time (w/o IO): 598 milliseconds
	  Time (mean ± σ):      5.037 s ±  0.074 s    [User: 4.805 s, System: 0.230 s]
	  Range (min … max):    4.977 s …  5.167 s    5 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  63.334387ms
	Processing time (w/o IO):  63.836493ms
	Processing time (w/o IO):  62.912682ms
	Processing time (w/o IO):  63.749792ms
	Processing time (w/o IO):  63.493161ms
	Processing time (w/o IO):  63.33796ms
	Processing time (w/o IO):  63.43546ms
	Processing time (w/o IO):  63.41446ms
	Processing time (w/o IO):  63.586262ms
	Processing time (w/o IO):  63.148857ms
	  Time (mean ± σ):     311.5 ms ±   2.7 ms    [User: 301.1 ms, System: 9.4 ms]
	  Range (min … max):   309.5 ms … 318.6 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 58.737ms
	Processing time (w/o IO): 58.259ms
	Processing time (w/o IO): 58.380ms
	Processing time (w/o IO): 58.308ms
	Processing time (w/o IO): 58.429ms
	  Time (mean ± σ):     377.5 ms ±   3.2 ms    [User: 344.5 ms, System: 32.3 ms]
	  Range (min … max):   373.7 ms … 382.6 ms    5 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 171ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 204ms
	Processing time (w/o IO): 202ms
	Processing time (w/o IO): 203ms
	Processing time (w/o IO): 202ms
	Processing time (w/o IO): 168ms
	Processing time (w/o IO): 161ms
	  Time (mean ± σ):     660.9 ms ±  21.2 ms    [User: 740.2 ms, System: 148.0 ms]
	  Range (min … max):   631.6 ms … 679.9 ms    5 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 225ms
	Processing time (w/o IO): 229ms
	Processing time (w/o IO): 226ms
	Processing time (w/o IO): 227ms
	Processing time (w/o IO): 226ms
	Processing time (w/o IO): 226ms
	Processing time (w/o IO): 226ms
	Processing time (w/o IO): 229ms
	  Time (mean ± σ):     369.2 ms ±   1.2 ms    [User: 348.8 ms, System: 23.0 ms]
	  Range (min … max):   368.2 ms … 371.1 ms    5 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 64.38696384429932ms
	Processing time (w/o IO): 64.1399621963501ms
	Processing time (w/o IO): 64.23795223236084ms
	Processing time (w/o IO): 64.2930269241333ms
	Processing time (w/o IO): 64.1869306564331ms
	Processing time (w/o IO): 64.65005874633789ms
	Processing time (w/o IO): 64.26405906677246ms
	Processing time (w/o IO): 64.10503387451172ms
	Processing time (w/o IO): 64.61989879608154ms
	Processing time (w/o IO): 64.81099128723145ms
	  Time (mean ± σ):     481.2 ms ±   5.5 ms    [User: 437.7 ms, System: 37.5 ms]
	  Range (min … max):   475.2 ms … 494.6 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 209ms
	Processing time (w/o IO): 202ms
	Processing time (w/o IO): 205ms
	Processing time (w/o IO): 208ms
	Processing time (w/o IO): 201ms
	  Time (mean ± σ):     279.7 ms ±   7.6 ms    [User: 252.6 ms, System: 59.9 ms]
	  Range (min … max):   273.0 ms … 292.7 ms    5 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 676ms
	Processing time (w/o IO): 674ms
	Processing time (w/o IO): 814ms
	Processing time (w/o IO): 833ms
	Processing time (w/o IO): 872ms
	  Time (mean ± σ):     853.3 ms ±  75.2 ms    [User: 833.4 ms, System: 43.3 ms]
	  Range (min … max):   726.5 ms … 925.9 ms    5 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 180ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 182ms
	Processing time (w/o IO): 179ms
	  Time (mean ± σ):     284.8 ms ±  77.1 ms    [User: 244.4 ms, System: 28.3 ms]
	  Range (min … max):   248.5 ms … 422.7 ms    5 runs
	 
Java (JIT):

	Benchmark 1: java -jar ./target/main.jar
	Processing time (w/o IO): 247 ms
	Processing time (w/o IO): 258 ms
	Processing time (w/o IO): 213 ms
	Processing time (w/o IO): 208 ms
	Processing time (w/o IO): 253 ms
	Processing time (w/o IO): 246 ms
	Processing time (w/o IO): 246 ms
	Processing time (w/o IO): 248 ms
	Processing time (w/o IO): 245 ms
	Processing time (w/o IO): 222 ms
	Processing time (w/o IO): 262 ms
	Processing time (w/o IO): 253 ms
	Processing time (w/o IO): 259 ms
	  Time (mean ± σ):     518.5 ms ±  17.7 ms    [User: 863.5 ms, System: 65.8 ms]
	  Range (min … max):   488.5 ms … 539.4 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 47 ms
	  Time (mean ± σ):      81.8 ms ±   0.4 ms    [User: 68.9 ms, System: 12.8 ms]
	  Range (min … max):    81.2 ms …  82.7 ms    10 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 201ms
	Processing time (w/o IO): 200ms
	Processing time (w/o IO): 201ms
	Processing time (w/o IO): 200ms
	Processing time (w/o IO): 201ms
	Processing time (w/o IO): 201ms
	Processing time (w/o IO): 202ms
	Processing time (w/o IO): 200ms
	Processing time (w/o IO): 201ms
	Processing time (w/o IO): 202ms
	Processing time (w/o IO): 200ms
	Processing time (w/o IO): 201ms
	  Time (mean ± σ):     303.2 ms ±   0.9 ms    [User: 270.6 ms, System: 32.2 ms]
	  Range (min … max):   301.9 ms … 305.0 ms    10 runs
	 
