Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 37.185195ms
	Processing time (w/o IO): 36.410139ms
	Processing time (w/o IO): 37.336706ms
	Processing time (w/o IO): 35.762092ms
	Processing time (w/o IO): 39.134537ms
	Processing time (w/o IO): 40.402229ms
	Processing time (w/o IO): 40.797357ms
	Processing time (w/o IO): 38.28466ms
	Processing time (w/o IO): 36.327634ms
	Processing time (w/o IO): 38.508975ms
	Processing time (w/o IO): 37.03838ms
	Processing time (w/o IO): 39.497338ms
	Processing time (w/o IO): 39.133415ms
	  Time (mean ± σ):      77.7 ms ±   3.2 ms    [User: 70.5 ms, System: 16.2 ms]
	  Range (min … max):    71.1 ms …  82.1 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 18.900869ms
	Processing time (w/o IO): 19.569217ms
	Processing time (w/o IO): 19.554616ms
	Processing time (w/o IO): 19.624921ms
	Processing time (w/o IO): 19.274296ms
	Processing time (w/o IO): 20.004648ms
	Processing time (w/o IO): 18.947372ms
	Processing time (w/o IO): 19.708027ms
	Processing time (w/o IO): 20.398577ms
	Processing time (w/o IO): 34.455494ms
	Processing time (w/o IO): 19.18459ms
	Processing time (w/o IO): 19.973847ms
	Processing time (w/o IO): 18.711955ms
	  Time (mean ± σ):      62.0 ms ±   7.5 ms    [User: 68.5 ms, System: 14.0 ms]
	  Range (min … max):    56.5 ms …  80.6 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 41.049378ms
	Processing time (w/o IO): 41.393202ms
	Processing time (w/o IO): 40.67435ms
	Processing time (w/o IO): 40.897967ms
	Processing time (w/o IO): 40.487037ms
	Processing time (w/o IO): 39.565271ms
	Processing time (w/o IO): 39.042495ms
	Processing time (w/o IO): 39.867451ms
	Processing time (w/o IO): 40.089568ms
	Processing time (w/o IO): 40.535299ms
	Processing time (w/o IO): 39.678338ms
	Processing time (w/o IO): 39.802447ms
	Processing time (w/o IO): 40.083167ms
	  Time (mean ± σ):      62.3 ms ±   0.6 ms    [User: 53.5 ms, System: 8.7 ms]
	  Range (min … max):    61.1 ms …  62.9 ms    10 runs
	 
