Go:

	Benchmark 1: ./related
	Processing time (w/o IO) 47.449111ms
	Processing time (w/o IO) 44.422984ms
	Processing time (w/o IO) 44.590286ms
	Processing time (w/o IO) 45.281492ms
	Processing time (w/o IO) 47.48361ms
	Processing time (w/o IO) 46.660003ms
	Processing time (w/o IO) 48.324018ms
	Processing time (w/o IO) 45.657794ms
	Processing time (w/o IO) 47.804913ms
	Processing time (w/o IO) 45.683695ms
	Processing time (w/o IO) 47.616911ms
	Processing time (w/o IO) 47.42411ms
	Processing time (w/o IO) 44.741887ms
	  Time (mean ± σ):      84.9 ms ±   3.3 ms    [User: 77.8 ms, System: 14.2 ms]
	  Range (min … max):    79.6 ms …  89.5 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO) 18.507467ms
	Processing time (w/o IO) 18.654569ms
	Processing time (w/o IO) 18.220765ms
	Processing time (w/o IO) 18.539968ms
	Processing time (w/o IO) 18.87247ms
	Processing time (w/o IO) 19.218173ms
	Processing time (w/o IO) 19.848379ms
	Processing time (w/o IO) 19.104373ms
	Processing time (w/o IO) 22.911607ms
	Processing time (w/o IO) 19.376475ms
	Processing time (w/o IO) 20.032181ms
	Processing time (w/o IO) 20.013881ms
	Processing time (w/o IO) 18.637569ms
	  Time (mean ± σ):      59.9 ms ±   4.1 ms    [User: 59.5 ms, System: 22.6 ms]
	  Range (min … max):    55.9 ms …  67.5 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 52.662778ms
	Processing time (w/o IO): 48.733842ms
	Processing time (w/o IO): 53.802088ms
	Processing time (w/o IO): 50.266756ms
	Processing time (w/o IO): 51.435366ms
	Processing time (w/o IO): 49.62995ms
	Processing time (w/o IO): 51.053663ms
	Processing time (w/o IO): 48.432939ms
	Processing time (w/o IO): 48.439739ms
	Processing time (w/o IO): 49.361148ms
	Processing time (w/o IO): 50.109555ms
	Processing time (w/o IO): 49.537649ms
	Processing time (w/o IO): 55.0938ms
	  Time (mean ± σ):      71.5 ms ±   2.6 ms    [User: 61.9 ms, System: 9.5 ms]
	  Range (min … max):    68.5 ms …  76.2 ms    10 runs
	 
Rust Rayon:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 26.724634ms
	Processing time (w/o IO): 28.246847ms
	Processing time (w/o IO): 26.28643ms
	Processing time (w/o IO): 26.380231ms
	Processing time (w/o IO): 26.725734ms
	Processing time (w/o IO): 26.17133ms
	Processing time (w/o IO): 27.045537ms
	Processing time (w/o IO): 26.989736ms
	Processing time (w/o IO): 29.165955ms
	Processing time (w/o IO): 27.217239ms
	Processing time (w/o IO): 27.591442ms
	Processing time (w/o IO): 27.029436ms
	Processing time (w/o IO): 27.137137ms
	  Time (mean ± σ):      49.6 ms ±   2.6 ms    [User: 62.1 ms, System: 11.5 ms]
	  Range (min … max):    46.2 ms …  53.7 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 3.074s
	Processing time (w/o IO): 3.040s
	Processing time (w/o IO): 3.052s
	Processing time (w/o IO): 3.174s
	Processing time (w/o IO): 3.047s
	  Time (mean ± σ):      3.418 s ±  0.059 s    [User: 3.389 s, System: 0.026 s]
	  Range (min … max):    3.369 s …  3.520 s    5 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO):  1.108s
	Processing time (w/o IO):  1.129s
	Processing time (w/o IO):  1.131s
	Processing time (w/o IO):  1.111s
	Processing time (w/o IO):  1.120s
	  Time (mean ± σ):      1.577 s ±  0.016 s    [User: 1.515 s, System: 0.176 s]
	  Range (min … max):    1.563 s …  1.601 s    5 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 61.142636ms
	Processing time (w/o IO): 58.546313ms
	Processing time (w/o IO): 58.627015ms
	Processing time (w/o IO): 57.099801ms
	Processing time (w/o IO): 58.926316ms
	Processing time (w/o IO): 57.475704ms
	Processing time (w/o IO): 68.979306ms
	Processing time (w/o IO): 59.699124ms
	Processing time (w/o IO): 59.554122ms
	Processing time (w/o IO): 57.153802ms
	  Time (mean ± σ):     119.4 ms ±   4.9 ms    [User: 105.9 ms, System: 13.2 ms]
	  Range (min … max):   114.1 ms … 128.3 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 222ms
	Processing time (w/o IO): 219ms
	Processing time (w/o IO): 219ms
	Processing time (w/o IO): 216ms
	Processing time (w/o IO): 220ms
	Processing time (w/o IO): 219ms
	Processing time (w/o IO): 223ms
	Processing time (w/o IO): 217ms
	Processing time (w/o IO): 234ms
	Processing time (w/o IO): 226ms
	Processing time (w/o IO): 220ms
	Processing time (w/o IO): 222ms
	Processing time (w/o IO): 217ms
	  Time (mean ± σ):     271.7 ms ±   5.4 ms    [User: 264.2 ms, System: 6.7 ms]
	  Range (min … max):   263.8 ms … 282.7 ms    10 runs
	 
