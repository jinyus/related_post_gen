Go:

	Benchmark 1: ./related
	Processing time (w/o IO) 32.21732ms
	Processing time (w/o IO) 32.219121ms
	Processing time (w/o IO) 32.744317ms
	Processing time (w/o IO) 32.536519ms
	Processing time (w/o IO) 32.345419ms
	Processing time (w/o IO) 32.916417ms
	Processing time (w/o IO) 32.655718ms
	Processing time (w/o IO) 32.441919ms
	Processing time (w/o IO) 32.515819ms
	Processing time (w/o IO) 32.14922ms
	Processing time (w/o IO) 32.377219ms
	Processing time (w/o IO) 32.16902ms
	Processing time (w/o IO) 31.967122ms
	  Time (mean ± σ):      62.3 ms ±   1.6 ms    [User: 61.8 ms, System: 8.6 ms]
	  Range (min … max):    59.6 ms …  64.5 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO) 16.85361ms
	Processing time (w/o IO) 16.991909ms
	Processing time (w/o IO) 17.267407ms
	Processing time (w/o IO) 16.985609ms
	Processing time (w/o IO) 16.956309ms
	Processing time (w/o IO) 17.527906ms
	Processing time (w/o IO) 16.911309ms
	Processing time (w/o IO) 17.039408ms
	Processing time (w/o IO) 16.910109ms
	Processing time (w/o IO) 16.95691ms
	Processing time (w/o IO) 17.030609ms
	Processing time (w/o IO) 17.008609ms
	Processing time (w/o IO) 17.031809ms
	  Time (mean ± σ):      47.2 ms ±   1.3 ms    [User: 53.8 ms, System: 13.4 ms]
	  Range (min … max):    45.8 ms …  49.5 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 31.746025ms
	Processing time (w/o IO): 31.840524ms
	Processing time (w/o IO): 32.008824ms
	Processing time (w/o IO): 31.924124ms
	Processing time (w/o IO): 32.224623ms
	Processing time (w/o IO): 31.929424ms
	Processing time (w/o IO): 31.867224ms
	Processing time (w/o IO): 31.912824ms
	Processing time (w/o IO): 31.593526ms
	Processing time (w/o IO): 31.779425ms
	Processing time (w/o IO): 31.853625ms
	Processing time (w/o IO): 31.742125ms
	Processing time (w/o IO): 31.546926ms
	  Time (mean ± σ):      47.3 ms ±   0.3 ms    [User: 40.4 ms, System: 6.9 ms]
	  Range (min … max):    46.8 ms …  47.8 ms    10 runs
	 
Rust Rayon:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 17.285108ms
	Processing time (w/o IO): 18.619701ms
	Processing time (w/o IO): 17.933305ms
	Processing time (w/o IO): 17.725306ms
	Processing time (w/o IO): 17.465008ms
	Processing time (w/o IO): 17.06281ms
	Processing time (w/o IO): 17.220509ms
	Processing time (w/o IO): 17.625506ms
	Processing time (w/o IO): 17.865705ms
	Processing time (w/o IO): 17.484307ms
	Processing time (w/o IO): 17.551307ms
	Processing time (w/o IO): 17.727706ms
	Processing time (w/o IO): 17.09451ms
	  Time (mean ± σ):      34.9 ms ±   0.8 ms    [User: 43.5 ms, System: 7.9 ms]
	  Range (min … max):    33.4 ms …  36.2 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 2.290s
	Processing time (w/o IO): 2.287s
	Processing time (w/o IO): 2.318s
	Processing time (w/o IO): 2.304s
	Processing time (w/o IO): 2.295s
	  Time (mean ± σ):      2.570 s ±  0.014 s    [User: 2.554 s, System: 0.014 s]
	  Range (min … max):    2.559 s …  2.591 s    5 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO):  0.998s
	Processing time (w/o IO):  0.999s
	Processing time (w/o IO):  0.986s
	Processing time (w/o IO):  0.996s
	Processing time (w/o IO):  0.985s
	  Time (mean ± σ):      1.353 s ±  0.008 s    [User: 1.354 s, System: 0.094 s]
	  Range (min … max):    1.345 s …  1.364 s    5 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 58.931787ms
	Processing time (w/o IO): 57.613185ms
	Processing time (w/o IO): 59.069387ms
	Processing time (w/o IO): 57.786586ms
	Processing time (w/o IO): 57.844286ms
	Processing time (w/o IO): 58.125386ms
	Processing time (w/o IO): 57.884386ms
	Processing time (w/o IO): 57.421485ms
	Processing time (w/o IO): 58.248686ms
	Processing time (w/o IO): 57.858086ms
	  Time (mean ± σ):     107.2 ms ±   0.9 ms    [User: 98.0 ms, System: 9.0 ms]
	  Range (min … max):   106.0 ms … 108.9 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 231ms
	Processing time (w/o IO): 231ms
	Processing time (w/o IO): 232ms
	Processing time (w/o IO): 231ms
	Processing time (w/o IO): 232ms
	Processing time (w/o IO): 231ms
	Processing time (w/o IO): 231ms
	Processing time (w/o IO): 231ms
	Processing time (w/o IO): 231ms
	Processing time (w/o IO): 231ms
	Processing time (w/o IO): 231ms
	Processing time (w/o IO): 231ms
	Processing time (w/o IO): 231ms
	  Time (mean ± σ):     273.9 ms ±   0.3 ms    [User: 263.8 ms, System: 10.0 ms]
	  Range (min … max):   273.6 ms … 274.7 ms    10 runs
	 
