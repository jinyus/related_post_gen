Go:

	Benchmark 1: ./related
	Processing time (w/o IO) 49.639221ms
	Processing time (w/o IO) 50.325515ms
	Processing time (w/o IO) 48.81523ms
	Processing time (w/o IO) 50.755911ms
	Processing time (w/o IO) 53.295287ms
	Processing time (w/o IO) 53.387486ms
	Processing time (w/o IO) 48.043737ms
	Processing time (w/o IO) 47.859039ms
	Processing time (w/o IO) 53.077089ms
	Processing time (w/o IO) 50.342515ms
	Processing time (w/o IO) 51.310006ms
	Processing time (w/o IO) 51.132807ms
	Processing time (w/o IO) 50.302116ms
	  Time (mean ± σ):      92.3 ms ±   6.6 ms    [User: 85.8 ms, System: 15.3 ms]
	  Range (min … max):    85.6 ms … 107.0 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO) 21.129005ms
	Processing time (w/o IO) 19.938916ms
	Processing time (w/o IO) 22.684691ms
	Processing time (w/o IO) 25.107969ms
	Processing time (w/o IO) 22.817289ms
	Processing time (w/o IO) 20.62231ms
	Processing time (w/o IO) 19.697119ms
	Processing time (w/o IO) 19.432721ms
	Processing time (w/o IO) 22.392694ms
	Processing time (w/o IO) 20.527211ms
	Processing time (w/o IO) 24.827271ms
	Processing time (w/o IO) 21.423002ms
	Processing time (w/o IO) 19.702019ms
	  Time (mean ± σ):      67.2 ms ±   3.1 ms    [User: 69.0 ms, System: 22.9 ms]
	  Range (min … max):    60.4 ms …  70.7 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 57.481567ms
	Processing time (w/o IO): 55.339488ms
	Processing time (w/o IO): 66.033088ms
	Processing time (w/o IO): 53.002409ms
	Processing time (w/o IO): 53.423205ms
	Processing time (w/o IO): 52.757112ms
	Processing time (w/o IO): 53.587604ms
	Processing time (w/o IO): 53.643803ms
	Processing time (w/o IO): 52.584713ms
	Processing time (w/o IO): 54.332697ms
	Processing time (w/o IO): 53.490105ms
	Processing time (w/o IO): 53.195407ms
	Processing time (w/o IO): 52.717312ms
	  Time (mean ± σ):      76.5 ms ±   1.4 ms    [User: 64.4 ms, System: 12.0 ms]
	  Range (min … max):    74.3 ms …  78.8 ms    10 runs
	 
Rust Rayon:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 31.191311ms
	Processing time (w/o IO): 30.148821ms
	Processing time (w/o IO): 29.144931ms
	Processing time (w/o IO): 28.752634ms
	Processing time (w/o IO): 29.413628ms
	Processing time (w/o IO): 28.420937ms
	Processing time (w/o IO): 29.940623ms
	Processing time (w/o IO): 28.322439ms
	Processing time (w/o IO): 28.994332ms
	Processing time (w/o IO): 28.844534ms
	Processing time (w/o IO): 30.097218ms
	Processing time (w/o IO): 28.290735ms
	Processing time (w/o IO): 29.549023ms
	  Time (mean ± σ):      51.5 ms ±   2.2 ms    [User: 64.2 ms, System: 14.5 ms]
	  Range (min … max):    49.4 ms …  56.8 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 3.315s
	Processing time (w/o IO): 3.297s
	Processing time (w/o IO): 3.242s
	Processing time (w/o IO): 3.242s
	Processing time (w/o IO): 3.313s
	  Time (mean ± σ):      3.640 s ±  0.041 s    [User: 3.600 s, System: 0.038 s]
	  Range (min … max):    3.588 s …  3.683 s    5 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO):  1.273s
	Processing time (w/o IO):  1.213s
	Processing time (w/o IO):  1.210s
	Processing time (w/o IO):  1.172s
	Processing time (w/o IO):  1.192s
	  Time (mean ± σ):      1.697 s ±  0.042 s    [User: 1.619 s, System: 0.192 s]
	  Range (min … max):    1.653 s …  1.762 s    5 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 63.974904ms
	Processing time (w/o IO): 65.996285ms
	Processing time (w/o IO): 60.452337ms
	Processing time (w/o IO): 66.239783ms
	Processing time (w/o IO): 70.594943ms
	Processing time (w/o IO): 63.714306ms
	Processing time (w/o IO): 63.852905ms
	Processing time (w/o IO): 64.127702ms
	Processing time (w/o IO): 64.39ms
	Processing time (w/o IO): 64.927395ms
	  Time (mean ± σ):     127.3 ms ±   3.6 ms    [User: 114.5 ms, System: 12.6 ms]
	  Range (min … max):   122.4 ms … 132.4 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 238ms
	Processing time (w/o IO): 238ms
	Processing time (w/o IO): 235ms
	Processing time (w/o IO): 238ms
	Processing time (w/o IO): 248ms
	Processing time (w/o IO): 232ms
	Processing time (w/o IO): 250ms
	Processing time (w/o IO): 241ms
	Processing time (w/o IO): 242ms
	Processing time (w/o IO): 235ms
	Processing time (w/o IO): 237ms
	Processing time (w/o IO): 235ms
	Processing time (w/o IO): 242ms
	  Time (mean ± σ):     292.5 ms ±   6.1 ms    [User: 282.6 ms, System: 9.8 ms]
	  Range (min … max):   283.4 ms … 302.9 ms    10 runs
	 
