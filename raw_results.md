Go:

	Benchmark 1: ./related
	Processing time (w/o IO) 40.124297ms
	Processing time (w/o IO) 37.276791ms
	Processing time (w/o IO) 38.747845ms
	Processing time (w/o IO) 37.28439ms
	Processing time (w/o IO) 38.017118ms
	Processing time (w/o IO) 36.648767ms
	Processing time (w/o IO) 37.647604ms
	Processing time (w/o IO) 36.974579ms
	Processing time (w/o IO) 36.368656ms
	Processing time (w/o IO) 37.684506ms
	Processing time (w/o IO) 38.147223ms
	Processing time (w/o IO) 36.334255ms
	Processing time (w/o IO) 38.711244ms
	  Time (mean ± σ):      74.8 ms ±   4.0 ms    [User: 64.9 ms, System: 18.7 ms]
	  Range (min … max):    69.8 ms …  81.4 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO) 19.21451ms
	Processing time (w/o IO) 19.669227ms
	Processing time (w/o IO) 20.869071ms
	Processing time (w/o IO) 19.396017ms
	Processing time (w/o IO) 19.049903ms
	Processing time (w/o IO) 19.244011ms
	Processing time (w/o IO) 19.666527ms
	Processing time (w/o IO) 19.22311ms
	Processing time (w/o IO) 19.729529ms
	Processing time (w/o IO) 19.545622ms
	Processing time (w/o IO) 20.82607ms
	Processing time (w/o IO) 19.641425ms
	Processing time (w/o IO) 20.349851ms
	  Time (mean ± σ):      59.4 ms ±   2.1 ms    [User: 66.1 ms, System: 17.2 ms]
	  Range (min … max):    56.5 ms …  62.4 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 41.52719ms
	Processing time (w/o IO): 41.031172ms
	Processing time (w/o IO): 40.902368ms
	Processing time (w/o IO): 40.166241ms
	Processing time (w/o IO): 39.716625ms
	Processing time (w/o IO): 40.68926ms
	Processing time (w/o IO): 40.177341ms
	Processing time (w/o IO): 40.543355ms
	Processing time (w/o IO): 40.681959ms
	Processing time (w/o IO): 41.018172ms
	Processing time (w/o IO): 40.907967ms
	Processing time (w/o IO): 40.875267ms
	Processing time (w/o IO): 40.798364ms
	  Time (mean ± σ):      63.3 ms ±   1.5 ms    [User: 55.3 ms, System: 7.9 ms]
	  Range (min … max):    61.5 ms …  66.9 ms    10 runs
	 
Rust Rayon:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 28.190128ms
	Processing time (w/o IO): 25.587242ms
	Processing time (w/o IO): 25.179929ms
	Processing time (w/o IO): 25.636644ms
	Processing time (w/o IO): 25.276132ms
	Processing time (w/o IO): 25.467138ms
	Processing time (w/o IO): 25.682945ms
	Processing time (w/o IO): 25.957354ms
	Processing time (w/o IO): 26.318967ms
	Processing time (w/o IO): 25.514941ms
	Processing time (w/o IO): 25.305933ms
	Processing time (w/o IO): 26.285965ms
	Processing time (w/o IO): 25.240031ms
	  Time (mean ± σ):      46.4 ms ±   0.5 ms    [User: 58.1 ms, System: 11.7 ms]
	  Range (min … max):    45.6 ms …  47.1 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 3.247s
	Processing time (w/o IO): 3.236s
	Processing time (w/o IO): 3.229s
	Processing time (w/o IO): 3.234s
	Processing time (w/o IO): 3.182s
	  Time (mean ± σ):      3.567 s ±  0.026 s    [User: 3.548 s, System: 0.017 s]
	  Range (min … max):    3.524 s …  3.594 s    5 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO):  1.088s
	Processing time (w/o IO):  1.077s
	Processing time (w/o IO):  1.069s
	Processing time (w/o IO):  1.090s
	Processing time (w/o IO):  1.079s
	  Time (mean ± σ):      1.524 s ±  0.013 s    [User: 1.478 s, System: 0.172 s]
	  Range (min … max):    1.506 s …  1.540 s    5 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 65.382572ms
	Processing time (w/o IO): 67.507946ms
	Processing time (w/o IO): 61.727345ms
	Processing time (w/o IO): 65.31987ms
	Processing time (w/o IO): 68.571943ms
	Processing time (w/o IO): 64.655915ms
	Processing time (w/o IO): 66.35377ms
	Processing time (w/o IO): 66.568678ms
	Processing time (w/o IO): 66.460775ms
	Processing time (w/o IO): 67.418406ms
	  Time (mean ± σ):     129.7 ms ±   3.9 ms    [User: 116.6 ms, System: 12.9 ms]
	  Range (min … max):   123.4 ms … 137.3 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 215ms
	Processing time (w/o IO): 212ms
	Processing time (w/o IO): 210ms
	Processing time (w/o IO): 211ms
	Processing time (w/o IO): 211ms
	Processing time (w/o IO): 212ms
	Processing time (w/o IO): 207ms
	Processing time (w/o IO): 206ms
	Processing time (w/o IO): 206ms
	Processing time (w/o IO): 209ms
	Processing time (w/o IO): 212ms
	Processing time (w/o IO): 212ms
	Processing time (w/o IO): 211ms
	  Time (mean ± σ):     259.2 ms ±   3.3 ms    [User: 250.4 ms, System: 8.7 ms]
	  Range (min … max):   254.2 ms … 263.2 ms    10 runs
	 
