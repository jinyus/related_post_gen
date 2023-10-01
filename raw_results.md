Go:

	Benchmark 1: ./related
	Processing time (w/o IO) 32.021165ms
	Processing time (w/o IO) 31.368958ms
	Processing time (w/o IO) 30.290146ms
	Processing time (w/o IO) 30.240845ms
	Processing time (w/o IO) 31.113555ms
	Processing time (w/o IO) 30.796551ms
	Processing time (w/o IO) 30.62895ms
	Processing time (w/o IO) 30.597749ms
	Processing time (w/o IO) 30.67955ms
	Processing time (w/o IO) 30.621549ms
	Processing time (w/o IO) 30.725051ms
	Processing time (w/o IO) 30.570549ms
	Processing time (w/o IO) 30.283746ms
	  Time (mean ± σ):      60.7 ms ±   1.4 ms    [User: 54.3 ms, System: 13.5 ms]
	  Range (min … max):    58.9 ms …  63.4 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO) 16.538779ms
	Processing time (w/o IO) 15.905072ms
	Processing time (w/o IO) 15.894272ms
	Processing time (w/o IO) 17.397688ms
	Processing time (w/o IO) 16.255376ms
	Processing time (w/o IO) 15.788871ms
	Processing time (w/o IO) 15.982973ms
	Processing time (w/o IO) 17.464489ms
	Processing time (w/o IO) 16.396778ms
	Processing time (w/o IO) 16.392677ms
	Processing time (w/o IO) 15.862672ms
	Processing time (w/o IO) 15.876772ms
	Processing time (w/o IO) 17.785693ms
	  Time (mean ± σ):      49.2 ms ±   1.1 ms    [User: 53.8 ms, System: 14.9 ms]
	  Range (min … max):    47.4 ms …  51.6 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 33.168702ms
	Processing time (w/o IO): 34.45619ms
	Processing time (w/o IO): 33.080302ms
	Processing time (w/o IO): 33.218801ms
	Processing time (w/o IO): 33.134102ms
	Processing time (w/o IO): 33.217302ms
	Processing time (w/o IO): 33.057603ms
	Processing time (w/o IO): 33.695097ms
	Processing time (w/o IO): 33.202602ms
	Processing time (w/o IO): 33.241201ms
	Processing time (w/o IO): 33.174102ms
	Processing time (w/o IO): 33.211802ms
	Processing time (w/o IO): 33.141801ms
	  Time (mean ± σ):      51.2 ms ±   0.2 ms    [User: 42.8 ms, System: 8.3 ms]
	  Range (min … max):    50.8 ms …  51.5 ms    10 runs
	 
Rust Rayon:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 18.25609ms
	Processing time (w/o IO): 17.982987ms
	Processing time (w/o IO): 18.28009ms
	Processing time (w/o IO): 18.135889ms
	Processing time (w/o IO): 18.109389ms
	Processing time (w/o IO): 18.215489ms
	Processing time (w/o IO): 18.281391ms
	Processing time (w/o IO): 18.127389ms
	Processing time (w/o IO): 18.377191ms
	Processing time (w/o IO): 18.091288ms
	Processing time (w/o IO): 18.113589ms
	Processing time (w/o IO): 18.071988ms
	Processing time (w/o IO): 18.512793ms
	  Time (mean ± σ):      36.1 ms ±   0.7 ms    [User: 42.7 ms, System: 10.3 ms]
	  Range (min … max):    34.8 ms …  37.1 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 2.716s
	Processing time (w/o IO): 2.729s
	Processing time (w/o IO): 2.737s
	Processing time (w/o IO): 2.725s
	Processing time (w/o IO): 2.719s
	  Time (mean ± σ):      3.017 s ±  0.009 s    [User: 2.996 s, System: 0.019 s]
	  Range (min … max):    3.006 s …  3.030 s    5 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO):  0.975s
	Processing time (w/o IO):  0.958s
	Processing time (w/o IO):  0.936s
	Processing time (w/o IO):  0.939s
	Processing time (w/o IO):  0.933s
	  Time (mean ± σ):      1.341 s ±  0.023 s    [User: 1.279 s, System: 0.163 s]
	  Range (min … max):    1.322 s …  1.378 s    5 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 55.737782ms
	Processing time (w/o IO): 55.268086ms
	Processing time (w/o IO): 56.305476ms
	Processing time (w/o IO): 56.325676ms
	Processing time (w/o IO): 55.821981ms
	Processing time (w/o IO): 56.189977ms
	Processing time (w/o IO): 55.465384ms
	Processing time (w/o IO): 55.571683ms
	Processing time (w/o IO): 55.506083ms
	Processing time (w/o IO): 55.229287ms
	  Time (mean ± σ):     109.5 ms ±   1.0 ms    [User: 97.1 ms, System: 12.2 ms]
	  Range (min … max):   107.8 ms … 110.8 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 182ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 177ms
	  Time (mean ± σ):     219.7 ms ±   1.4 ms    [User: 208.6 ms, System: 10.5 ms]
	  Range (min … max):   218.7 ms … 223.6 ms    10 runs
	 
