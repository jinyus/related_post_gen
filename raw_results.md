Device: Github Actions

Go:

	Benchmark 1: ./related
	Processing time (w/o IO) 47.131939ms
	Processing time (w/o IO) 48.524534ms
	Processing time (w/o IO) 47.279938ms
	Processing time (w/o IO) 45.622345ms
	Processing time (w/o IO) 49.706331ms
	Processing time (w/o IO) 48.023736ms
	Processing time (w/o IO) 52.823219ms
	Processing time (w/o IO) 48.909033ms
	Processing time (w/o IO) 44.930347ms
	Processing time (w/o IO) 47.437238ms
	Processing time (w/o IO) 59.328397ms
	Processing time (w/o IO) 51.241525ms
	Processing time (w/o IO) 47.175439ms
	  Time (mean ± σ):      89.2 ms ±   4.7 ms    [User: 82.7 ms, System: 15.4 ms]
	  Range (min … max):    83.7 ms …  99.3 ms    10 runs

Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO) 19.42525ms
	Processing time (w/o IO) 20.197051ms
	Processing time (w/o IO) 19.029348ms
	Processing time (w/o IO) 31.073679ms
	Processing time (w/o IO) 32.043881ms
	Processing time (w/o IO) 28.690773ms
	Processing time (w/o IO) 18.403146ms
	Processing time (w/o IO) 19.450749ms
	Processing time (w/o IO) 19.56625ms
	Processing time (w/o IO) 19.216149ms
	Processing time (w/o IO) 21.140354ms
	Processing time (w/o IO) 19.441749ms
	Processing time (w/o IO) 22.765558ms
	  Time (mean ± σ):      66.2 ms ±  10.0 ms    [User: 64.8 ms, System: 19.2 ms]
	  Range (min … max):    56.6 ms …  86.2 ms    10 runs

Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 50.848876ms
	Processing time (w/o IO): 50.502476ms
	Processing time (w/o IO): 55.091874ms
	Processing time (w/o IO): 51.320577ms
	Processing time (w/o IO): 49.974176ms
	Processing time (w/o IO): 50.908176ms
	Processing time (w/o IO): 50.511177ms
	Processing time (w/o IO): 51.205576ms
	Processing time (w/o IO): 53.569875ms
	Processing time (w/o IO): 57.036473ms
	Processing time (w/o IO): 47.491978ms
	Processing time (w/o IO): 50.878176ms
	Processing time (w/o IO): 53.502775ms
	  Time (mean ± σ):      75.4 ms ±   2.5 ms    [User: 66.1 ms, System: 9.1 ms]
	  Range (min … max):    71.7 ms …  80.5 ms    10 runs

Rust Rayon:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 26.757777ms
	Processing time (w/o IO): 29.892674ms
	Processing time (w/o IO): 30.068574ms
	Processing time (w/o IO): 33.773671ms
	Processing time (w/o IO): 34.483271ms
	Processing time (w/o IO): 28.566975ms
	Processing time (w/o IO): 29.999874ms
	Processing time (w/o IO): 29.546275ms
	Processing time (w/o IO): 28.993375ms
	Processing time (w/o IO): 28.619976ms
	Processing time (w/o IO): 32.853072ms
	Processing time (w/o IO): 27.800376ms
	Processing time (w/o IO): 26.328978ms
	  Time (mean ± σ):      52.7 ms ±   3.5 ms    [User: 67.4 ms, System: 10.8 ms]
	  Range (min … max):    47.0 ms …  58.2 ms    10 runs

Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 3.152s
	Processing time (w/o IO): 3.131s
	Processing time (w/o IO): 3.062s
	Processing time (w/o IO): 3.114s
	Processing time (w/o IO): 3.086s
	  Time (mean ± σ):      3.450 s ±  0.040 s    [User: 3.425 s, System: 0.022 s]
	  Range (min … max):    3.403 s …  3.509 s    5 runs

Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO):  1.105s
	Processing time (w/o IO):  1.077s
	Processing time (w/o IO):  1.092s
	Processing time (w/o IO):  1.092s
	Processing time (w/o IO):  1.089s
	  Time (mean ± σ):      1.544 s ±  0.011 s    [User: 1.493 s, System: 0.167 s]
	  Range (min … max):    1.528 s …  1.554 s    5 runs

Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 64.556189ms
	Processing time (w/o IO): 62.173189ms
	Processing time (w/o IO): 63.763023ms
	Processing time (w/o IO): 63.379038ms
	Processing time (w/o IO): 66.122323ms
	Processing time (w/o IO): 62.945357ms
	Processing time (w/o IO): 60.750849ms
	Processing time (w/o IO): 61.087735ms
	Processing time (w/o IO): 63.080251ms
	Processing time (w/o IO): 60.357865ms
	  Time (mean ± σ):     124.4 ms ±   2.9 ms    [User: 112.0 ms, System: 12.1 ms]
	  Range (min … max):   121.3 ms … 130.3 ms    10 runs

Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 221ms
	Processing time (w/o IO): 222ms
	Processing time (w/o IO): 221ms
	Processing time (w/o IO): 224ms
	Processing time (w/o IO): 218ms
	Processing time (w/o IO): 233ms
	Processing time (w/o IO): 225ms
	Processing time (w/o IO): 235ms
	Processing time (w/o IO): 227ms
	Processing time (w/o IO): 235ms
	Processing time (w/o IO): 224ms
	Processing time (w/o IO): 230ms
	Processing time (w/o IO): 234ms
	  Time (mean ± σ):     278.2 ms ±   6.1 ms    [User: 265.4 ms, System: 12.7 ms]
	  Range (min … max):   266.3 ms … 285.9 ms    10 runs

