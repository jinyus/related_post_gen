Go:

	Benchmark 1: ./related
	Processing time (w/o IO) 30.968831ms
	Processing time (w/o IO) 30.45712ms
	Processing time (w/o IO) 30.695825ms
	Processing time (w/o IO) 31.93335ms
	Processing time (w/o IO) 30.814927ms
	Processing time (w/o IO) 30.661424ms
	Processing time (w/o IO) 31.159735ms
	Processing time (w/o IO) 30.632624ms
	Processing time (w/o IO) 30.273916ms
	Processing time (w/o IO) 30.714926ms
	Processing time (w/o IO) 30.403219ms
	Processing time (w/o IO) 30.604723ms
	Processing time (w/o IO) 30.802927ms
	  Time (mean ± σ):      62.9 ms ±   1.7 ms    [User: 56.3 ms, System: 13.8 ms]
	  Range (min … max):    59.8 ms …  64.6 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO) 16.453534ms
	Processing time (w/o IO) 16.143228ms
	Processing time (w/o IO) 17.29515ms
	Processing time (w/o IO) 16.31223ms
	Processing time (w/o IO) 16.150628ms
	Processing time (w/o IO) 16.025825ms
	Processing time (w/o IO) 16.168328ms
	Processing time (w/o IO) 16.430733ms
	Processing time (w/o IO) 16.634338ms
	Processing time (w/o IO) 16.054425ms
	Processing time (w/o IO) 16.025925ms
	Processing time (w/o IO) 15.885322ms
	Processing time (w/o IO) 16.129327ms
	  Time (mean ± σ):      50.3 ms ±   1.2 ms    [User: 57.5 ms, System: 12.8 ms]
	  Range (min … max):    48.4 ms …  52.8 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 33.190664ms
	Processing time (w/o IO): 33.292767ms
	Processing time (w/o IO): 33.243865ms
	Processing time (w/o IO): 33.219265ms
	Processing time (w/o IO): 33.143863ms
	Processing time (w/o IO): 33.039261ms
	Processing time (w/o IO): 33.208064ms
	Processing time (w/o IO): 33.337967ms
	Processing time (w/o IO): 33.393668ms
	Processing time (w/o IO): 33.157264ms
	Processing time (w/o IO): 33.240565ms
	Processing time (w/o IO): 33.192764ms
	Processing time (w/o IO): 33.158864ms
	  Time (mean ± σ):      52.4 ms ±   0.3 ms    [User: 44.3 ms, System: 8.0 ms]
	  Range (min … max):    51.8 ms …  52.9 ms    10 runs
	 
Rust Rayon:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 18.980152ms
	Processing time (w/o IO): 18.617945ms
	Processing time (w/o IO): 18.262238ms
	Processing time (w/o IO): 18.91965ms
	Processing time (w/o IO): 20.784385ms
	Processing time (w/o IO): 18.841649ms
	Processing time (w/o IO): 18.304239ms
	Processing time (w/o IO): 18.297939ms
	Processing time (w/o IO): 18.780848ms
	Processing time (w/o IO): 18.825248ms
	Processing time (w/o IO): 18.144736ms
	Processing time (w/o IO): 18.607144ms
	Processing time (w/o IO): 18.487642ms
	  Time (mean ± σ):      37.5 ms ±   1.2 ms    [User: 44.3 ms, System: 10.1 ms]
	  Range (min … max):    36.2 ms …  40.4 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 2.732s
	Processing time (w/o IO): 2.733s
	Processing time (w/o IO): 2.732s
	Processing time (w/o IO): 2.724s
	Processing time (w/o IO): 2.722s
	  Time (mean ± σ):      3.024 s ±  0.005 s    [User: 3.001 s, System: 0.022 s]
	  Range (min … max):    3.017 s …  3.029 s    5 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO):  1.013s
	Processing time (w/o IO):  0.994s
	Processing time (w/o IO):  0.929s
	Processing time (w/o IO):  0.929s
	Processing time (w/o IO):  0.923s
	  Time (mean ± σ):      1.355 s ±  0.042 s    [User: 1.281 s, System: 0.173 s]
	  Range (min … max):    1.318 s …  1.409 s    5 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 56.142968ms
	Processing time (w/o IO): 57.290992ms
	Processing time (w/o IO): 56.24517ms
	Processing time (w/o IO): 56.063066ms
	Processing time (w/o IO): 55.990165ms
	Processing time (w/o IO): 56.590577ms
	Processing time (w/o IO): 56.665679ms
	Processing time (w/o IO): 56.031666ms
	Processing time (w/o IO): 56.092467ms
	Processing time (w/o IO): 55.903862ms
	  Time (mean ± σ):     114.9 ms ±   0.3 ms    [User: 104.4 ms, System: 10.3 ms]
	  Range (min … max):   114.5 ms … 115.6 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 178ms
	  Time (mean ± σ):     219.9 ms ±   0.3 ms    [User: 213.2 ms, System: 6.6 ms]
	  Range (min … max):   219.4 ms … 220.2 ms    10 runs
	 
