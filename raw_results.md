Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 31.067753ms
	Processing time (w/o IO): 31.290058ms
	Processing time (w/o IO): 30.531843ms
	Processing time (w/o IO): 30.494743ms
	Processing time (w/o IO): 30.401442ms
	Processing time (w/o IO): 30.086836ms
	Processing time (w/o IO): 30.858249ms
	Processing time (w/o IO): 30.745848ms
	Processing time (w/o IO): 30.535644ms
	Processing time (w/o IO): 30.483443ms
	Processing time (w/o IO): 30.31734ms
	Processing time (w/o IO): 30.243939ms
	Processing time (w/o IO): 30.368741ms
	  Time (mean ± σ):      61.4 ms ±   1.9 ms    [User: 56.7 ms, System: 11.5 ms]
	  Range (min … max):    59.2 ms …  66.2 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 16.673989ms
	Processing time (w/o IO): 16.11938ms
	Processing time (w/o IO): 16.434785ms
	Processing time (w/o IO): 16.170981ms
	Processing time (w/o IO): 16.537887ms
	Processing time (w/o IO): 16.583588ms
	Processing time (w/o IO): 15.827375ms
	Processing time (w/o IO): 16.347384ms
	Processing time (w/o IO): 16.648389ms
	Processing time (w/o IO): 15.858575ms
	Processing time (w/o IO): 16.291283ms
	Processing time (w/o IO): 17.975712ms
	Processing time (w/o IO): 16.12118ms
	  Time (mean ± σ):      50.2 ms ±   1.4 ms    [User: 54.4 ms, System: 15.1 ms]
	  Range (min … max):    48.1 ms …  53.1 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 33.265264ms
	Processing time (w/o IO): 33.153462ms
	Processing time (w/o IO): 33.250465ms
	Processing time (w/o IO): 33.223564ms
	Processing time (w/o IO): 33.228263ms
	Processing time (w/o IO): 33.075161ms
	Processing time (w/o IO): 33.145163ms
	Processing time (w/o IO): 33.178662ms
	Processing time (w/o IO): 33.150763ms
	Processing time (w/o IO): 33.202364ms
	Processing time (w/o IO): 33.246264ms
	Processing time (w/o IO): 33.135962ms
	Processing time (w/o IO): 33.210464ms
	  Time (mean ± σ):      52.2 ms ±   0.3 ms    [User: 43.6 ms, System: 8.6 ms]
	  Range (min … max):    51.8 ms …  52.6 ms    10 runs
	 
Rust Rayon:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 18.940416ms
	Processing time (w/o IO): 18.569209ms
	Processing time (w/o IO): 18.338306ms
	Processing time (w/o IO): 18.076101ms
	Processing time (w/o IO): 18.272304ms
	Processing time (w/o IO): 18.0395ms
	Processing time (w/o IO): 18.573409ms
	Processing time (w/o IO): 18.360506ms
	Processing time (w/o IO): 18.498208ms
	Processing time (w/o IO): 18.421507ms
	Processing time (w/o IO): 18.902615ms
	Processing time (w/o IO): 18.150002ms
	Processing time (w/o IO): 18.691611ms
	  Time (mean ± σ):      36.9 ms ±   0.6 ms    [User: 46.5 ms, System: 7.4 ms]
	  Range (min … max):    36.1 ms …  37.7 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 2.702s
	Processing time (w/o IO): 2.695s
	Processing time (w/o IO): 2.690s
	Processing time (w/o IO): 2.686s
	Processing time (w/o IO): 2.696s
	  Time (mean ± σ):      2.769 s ±  0.007 s    [User: 2.756 s, System: 0.011 s]
	  Range (min … max):    2.760 s …  2.779 s    5 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 0.896s
	Processing time (w/o IO): 0.857s
	Processing time (w/o IO): 0.850s
	Processing time (w/o IO): 0.842s
	Processing time (w/o IO): 0.841s
	  Time (mean ± σ):      1.038 s ±  0.024 s    [User: 0.989 s, System: 0.149 s]
	  Range (min … max):    1.019 s …  1.078 s    5 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 55.812666ms
	Processing time (w/o IO): 55.691664ms
	Processing time (w/o IO): 55.718864ms
	Processing time (w/o IO): 56.122171ms
	Processing time (w/o IO): 55.728664ms
	Processing time (w/o IO): 56.60388ms
	Processing time (w/o IO): 55.813665ms
	Processing time (w/o IO): 55.719264ms
	Processing time (w/o IO): 55.556561ms
	Processing time (w/o IO): 56.834183ms
	  Time (mean ± σ):     111.1 ms ±   0.9 ms    [User: 100.1 ms, System: 10.9 ms]
	  Range (min … max):   110.5 ms … 113.4 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 180ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 177ms
	  Time (mean ± σ):     219.3 ms ±   0.3 ms    [User: 210.0 ms, System: 9.2 ms]
	  Range (min … max):   218.7 ms … 219.6 ms    10 runs
	 
