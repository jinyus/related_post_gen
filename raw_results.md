Device: Github Actions

Go:

	Benchmark 1: ./related
	Processing time (w/o IO) 30.857957ms
	Processing time (w/o IO) 33.365611ms
	Processing time (w/o IO) 30.375046ms
	Processing time (w/o IO) 30.690953ms
	Processing time (w/o IO) 30.765655ms
	Processing time (w/o IO) 30.784456ms
	Processing time (w/o IO) 30.434848ms
	Processing time (w/o IO) 31.220564ms
	Processing time (w/o IO) 30.644652ms
	Processing time (w/o IO) 30.760355ms
	Processing time (w/o IO) 30.685853ms
	Processing time (w/o IO) 31.266765ms
	Processing time (w/o IO) 30.730254ms
	  Time (mean ± σ):      63.1 ms ±   2.8 ms    [User: 57.5 ms, System: 12.2 ms]
	  Range (min … max):    60.8 ms …  70.5 ms    10 runs

Go with concurrency:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO) 16.881236ms
	Processing time (w/o IO) 16.248122ms
	Processing time (w/o IO) 15.988017ms
	Processing time (w/o IO) 16.338024ms
	Processing time (w/o IO) 15.885116ms
	Processing time (w/o IO) 15.985417ms
	Processing time (w/o IO) 16.149921ms
	Processing time (w/o IO) 16.302523ms
	Processing time (w/o IO) 16.144021ms
	Processing time (w/o IO) 16.209922ms
	Processing time (w/o IO) 16.064319ms
	Processing time (w/o IO) 15.944816ms
	Processing time (w/o IO) 16.078319ms
	  Time (mean ± σ):      49.3 ms ±   1.6 ms    [User: 51.2 ms, System: 17.4 ms]
	  Range (min … max):    47.4 ms …  52.2 ms    10 runs

Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 33.348672ms
	Processing time (w/o IO): 33.74988ms
	Processing time (w/o IO): 33.651078ms
	Processing time (w/o IO): 33.606777ms
	Processing time (w/o IO): 33.633677ms
	Processing time (w/o IO): 33.612378ms
	Processing time (w/o IO): 33.589477ms
	Processing time (w/o IO): 33.626877ms
	Processing time (w/o IO): 33.582477ms
	Processing time (w/o IO): 33.579577ms
	Processing time (w/o IO): 33.597577ms
	Processing time (w/o IO): 33.646077ms
	Processing time (w/o IO): 33.630578ms
	  Time (mean ± σ):      51.6 ms ±   0.3 ms    [User: 43.4 ms, System: 8.2 ms]
	  Range (min … max):    51.3 ms …  52.4 ms    10 runs

Rust w/ Rayon:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 21.396913ms
	Processing time (w/o IO): 20.914805ms
	Processing time (w/o IO): 20.932405ms
	Processing time (w/o IO): 20.662299ms
	Processing time (w/o IO): 20.953405ms
	Processing time (w/o IO): 20.661199ms
	Processing time (w/o IO): 21.154409ms
	Processing time (w/o IO): 20.7141ms
	Processing time (w/o IO): 20.651999ms
	Processing time (w/o IO): 20.918605ms
	Processing time (w/o IO): 20.834603ms
	Processing time (w/o IO): 20.605498ms
	Processing time (w/o IO): 21.002106ms
	  Time (mean ± σ):      37.7 ms ±   0.4 ms    [User: 50.7 ms, System: 6.4 ms]
	  Range (min … max):    37.1 ms …  38.7 ms    10 runs

Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 2.713s
	Processing time (w/o IO): 2.712s
	Processing time (w/o IO): 2.735s
	Processing time (w/o IO): 2.721s
	Processing time (w/o IO): 2.715s
	  Time (mean ± σ):      3.009 s ±  0.012 s    [User: 2.985 s, System: 0.022 s]
	  Range (min … max):    3.001 s …  3.029 s    5 runs