Julia v1:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 1509 milliseconds
	Processing time (w/o IO): 1501 milliseconds
	Processing time (w/o IO): 1509 milliseconds
	Processing time (w/o IO): 1636 milliseconds
	Processing time (w/o IO): 1503 milliseconds
	Processing time (w/o IO): 1652 milliseconds
	  Time (mean ± σ):      5.171 s ±  0.119 s    [User: 4.888 s, System: 0.271 s]
	  Range (min … max):    5.011 s …  5.307 s    5 runs
	 
Julia v2:

	Benchmark 1: julia related_v2.jl
	Processing time (w/o IO): 721 milliseconds
	Processing time (w/o IO): 690 milliseconds
	Processing time (w/o IO): 658 milliseconds
	Processing time (w/o IO): 678 milliseconds
	Processing time (w/o IO): 685 milliseconds
	Processing time (w/o IO): 685 milliseconds
	  Time (mean ± σ):      5.797 s ±  0.074 s    [User: 5.556 s, System: 0.238 s]
	  Range (min … max):    5.736 s …  5.925 s    5 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  310.052899ms
	Processing time (w/o IO):  310.0678ms
	Processing time (w/o IO):  310.96183ms
	Processing time (w/o IO):  312.51848ms
	Processing time (w/o IO):  312.234374ms
	Processing time (w/o IO):  311.940865ms
	Processing time (w/o IO):  309.948899ms
	Processing time (w/o IO):  305.286045ms
	Processing time (w/o IO):  302.874766ms
	Processing time (w/o IO):  313.193605ms
	  Time (mean ± σ):     860.1 ms ±   6.3 ms    [User: 848.5 ms, System: 11.3 ms]
	  Range (min … max):   847.7 ms … 867.1 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 621.062ms
	Processing time (w/o IO): 592.987ms
	Processing time (w/o IO): 617.817ms
	Processing time (w/o IO): 606.772ms
	Processing time (w/o IO): 594.332ms
	  Time (mean ± σ):      1.096 s ±  0.021 s    [User: 1.127 s, System: 0.034 s]
	  Range (min … max):    1.073 s …  1.123 s    5 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 250ms
	Processing time (w/o IO): 285ms
	Processing time (w/o IO): 255ms
	Processing time (w/o IO): 245ms
	Processing time (w/o IO): 254ms
	Processing time (w/o IO): 270ms
	Processing time (w/o IO): 261ms
	Processing time (w/o IO): 262ms
	  Time (mean ± σ):     836.5 ms ±  12.4 ms    [User: 915.2 ms, System: 179.3 ms]
	  Range (min … max):   820.6 ms … 849.8 ms    5 runs
	 