Julia v1:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 1806 milliseconds
	Processing time (w/o IO): 1753 milliseconds
	Processing time (w/o IO): 1793 milliseconds
	Processing time (w/o IO): 1731 milliseconds
	Processing time (w/o IO): 1791 milliseconds
	Processing time (w/o IO): 1777 milliseconds
	  Time (mean ± σ):      5.492 s ±  0.025 s    [User: 5.228 s, System: 0.259 s]
	  Range (min … max):    5.465 s …  5.523 s    5 runs
	 
Julia v2:

	Benchmark 1: julia related_v2.jl
	Processing time (w/o IO): 913 milliseconds
	Processing time (w/o IO): 862 milliseconds
	Processing time (w/o IO): 824 milliseconds
	Processing time (w/o IO): 826 milliseconds
	Processing time (w/o IO): 835 milliseconds
	Processing time (w/o IO): 851 milliseconds
	  Time (mean ± σ):      6.325 s ±  0.071 s    [User: 6.055 s, System: 0.268 s]
	  Range (min … max):    6.223 s …  6.402 s    5 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  401.339272ms
	Processing time (w/o IO):  432.722328ms
	Processing time (w/o IO):  408.037326ms
	Processing time (w/o IO):  469.455728ms
	Processing time (w/o IO):  409.65574ms
	Processing time (w/o IO):  405.98711ms
	Processing time (w/o IO):  401.008669ms
	Processing time (w/o IO):  409.765252ms
	Processing time (w/o IO):  404.260082ms
	Processing time (w/o IO):  413.133159ms
	  Time (mean ± σ):      1.084 s ±  0.026 s    [User: 1.067 s, System: 0.016 s]
	  Range (min … max):    1.059 s …  1.147 s    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 126.429ms
	Processing time (w/o IO): 125.575ms
	Processing time (w/o IO): 125.426ms
	Processing time (w/o IO): 121.600ms
	Processing time (w/o IO): 125.494ms
	  Time (mean ± σ):     833.8 ms ±  18.0 ms    [User: 792.9 ms, System: 40.3 ms]
	  Range (min … max):   814.0 ms … 859.7 ms    5 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 202ms
	Processing time (w/o IO): 209ms
	Processing time (w/o IO): 203ms
	Processing time (w/o IO): 210ms
	Processing time (w/o IO): 210ms
	Processing time (w/o IO): 209ms
	Processing time (w/o IO): 203ms
	Processing time (w/o IO): 208ms
	  Time (mean ± σ):     827.6 ms ±  24.2 ms    [User: 878.0 ms, System: 236.9 ms]
	  Range (min … max):   802.8 ms … 867.4 ms    5 runs
	 
