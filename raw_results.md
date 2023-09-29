Go:

	Benchmark 1: ./related
	Processing time (w/o IO) 30.892111ms
	Processing time (w/o IO) 31.011913ms
	Processing time (w/o IO) 30.771408ms
	Processing time (w/o IO) 30.565604ms
	Processing time (w/o IO) 30.990613ms
	Processing time (w/o IO) 30.717307ms
	Processing time (w/o IO) 30.691207ms
	Processing time (w/o IO) 30.3271ms
	Processing time (w/o IO) 30.924911ms
	Processing time (w/o IO) 30.469702ms
	Processing time (w/o IO) 30.743707ms
	Processing time (w/o IO) 30.779208ms
	Processing time (w/o IO) 30.717007ms
	  Time (mean ± σ):      61.6 ms ±   1.0 ms    [User: 56.8 ms, System: 12.5 ms]
	  Range (min … max):    59.0 ms …  62.7 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO) 16.530319ms
	Processing time (w/o IO) 16.344115ms
	Processing time (w/o IO) 15.956408ms
	Processing time (w/o IO) 16.328915ms
	Processing time (w/o IO) 16.04211ms
	Processing time (w/o IO) 15.953308ms
	Processing time (w/o IO) 16.878626ms
	Processing time (w/o IO) 16.164012ms
	Processing time (w/o IO) 16.06811ms
	Processing time (w/o IO) 16.502518ms
	Processing time (w/o IO) 16.405616ms
	Processing time (w/o IO) 17.397236ms
	Processing time (w/o IO) 15.998908ms
	  Time (mean ± σ):      48.6 ms ±   1.4 ms    [User: 54.4 ms, System: 13.6 ms]
	  Range (min … max):    47.4 ms …  51.5 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 33.222074ms
	Processing time (w/o IO): 33.477778ms
	Processing time (w/o IO): 33.221074ms
	Processing time (w/o IO): 33.210474ms
	Processing time (w/o IO): 33.166674ms
	Processing time (w/o IO): 33.210874ms
	Processing time (w/o IO): 33.308775ms
	Processing time (w/o IO): 33.150573ms
	Processing time (w/o IO): 33.277275ms
	Processing time (w/o IO): 33.168673ms
	Processing time (w/o IO): 33.129673ms
	Processing time (w/o IO): 33.182374ms
	Processing time (w/o IO): 33.238674ms
	  Time (mean ± σ):      52.2 ms ±   0.3 ms    [User: 44.5 ms, System: 7.7 ms]
	  Range (min … max):    51.7 ms …  52.7 ms    10 runs
	 
Rust Rayon:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 22.151218ms
	Processing time (w/o IO): 21.262002ms
	Processing time (w/o IO): 21.1963ms
	Processing time (w/o IO): 20.935995ms
	Processing time (w/o IO): 21.1484ms
	Processing time (w/o IO): 21.240701ms
	Processing time (w/o IO): 21.035897ms
	Processing time (w/o IO): 21.021897ms
	Processing time (w/o IO): 21.010696ms
	Processing time (w/o IO): 21.491605ms
	Processing time (w/o IO): 21.109098ms
	Processing time (w/o IO): 20.940695ms
	Processing time (w/o IO): 20.993796ms
	  Time (mean ± σ):      39.2 ms ±   0.2 ms    [User: 50.4 ms, System: 8.5 ms]
	  Range (min … max):    38.9 ms …  39.7 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 2.720s
	Processing time (w/o IO): 2.723s
	Processing time (w/o IO): 2.719s
	Processing time (w/o IO): 2.720s
	Processing time (w/o IO): 2.724s
	  Time (mean ± σ):      3.012 s ±  0.004 s    [User: 2.996 s, System: 0.016 s]
	  Range (min … max):    3.008 s …  3.018 s    5 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO):  0.913s
	Processing time (w/o IO):  0.913s
	Processing time (w/o IO):  0.918s
	Processing time (w/o IO):  0.917s
	Processing time (w/o IO):  0.919s
	  Time (mean ± σ):      1.308 s ±  0.008 s    [User: 1.259 s, System: 0.151 s]
	  Range (min … max):    1.301 s …  1.321 s    5 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 56.125278ms
	Processing time (w/o IO): 55.964975ms
	Processing time (w/o IO): 56.315281ms
	Processing time (w/o IO): 56.348283ms
	Processing time (w/o IO): 56.016275ms
	Processing time (w/o IO): 55.69707ms
	Processing time (w/o IO): 56.657788ms
	Processing time (w/o IO): 56.637588ms
	Processing time (w/o IO): 56.625488ms
	Processing time (w/o IO): 56.119078ms
	  Time (mean ± σ):     113.1 ms ±   0.9 ms    [User: 103.5 ms, System: 9.6 ms]
	  Range (min … max):   111.5 ms … 114.3 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 179ms
	  Time (mean ± σ):     221.4 ms ±   0.2 ms    [User: 212.9 ms, System: 8.4 ms]
	  Range (min … max):   220.9 ms … 221.7 ms    10 runs
	 
Julia v1:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 1422 milliseconds
	Processing time (w/o IO): 1424 milliseconds
	Processing time (w/o IO): 1410 milliseconds
	Processing time (w/o IO): 1359 milliseconds
	Processing time (w/o IO): 1366 milliseconds
	Processing time (w/o IO): 1463 milliseconds
	  Time (mean ± σ):      4.553 s ±  0.061 s    [User: 4.286 s, System: 0.263 s]
	  Range (min … max):    4.493 s …  4.651 s    5 runs
	 
Julia v2:

	Benchmark 1: julia related_v2.jl
	Processing time (w/o IO): 663 milliseconds
	Processing time (w/o IO): 682 milliseconds
	Processing time (w/o IO): 699 milliseconds
	Processing time (w/o IO): 682 milliseconds
	Processing time (w/o IO): 700 milliseconds
	Processing time (w/o IO): 694 milliseconds
	  Time (mean ± σ):      5.204 s ±  0.034 s    [User: 4.973 s, System: 0.222 s]
	  Range (min … max):    5.151 s …  5.236 s    5 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  261.04278ms
	Processing time (w/o IO):  260.604472ms
	Processing time (w/o IO):  260.333869ms
	Processing time (w/o IO):  261.837391ms
	Processing time (w/o IO):  260.639273ms
	Processing time (w/o IO):  260.400469ms
	Processing time (w/o IO):  260.904177ms
	Processing time (w/o IO):  261.015679ms
	Processing time (w/o IO):  261.195519ms
	Processing time (w/o IO):  260.525709ms
	  Time (mean ± σ):     725.3 ms ±   1.0 ms    [User: 713.5 ms, System: 11.6 ms]
	  Range (min … max):   724.0 ms … 727.0 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	  Time (mean ± σ):     971.1 ms ±   3.9 ms    [User: 1002.4 ms, System: 30.3 ms]
	  Range (min … max):   966.2 ms … 976.6 ms    5 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 238ms
	Processing time (w/o IO): 238ms
	Processing time (w/o IO): 238ms
	Processing time (w/o IO): 216ms
	Processing time (w/o IO): 239ms
	Processing time (w/o IO): 222ms
	Processing time (w/o IO): 236ms
	Processing time (w/o IO): 218ms
	  Time (mean ± σ):     732.1 ms ±   9.6 ms    [User: 817.1 ms, System: 146.2 ms]
	  Range (min … max):   720.3 ms … 744.2 ms    5 runs
	 
