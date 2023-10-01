Go:

	Benchmark 1: ./related
	Processing time (w/o IO) 30.685365ms
	Processing time (w/o IO) 30.857368ms
	Processing time (w/o IO) 30.494162ms
	Processing time (w/o IO) 30.393661ms
	Processing time (w/o IO) 30.393561ms
	Processing time (w/o IO) 30.523663ms
	Processing time (w/o IO) 30.624964ms
	Processing time (w/o IO) 30.616364ms
	Processing time (w/o IO) 30.620964ms
	Processing time (w/o IO) 35.00093ms
	Processing time (w/o IO) 30.915768ms
	Processing time (w/o IO) 30.656365ms
	Processing time (w/o IO) 30.39806ms
	  Time (mean ± σ):      61.4 ms ±   1.3 ms    [User: 53.5 ms, System: 15.0 ms]
	  Range (min … max):    59.6 ms …  64.0 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO) 15.826332ms
	Processing time (w/o IO) 18.054765ms
	Processing time (w/o IO) 16.317739ms
	Processing time (w/o IO) 15.953934ms
	Processing time (w/o IO) 19.829691ms
	Processing time (w/o IO) 15.835133ms
	Processing time (w/o IO) 15.958635ms
	Processing time (w/o IO) 15.880333ms
	Processing time (w/o IO) 15.892634ms
	Processing time (w/o IO) 16.076736ms
	Processing time (w/o IO) 15.996035ms
	Processing time (w/o IO) 16.662944ms
	Processing time (w/o IO) 16.808046ms
	  Time (mean ± σ):      50.1 ms ±   2.1 ms    [User: 51.2 ms, System: 17.3 ms]
	  Range (min … max):    47.3 ms …  55.0 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 33.502276ms
	Processing time (w/o IO): 33.04467ms
	Processing time (w/o IO): 33.08557ms
	Processing time (w/o IO): 33.06257ms
	Processing time (w/o IO): 33.104271ms
	Processing time (w/o IO): 33.08717ms
	Processing time (w/o IO): 33.101371ms
	Processing time (w/o IO): 33.10657ms
	Processing time (w/o IO): 33.076471ms
	Processing time (w/o IO): 33.106071ms
	Processing time (w/o IO): 33.146871ms
	Processing time (w/o IO): 33.100571ms
	Processing time (w/o IO): 33.033069ms
	  Time (mean ± σ):      51.5 ms ±   0.1 ms    [User: 43.3 ms, System: 8.1 ms]
	  Range (min … max):    51.3 ms …  51.6 ms    10 runs
	 
Rust Rayon:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 18.432161ms
	Processing time (w/o IO): 18.223457ms
	Processing time (w/o IO): 18.34406ms
	Processing time (w/o IO): 18.192357ms
	Processing time (w/o IO): 17.936353ms
	Processing time (w/o IO): 18.284758ms
	Processing time (w/o IO): 18.239958ms
	Processing time (w/o IO): 18.36786ms
	Processing time (w/o IO): 18.109656ms
	Processing time (w/o IO): 18.286158ms
	Processing time (w/o IO): 17.501447ms
	Processing time (w/o IO): 18.189057ms
	Processing time (w/o IO): 18.40506ms
	  Time (mean ± σ):      35.5 ms ±   0.7 ms    [User: 43.4 ms, System: 8.8 ms]
	  Range (min … max):    34.2 ms …  36.6 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 2.720s
	Processing time (w/o IO): 2.720s
	Processing time (w/o IO): 2.716s
	Processing time (w/o IO): 2.711s
	Processing time (w/o IO): 2.718s
	  Time (mean ± σ):      3.008 s ±  0.004 s    [User: 2.989 s, System: 0.018 s]
	  Range (min … max):    3.002 s …  3.012 s    5 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO):  0.957s
	Processing time (w/o IO):  0.933s
	Processing time (w/o IO):  0.945s
	Processing time (w/o IO):  0.920s
	Processing time (w/o IO):  0.914s
	  Time (mean ± σ):      1.321 s ±  0.019 s    [User: 1.278 s, System: 0.144 s]
	  Range (min … max):    1.301 s …  1.348 s    5 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 56.276027ms
	Processing time (w/o IO): 55.798221ms
	Processing time (w/o IO): 56.362927ms
	Processing time (w/o IO): 56.077624ms
	Processing time (w/o IO): 56.435828ms
	Processing time (w/o IO): 55.814021ms
	Processing time (w/o IO): 55.75012ms
	Processing time (w/o IO): 55.77702ms
	Processing time (w/o IO): 55.803121ms
	Processing time (w/o IO): 55.64512ms
	  Time (mean ± σ):     111.7 ms ±   1.3 ms    [User: 101.9 ms, System: 9.7 ms]
	  Range (min … max):   109.1 ms … 113.4 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 177ms
	  Time (mean ± σ):     219.4 ms ±   0.2 ms    [User: 213.3 ms, System: 6.0 ms]
	  Range (min … max):   219.1 ms … 219.8 ms    10 runs
	 