Python with Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO):  0.916s
	Processing time (w/o IO):  0.912s
	Processing time (w/o IO):  0.911s
	Processing time (w/o IO):  0.910s
	Processing time (w/o IO):  0.913s
	  Time (mean ± σ):      1.295 s ±  0.003 s    [User: 1.254 s, System: 0.143 s]
	  Range (min … max):    1.291 s …  1.298 s    5 runs

Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 55.984768ms
	Processing time (w/o IO): 55.892066ms
	Processing time (w/o IO): 55.494354ms
	Processing time (w/o IO): 55.245346ms
	Processing time (w/o IO): 55.624258ms
	Processing time (w/o IO): 55.201845ms
	Processing time (w/o IO): 55.68166ms
	Processing time (w/o IO): 56.107572ms
	Processing time (w/o IO): 55.533656ms
	Processing time (w/o IO): 55.510854ms
	  Time (mean ± σ):     108.7 ms ±   1.0 ms    [User: 100.3 ms, System: 8.2 ms]
	  Range (min … max):   107.3 ms … 110.5 ms    10 runs

Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 177ms
	  Time (mean ± σ):     218.4 ms ±   0.3 ms    [User: 209.3 ms, System: 9.0 ms]
	  Range (min … max):   217.9 ms … 219.1 ms    10 runs

Julia v1:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 1270 milliseconds
	Processing time (w/o IO): 1281 milliseconds
	Processing time (w/o IO): 1295 milliseconds
	Processing time (w/o IO): 1284 milliseconds
	Processing time (w/o IO): 1293 milliseconds
	Processing time (w/o IO): 1283 milliseconds
	  Time (mean ± σ):      4.324 s ±  0.016 s    [User: 4.126 s, System: 0.194 s]
	  Range (min … max):    4.300 s …  4.343 s    5 runs

Julia v2:

	Benchmark 1: julia related_v2.jl
	Processing time (w/o IO): 663 milliseconds
	Processing time (w/o IO): 636 milliseconds
	Processing time (w/o IO): 649 milliseconds
	Processing time (w/o IO): 670 milliseconds
	Processing time (w/o IO): 662 milliseconds
	Processing time (w/o IO): 681 milliseconds
	  Time (mean ± σ):      5.006 s ±  0.009 s    [User: 4.787 s, System: 0.217 s]
	  Range (min … max):    4.991 s …  5.015 s    5 runs

Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  260.621751ms
	Processing time (w/o IO):  260.891155ms
	Processing time (w/o IO):  260.637351ms
	Processing time (w/o IO):  260.934456ms
	Processing time (w/o IO):  263.043891ms
	Processing time (w/o IO):  261.337062ms
	Processing time (w/o IO):  260.949156ms
	Processing time (w/o IO):  260.411348ms
	Processing time (w/o IO):  260.190043ms
	Processing time (w/o IO):  260.437647ms
	  Time (mean ± σ):     722.7 ms ±   1.8 ms    [User: 710.8 ms, System: 11.5 ms]
	  Range (min … max):   720.4 ms … 725.9 ms    10 runs

Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 524.150ms
	Processing time (w/o IO): 519.460ms
	Processing time (w/o IO): 521.006ms
	Processing time (w/o IO): 519.749ms
	Processing time (w/o IO): 529.906ms
	  Time (mean ± σ):     958.8 ms ±   4.4 ms    [User: 970.1 ms, System: 34.0 ms]
	  Range (min … max):   953.6 ms … 965.2 ms    5 runs

Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 286ms
	Processing time (w/o IO): 234ms
	Processing time (w/o IO): 202ms
	Processing time (w/o IO): 213ms
	Processing time (w/o IO): 221ms
	Processing time (w/o IO): 226ms
	  Time (mean ± σ):     682.5 ms ±  17.0 ms    [User: 742.8 ms, System: 159.0 ms]
	  Range (min … max):   659.0 ms … 705.6 ms    5 runs