Julia v1:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 1335 milliseconds
	Processing time (w/o IO): 1368 milliseconds
	Processing time (w/o IO): 1339 milliseconds
	Processing time (w/o IO): 1405 milliseconds
	Processing time (w/o IO): 1441 milliseconds
	Processing time (w/o IO): 1405 milliseconds
	  Time (mean ± σ):      4.611 s ±  0.042 s    [User: 4.370 s, System: 0.239 s]
	  Range (min … max):    4.551 s …  4.665 s    5 runs
	 
Julia v2:

	Benchmark 1: julia related_v2.jl
	Processing time (w/o IO): 674 milliseconds
	Processing time (w/o IO): 694 milliseconds
	Processing time (w/o IO): 674 milliseconds
	Processing time (w/o IO): 701 milliseconds
	Processing time (w/o IO): 679 milliseconds
	Processing time (w/o IO): 696 milliseconds
	  Time (mean ± σ):      5.318 s ±  0.021 s    [User: 5.103 s, System: 0.212 s]
	  Range (min … max):    5.298 s …  5.341 s    5 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  328.456875ms
	Processing time (w/o IO):  328.888786ms
	Processing time (w/o IO):  329.449699ms
	Processing time (w/o IO):  328.235871ms
	Processing time (w/o IO):  328.357873ms
	Processing time (w/o IO):  328.167623ms
	Processing time (w/o IO):  328.230634ms
	Processing time (w/o IO):  328.988352ms
	Processing time (w/o IO):  328.92745ms
	Processing time (w/o IO):  329.201656ms
	  Time (mean ± σ):     864.1 ms ±   0.7 ms    [User: 851.1 ms, System: 12.5 ms]
	  Range (min … max):   863.4 ms … 865.5 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 136.639ms
	Processing time (w/o IO): 130.507ms
	Processing time (w/o IO): 131.366ms
	Processing time (w/o IO): 138.593ms
	Processing time (w/o IO): 148.852ms
	  Time (mean ± σ):     474.3 ms ±   9.0 ms    [User: 443.1 ms, System: 30.7 ms]
	  Range (min … max):   466.2 ms … 488.1 ms    5 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 235ms
	Processing time (w/o IO): 243ms
	Processing time (w/o IO): 226ms
	Processing time (w/o IO): 237ms
	Processing time (w/o IO): 219ms
	Processing time (w/o IO): 218ms
	Processing time (w/o IO): 211ms
	Processing time (w/o IO): 237ms
	  Time (mean ± σ):     730.3 ms ±   8.9 ms    [User: 807.0 ms, System: 167.0 ms]
	  Range (min … max):   720.7 ms … 739.2 ms    5 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 57.922959327697754ms
	Processing time (w/o IO): 57.916998863220215ms
	Processing time (w/o IO): 57.983994483947754ms
	Processing time (w/o IO): 57.7620267868042ms
	Processing time (w/o IO): 57.847023010253906ms
	Processing time (w/o IO): 57.7700138092041ms
	Processing time (w/o IO): 57.74497985839844ms
	Processing time (w/o IO): 57.74497985839844ms
	Processing time (w/o IO): 57.91306495666504ms
	Processing time (w/o IO): 57.612061500549316ms
	  Time (mean ± σ):     485.2 ms ±   9.1 ms    [User: 440.5 ms, System: 39.1 ms]
	  Range (min … max):   477.8 ms … 503.7 ms    10 runs
	 