Rust Rayon:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 20.86168ms
	Processing time (w/o IO): 22.902125ms
	Processing time (w/o IO): 20.917384ms
	Processing time (w/o IO): 22.70791ms
	Processing time (w/o IO): 21.99656ms
	Processing time (w/o IO): 20.258637ms
	Processing time (w/o IO): 22.065465ms
	Processing time (w/o IO): 21.822648ms
	Processing time (w/o IO): 21.968859ms
	Processing time (w/o IO): 21.955658ms
	Processing time (w/o IO): 20.934585ms
	Processing time (w/o IO): 21.678038ms
	Processing time (w/o IO): 22.665308ms
	  Time (mean ± σ):      42.7 ms ±   2.4 ms    [User: 50.7 ms, System: 11.3 ms]
	  Range (min … max):    38.9 ms …  47.7 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 3.321s
	Processing time (w/o IO): 3.424s
	Processing time (w/o IO): 3.425s
	Processing time (w/o IO): 3.398s
	Processing time (w/o IO): 3.372s
	  Time (mean ± σ):      3.749 s ±  0.044 s    [User: 3.720 s, System: 0.027 s]
	  Range (min … max):    3.681 s …  3.790 s    5 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO):  1.215s
	Processing time (w/o IO):  1.226s
	Processing time (w/o IO):  1.166s
	Processing time (w/o IO):  1.160s
	Processing time (w/o IO):  1.137s
	  Time (mean ± σ):      1.662 s ±  0.047 s    [User: 1.574 s, System: 0.213 s]
	  Range (min … max):    1.602 s …  1.724 s    5 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 63.622988ms
	Processing time (w/o IO): 68.840064ms
	Processing time (w/o IO): 64.637962ms
	Processing time (w/o IO): 67.297253ms
	Processing time (w/o IO): 65.280308ms
	Processing time (w/o IO): 62.218687ms
	Processing time (w/o IO): 61.647945ms
	Processing time (w/o IO): 71.356546ms
	Processing time (w/o IO): 65.974858ms
	Processing time (w/o IO): 65.387515ms
	  Time (mean ± σ):     128.4 ms ±   4.0 ms    [User: 116.9 ms, System: 10.8 ms]
	  Range (min … max):   122.4 ms … 137.3 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 226ms
	Processing time (w/o IO): 219ms
	Processing time (w/o IO): 229ms
	Processing time (w/o IO): 225ms
	Processing time (w/o IO): 214ms
	Processing time (w/o IO): 214ms
	Processing time (w/o IO): 212ms
	Processing time (w/o IO): 220ms
	Processing time (w/o IO): 227ms
	Processing time (w/o IO): 225ms
	Processing time (w/o IO): 239ms
	Processing time (w/o IO): 240ms
	Processing time (w/o IO): 232ms
	  Time (mean ± σ):     277.4 ms ±  12.5 ms    [User: 270.8 ms, System: 6.6 ms]
	  Range (min … max):   261.0 ms … 297.4 ms    10 runs
	 
Julia v2:

	Benchmark 1: julia related_v2.jl
	Processing time (w/o IO): 764 milliseconds
	Processing time (w/o IO): 800 milliseconds
	Processing time (w/o IO): 798 milliseconds
	Processing time (w/o IO): 813 milliseconds
	Processing time (w/o IO): 793 milliseconds
	Processing time (w/o IO): 806 milliseconds
	  Time (mean ± σ):      6.071 s ±  0.115 s    [User: 5.802 s, System: 0.263 s]
	  Range (min … max):    5.929 s …  6.229 s    5 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  73.343599ms
	Processing time (w/o IO):  72.356324ms
	Processing time (w/o IO):  72.703851ms
	Processing time (w/o IO):  72.627151ms
	Processing time (w/o IO):  73.095685ms
	Processing time (w/o IO):  74.036254ms
	Processing time (w/o IO):  72.778362ms
	Processing time (w/o IO):  76.56054ms
	Processing time (w/o IO):  77.830634ms
	Processing time (w/o IO):  75.781283ms
	  Time (mean ± σ):     366.6 ms ±   8.4 ms    [User: 352.5 ms, System: 13.8 ms]
	  Range (min … max):   358.1 ms … 381.7 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 69.749ms
	Processing time (w/o IO): 68.673ms
	Processing time (w/o IO): 69.850ms
	Processing time (w/o IO): 68.883ms
	Processing time (w/o IO): 69.318ms
	  Time (mean ± σ):     443.1 ms ±   2.7 ms    [User: 401.4 ms, System: 41.2 ms]
	  Range (min … max):   440.1 ms … 447.3 ms    5 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 291ms
	Processing time (w/o IO): 268ms
	Processing time (w/o IO): 275ms
	Processing time (w/o IO): 265ms
	Processing time (w/o IO): 292ms
	Processing time (w/o IO): 260ms
	Processing time (w/o IO): 237ms
	Processing time (w/o IO): 270ms
	  Time (mean ± σ):     847.0 ms ±  21.0 ms    [User: 958.3 ms, System: 162.4 ms]
	  Range (min … max):   822.9 ms … 877.8 ms    5 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 461ms
	Processing time (w/o IO): 458ms
	Processing time (w/o IO): 473ms
	Processing time (w/o IO): 470ms
	Processing time (w/o IO): 474ms
	Processing time (w/o IO): 471ms
	Processing time (w/o IO): 494ms
	Processing time (w/o IO): 461ms
	  Time (mean ± σ):     651.4 ms ±  16.9 ms    [User: 612.9 ms, System: 40.4 ms]
	  Range (min … max):   631.6 ms … 676.0 ms    5 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 69.41807270050049ms
	Processing time (w/o IO): 69.20206546783447ms
	Processing time (w/o IO): 70.41299343109131ms
	Processing time (w/o IO): 69.90504264831543ms
	Processing time (w/o IO): 66.54095649719238ms
	Processing time (w/o IO): 68.89808177947998ms
	Processing time (w/o IO): 70.3129768371582ms
	Processing time (w/o IO): 71.18690013885498ms
	Processing time (w/o IO): 70.10793685913086ms
	Processing time (w/o IO): 71.22492790222168ms
	  Time (mean ± σ):     568.9 ms ±  13.6 ms    [User: 516.8 ms, System: 44.6 ms]
	  Range (min … max):   538.4 ms … 580.5 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 350ms
	Processing time (w/o IO): 336ms
	Processing time (w/o IO): 334ms
	Processing time (w/o IO): 335ms
	Processing time (w/o IO): 349ms
	  Time (mean ± σ):     479.3 ms ± 101.2 ms    [User: 410.3 ms, System: 75.5 ms]
	  Range (min … max):   431.6 ms … 660.4 ms    5 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 900ms
	Processing time (w/o IO): 1052ms
	Processing time (w/o IO): 857ms
	Processing time (w/o IO): 1076ms
	Processing time (w/o IO): 1044ms
	  Time (mean ± σ):      1.083 s ±  0.094 s    [User: 1.101 s, System: 0.043 s]
	  Range (min … max):    0.918 s …  1.146 s    5 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 398ms
	Processing time (w/o IO): 376ms
	Processing time (w/o IO): 371ms
	Processing time (w/o IO): 397ms
	Processing time (w/o IO): 401ms
	  Time (mean ± σ):     516.7 ms ±  94.9 ms    [User: 460.9 ms, System: 40.8 ms]
	  Range (min … max):   460.1 ms … 684.9 ms    5 runs
	 
