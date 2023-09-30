Go:

	Benchmark 1: ./related
	Processing time (w/o IO) 30.613276ms
	Processing time (w/o IO) 30.756377ms
	Processing time (w/o IO) 31.246781ms
	Processing time (w/o IO) 30.469374ms
	Processing time (w/o IO) 30.674976ms
	Processing time (w/o IO) 30.922479ms
	Processing time (w/o IO) 30.740977ms
	Processing time (w/o IO) 30.789877ms
	Processing time (w/o IO) 30.656376ms
	Processing time (w/o IO) 31.135581ms
	Processing time (w/o IO) 30.923179ms
	Processing time (w/o IO) 30.714277ms
	Processing time (w/o IO) 29.96407ms
	  Time (mean ± σ):      59.7 ms ±   1.0 ms    [User: 57.4 ms, System: 9.3 ms]
	  Range (min … max):    58.3 ms …  61.6 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO) 15.90915ms
	Processing time (w/o IO) 15.988351ms
	Processing time (w/o IO) 16.440855ms
	Processing time (w/o IO) 16.461456ms
	Processing time (w/o IO) 16.138452ms
	Processing time (w/o IO) 16.583557ms
	Processing time (w/o IO) 15.81845ms
	Processing time (w/o IO) 15.839449ms
	Processing time (w/o IO) 15.813349ms
	Processing time (w/o IO) 16.659957ms
	Processing time (w/o IO) 15.957251ms
	Processing time (w/o IO) 15.837149ms
	Processing time (w/o IO) 16.538956ms
	  Time (mean ± σ):      48.5 ms ±   1.4 ms    [User: 52.0 ms, System: 15.9 ms]
	  Range (min … max):    46.4 ms …  50.6 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 33.555211ms
	Processing time (w/o IO): 33.220708ms
	Processing time (w/o IO): 33.049507ms
	Processing time (w/o IO): 33.073707ms
	Processing time (w/o IO): 33.021807ms
	Processing time (w/o IO): 33.091707ms
	Processing time (w/o IO): 33.109007ms
	Processing time (w/o IO): 33.116207ms
	Processing time (w/o IO): 33.018906ms
	Processing time (w/o IO): 33.142307ms
	Processing time (w/o IO): 33.092507ms
	Processing time (w/o IO): 33.071107ms
	Processing time (w/o IO): 33.091207ms
	  Time (mean ± σ):      50.6 ms ±   0.5 ms    [User: 45.8 ms, System: 4.9 ms]
	  Range (min … max):    50.0 ms …  51.6 ms    10 runs
	 
Rust Rayon:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 18.812264ms
	Processing time (w/o IO): 17.831255ms
	Processing time (w/o IO): 18.265459ms
	Processing time (w/o IO): 18.219359ms
	Processing time (w/o IO): 18.002157ms
	Processing time (w/o IO): 18.40186ms
	Processing time (w/o IO): 18.988366ms
	Processing time (w/o IO): 18.557962ms
	Processing time (w/o IO): 18.35586ms
	Processing time (w/o IO): 18.33236ms
	Processing time (w/o IO): 17.910656ms
	Processing time (w/o IO): 18.521061ms
	Processing time (w/o IO): 18.272259ms
	  Time (mean ± σ):      35.3 ms ±   0.4 ms    [User: 43.0 ms, System: 9.3 ms]
	  Range (min … max):    34.7 ms …  35.8 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 2.721s
	Processing time (w/o IO): 2.714s
	Processing time (w/o IO): 2.720s
	Processing time (w/o IO): 2.713s
	Processing time (w/o IO): 2.710s
	  Time (mean ± σ):      3.007 s ±  0.005 s    [User: 2.988 s, System: 0.018 s]
	  Range (min … max):    3.000 s …  3.014 s    5 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO):  0.915s
	Processing time (w/o IO):  0.914s
	Processing time (w/o IO):  0.915s
	Processing time (w/o IO):  0.924s
	Processing time (w/o IO):  0.920s
	  Time (mean ± σ):      1.302 s ±  0.005 s    [User: 1.261 s, System: 0.143 s]
	  Range (min … max):    1.299 s …  1.308 s    5 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 55.651902ms
	Processing time (w/o IO): 55.802904ms
	Processing time (w/o IO): 56.335109ms
	Processing time (w/o IO): 55.657503ms
	Processing time (w/o IO): 55.947805ms
	Processing time (w/o IO): 56.099907ms
	Processing time (w/o IO): 56.259909ms
	Processing time (w/o IO): 55.466301ms
	Processing time (w/o IO): 55.471801ms
	Processing time (w/o IO): 55.476801ms
	  Time (mean ± σ):     110.4 ms ±   1.1 ms    [User: 101.3 ms, System: 9.0 ms]
	  Range (min … max):   109.1 ms … 112.2 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 177ms
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
	Processing time (w/o IO): 179ms
	  Time (mean ± σ):     220.8 ms ±   0.5 ms    [User: 214.2 ms, System: 6.4 ms]
	  Range (min … max):   220.1 ms … 222.0 ms    10 runs
	 