Julia v2:

	Benchmark 1: julia related_v2.jl
	Processing time (w/o IO): 722 milliseconds
	Processing time (w/o IO): 736 milliseconds
	Processing time (w/o IO): 735 milliseconds
	Processing time (w/o IO): 742 milliseconds
	Processing time (w/o IO): 740 milliseconds
	Processing time (w/o IO): 741 milliseconds
	  Time (mean ± σ):      5.170 s ±  0.022 s    [User: 4.949 s, System: 0.216 s]
	  Range (min … max):    5.143 s …  5.201 s    5 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  331.093337ms
	Processing time (w/o IO):  331.804555ms
	Processing time (w/o IO):  330.053576ms
	Processing time (w/o IO):  331.003717ms
	Processing time (w/o IO):  330.356089ms
	Processing time (w/o IO):  330.428492ms
	Processing time (w/o IO):  330.358389ms
	Processing time (w/o IO):  330.395225ms
	Processing time (w/o IO):  330.502128ms
	Processing time (w/o IO):  330.719831ms
	  Time (mean ± σ):     865.2 ms ±   0.7 ms    [User: 854.7 ms, System: 10.3 ms]
	  Range (min … max):   864.1 ms … 866.6 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 58.884ms
	Processing time (w/o IO): 58.611ms
	Processing time (w/o IO): 59.425ms
	Processing time (w/o IO): 59.078ms
	Processing time (w/o IO): 59.338ms
	  Time (mean ± σ):     402.3 ms ±   2.5 ms    [User: 374.2 ms, System: 27.6 ms]
	  Range (min … max):   399.5 ms … 404.5 ms    5 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 233ms
	Processing time (w/o IO): 222ms
	Processing time (w/o IO): 218ms
	Processing time (w/o IO): 236ms
	Processing time (w/o IO): 245ms
	Processing time (w/o IO): 238ms
	Processing time (w/o IO): 225ms
	Processing time (w/o IO): 218ms
	  Time (mean ± σ):     732.0 ms ±  12.0 ms    [User: 796.2 ms, System: 157.6 ms]
	  Range (min … max):   720.8 ms … 751.3 ms    5 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 57.37197399139404ms
	Processing time (w/o IO): 57.53207206726074ms
	Processing time (w/o IO): 57.34705924987793ms
	Processing time (w/o IO): 57.345032691955566ms
	Processing time (w/o IO): 57.50000476837158ms
	Processing time (w/o IO): 57.29401111602783ms
	Processing time (w/o IO): 57.113051414489746ms
	Processing time (w/o IO): 57.54494667053223ms
	Processing time (w/o IO): 57.55603313446045ms
	Processing time (w/o IO): 57.57403373718262ms
	  Time (mean ± σ):     475.3 ms ±   9.0 ms    [User: 432.3 ms, System: 37.5 ms]
	  Range (min … max):   467.8 ms … 499.1 ms    10 runs
	 
Node:

	Benchmark 1: node node.js
	Processing time (w/o IO): 285ms
	Processing time (w/o IO): 287ms
	Processing time (w/o IO): 282ms
	Processing time (w/o IO): 285ms
	Processing time (w/o IO): 284ms
	  Time (mean ± σ):     364.3 ms ±   4.3 ms    [User: 342.6 ms, System: 60.8 ms]
	  Range (min … max):   357.6 ms … 367.6 ms    5 runs
	 
Bun:

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 895ms
	Processing time (w/o IO): 762ms
	Processing time (w/o IO): 895ms
	Processing time (w/o IO): 725ms
	Processing time (w/o IO): 741ms
	  Time (mean ± σ):     856.7 ms ±  84.6 ms    [User: 890.5 ms, System: 36.8 ms]
	  Range (min … max):   778.6 ms … 948.6 ms    5 runs
	 