Java (JIT):

	Benchmark 1: java -jar ./target/main.jar
	Processing time (w/o IO): 301 ms
	Processing time (w/o IO): 315 ms
	Processing time (w/o IO): 320 ms
	Processing time (w/o IO): 338 ms
	Processing time (w/o IO): 278 ms
	Processing time (w/o IO): 292 ms
	Processing time (w/o IO): 315 ms
	Processing time (w/o IO): 309 ms
	Processing time (w/o IO): 298 ms
	Processing time (w/o IO): 305 ms
	Processing time (w/o IO): 256 ms
	Processing time (w/o IO): 311 ms
	Processing time (w/o IO): 328 ms
	  Time (mean ± σ):     624.6 ms ±  28.9 ms    [User: 1059.3 ms, System: 79.5 ms]
	  Range (min … max):   577.2 ms … 654.9 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 67 ms
	Processing time (w/o IO): 67 ms
	Processing time (w/o IO): 67 ms
	Processing time (w/o IO): 67 ms
	Processing time (w/o IO): 65 ms
	Processing time (w/o IO): 64 ms
	Processing time (w/o IO): 65 ms
	Processing time (w/o IO): 66 ms
	Processing time (w/o IO): 65 ms
	Processing time (w/o IO): 67 ms
	Processing time (w/o IO): 66 ms
	Processing time (w/o IO): 67 ms
	Processing time (w/o IO): 67 ms
	  Time (mean ± σ):     105.8 ms ±   1.0 ms    [User: 90.2 ms, System: 15.6 ms]
	  Range (min … max):   103.9 ms … 106.9 ms    10 runs
	 