Julia v1:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 1855 milliseconds
	Processing time (w/o IO): 1789 milliseconds
	Processing time (w/o IO): 1836 milliseconds
	Processing time (w/o IO): 1820 milliseconds
	Processing time (w/o IO): 1907 milliseconds
	Processing time (w/o IO): 1911 milliseconds
	  Time (mean ± σ):      5.677 s ±  0.112 s    [User: 5.399 s, System: 0.275 s]
	  Range (min … max):    5.546 s …  5.803 s    5 runs

Julia v2:

	Benchmark 1: julia related_v2.jl
	Processing time (w/o IO): 823 milliseconds
	Processing time (w/o IO): 801 milliseconds
	Processing time (w/o IO): 808 milliseconds
	Processing time (w/o IO): 823 milliseconds
	Processing time (w/o IO): 805 milliseconds
	Processing time (w/o IO): 795 milliseconds
	  Time (mean ± σ):      6.404 s ±  0.077 s    [User: 6.130 s, System: 0.265 s]
	  Range (min … max):    6.339 s …  6.490 s    5 runs

Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  365.944397ms
	Processing time (w/o IO):  342.510962ms
	Processing time (w/o IO):  345.361454ms
	Processing time (w/o IO):  357.0066ms
	Processing time (w/o IO):  391.49418ms
	Processing time (w/o IO):  360.134876ms
	Processing time (w/o IO):  353.177689ms
	Processing time (w/o IO):  357.74748ms
	Processing time (w/o IO):  351.064092ms
	Processing time (w/o IO):  349.466795ms
	  Time (mean ± σ):     924.0 ms ±  21.9 ms    [User: 912.3 ms, System: 11.5 ms]
	  Range (min … max):   891.4 ms … 957.4 ms    10 runs

Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 575.100ms
	Processing time (w/o IO): 580.739ms
	Processing time (w/o IO): 617.184ms
	Processing time (w/o IO): 609.815ms
	Processing time (w/o IO): 604.416ms
	  Time (mean ± σ):      1.379 s ±  0.022 s    [User: 1.372 s, System: 0.055 s]
	  Range (min … max):    1.359 s …  1.414 s    5 runs

Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 204ms
	Processing time (w/o IO): 249ms
	Processing time (w/o IO): 210ms
	Processing time (w/o IO): 220ms
	Processing time (w/o IO): 216ms
	Processing time (w/o IO): 217ms
	Processing time (w/o IO): 214ms
	Processing time (w/o IO): 212ms
	  Time (mean ± σ):     839.8 ms ±   8.6 ms    [User: 924.4 ms, System: 222.1 ms]
	  Range (min … max):   833.3 ms … 854.8 ms    5 runs