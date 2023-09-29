Go:

	Benchmark 1: ./related
	Processing time (w/o IO) 37.149278ms
	Processing time (w/o IO) 40.498883ms
	Processing time (w/o IO) 37.493798ms
	Processing time (w/o IO) 37.280486ms
	Processing time (w/o IO) 37.316688ms
	Processing time (w/o IO) 38.238545ms
	Processing time (w/o IO) 38.381853ms
	Processing time (w/o IO) 37.332089ms
	Processing time (w/o IO) 37.488199ms
	Processing time (w/o IO) 41.306833ms
	Processing time (w/o IO) 38.197742ms
	Processing time (w/o IO) 38.099436ms
	Processing time (w/o IO) 37.143577ms
	  Time (mean ± σ):      77.1 ms ±   2.7 ms    [User: 69.3 ms, System: 18.1 ms]
	  Range (min … max):    73.5 ms …  82.0 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO) 23.950768ms
	Processing time (w/o IO) 19.507796ms
	Processing time (w/o IO) 20.531659ms
	Processing time (w/o IO) 19.191277ms
	Processing time (w/o IO) 20.900081ms
	Processing time (w/o IO) 21.182398ms
	Processing time (w/o IO) 24.349293ms
	Processing time (w/o IO) 23.118218ms
	Processing time (w/o IO) 19.852217ms
	Processing time (w/o IO) 19.272981ms
	Processing time (w/o IO) 19.972024ms
	Processing time (w/o IO) 19.389188ms
	Processing time (w/o IO) 20.191538ms
	  Time (mean ± σ):      63.4 ms ±   3.5 ms    [User: 68.6 ms, System: 18.2 ms]
	  Range (min … max):    59.0 ms …  69.4 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 40.710811ms
	Processing time (w/o IO): 40.532201ms
	Processing time (w/o IO): 40.529ms
	Processing time (w/o IO): 40.508499ms
	Processing time (w/o IO): 40.575403ms
	Processing time (w/o IO): 40.478297ms
	Processing time (w/o IO): 41.054231ms
	Processing time (w/o IO): 40.613905ms
	Processing time (w/o IO): 40.457296ms
	Processing time (w/o IO): 40.634306ms
	Processing time (w/o IO): 41.091834ms
	Processing time (w/o IO): 40.816618ms
	Processing time (w/o IO): 40.589104ms
	  Time (mean ± σ):      63.9 ms ±   1.0 ms    [User: 53.3 ms, System: 10.1 ms]
	  Range (min … max):    62.9 ms …  66.0 ms    10 runs
	 