Julia v2:

	Benchmark 1: julia related_v2.jl
	Processing time (w/o IO): 616 milliseconds
	Processing time (w/o IO): 625 milliseconds
	Processing time (w/o IO): 608 milliseconds
	Processing time (w/o IO): 613 milliseconds
	Processing time (w/o IO): 612 milliseconds
	Processing time (w/o IO): 611 milliseconds
	  Time (mean ± σ):      5.037 s ±  0.030 s    [User: 4.827 s, System: 0.207 s]
	  Range (min … max):    5.011 s …  5.087 s    5 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  63.597533ms
	Processing time (w/o IO):  63.591213ms
	Processing time (w/o IO):  63.31918ms
	Processing time (w/o IO):  63.39118ms
	Processing time (w/o IO):  63.236659ms
	Processing time (w/o IO):  63.162358ms
	Processing time (w/o IO):  63.576765ms
	Processing time (w/o IO):  63.396363ms
	Processing time (w/o IO):  63.288661ms
	Processing time (w/o IO):  63.440963ms
	  Time (mean ± σ):     312.2 ms ±   0.5 ms    [User: 302.5 ms, System: 9.5 ms]
	  Range (min … max):   311.4 ms … 313.0 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 59.013ms
	Processing time (w/o IO): 59.264ms
	Processing time (w/o IO): 60.119ms
	Processing time (w/o IO): 59.949ms
	Processing time (w/o IO): 59.288ms
	  Time (mean ± σ):     370.7 ms ±   4.7 ms    [User: 335.8 ms, System: 34.2 ms]
	  Range (min … max):   364.5 ms … 375.8 ms    5 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 118ms
	Processing time (w/o IO): 117ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 104ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 132ms
	  Time (mean ± σ):     587.4 ms ±  22.2 ms    [User: 669.5 ms, System: 142.1 ms]
	  Range (min … max):   558.8 ms … 609.4 ms    5 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 141ms
	  Time (mean ± σ):     282.2 ms ±   0.9 ms    [User: 264.1 ms, System: 22.4 ms]
	  Range (min … max):   281.0 ms … 283.3 ms    5 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 56.87606334686279ms
	Processing time (w/o IO): 56.66303634643555ms
	Processing time (w/o IO): 56.47706985473633ms
	Processing time (w/o IO): 56.58602714538574ms
	Processing time (w/o IO): 56.34796619415283ms
	Processing time (w/o IO): 56.572914123535156ms
	Processing time (w/o IO): 56.8239688873291ms
	Processing time (w/o IO): 56.64801597595215ms
	Processing time (w/o IO): 56.838035583496094ms
	Processing time (w/o IO): 57.389020919799805ms
	  Time (mean ± σ):     468.8 ms ±   3.2 ms    [User: 430.1 ms, System: 33.6 ms]
	  Range (min … max):   465.4 ms … 474.7 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 207ms
	Processing time (w/o IO): 205ms
	Processing time (w/o IO): 203ms
	Processing time (w/o IO): 202ms
	Processing time (w/o IO): 201ms
	  Time (mean ± σ):     277.8 ms ±   4.1 ms    [User: 261.6 ms, System: 54.1 ms]
	  Range (min … max):   272.6 ms … 283.8 ms    5 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 704ms
	Processing time (w/o IO): 672ms
	Processing time (w/o IO): 906ms
	Processing time (w/o IO): 849ms
	Processing time (w/o IO): 821ms
	  Time (mean ± σ):     863.4 ms ±  86.9 ms    [User: 854.8 ms, System: 37.4 ms]
	  Range (min … max):   724.9 ms … 958.8 ms    5 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 181ms
	Processing time (w/o IO): 181ms
	Processing time (w/o IO): 180ms
	Processing time (w/o IO): 181ms
	  Time (mean ± σ):     275.3 ms ±  57.4 ms    [User: 240.8 ms, System: 31.1 ms]
	  Range (min … max):   248.6 ms … 378.0 ms    5 runs
	 
