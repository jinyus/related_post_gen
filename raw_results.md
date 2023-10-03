Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 33.196186ms
	Processing time (w/o IO): 32.891686ms
	Processing time (w/o IO): 34.086789ms
	Processing time (w/o IO): 32.562685ms
	Processing time (w/o IO): 33.037386ms
	Processing time (w/o IO): 33.757388ms
	Processing time (w/o IO): 32.991286ms
	Processing time (w/o IO): 33.092386ms
	Processing time (w/o IO): 32.770185ms
	Processing time (w/o IO): 33.432187ms
	Processing time (w/o IO): 33.125886ms
	Processing time (w/o IO): 32.897886ms
	Processing time (w/o IO): 33.618888ms
	  Time (mean ± σ):      68.5 ms ±   1.7 ms    [User: 62.0 ms, System: 16.8 ms]
	  Range (min … max):    66.1 ms …  71.7 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 17.566537ms
	Processing time (w/o IO): 17.478937ms
	Processing time (w/o IO): 17.450237ms
	Processing time (w/o IO): 17.856738ms
	Processing time (w/o IO): 17.600837ms
	Processing time (w/o IO): 17.657737ms
	Processing time (w/o IO): 17.759438ms
	Processing time (w/o IO): 17.566237ms
	Processing time (w/o IO): 17.992438ms
	Processing time (w/o IO): 17.884338ms
	Processing time (w/o IO): 18.157238ms
	Processing time (w/o IO): 20.471543ms
	Processing time (w/o IO): 17.575637ms
	  Time (mean ± σ):      57.7 ms ±   1.7 ms    [User: 63.2 ms, System: 17.0 ms]
	  Range (min … max):    55.7 ms …  60.6 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 31.914258ms
	Processing time (w/o IO): 31.600256ms
	Processing time (w/o IO): 31.630057ms
	Processing time (w/o IO): 31.856058ms
	Processing time (w/o IO): 32.062158ms
	Processing time (w/o IO): 31.839557ms
	Processing time (w/o IO): 31.925058ms
	Processing time (w/o IO): 31.958157ms
	Processing time (w/o IO): 31.862558ms
	Processing time (w/o IO): 31.749057ms
	Processing time (w/o IO): 31.730957ms
	Processing time (w/o IO): 31.805358ms
	Processing time (w/o IO): 31.703357ms
	  Time (mean ± σ):      49.7 ms ±   1.0 ms    [User: 39.0 ms, System: 10.6 ms]
	  Range (min … max):    48.3 ms …  51.2 ms    10 runs
	 
Rust Rayon:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 18.676138ms
	Processing time (w/o IO): 18.486838ms
	Processing time (w/o IO): 17.624237ms
	Processing time (w/o IO): 18.472839ms
	Processing time (w/o IO): 18.412039ms
	Processing time (w/o IO): 18.344838ms
	Processing time (w/o IO): 17.916237ms
	Processing time (w/o IO): 18.475638ms
	Processing time (w/o IO): 18.326138ms
	Processing time (w/o IO): 18.429338ms
	Processing time (w/o IO): 18.115637ms
	Processing time (w/o IO): 17.647236ms
	Processing time (w/o IO): 18.242038ms
	  Time (mean ± σ):      38.1 ms ±   0.6 ms    [User: 41.9 ms, System: 12.5 ms]
	  Range (min … max):    37.2 ms …  39.6 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 2.314s
	Processing time (w/o IO): 2.273s
	Processing time (w/o IO): 2.319s
	Processing time (w/o IO): 2.289s
	Processing time (w/o IO): 2.324s
	  Time (mean ± σ):      2.376 s ±  0.023 s    [User: 2.349 s, System: 0.023 s]
	  Range (min … max):    2.344 s …  2.398 s    5 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 1.125s
	Processing time (w/o IO): 1.160s
	Processing time (w/o IO): 1.032s
	Processing time (w/o IO): 1.040s
	Processing time (w/o IO): 1.022s
	  Time (mean ± σ):      1.255 s ±  0.063 s    [User: 1.170 s, System: 0.176 s]
	  Range (min … max):    1.200 s …  1.344 s    5 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 58.245217ms
	Processing time (w/o IO): 58.020616ms
	Processing time (w/o IO): 58.864018ms
	Processing time (w/o IO): 59.245519ms
	Processing time (w/o IO): 57.916516ms
	Processing time (w/o IO): 58.331517ms
	Processing time (w/o IO): 58.741518ms
	Processing time (w/o IO): 57.787016ms
	Processing time (w/o IO): 58.005816ms
	Processing time (w/o IO): 58.034617ms
	  Time (mean ± σ):     110.8 ms ±   1.0 ms    [User: 100.2 ms, System: 10.5 ms]
	  Range (min … max):   109.1 ms … 112.6 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 232ms
	Processing time (w/o IO): 232ms
	Processing time (w/o IO): 231ms
	Processing time (w/o IO): 231ms
	Processing time (w/o IO): 232ms
	Processing time (w/o IO): 231ms
	Processing time (w/o IO): 231ms
	Processing time (w/o IO): 232ms
	Processing time (w/o IO): 232ms
	Processing time (w/o IO): 231ms
	Processing time (w/o IO): 231ms
	Processing time (w/o IO): 232ms
	Processing time (w/o IO): 231ms
	  Time (mean ± σ):     274.9 ms ±   0.4 ms    [User: 267.7 ms, System: 7.2 ms]
	  Range (min … max):   274.4 ms … 275.5 ms    10 runs
	 