Julia v2:

	Benchmark 1: julia related_v2.jl
	Processing time (w/o IO): 603 milliseconds
	Processing time (w/o IO): 614 milliseconds
	Processing time (w/o IO): 625 milliseconds
	Processing time (w/o IO): 615 milliseconds
	Processing time (w/o IO): 620 milliseconds
	Processing time (w/o IO): 612 milliseconds
	  Time (mean ± σ):      5.076 s ±  0.033 s    [User: 4.863 s, System: 0.210 s]
	  Range (min … max):    5.037 s …  5.119 s    5 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  326.480883ms
	Processing time (w/o IO):  327.091346ms
	Processing time (w/o IO):  326.42204ms
	Processing time (w/o IO):  326.158537ms
	Processing time (w/o IO):  326.20914ms
	Processing time (w/o IO):  327.344651ms
	Processing time (w/o IO):  326.509543ms
	Processing time (w/o IO):  326.23884ms
	Processing time (w/o IO):  326.836646ms
	Processing time (w/o IO):  326.648544ms
	  Time (mean ± σ):     860.9 ms ±   0.8 ms    [User: 848.9 ms, System: 11.8 ms]
	  Range (min … max):   859.2 ms … 862.1 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 59.684ms
	Processing time (w/o IO): 58.901ms
	Processing time (w/o IO): 58.677ms
	Processing time (w/o IO): 58.499ms
	Processing time (w/o IO): 58.755ms
	  Time (mean ± σ):     381.7 ms ±   0.3 ms    [User: 356.3 ms, System: 24.8 ms]
	  Range (min … max):   381.3 ms … 382.1 ms    5 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 224ms
	Processing time (w/o IO): 209ms
	Processing time (w/o IO): 227ms
	Processing time (w/o IO): 237ms
	Processing time (w/o IO): 218ms
	Processing time (w/o IO): 228ms
	Processing time (w/o IO): 235ms
	Processing time (w/o IO): 216ms
	  Time (mean ± σ):     723.7 ms ±  11.9 ms    [User: 801.5 ms, System: 147.8 ms]
	  Range (min … max):   711.4 ms … 738.8 ms    5 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 57.65795707702637ms
	Processing time (w/o IO): 57.919979095458984ms
	Processing time (w/o IO): 57.76095390319824ms
	Processing time (w/o IO): 57.30104446411133ms
	Processing time (w/o IO): 57.82806873321533ms
	Processing time (w/o IO): 57.38496780395508ms
	Processing time (w/o IO): 58.18295478820801ms
	Processing time (w/o IO): 57.6479434967041ms
	Processing time (w/o IO): 57.3430061340332ms
	Processing time (w/o IO): 57.21890926361084ms
	  Time (mean ± σ):     489.9 ms ±  12.1 ms    [User: 438.9 ms, System: 38.5 ms]
	  Range (min … max):   471.4 ms … 505.1 ms    10 runs
	 