Julia v2:

	Benchmark 1: julia related_v2.jl
	Processing time (w/o IO): 851 milliseconds
	Processing time (w/o IO): 899 milliseconds
	Processing time (w/o IO): 870 milliseconds
	Processing time (w/o IO): 850 milliseconds
	Processing time (w/o IO): 881 milliseconds
	Processing time (w/o IO): 862 milliseconds
	  Time (mean ± σ):      6.919 s ±  0.198 s    [User: 6.607 s, System: 0.309 s]
	  Range (min … max):    6.664 s …  7.206 s    5 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  439.438111ms
	Processing time (w/o IO):  457.044947ms
	Processing time (w/o IO):  458.169944ms
	Processing time (w/o IO):  447.219046ms
	Processing time (w/o IO):  443.657779ms
	Processing time (w/o IO):  463.894491ms
	Processing time (w/o IO):  448.456934ms
	Processing time (w/o IO):  452.647095ms
	Processing time (w/o IO):  440.050113ms
	Processing time (w/o IO):  438.437628ms
	  Time (mean ± σ):      1.158 s ±  0.015 s    [User: 1.144 s, System: 0.014 s]
	  Range (min … max):    1.142 s …  1.185 s    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 59.676ms
	Processing time (w/o IO): 61.697ms
	Processing time (w/o IO): 58.608ms
	Processing time (w/o IO): 60.974ms
	Processing time (w/o IO): 57.471ms
	  Time (mean ± σ):     729.3 ms ±  13.9 ms    [User: 684.5 ms, System: 43.6 ms]
	  Range (min … max):   714.6 ms … 749.1 ms    5 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 224ms
	Processing time (w/o IO): 224ms
	Processing time (w/o IO): 225ms
	Processing time (w/o IO): 219ms
	Processing time (w/o IO): 233ms
	Processing time (w/o IO): 231ms
	Processing time (w/o IO): 225ms
	Processing time (w/o IO): 230ms
	  Time (mean ± σ):     872.0 ms ±  14.6 ms    [User: 976.7 ms, System: 210.7 ms]
	  Range (min … max):   857.0 ms … 893.5 ms    5 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 73.39394092559814ms
	Processing time (w/o IO): 71.59197330474854ms
	Processing time (w/o IO): 63.732028007507324ms
	Processing time (w/o IO): 60.81104278564453ms
	Processing time (w/o IO): 60.92798709869385ms
	Processing time (w/o IO): 58.47299098968506ms
	Processing time (w/o IO): 65.1099681854248ms
	Processing time (w/o IO): 63.8279914855957ms
	Processing time (w/o IO): 62.62397766113281ms
	Processing time (w/o IO): 60.12904644012451ms
	  Time (mean ± σ):     581.6 ms ±  29.8 ms    [User: 525.1 ms, System: 49.9 ms]
	  Range (min … max):   547.7 ms … 633.5 ms    10 runs
	 
Node:

	Benchmark 1: node node.js
	Processing time (w/o IO): 292ms
	Processing time (w/o IO): 279ms
	Processing time (w/o IO): 275ms
	Processing time (w/o IO): 298ms
	Processing time (w/o IO): 293ms
	  Time (mean ± σ):     381.9 ms ±  10.3 ms    [User: 352.3 ms, System: 75.5 ms]
	  Range (min … max):   370.2 ms … 393.9 ms    5 runs
	 
Bun:

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 831ms
	Processing time (w/o IO): 817ms
	Processing time (w/o IO): 848ms
	Processing time (w/o IO): 896ms
	Processing time (w/o IO): 873ms
	  Time (mean ± σ):     921.9 ms ±  30.5 ms    [User: 966.6 ms, System: 41.7 ms]
	  Range (min … max):   890.8 ms … 964.2 ms    5 runs
	 
Deno:

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 349ms
	Processing time (w/o IO): 341ms
	Processing time (w/o IO): 348ms
	Processing time (w/o IO): 341ms
	Processing time (w/o IO): 359ms
	  Time (mean ± σ):     439.2 ms ±   9.9 ms    [User: 424.1 ms, System: 38.5 ms]
	  Range (min … max):   428.1 ms … 454.5 ms    5 runs
	 