Julia v2:

	Benchmark 1: julia related_v2.jl
	Processing time (w/o IO): 626 milliseconds
	Processing time (w/o IO): 627 milliseconds
	Processing time (w/o IO): 629 milliseconds
	Processing time (w/o IO): 648 milliseconds
	Processing time (w/o IO): 633 milliseconds
	Processing time (w/o IO): 609 milliseconds
	  Time (mean ± σ):      5.245 s ±  0.064 s    [User: 5.032 s, System: 0.210 s]
	  Range (min … max):    5.189 s …  5.330 s    5 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  65.226747ms
	Processing time (w/o IO):  65.905751ms
	Processing time (w/o IO):  64.999444ms
	Processing time (w/o IO):  65.312742ms
	Processing time (w/o IO):  65.489535ms
	Processing time (w/o IO):  65.334637ms
	Processing time (w/o IO):  65.395836ms
	Processing time (w/o IO):  64.95024ms
	Processing time (w/o IO):  65.422037ms
	Processing time (w/o IO):  65.727035ms
	  Time (mean ± σ):     350.7 ms ±   1.0 ms    [User: 339.7 ms, System: 10.9 ms]
	  Range (min … max):   349.4 ms … 352.3 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 57.133ms
	Processing time (w/o IO): 53.306ms
	Processing time (w/o IO): 52.713ms
	Processing time (w/o IO): 49.786ms
	Processing time (w/o IO): 47.597ms
	  Time (mean ± σ):     385.6 ms ±  24.2 ms    [User: 355.2 ms, System: 28.8 ms]
	  Range (min … max):   357.1 ms … 412.6 ms    5 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 78ms
	Processing time (w/o IO): 78ms
	Processing time (w/o IO): 80ms
	Processing time (w/o IO): 79ms
	Processing time (w/o IO): 79ms
	Processing time (w/o IO): 82ms
	Processing time (w/o IO): 81ms
	Processing time (w/o IO): 79ms
	  Time (mean ± σ):     566.8 ms ±   8.7 ms    [User: 639.1 ms, System: 147.6 ms]
	  Range (min … max):   557.9 ms … 580.8 ms    5 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 119ms
	Processing time (w/o IO): 117ms
	Processing time (w/o IO): 116ms
	Processing time (w/o IO): 118ms
	Processing time (w/o IO): 117ms
	Processing time (w/o IO): 117ms
	Processing time (w/o IO): 116ms
	Processing time (w/o IO): 116ms
	  Time (mean ± σ):     252.8 ms ±   2.0 ms    [User: 232.4 ms, System: 24.0 ms]
	  Range (min … max):   249.6 ms … 255.1 ms    5 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 49.43192005157471ms
	Processing time (w/o IO): 49.340009689331055ms
	Processing time (w/o IO): 49.398064613342285ms
	Processing time (w/o IO): 49.21901226043701ms
	Processing time (w/o IO): 48.95901679992676ms
	Processing time (w/o IO): 49.48890209197998ms
	Processing time (w/o IO): 48.92599582672119ms
	Processing time (w/o IO): 48.684000968933105ms
	Processing time (w/o IO): 49.21996593475342ms
	Processing time (w/o IO): 49.33309555053711ms
	  Time (mean ± σ):     463.5 ms ±   3.9 ms    [User: 421.5 ms, System: 38.0 ms]
	  Range (min … max):   458.4 ms … 469.4 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 171ms
	Processing time (w/o IO): 167ms
	Processing time (w/o IO): 168ms
	Processing time (w/o IO): 165ms
	Processing time (w/o IO): 164ms
	  Time (mean ± σ):     249.5 ms ±   5.5 ms    [User: 224.7 ms, System: 70.0 ms]
	  Range (min … max):   246.1 ms … 259.0 ms    5 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 553ms
	Processing time (w/o IO): 701ms
	Processing time (w/o IO): 393ms
	Processing time (w/o IO): 560ms
	Processing time (w/o IO): 704ms
	  Time (mean ± σ):     655.5 ms ± 129.6 ms    [User: 636.2 ms, System: 45.1 ms]
	  Range (min … max):   448.5 ms … 761.8 ms    5 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 160ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 147ms
	  Time (mean ± σ):     246.0 ms ±  54.8 ms    [User: 210.6 ms, System: 34.8 ms]
	  Range (min … max):   219.4 ms … 344.0 ms    5 runs
	 
Java (JIT):

	Benchmark 1: java -jar ./target/main.jar
	Processing time (w/o IO): 215 ms
	Processing time (w/o IO): 250 ms
	Processing time (w/o IO): 270 ms
	Processing time (w/o IO): 217 ms
	Processing time (w/o IO): 236 ms
	Processing time (w/o IO): 226 ms
	Processing time (w/o IO): 237 ms
	Processing time (w/o IO): 236 ms
	Processing time (w/o IO): 243 ms
	Processing time (w/o IO): 257 ms
	Processing time (w/o IO): 262 ms
	Processing time (w/o IO): 255 ms
	Processing time (w/o IO): 250 ms
	  Time (mean ± σ):     540.1 ms ±  22.6 ms    [User: 903.4 ms, System: 66.3 ms]
	  Range (min … max):   502.7 ms … 573.7 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 53 ms
	  Time (mean ± σ):      85.4 ms ±   0.2 ms    [User: 71.7 ms, System: 13.8 ms]
	  Range (min … max):    85.1 ms …  85.6 ms    10 runs
	 