Julia v1:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 1311 milliseconds
	Processing time (w/o IO): 1319 milliseconds
	Processing time (w/o IO): 1399 milliseconds
	Processing time (w/o IO): 1321 milliseconds
	Processing time (w/o IO): 1321 milliseconds
	Processing time (w/o IO): 1315 milliseconds
	  Time (mean ± σ):      4.270 s ±  0.044 s    [User: 4.096 s, System: 0.172 s]
	  Range (min … max):    4.241 s …  4.348 s    5 runs
	 
Julia v2:

	Benchmark 1: julia related_v2.jl
	Processing time (w/o IO): 591 milliseconds
	Processing time (w/o IO): 584 milliseconds
	Processing time (w/o IO): 589 milliseconds
	Processing time (w/o IO): 594 milliseconds
	Processing time (w/o IO): 583 milliseconds
	Processing time (w/o IO): 587 milliseconds
	  Time (mean ± σ):      4.830 s ±  0.027 s    [User: 4.661 s, System: 0.162 s]
	  Range (min … max):    4.801 s …  4.863 s    5 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  375.739572ms
	Processing time (w/o IO):  375.271775ms
	Processing time (w/o IO):  375.430475ms
	Processing time (w/o IO):  375.166275ms
	Processing time (w/o IO):  375.433474ms
	Processing time (w/o IO):  375.152376ms
	Processing time (w/o IO):  377.319364ms
	Processing time (w/o IO):  375.831172ms
	Processing time (w/o IO):  375.303975ms
	Processing time (w/o IO):  374.496879ms
	  Time (mean ± σ):     904.9 ms ±   1.6 ms    [User: 895.6 ms, System: 8.9 ms]
	  Range (min … max):   903.1 ms … 907.9 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 510.926ms
	Processing time (w/o IO): 510.277ms
	Processing time (w/o IO): 506.381ms
	Processing time (w/o IO): 512.131ms
	Processing time (w/o IO): 502.444ms
	  Time (mean ± σ):     873.2 ms ±   2.6 ms    [User: 889.9 ms, System: 29.4 ms]
	  Range (min … max):   869.4 ms … 876.9 ms    5 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 203ms
	Processing time (w/o IO): 203ms
	Processing time (w/o IO): 210ms
	Processing time (w/o IO): 201ms
	Processing time (w/o IO): 205ms
	Processing time (w/o IO): 193ms
	Processing time (w/o IO): 199ms
	Processing time (w/o IO): 200ms
	  Time (mean ± σ):     653.9 ms ±   5.1 ms    [User: 736.3 ms, System: 128.1 ms]
	  Range (min … max):   645.4 ms … 657.6 ms    5 runs
	 