Rust Rayon:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 25.77176ms
	Processing time (w/o IO): 26.171485ms
	Processing time (w/o IO): 27.457562ms
	Processing time (w/o IO): 25.978873ms
	Processing time (w/o IO): 32.764984ms
	Processing time (w/o IO): 26.58151ms
	Processing time (w/o IO): 28.392919ms
	Processing time (w/o IO): 26.667115ms
	Processing time (w/o IO): 29.614993ms
	Processing time (w/o IO): 29.493186ms
	Processing time (w/o IO): 26.672215ms
	Processing time (w/o IO): 26.75862ms
	Processing time (w/o IO): 26.515906ms
	  Time (mean ± σ):      52.8 ms ±   5.5 ms    [User: 66.8 ms, System: 11.0 ms]
	  Range (min … max):    47.6 ms …  67.4 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 3.420s
	Processing time (w/o IO): 3.263s
	Processing time (w/o IO): 3.268s
	Processing time (w/o IO): 3.266s
	Processing time (w/o IO): 3.261s
	  Time (mean ± σ):      3.647 s ±  0.071 s    [User: 3.618 s, System: 0.028 s]
	  Range (min … max):    3.609 s …  3.774 s    5 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO):  1.168s
	Processing time (w/o IO):  1.088s
	Processing time (w/o IO):  1.093s
	Processing time (w/o IO):  1.091s
	Processing time (w/o IO):  1.093s
	  Time (mean ± σ):      1.571 s ±  0.043 s    [User: 1.483 s, System: 0.214 s]
	  Range (min … max):    1.546 s …  1.648 s    5 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 67.921185ms
	Processing time (w/o IO): 67.295848ms
	Processing time (w/o IO): 67.16254ms
	Processing time (w/o IO): 69.011551ms
	Processing time (w/o IO): 69.460678ms
	Processing time (w/o IO): 70.121418ms
	Processing time (w/o IO): 72.250045ms
	Processing time (w/o IO): 75.259127ms
	Processing time (w/o IO): 70.008811ms
	Processing time (w/o IO): 68.568324ms
	  Time (mean ± σ):     141.7 ms ±   6.0 ms    [User: 128.5 ms, System: 13.3 ms]
	  Range (min … max):   133.9 ms … 154.5 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 214ms
	Processing time (w/o IO): 213ms
	Processing time (w/o IO): 214ms
	Processing time (w/o IO): 213ms
	Processing time (w/o IO): 214ms
	Processing time (w/o IO): 213ms
	Processing time (w/o IO): 213ms
	Processing time (w/o IO): 215ms
	Processing time (w/o IO): 213ms
	Processing time (w/o IO): 213ms
	Processing time (w/o IO): 213ms
	Processing time (w/o IO): 213ms
	Processing time (w/o IO): 213ms
	  Time (mean ± σ):     264.0 ms ±   0.9 ms    [User: 253.5 ms, System: 10.5 ms]
	  Range (min … max):   262.5 ms … 265.5 ms    10 runs
	 
Julia v1:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 1687 milliseconds
	Processing time (w/o IO): 1793 milliseconds
	Processing time (w/o IO): 1708 milliseconds
	Processing time (w/o IO): 1680 milliseconds
	Processing time (w/o IO): 1642 milliseconds
	Processing time (w/o IO): 1682 milliseconds
	  Time (mean ± σ):      5.600 s ±  0.173 s    [User: 5.306 s, System: 0.288 s]
	  Range (min … max):    5.308 s …  5.725 s    5 runs
	 
Julia v2:

	Benchmark 1: julia related_v2.jl
	Processing time (w/o IO): 684 milliseconds
	Processing time (w/o IO): 710 milliseconds
	Processing time (w/o IO): 714 milliseconds
	Processing time (w/o IO): 706 milliseconds
	Processing time (w/o IO): 704 milliseconds
	Processing time (w/o IO): 690 milliseconds
	  Time (mean ± σ):      5.969 s ±  0.028 s    [User: 5.733 s, System: 0.233 s]
	  Range (min … max):    5.940 s …  6.004 s    5 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  313.305792ms
	Processing time (w/o IO):  313.176384ms
	Processing time (w/o IO):  313.560907ms
	Processing time (w/o IO):  312.718757ms
	Processing time (w/o IO):  312.634252ms
	Processing time (w/o IO):  313.142482ms
	Processing time (w/o IO):  313.195186ms
	Processing time (w/o IO):  312.669454ms
	Processing time (w/o IO):  312.467043ms
	Processing time (w/o IO):  313.307596ms
	  Time (mean ± σ):     874.2 ms ±   6.4 ms    [User: 863.6 ms, System: 10.2 ms]
	  Range (min … max):   870.4 ms … 892.0 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	  Time (mean ± σ):      1.184 s ±  0.040 s    [User: 1.220 s, System: 0.041 s]
	  Range (min … max):    1.155 s …  1.247 s    5 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 271ms
	Processing time (w/o IO): 275ms
	Processing time (w/o IO): 289ms
	Processing time (w/o IO): 271ms
	Processing time (w/o IO): 309ms
	Processing time (w/o IO): 246ms
	Processing time (w/o IO): 286ms
	Processing time (w/o IO): 309ms
	  Time (mean ± σ):     954.6 ms ±  87.7 ms    [User: 982.4 ms, System: 194.1 ms]
	  Range (min … max):   878.9 ms … 1104.3 ms    5 runs
	 