Julia v1:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 1411 milliseconds
	Processing time (w/o IO): 1339 milliseconds
	Processing time (w/o IO): 1413 milliseconds
	Processing time (w/o IO): 1411 milliseconds
	Processing time (w/o IO): 1344 milliseconds
	Processing time (w/o IO): 1408 milliseconds
	  Time (mean ± σ):      4.459 s ±  0.037 s    [User: 4.225 s, System: 0.233 s]
	  Range (min … max):    4.415 s …  4.490 s    5 runs
	 
Julia v2:

	Benchmark 1: julia related_v2.jl
	Processing time (w/o IO): 630 milliseconds
	Processing time (w/o IO): 635 milliseconds
	Processing time (w/o IO): 629 milliseconds
	Processing time (w/o IO): 609 milliseconds
	Processing time (w/o IO): 619 milliseconds
	Processing time (w/o IO): 627 milliseconds
	  Time (mean ± σ):      5.056 s ±  0.041 s    [User: 4.833 s, System: 0.213 s]
	  Range (min … max):    5.004 s …  5.107 s    5 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  328.628198ms
	Processing time (w/o IO):  328.269394ms
	Processing time (w/o IO):  327.439287ms
	Processing time (w/o IO):  329.0559ms
	Processing time (w/o IO):  327.138582ms
	Processing time (w/o IO):  327.830889ms
	Processing time (w/o IO):  329.091601ms
	Processing time (w/o IO):  327.98729ms
	Processing time (w/o IO):  328.302093ms
	Processing time (w/o IO):  327.929389ms
	  Time (mean ± σ):     863.1 ms ±   1.3 ms    [User: 850.4 ms, System: 12.5 ms]
	  Range (min … max):   861.2 ms … 864.9 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 122.677ms
	Processing time (w/o IO): 120.431ms
	Processing time (w/o IO): 122.297ms
	Processing time (w/o IO): 117.514ms
	Processing time (w/o IO): 120.249ms
	  Time (mean ± σ):     475.4 ms ±  10.6 ms    [User: 435.2 ms, System: 39.5 ms]
	  Range (min … max):   457.2 ms … 483.1 ms    5 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 241ms
	Processing time (w/o IO): 219ms
	Processing time (w/o IO): 232ms
	Processing time (w/o IO): 219ms
	Processing time (w/o IO): 228ms
	Processing time (w/o IO): 223ms
	Processing time (w/o IO): 220ms
	Processing time (w/o IO): 218ms
	  Time (mean ± σ):     722.3 ms ±   7.4 ms    [User: 802.5 ms, System: 150.8 ms]
	  Range (min … max):   713.9 ms … 730.0 ms    5 runs
	 
