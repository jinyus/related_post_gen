Go:

	Benchmark 1: ./related
	Processing time (w/o IO) 30.526489ms
	Processing time (w/o IO) 30.787393ms
	Processing time (w/o IO) 30.59909ms
	Processing time (w/o IO) 30.830893ms
	Processing time (w/o IO) 31.538505ms
	Processing time (w/o IO) 30.648391ms
	Processing time (w/o IO) 30.479988ms
	Processing time (w/o IO) 30.785093ms
	Processing time (w/o IO) 30.818593ms
	Processing time (w/o IO) 30.476988ms
	Processing time (w/o IO) 30.211284ms
	Processing time (w/o IO) 30.778493ms
	Processing time (w/o IO) 30.56039ms
	  Time (mean ± σ):      61.0 ms ±   1.1 ms    [User: 57.6 ms, System: 10.3 ms]
	  Range (min … max):    59.2 ms …  62.2 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO) 16.363751ms
	Processing time (w/o IO) 16.071347ms
	Processing time (w/o IO) 15.929344ms
	Processing time (w/o IO) 16.132248ms
	Processing time (w/o IO) 16.27635ms
	Processing time (w/o IO) 15.933844ms
	Processing time (w/o IO) 16.089447ms
	Processing time (w/o IO) 20.515316ms
	Processing time (w/o IO) 16.088348ms
	Processing time (w/o IO) 16.027347ms
	Processing time (w/o IO) 15.931545ms
	Processing time (w/o IO) 16.569355ms
	Processing time (w/o IO) 16.117148ms
	  Time (mean ± σ):      50.1 ms ±   1.7 ms    [User: 54.8 ms, System: 14.2 ms]
	  Range (min … max):    47.4 ms …  53.0 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 33.106205ms
	Processing time (w/o IO): 33.138706ms
	Processing time (w/o IO): 33.585413ms
	Processing time (w/o IO): 33.148307ms
	Processing time (w/o IO): 33.114206ms
	Processing time (w/o IO): 33.146506ms
	Processing time (w/o IO): 33.135607ms
	Processing time (w/o IO): 33.139006ms
	Processing time (w/o IO): 33.557713ms
	Processing time (w/o IO): 33.132006ms
	Processing time (w/o IO): 33.079805ms
	Processing time (w/o IO): 33.213607ms
	Processing time (w/o IO): 33.109705ms
	  Time (mean ± σ):      52.1 ms ±   0.2 ms    [User: 43.2 ms, System: 8.9 ms]
	  Range (min … max):    52.0 ms …  52.4 ms    10 runs
	 
Rust Rayon:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 18.224142ms
	Processing time (w/o IO): 18.178441ms
	Processing time (w/o IO): 18.358643ms
	Processing time (w/o IO): 18.062939ms
	Processing time (w/o IO): 18.280242ms
	Processing time (w/o IO): 17.932238ms
	Processing time (w/o IO): 18.305443ms
	Processing time (w/o IO): 18.256642ms
	Processing time (w/o IO): 19.798962ms
	Processing time (w/o IO): 18.385144ms
	Processing time (w/o IO): 18.540146ms
	Processing time (w/o IO): 18.168641ms
	Processing time (w/o IO): 18.384344ms
	  Time (mean ± σ):      36.2 ms ±   0.8 ms    [User: 43.3 ms, System: 9.5 ms]
	  Range (min … max):    35.3 ms …  37.5 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 2.721s
	Processing time (w/o IO): 2.725s
	Processing time (w/o IO): 2.726s
	Processing time (w/o IO): 2.729s
	Processing time (w/o IO): 2.716s
	  Time (mean ± σ):      3.017 s ±  0.005 s    [User: 2.996 s, System: 0.020 s]
	  Range (min … max):    3.009 s …  3.022 s    5 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO):  0.919s
	Processing time (w/o IO):  0.916s
	Processing time (w/o IO):  0.917s
	Processing time (w/o IO):  0.913s
	Processing time (w/o IO):  0.915s
	  Time (mean ± σ):      1.304 s ±  0.003 s    [User: 1.280 s, System: 0.126 s]
	  Range (min … max):    1.299 s …  1.308 s    5 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 55.751635ms
	Processing time (w/o IO): 56.319642ms
	Processing time (w/o IO): 56.299742ms
	Processing time (w/o IO): 55.975238ms
	Processing time (w/o IO): 56.373242ms
	Processing time (w/o IO): 56.075539ms
	Processing time (w/o IO): 56.007838ms
	Processing time (w/o IO): 55.851636ms
	Processing time (w/o IO): 55.420131ms
	Processing time (w/o IO): 55.915936ms
	  Time (mean ± σ):     110.8 ms ±   1.1 ms    [User: 98.9 ms, System: 11.8 ms]
	  Range (min … max):   108.6 ms … 112.3 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 180ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 178ms
	  Time (mean ± σ):     220.3 ms ±   0.3 ms    [User: 212.9 ms, System: 7.3 ms]
	  Range (min … max):   219.9 ms … 220.9 ms    10 runs
	 