Java (JIT):

	Benchmark 1: java -jar ./target/main.jar
	Processing time (w/o IO): 260 ms
	Processing time (w/o IO): 252 ms
	Processing time (w/o IO): 242 ms
	Processing time (w/o IO): 258 ms
	Processing time (w/o IO): 255 ms
	Processing time (w/o IO): 237 ms
	Processing time (w/o IO): 254 ms
	Processing time (w/o IO): 262 ms
	Processing time (w/o IO): 287 ms
	Processing time (w/o IO): 307 ms
	Processing time (w/o IO): 256 ms
	Processing time (w/o IO): 243 ms
	Processing time (w/o IO): 244 ms
	  Time (mean ± σ):     539.4 ms ±  29.2 ms    [User: 874.2 ms, System: 74.2 ms]
	  Range (min … max):   515.0 ms … 615.9 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 45 ms
	Processing time (w/o IO): 46 ms
	Processing time (w/o IO): 46 ms
	Processing time (w/o IO): 45 ms
	Processing time (w/o IO): 45 ms
	Processing time (w/o IO): 45 ms
	Processing time (w/o IO): 45 ms
	Processing time (w/o IO): 45 ms
	Processing time (w/o IO): 45 ms
	Processing time (w/o IO): 45 ms
	Processing time (w/o IO): 45 ms
	Processing time (w/o IO): 45 ms
	  Time (mean ± σ):      79.8 ms ±   0.3 ms    [User: 68.9 ms, System: 10.9 ms]
	  Range (min … max):    79.3 ms …  80.1 ms    10 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 173ms
	Processing time (w/o IO): 173ms
	Processing time (w/o IO): 172ms
	Processing time (w/o IO): 173ms
	Processing time (w/o IO): 174ms
	Processing time (w/o IO): 173ms
	Processing time (w/o IO): 173ms
	Processing time (w/o IO): 173ms
	Processing time (w/o IO): 173ms
	Processing time (w/o IO): 172ms
	Processing time (w/o IO): 173ms
	Processing time (w/o IO): 172ms
	  Time (mean ± σ):     203.3 ms ±   0.8 ms    [User: 181.6 ms, System: 21.4 ms]
	  Range (min … max):   202.3 ms … 204.8 ms    10 runs
	 
Fsharp:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 174ms
	Processing time (w/o IO): 172ms
	Processing time (w/o IO): 172ms
	Processing time (w/o IO): 173ms
	Processing time (w/o IO): 174ms
	Processing time (w/o IO): 173ms
	Processing time (w/o IO): 173ms
	  Time (mean ± σ):     937.5 ms ±   6.5 ms    [User: 863.8 ms, System: 85.9 ms]
	  Range (min … max):   927.1 ms … 944.6 ms    5 runs
	 
