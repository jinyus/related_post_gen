Go:

	Benchmark 1: ./related
	Processing time (w/o IO) 30.889845ms
	Processing time (w/o IO) 30.592343ms
	Processing time (w/o IO) 30.716244ms
	Processing time (w/o IO) 30.441743ms
	Processing time (w/o IO) 30.710444ms
	Processing time (w/o IO) 30.695244ms
	Processing time (w/o IO) 30.794544ms
	Processing time (w/o IO) 31.318447ms
	Processing time (w/o IO) 31.080446ms
	Processing time (w/o IO) 30.879645ms
	Processing time (w/o IO) 31.018045ms
	Processing time (w/o IO) 30.655944ms
	Processing time (w/o IO) 30.802044ms
	  Time (mean ± σ):      62.9 ms ±   1.9 ms    [User: 57.4 ms, System: 12.9 ms]
	  Range (min … max):    60.7 ms …  66.0 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO) 16.096571ms
	Processing time (w/o IO) 16.04807ms
	Processing time (w/o IO) 16.749273ms
	Processing time (w/o IO) 16.699873ms
	Processing time (w/o IO) 16.246972ms
	Processing time (w/o IO) 16.532272ms
	Processing time (w/o IO) 16.513972ms
	Processing time (w/o IO) 16.144571ms
	Processing time (w/o IO) 16.10107ms
	Processing time (w/o IO) 16.316872ms
	Processing time (w/o IO) 16.167271ms
	Processing time (w/o IO) 16.168671ms
	Processing time (w/o IO) 16.084071ms
	  Time (mean ± σ):      50.9 ms ±   1.2 ms    [User: 52.0 ms, System: 18.4 ms]
	  Range (min … max):    49.1 ms …  52.7 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 33.360197ms
	Processing time (w/o IO): 33.149996ms
	Processing time (w/o IO): 33.124196ms
	Processing time (w/o IO): 33.188595ms
	Processing time (w/o IO): 33.231796ms
	Processing time (w/o IO): 33.184096ms
	Processing time (w/o IO): 33.165496ms
	Processing time (w/o IO): 33.058695ms
	Processing time (w/o IO): 33.245196ms
	Processing time (w/o IO): 33.133096ms
	Processing time (w/o IO): 33.160795ms
	Processing time (w/o IO): 33.279197ms
	Processing time (w/o IO): 33.136495ms
	  Time (mean ± σ):      52.2 ms ±   0.2 ms    [User: 43.5 ms, System: 8.6 ms]
	  Range (min … max):    51.9 ms …  52.6 ms    10 runs
	 
Rust Rayon:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 18.790278ms
	Processing time (w/o IO): 17.965375ms
	Processing time (w/o IO): 18.156875ms
	Processing time (w/o IO): 17.912774ms
	Processing time (w/o IO): 18.790479ms
	Processing time (w/o IO): 18.308277ms
	Processing time (w/o IO): 17.964775ms
	Processing time (w/o IO): 18.410376ms
	Processing time (w/o IO): 17.957375ms
	Processing time (w/o IO): 18.376576ms
	Processing time (w/o IO): 18.535077ms
	Processing time (w/o IO): 18.578178ms
	Processing time (w/o IO): 18.393377ms
	  Time (mean ± σ):      36.5 ms ±   0.9 ms    [User: 43.1 ms, System: 10.2 ms]
	  Range (min … max):    35.1 ms …  37.9 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 2.985s
	Processing time (w/o IO): 2.986s
	Processing time (w/o IO): 2.987s
	Processing time (w/o IO): 2.984s
	Processing time (w/o IO): 2.991s
	  Time (mean ± σ):      3.065 s ±  0.002 s    [User: 3.049 s, System: 0.014 s]
	  Range (min … max):    3.061 s …  3.067 s    5 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 0.880s
	Processing time (w/o IO): 0.890s
	Processing time (w/o IO): 0.854s
	Processing time (w/o IO): 0.844s
	Processing time (w/o IO): 0.839s
	  Time (mean ± σ):      1.053 s ±  0.032 s    [User: 0.994 s, System: 0.155 s]
	  Range (min … max):    1.024 s …  1.101 s    5 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 60.811651ms
	Processing time (w/o IO): 57.647238ms
	Processing time (w/o IO): 56.128032ms
	Processing time (w/o IO): 57.024636ms
	Processing time (w/o IO): 56.119432ms
	Processing time (w/o IO): 55.985032ms
	Processing time (w/o IO): 58.410441ms
	Processing time (w/o IO): 58.346942ms
	Processing time (w/o IO): 68.235782ms
	Processing time (w/o IO): 56.271733ms
	  Time (mean ± σ):     118.8 ms ±   6.7 ms    [User: 109.0 ms, System: 9.0 ms]
	  Range (min … max):   112.1 ms … 131.9 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 179ms
	  Time (mean ± σ):     220.0 ms ±   0.8 ms    [User: 213.6 ms, System: 6.2 ms]
	  Range (min … max):   219.1 ms … 221.8 ms    10 runs
	 