Julia v1:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 1438 milliseconds
	Processing time (w/o IO): 1382 milliseconds
	Processing time (w/o IO): 1382 milliseconds
	Processing time (w/o IO): 1371 milliseconds
	Processing time (w/o IO): 1377 milliseconds
	Processing time (w/o IO): 1380 milliseconds
	  Time (mean ± σ):      4.620 s ±  0.015 s    [User: 4.421 s, System: 0.196 s]
	  Range (min … max):    4.596 s …  4.637 s    5 runs
	 
Julia v2:

	Benchmark 1: julia related_v2.jl
	Processing time (w/o IO): 626 milliseconds
	Processing time (w/o IO): 630 milliseconds
	Processing time (w/o IO): 631 milliseconds
	Processing time (w/o IO): 628 milliseconds
	Processing time (w/o IO): 625 milliseconds
	Processing time (w/o IO): 625 milliseconds
	  Time (mean ± σ):      5.303 s ±  0.014 s    [User: 5.073 s, System: 0.222 s]
	  Range (min … max):    5.287 s …  5.322 s    5 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  260.930051ms
	Processing time (w/o IO):  262.322364ms
	Processing time (w/o IO):  261.429056ms
	Processing time (w/o IO):  260.656049ms
	Processing time (w/o IO):  261.220454ms
	Processing time (w/o IO):  261.275254ms
	Processing time (w/o IO):  261.264754ms
	Processing time (w/o IO):  260.992952ms
	Processing time (w/o IO):  261.024852ms
	Processing time (w/o IO):  260.83415ms
	  Time (mean ± σ):     727.4 ms ±   1.3 ms    [User: 717.0 ms, System: 10.1 ms]
	  Range (min … max):   725.2 ms … 729.2 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 132.885ms
	Processing time (w/o IO): 134.108ms
	Processing time (w/o IO): 136.237ms
	Processing time (w/o IO): 134.366ms
	Processing time (w/o IO): 139.058ms
	  Time (mean ± σ):     483.7 ms ±   2.2 ms    [User: 452.6 ms, System: 30.4 ms]
	  Range (min … max):   481.6 ms … 486.8 ms    5 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 226ms
	Processing time (w/o IO): 238ms
	Processing time (w/o IO): 236ms
	Processing time (w/o IO): 225ms
	Processing time (w/o IO): 195ms
	Processing time (w/o IO): 225ms
	Processing time (w/o IO): 245ms
	Processing time (w/o IO): 216ms
	  Time (mean ± σ):     730.2 ms ±  19.1 ms    [User: 805.6 ms, System: 169.5 ms]
	  Range (min … max):   703.1 ms … 752.5 ms    5 runs
	 