Julia v2:

	Benchmark 1: julia related_v2.jl
	Processing time (w/o IO): 677 milliseconds
	Processing time (w/o IO): 679 milliseconds
	Processing time (w/o IO): 658 milliseconds
	Processing time (w/o IO): 675 milliseconds
	Processing time (w/o IO): 665 milliseconds
	Processing time (w/o IO): 651 milliseconds
	  Time (mean ± σ):      5.259 s ±  0.021 s    [User: 5.043 s, System: 0.213 s]
	  Range (min … max):    5.238 s …  5.294 s    5 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  327.109958ms
	Processing time (w/o IO):  329.314867ms
	Processing time (w/o IO):  327.539059ms
	Processing time (w/o IO):  327.56966ms
	Processing time (w/o IO):  328.209663ms
	Processing time (w/o IO):  328.52811ms
	Processing time (w/o IO):  328.36943ms
	Processing time (w/o IO):  328.31023ms
	Processing time (w/o IO):  328.33363ms
	Processing time (w/o IO):  327.978528ms
	  Time (mean ± σ):     864.2 ms ±   1.1 ms    [User: 855.7 ms, System: 8.2 ms]
	  Range (min … max):   861.9 ms … 865.8 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 59.151ms
	Processing time (w/o IO): 60.619ms
	Processing time (w/o IO): 59.827ms
	Processing time (w/o IO): 60.505ms
	Processing time (w/o IO): 60.824ms
	  Time (mean ± σ):     393.8 ms ±   3.0 ms    [User: 361.7 ms, System: 31.5 ms]
	  Range (min … max):   389.9 ms … 397.0 ms    5 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 224ms
	Processing time (w/o IO): 255ms
	Processing time (w/o IO): 245ms
	Processing time (w/o IO): 267ms
	Processing time (w/o IO): 242ms
	Processing time (w/o IO): 238ms
	Processing time (w/o IO): 208ms
	Processing time (w/o IO): 242ms
	  Time (mean ± σ):     762.0 ms ±  33.6 ms    [User: 857.3 ms, System: 148.4 ms]
	  Range (min … max):   718.6 ms … 811.7 ms    5 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 58.009982109069824ms
	Processing time (w/o IO): 57.77597427368164ms
	Processing time (w/o IO): 58.23707580566406ms
	Processing time (w/o IO): 57.821035385131836ms
	Processing time (w/o IO): 58.01093578338623ms
	Processing time (w/o IO): 58.31193923950195ms
	Processing time (w/o IO): 57.66797065734863ms
	Processing time (w/o IO): 59.81707572937012ms
	Processing time (w/o IO): 57.711005210876465ms
	Processing time (w/o IO): 57.27493762969971ms
	  Time (mean ± σ):     492.7 ms ±   9.7 ms    [User: 444.1 ms, System: 42.5 ms]
	  Range (min … max):   482.7 ms … 508.7 ms    10 runs
	 
