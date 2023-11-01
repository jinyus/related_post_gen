Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 24.295605ms
	Processing time (w/o IO): 24.436408ms
	Processing time (w/o IO): 24.350906ms
	Processing time (w/o IO): 24.347206ms
	Processing time (w/o IO): 24.316605ms
	Processing time (w/o IO): 24.091702ms
	Processing time (w/o IO): 27.136953ms
	Processing time (w/o IO): 24.437608ms
	Processing time (w/o IO): 24.256005ms
	Processing time (w/o IO): 24.331806ms
	Processing time (w/o IO): 24.160003ms
	Processing time (w/o IO): 26.587044ms
	Processing time (w/o IO): 24.455408ms
	  Time (mean ± σ):      67.5 ms ±   1.9 ms    [User: 66.3 ms, System: 9.3 ms]
	  Range (min … max):    65.6 ms …  71.4 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 13.81723ms
	Processing time (w/o IO): 11.792697ms
	Processing time (w/o IO): 11.787897ms
	Processing time (w/o IO): 11.865998ms
	Processing time (w/o IO): 11.935399ms
	Processing time (w/o IO): 11.705996ms
	Processing time (w/o IO): 11.700895ms
	Processing time (w/o IO): 11.666595ms
	Processing time (w/o IO): 13.547926ms
	Processing time (w/o IO): 11.888198ms
	Processing time (w/o IO): 11.735996ms
	Processing time (w/o IO): 13.468425ms
	Processing time (w/o IO): 11.605894ms
	  Time (mean ± σ):      51.9 ms ±   1.7 ms    [User: 80.4 ms, System: 10.7 ms]
	  Range (min … max):    48.8 ms …  54.8 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 23.541084ms
	Processing time (w/o IO): 23.466582ms
	Processing time (w/o IO): 23.441882ms
	Processing time (w/o IO): 23.468383ms
	Processing time (w/o IO): 23.629785ms
	Processing time (w/o IO): 23.484583ms
	Processing time (w/o IO): 23.434282ms
	Processing time (w/o IO): 23.425681ms
	Processing time (w/o IO): 23.420081ms
	Processing time (w/o IO): 23.649885ms
	Processing time (w/o IO): 23.493782ms
	Processing time (w/o IO): 23.469783ms
	Processing time (w/o IO): 23.456882ms
	  Time (mean ± σ):      39.6 ms ±   0.8 ms    [User: 32.2 ms, System: 7.4 ms]
	  Range (min … max):    39.1 ms …  41.7 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 12.270379ms
	Processing time (w/o IO): 12.167577ms
	Processing time (w/o IO): 13.281693ms
	Processing time (w/o IO): 12.111577ms
	Processing time (w/o IO): 12.169877ms
	Processing time (w/o IO): 12.218678ms
	Processing time (w/o IO): 12.248478ms
	Processing time (w/o IO): 12.293679ms
	Processing time (w/o IO): 12.263879ms
	Processing time (w/o IO): 12.34858ms
	Processing time (w/o IO): 12.34998ms
	Processing time (w/o IO): 12.314379ms
	Processing time (w/o IO): 12.247778ms
	  Time (mean ± σ):      30.5 ms ±   0.5 ms    [User: 32.7 ms, System: 9.7 ms]
	  Range (min … max):    29.8 ms …  31.2 ms    10 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 24.332ms
	Processing time (w/o IO): 24.679ms
	Processing time (w/o IO): 24.772ms
	Processing time (w/o IO): 24.279ms
	Processing time (w/o IO): 24.859ms
	Processing time (w/o IO): 24.689ms
	Processing time (w/o IO): 24.85ms
	Processing time (w/o IO): 24.819ms
	Processing time (w/o IO): 25.043ms
	Processing time (w/o IO): 24.426ms
	Processing time (w/o IO): 25.074ms
	Processing time (w/o IO): 24.443ms
	Processing time (w/o IO): 25.557ms
	  Time (mean ± σ):     105.0 ms ±   0.6 ms    [User: 94.9 ms, System: 11.6 ms]
	  Range (min … max):   104.1 ms … 105.8 ms    10 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 12.162ms
	Processing time (w/o IO): 13.925ms
	Processing time (w/o IO): 12.909ms
	Processing time (w/o IO): 13.344ms
	Processing time (w/o IO): 12.725ms
	Processing time (w/o IO): 13.717ms
	Processing time (w/o IO): 12.481ms
	Processing time (w/o IO): 12.804ms
	Processing time (w/o IO): 12.642ms
	Processing time (w/o IO): 13.289ms
	Processing time (w/o IO): 11.933ms
	Processing time (w/o IO): 12.844ms
	Processing time (w/o IO): 13.784ms
	  Time (mean ± σ):      91.9 ms ±   0.5 ms    [User: 107.4 ms, System: 8.5 ms]
	  Range (min … max):    90.9 ms …  92.5 ms    10 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	  Time (mean ± σ):     231.2 ms ±   1.6 ms    [User: 198.5 ms, System: 32.6 ms]
	  Range (min … max):   229.0 ms … 234.0 ms    10 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 12 ms
	Processing time (w/o IO): 15 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 15 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 15 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 13 ms
	  Time (mean ± σ):     238.9 ms ±   2.4 ms    [User: 232.6 ms, System: 40.7 ms]
	  Range (min … max):   235.1 ms … 241.9 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 1.485s
	Processing time (w/o IO): 1.462s
	Processing time (w/o IO): 1.462s
	Processing time (w/o IO): 1.462s
	Processing time (w/o IO): 1.466s
	Processing time (w/o IO): 1.476s
	Processing time (w/o IO): 1.459s
	Processing time (w/o IO): 1.472s
	Processing time (w/o IO): 1.458s
	Processing time (w/o IO): 1.463s
	Processing time (w/o IO): 1.463s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.463s
	  Time (mean ± σ):      1.533 s ±  0.006 s    [User: 1.514 s, System: 0.018 s]
	  Range (min … max):    1.526 s …  1.544 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 353.2ms
	Processing time (w/o IO): 367.1ms
	Processing time (w/o IO): 354.0ms
	Processing time (w/o IO): 357.7ms
	Processing time (w/o IO): 353.1ms
	Processing time (w/o IO): 352.8ms
	Processing time (w/o IO): 353.4ms
	Processing time (w/o IO): 353.6ms
	Processing time (w/o IO): 358.9ms
	Processing time (w/o IO): 354.7ms
	Processing time (w/o IO): 354.7ms
	Processing time (w/o IO): 353.5ms
	Processing time (w/o IO): 353.4ms
	  Time (mean ± σ):     682.2 ms ±  95.7 ms    [User: 845.4 ms, System: 416.6 ms]
	  Range (min … max):   641.1 ms … 951.0 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 60.169698ms
	Processing time (w/o IO): 60.676293ms
	Processing time (w/o IO): 60.293297ms
	Processing time (w/o IO): 60.269297ms
	Processing time (w/o IO): 60.167898ms
	Processing time (w/o IO): 60.397896ms
	Processing time (w/o IO): 60.286897ms
	Processing time (w/o IO): 61.130589ms
	Processing time (w/o IO): 60.193598ms
	Processing time (w/o IO): 60.631094ms
	Processing time (w/o IO): 60.537595ms
	Processing time (w/o IO): 60.451895ms
	Processing time (w/o IO): 60.258097ms
	  Time (mean ± σ):     110.6 ms ±   1.5 ms    [User: 100.1 ms, System: 10.3 ms]
	  Range (min … max):   109.0 ms … 113.3 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 23ms
	Processing time (w/o IO): 23ms
	Processing time (w/o IO): 23ms
	Processing time (w/o IO): 23ms
	Processing time (w/o IO): 23ms
	Processing time (w/o IO): 23ms
	Processing time (w/o IO): 23ms
	Processing time (w/o IO): 23ms
	Processing time (w/o IO): 23ms
	Processing time (w/o IO): 23ms
	Processing time (w/o IO): 23ms
	Processing time (w/o IO): 23ms
	Processing time (w/o IO): 23ms
	  Time (mean ± σ):      71.6 ms ±   0.2 ms    [User: 67.3 ms, System: 4.3 ms]
	  Range (min … max):    71.4 ms …  72.0 ms    10 runs
	 
Julia:

	Benchmark 1: julia -O3 --project=Related -e "using Related; main()"
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 24 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 24 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 25 milliseconds
	Processing time (w/o IO): 24 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 24 milliseconds
	Processing time (w/o IO): 24 milliseconds
	  Time (mean ± σ):      3.351 s ±  0.047 s    [User: 3.200 s, System: 0.254 s]
	  Range (min … max):    3.280 s …  3.447 s    10 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 8 milliseconds
	  Time (mean ± σ):      1.029 s ±  0.019 s    [User: 0.905 s, System: 0.227 s]
	  Range (min … max):    1.001 s …  1.059 s    10 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 13 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 13 milliseconds
	Processing time (w/o IO): 15 milliseconds
	Processing time (w/o IO): 15 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 13 milliseconds
	Processing time (w/o IO): 12 milliseconds
	Processing time (w/o IO): 13 milliseconds
	Processing time (w/o IO): 15 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 13 milliseconds
	Processing time (w/o IO): 16 milliseconds
	  Time (mean ± σ):      3.601 s ±  0.045 s    [User: 5.131 s, System: 0.275 s]
	  Range (min … max):    3.522 s …  3.668 s    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  47.639757ms
	Processing time (w/o IO):  47.602457ms
	Processing time (w/o IO):  47.820673ms
	Processing time (w/o IO):  47.386869ms
	Processing time (w/o IO):  47.826873ms
	Processing time (w/o IO):  47.416569ms
	Processing time (w/o IO):  47.608271ms
	Processing time (w/o IO):  47.610671ms
	Processing time (w/o IO):  47.41787ms
	Processing time (w/o IO):  47.371569ms
	Processing time (w/o IO):  47.700971ms
	Processing time (w/o IO):  47.870173ms
	Processing time (w/o IO):  47.51267ms
	  Time (mean ± σ):     269.6 ms ±   1.0 ms    [User: 257.4 ms, System: 12.1 ms]
	  Range (min … max):   267.8 ms … 271.1 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 49.888ms
	Processing time (w/o IO): 49.146ms
	Processing time (w/o IO): 48.748ms
	Processing time (w/o IO): 48.985ms
	Processing time (w/o IO): 49.137ms
	Processing time (w/o IO): 49.478ms
	Processing time (w/o IO): 49.489ms
	Processing time (w/o IO): 48.969ms
	Processing time (w/o IO): 49.547ms
	Processing time (w/o IO): 48.997ms
	Processing time (w/o IO): 49.069ms
	Processing time (w/o IO): 49.744ms
	Processing time (w/o IO): 49.453ms
	  Time (mean ± σ):     376.8 ms ±   1.3 ms    [User: 347.7 ms, System: 29.1 ms]
	  Range (min … max):   375.5 ms … 379.2 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 172ms
	Processing time (w/o IO): 171ms
	Processing time (w/o IO): 171ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 173ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 170ms
	  Time (mean ± σ):     562.0 ms ±  12.8 ms    [User: 675.5 ms, System: 117.2 ms]
	  Range (min … max):   543.9 ms … 582.8 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	  Time (mean ± σ):     261.6 ms ±   1.7 ms    [User: 245.4 ms, System: 21.1 ms]
	  Range (min … max):   258.9 ms … 264.7 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 52.79195308685303ms
	Processing time (w/o IO): 52.694082260131836ms
	Processing time (w/o IO): 52.502989768981934ms
	Processing time (w/o IO): 52.497029304504395ms
	Processing time (w/o IO): 53.04408073425293ms
	Processing time (w/o IO): 52.706003189086914ms
	Processing time (w/o IO): 52.632927894592285ms
	Processing time (w/o IO): 51.97000503540039ms
	Processing time (w/o IO): 51.9258975982666ms
	Processing time (w/o IO): 51.371097564697266ms
	Processing time (w/o IO): 51.727890968322754ms
	Processing time (w/o IO): 53.94601821899414ms
	Processing time (w/o IO): 51.50902271270752ms
	  Time (mean ± σ):     416.5 ms ±   4.8 ms    [User: 351.6 ms, System: 46.7 ms]
	  Range (min … max):   409.6 ms … 424.7 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 32.598961ms
	Processing time (w/o IO): 32.255356ms
	Processing time (w/o IO): 32.185655ms
	Processing time (w/o IO): 31.853251ms
	Processing time (w/o IO): 31.11484ms
	Processing time (w/o IO): 32.323457ms
	Processing time (w/o IO): 31.17324ms
	Processing time (w/o IO): 31.024638ms
	Processing time (w/o IO): 32.289256ms
	Processing time (w/o IO): 31.762522ms
	Processing time (w/o IO): 31.919524ms
	Processing time (w/o IO): 31.55302ms
	Processing time (w/o IO): 32.201428ms
	  Time (mean ± σ):     409.9 ms ±  45.4 ms    [User: 438.0 ms, System: 29.8 ms]
	  Range (min … max):   390.5 ms … 538.8 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 134ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 184ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 127ms
	  Time (mean ± σ):     312.1 ms ±  18.2 ms    [User: 308.0 ms, System: 59.4 ms]
	  Range (min … max):   300.7 ms … 361.1 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 100ms
	Processing time (w/o IO): 117ms
	Processing time (w/o IO): 120ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 121ms
	Processing time (w/o IO): 120ms
	Processing time (w/o IO): 113ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 119ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 105ms
	Processing time (w/o IO): 123ms
	  Time (mean ± σ):     178.1 ms ±   8.0 ms    [User: 198.2 ms, System: 35.7 ms]
	  Range (min … max):   160.9 ms … 188.3 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 195ms
	Processing time (w/o IO): 134ms
	Processing time (w/o IO): 199ms
	Processing time (w/o IO): 197ms
	Processing time (w/o IO): 200ms
	Processing time (w/o IO): 197ms
	Processing time (w/o IO): 194ms
	Processing time (w/o IO): 198ms
	Processing time (w/o IO): 199ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 194ms
	Processing time (w/o IO): 195ms
	Processing time (w/o IO): 196ms
	  Time (mean ± σ):     260.9 ms ±  19.7 ms    [User: 257.3 ms, System: 30.4 ms]
	  Range (min … max):   205.0 ms … 271.0 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 53 ms
	  Time (mean ± σ):     391.7 ms ±   6.4 ms    [User: 703.9 ms, System: 48.8 ms]
	  Range (min … max):   378.5 ms … 403.3 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	  Time (mean ± σ):     145.2 ms ±   0.7 ms    [User: 131.4 ms, System: 13.9 ms]
	  Range (min … max):   143.8 ms … 146.2 ms    10 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 46 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 48 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 49 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 48 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 50 ms
	  Time (mean ± σ):      81.0 ms ±   1.4 ms    [User: 145.3 ms, System: 10.8 ms]
	  Range (min … max):    79.2 ms …  83.7 ms    10 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 22.369ms
	Processing time (w/o IO): 22.011ms
	Processing time (w/o IO): 22.194ms
	Processing time (w/o IO): 22.238ms
	Processing time (w/o IO): 22.025ms
	Processing time (w/o IO): 22.098ms
	Processing time (w/o IO): 22.153ms
	Processing time (w/o IO): 22.012ms
	Processing time (w/o IO): 21.983ms
	Processing time (w/o IO): 22.131ms
	Processing time (w/o IO): 22.043ms
	Processing time (w/o IO): 22.023ms
	Processing time (w/o IO): 21.981ms
	  Time (mean ± σ):      50.5 ms ±   0.5 ms    [User: 40.4 ms, System: 10.1 ms]
	  Range (min … max):    49.5 ms …  51.3 ms    10 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 14.27ms
	Processing time (w/o IO): 14.137ms
	Processing time (w/o IO): 12.17ms
	Processing time (w/o IO): 12.15ms
	Processing time (w/o IO): 12.156ms
	Processing time (w/o IO): 12.222ms
	Processing time (w/o IO): 12.572ms
	Processing time (w/o IO): 12.182ms
	Processing time (w/o IO): 12.235ms
	Processing time (w/o IO): 12.177ms
	Processing time (w/o IO): 14.062ms
	Processing time (w/o IO): 13.41ms
	Processing time (w/o IO): 12.148ms
	  Time (mean ± σ):      39.6 ms ±   0.8 ms    [User: 63.6 ms, System: 9.8 ms]
	  Range (min … max):    38.2 ms …  40.5 ms    10 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 93ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 93ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	  Time (mean ± σ):      1.032 s ±  0.007 s    [User: 1.141 s, System: 0.100 s]
	  Range (min … max):    1.020 s …  1.044 s    10 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 22ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 20ms
	  Time (mean ± σ):     937.1 ms ±   8.7 ms    [User: 1102.2 ms, System: 113.4 ms]
	  Range (min … max):   922.4 ms … 952.4 ms    10 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 18ms
	  Time (mean ± σ):     722.6 ms ±   2.8 ms    [User: 810.3 ms, System: 88.9 ms]
	  Range (min … max):   716.9 ms … 726.7 ms    10 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	  Time (mean ± σ):     746.7 ms ±   4.3 ms    [User: 722.1 ms, System: 83.5 ms]
	  Range (min … max):   743.1 ms … 758.0 ms    10 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 27.0839ms
	Processing time (w/o IO): 27.4031ms
	Processing time (w/o IO): 27.2722ms
	Processing time (w/o IO): 27.1304ms
	Processing time (w/o IO): 27.2416ms
	Processing time (w/o IO): 27.2357ms
	Processing time (w/o IO): 27.193ms
	Processing time (w/o IO): 27.1152ms
	Processing time (w/o IO): 26.9843ms
	Processing time (w/o IO): 27.3168ms
	Processing time (w/o IO): 27.2235ms
	Processing time (w/o IO): 29.6001ms
	Processing time (w/o IO): 27.8023ms
	  Time (mean ± σ):     213.0 ms ±   4.6 ms    [User: 172.5 ms, System: 33.8 ms]
	  Range (min … max):   205.6 ms … 219.3 ms    10 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 26.3804ms
	Processing time (w/o IO): 26.4647ms
	Processing time (w/o IO): 26.4632ms
	Processing time (w/o IO): 26.5094ms
	Processing time (w/o IO): 26.3724ms
	Processing time (w/o IO): 27.2248ms
	Processing time (w/o IO): 27.7307ms
	Processing time (w/o IO): 26.6976ms
	Processing time (w/o IO): 26.4487ms
	Processing time (w/o IO): 26.7331ms
	Processing time (w/o IO): 27.9747ms
	Processing time (w/o IO): 27.251ms
	Processing time (w/o IO): 26.4545ms
	  Time (mean ± σ):     106.1 ms ±   2.4 ms    [User: 102.3 ms, System: 21.3 ms]
	  Range (min … max):   102.6 ms … 109.7 ms    10 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 13.3691ms
	Processing time (w/o IO): 13.5987ms
	Processing time (w/o IO): 13.8537ms
	Processing time (w/o IO): 13.4205ms
	Processing time (w/o IO): 14.7844ms
	Processing time (w/o IO): 13.7099ms
	Processing time (w/o IO): 12.6375ms
	Processing time (w/o IO): 14.0966ms
	Processing time (w/o IO): 13.9545ms
	Processing time (w/o IO): 15.6402ms
	Processing time (w/o IO): 15.9301ms
	Processing time (w/o IO): 13.6191ms
	Processing time (w/o IO): 13.7288ms
	  Time (mean ± σ):     206.3 ms ±   7.7 ms    [User: 211.0 ms, System: 35.0 ms]
	  Range (min … max):   193.0 ms … 219.6 ms    10 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 10.8658ms
	Processing time (w/o IO): 11.5312ms
	Processing time (w/o IO): 11.1366ms
	Processing time (w/o IO): 10.9688ms
	Processing time (w/o IO): 11.6199ms
	Processing time (w/o IO): 10.9403ms
	Processing time (w/o IO): 10.9442ms
	Processing time (w/o IO): 10.7916ms
	Processing time (w/o IO): 10.8785ms
	Processing time (w/o IO): 10.8759ms
	Processing time (w/o IO): 11.1356ms
	Processing time (w/o IO): 10.6972ms
	Processing time (w/o IO): 10.8578ms
	  Time (mean ± σ):      73.6 ms ±   3.0 ms    [User: 128.3 ms, System: 24.8 ms]
	  Range (min … max):    68.6 ms …  78.7 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	104.15887832642	ms
	Processing time (w/o IO):	113.14606666565	ms
	Processing time (w/o IO):	110.52393913269	ms
	Processing time (w/o IO):	113.58189582825	ms
	Processing time (w/o IO):	112.24508285522	ms
	Processing time (w/o IO):	108.35909843445	ms
	Processing time (w/o IO):	104.23898696899	ms
	Processing time (w/o IO):	112.19811439514	ms
	Processing time (w/o IO):	88.186979293823	ms
	Processing time (w/o IO):	116.32609367371	ms
	Processing time (w/o IO):	104.47597503662	ms
	Processing time (w/o IO):	117.75302886963	ms
	Processing time (w/o IO):	88.844060897827	ms
	  Time (mean ± σ):     351.6 ms ±  11.4 ms    [User: 332.5 ms, System: 19.0 ms]
	  Range (min … max):   330.9 ms … 369.0 ms    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1092.5221443176	ms
	Processing time (w/o IO):	1094.710111618	ms
	Processing time (w/o IO):	1088.7980461121	ms
	Processing time (w/o IO):	1098.0179309845	ms
	Processing time (w/o IO):	1093.2610034943	ms
	Processing time (w/o IO):	1091.6318893433	ms
	Processing time (w/o IO):	1089.4501209259	ms
	Processing time (w/o IO):	1090.5408859253	ms
	Processing time (w/o IO):	1095.9930419922	ms
	Processing time (w/o IO):	1090.133190155	ms
	Processing time (w/o IO):	1094.9800014496	ms
	Processing time (w/o IO):	1107.4359416962	ms
	Processing time (w/o IO):	1089.3528461456	ms
	  Time (mean ± σ):      1.523 s ±  0.013 s    [User: 1.505 s, System: 0.017 s]
	  Range (min … max):    1.507 s …  1.551 s    10 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 145ms
	Processing time (w/o IO): 143ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 145ms
	Processing time (w/o IO): 139ms
	Processing time (w/o IO): 143ms
	Processing time (w/o IO): 139ms
	Processing time (w/o IO): 139ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 144ms
	Processing time (w/o IO): 141ms
	  Time (mean ± σ):     226.7 ms ±   4.2 ms    [User: 201.0 ms, System: 25.6 ms]
	  Range (min … max):   221.8 ms … 233.3 ms    10 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 0.890587 s
	Processing time (w/o IO): 0.891379 s
	Processing time (w/o IO): 0.893649 s
	Processing time (w/o IO): 0.892666 s
	Processing time (w/o IO): 0.889790 s
	Processing time (w/o IO): 0.891378 s
	Processing time (w/o IO): 0.895693 s
	Processing time (w/o IO): 0.893431 s
	Processing time (w/o IO): 0.892476 s
	Processing time (w/o IO): 0.893685 s
	Processing time (w/o IO): 0.896433 s
	Processing time (w/o IO): 0.893809 s
	Processing time (w/o IO): 0.893458 s
	  Time (mean ± σ):      1.251 s ±  0.004 s    [User: 1.197 s, System: 0.089 s]
	  Range (min … max):    1.245 s …  1.255 s    10 runs
	 
Ruby:

	Benchmark 1: ruby related.rb
	Processing time (w/o IO): 3022ms
	Processing time (w/o IO): 3009ms
	Processing time (w/o IO): 3004ms
	Processing time (w/o IO): 3042ms
	Processing time (w/o IO): 3007ms
	Processing time (w/o IO): 3055ms
	Processing time (w/o IO): 3088ms
	Processing time (w/o IO): 3006ms
	Processing time (w/o IO): 3016ms
	Processing time (w/o IO): 3002ms
	Processing time (w/o IO): 3084ms
	Processing time (w/o IO): 3008ms
	Processing time (w/o IO): 3017ms
	  Time (mean ± σ):      3.150 s ±  0.033 s    [User: 3.123 s, System: 0.027 s]
	  Range (min … max):    3.120 s …  3.206 s    10 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 370.229683ms
	Processing time (w/o IO): 369.585378ms
	Processing time (w/o IO): 370.94999ms
	  Time (mean ± σ):     534.8 ms ±   0.2 ms    [User: 517.2 ms, System: 47.5 ms]
	  Range (min … max):   534.7 ms … 534.9 ms    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 164.127067ms
	Processing time (w/o IO): 165.085575ms
	Processing time (w/o IO): 164.350169ms
	  Time (mean ± σ):     331.7 ms ±   0.4 ms    [User: 805.1 ms, System: 43.2 ms]
	  Range (min … max):   331.4 ms … 332.0 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 341.063141ms
	Processing time (w/o IO): 342.496952ms
	Processing time (w/o IO): 344.439669ms
	  Time (mean ± σ):     415.4 ms ±   0.0 ms    [User: 372.5 ms, System: 41.6 ms]
	  Range (min … max):   415.4 ms … 415.4 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 172.735138ms
	Processing time (w/o IO): 172.253268ms
	Processing time (w/o IO): 171.972487ms
	  Time (mean ± σ):     243.0 ms ±   0.6 ms    [User: 383.5 ms, System: 29.3 ms]
	  Range (min … max):   242.6 ms … 243.5 ms    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 319.905ms
	Processing time (w/o IO): 317.58ms
	Processing time (w/o IO): 317.106ms
	  Time (mean ± σ):     617.9 ms ±   0.0 ms    [User: 598.3 ms, System: 23.6 ms]
	  Range (min … max):   617.8 ms … 617.9 ms    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 123.816ms
	Processing time (w/o IO): 124.219ms
	Processing time (w/o IO): 124.205ms
	  Time (mean ± σ):     437.0 ms ±   0.9 ms    [User: 730.4 ms, System: 27.2 ms]
	  Range (min … max):   436.3 ms … 437.6 ms    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 339 ms
	Processing time (w/o IO): 339 ms
	Processing time (w/o IO): 339 ms
	  Time (mean ± σ):      1.189 s ±  0.001 s    [User: 1.058 s, System: 0.128 s]
	  Range (min … max):    1.188 s …  1.190 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 164 ms
	Processing time (w/o IO): 163 ms
	Processing time (w/o IO): 166 ms
	  Time (mean ± σ):      1.059 s ±  0.000 s    [User: 1.383 s, System: 0.152 s]
	  Range (min … max):    1.059 s …  1.059 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 23.532s
	Processing time (w/o IO): 23.282s
	  Time (abs ≡):        23.461 s               [User: 23.393 s, System: 0.063 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 6.590s
	Processing time (w/o IO): 7.338s
	Processing time (w/o IO): 7.741s
	  Time (mean ± σ):      8.079 s ±  0.277 s    [User: 5.207 s, System: 3.461 s]
	  Range (min … max):    7.884 s …  8.275 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 912.367748ms
	Processing time (w/o IO): 908.586708ms
	Processing time (w/o IO): 907.156493ms
	  Time (mean ± σ):      1.131 s ±  0.005 s    [User: 1.087 s, System: 0.035 s]
	  Range (min … max):    1.127 s …  1.135 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 339ms
	Processing time (w/o IO): 339ms
	Processing time (w/o IO): 345ms
	  Time (mean ± σ):     535.5 ms ±   5.5 ms    [User: 508.5 ms, System: 25.4 ms]
	  Range (min … max):   531.6 ms … 539.4 ms    2 runs
	 
Julia:

	Benchmark 1: julia -O3 --project=Related -e "using Related; main()"
	Processing time (w/o IO): 480 milliseconds
	Processing time (w/o IO): 481 milliseconds
	Processing time (w/o IO): 365 milliseconds
	  Time (mean ± σ):      3.937 s ±  0.144 s    [User: 3.724 s, System: 0.313 s]
	  Range (min … max):    3.835 s …  4.038 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 60 milliseconds
	Processing time (w/o IO): 63 milliseconds
	Processing time (w/o IO): 59 milliseconds
	  Time (mean ± σ):      1.239 s ±  0.010 s    [User: 1.064 s, System: 0.279 s]
	  Range (min … max):    1.233 s …  1.246 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 173 milliseconds
	Processing time (w/o IO): 219 milliseconds
	Processing time (w/o IO): 173 milliseconds
	  Time (mean ± σ):      3.971 s ±  0.021 s    [User: 5.945 s, System: 0.365 s]
	  Range (min … max):    3.957 s …  3.986 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  690.100862ms
	Processing time (w/o IO):  687.661837ms
	Processing time (w/o IO):  690.332764ms
	  Time (mean ± σ):      1.489 s ±  0.001 s    [User: 1.455 s, System: 0.032 s]
	  Range (min … max):    1.489 s …  1.490 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 747.829ms
	Processing time (w/o IO): 741.696ms
	Processing time (w/o IO): 741.381ms
	  Time (mean ± σ):     10.794 s ±  0.109 s    [User: 10.642 s, System: 0.149 s]
	  Range (min … max):   10.716 s … 10.871 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 2237ms
	Processing time (w/o IO): 2383ms
	Processing time (w/o IO): 2249ms
	  Time (mean ± σ):      3.012 s ±  0.112 s    [User: 3.199 s, System: 0.171 s]
	  Range (min … max):    2.933 s …  3.090 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 2010ms
	Processing time (w/o IO): 2017ms
	Processing time (w/o IO): 2002ms
	  Time (mean ± σ):      2.507 s ±  0.007 s    [User: 2.456 s, System: 0.073 s]
	  Range (min … max):    2.502 s …  2.512 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 721.8879461288452ms
	Processing time (w/o IO): 721.0639715194702ms
	Processing time (w/o IO): 717.147946357727ms
	  Time (mean ± σ):      2.128 s ±  0.008 s    [User: 1.952 s, System: 0.137 s]
	  Range (min … max):    2.122 s …  2.133 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 394.635081ms
	Processing time (w/o IO): 394.599527ms
	Processing time (w/o IO): 395.371631ms
	  Time (mean ± σ):      1.880 s ±  0.049 s    [User: 2.828 s, System: 0.159 s]
	  Range (min … max):    1.846 s …  1.915 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 2500ms
	Processing time (w/o IO): 2623ms
	Processing time (w/o IO): 2611ms
	  Time (mean ± σ):      2.953 s ±  0.009 s    [User: 2.970 s, System: 0.091 s]
	  Range (min … max):    2.947 s …  2.960 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 1552ms
	Processing time (w/o IO): 1768ms
	Processing time (w/o IO): 1418ms
	  Time (mean ± σ):      1.783 s ±  0.252 s    [User: 1.780 s, System: 0.083 s]
	  Range (min … max):    1.605 s …  1.961 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 2476ms
	Processing time (w/o IO): 1810ms
	Processing time (w/o IO): 1816ms
	  Time (mean ± σ):      2.236 s ±  0.101 s    [User: 1.962 s, System: 0.079 s]
	  Range (min … max):    2.164 s …  2.307 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 634 ms
	Processing time (w/o IO): 633 ms
	Processing time (w/o IO): 634 ms
	  Time (mean ± σ):      1.372 s ±  0.000 s    [User: 1.331 s, System: 0.039 s]
	  Range (min … max):    1.372 s …  1.372 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 604 ms
	Processing time (w/o IO): 599 ms
	Processing time (w/o IO): 605 ms
	  Time (mean ± σ):     709.3 ms ±   2.4 ms    [User: 1648.8 ms, System: 43.6 ms]
	  Range (min … max):   707.6 ms … 711.1 ms    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 318.31ms
	Processing time (w/o IO): 317.368ms
	Processing time (w/o IO): 317.949ms
	  Time (mean ± σ):     435.7 ms ±   2.7 ms    [User: 390.6 ms, System: 45.0 ms]
	  Range (min … max):   433.8 ms … 437.6 ms    2 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 172.075ms
	Processing time (w/o IO): 172.416ms
	Processing time (w/o IO): 171.255ms
	  Time (mean ± σ):     285.6 ms ±   1.8 ms    [User: 757.2 ms, System: 29.4 ms]
	  Range (min … max):   284.3 ms … 286.9 ms    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 528ms
	Processing time (w/o IO): 529ms
	Processing time (w/o IO): 531ms
	  Time (mean ± σ):      3.320 s ±  0.003 s    [User: 3.293 s, System: 0.291 s]
	  Range (min … max):    3.318 s …  3.322 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 279ms
	Processing time (w/o IO): 281ms
	Processing time (w/o IO): 294ms
	  Time (mean ± σ):      2.753 s ±  0.021 s    [User: 4.338 s, System: 0.309 s]
	  Range (min … max):    2.738 s …  2.768 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 281ms
	Processing time (w/o IO): 280ms
	Processing time (w/o IO): 280ms
	  Time (mean ± σ):      3.238 s ±  0.005 s    [User: 4.846 s, System: 0.288 s]
	  Range (min … max):    3.234 s …  3.241 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 392ms
	Processing time (w/o IO): 393ms
	Processing time (w/o IO): 391ms
	  Time (mean ± σ):      3.498 s ±  0.007 s    [User: 3.468 s, System: 0.249 s]
	  Range (min … max):    3.493 s …  3.503 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 376.2557ms
	Processing time (w/o IO): 377.5414ms
	Processing time (w/o IO): 375.0206ms
	  Time (mean ± σ):      1.099 s ±  0.001 s    [User: 1.043 s, System: 0.072 s]
	  Range (min … max):    1.098 s …  1.100 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 374.4021ms
	Processing time (w/o IO): 373.4087ms
	Processing time (w/o IO): 374.1514ms
	  Time (mean ± σ):     929.0 ms ±   8.0 ms    [User: 909.9 ms, System: 51.9 ms]
	  Range (min … max):   923.4 ms … 934.7 ms    2 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 124.8859ms
	Processing time (w/o IO): 125.222ms
	Processing time (w/o IO): 125.8601ms
	  Time (mean ± σ):     599.0 ms ±   6.8 ms    [User: 1215.5 ms, System: 84.6 ms]
	  Range (min … max):   594.2 ms … 603.8 ms    2 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 136.8094ms
	Processing time (w/o IO): 137.1226ms
	Processing time (w/o IO): 136.8504ms
	  Time (mean ± σ):     451.0 ms ±   5.3 ms    [User: 1213.1 ms, System: 53.3 ms]
	  Range (min … max):   447.2 ms … 454.7 ms    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	1495.304107666	ms
	Processing time (w/o IO):	1492.7999973297	ms
	Processing time (w/o IO):	1170.3410148621	ms
	  Time (mean ± σ):      2.664 s ±  0.200 s    [User: 2.606 s, System: 0.058 s]
	  Range (min … max):    2.522 s …  2.805 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	16742.77806282	ms
	Processing time (w/o IO):	16735.719919205	ms
	  Time (abs ≡):        18.665 s               [User: 18.601 s, System: 0.059 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 2864ms
	Processing time (w/o IO): 2890ms
	Processing time (w/o IO): 3072ms
	  Time (mean ± σ):      3.422 s ±  0.126 s    [User: 3.266 s, System: 0.153 s]
	  Range (min … max):    3.333 s …  3.511 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 14.450115 s
	Processing time (w/o IO): 14.303647 s
	Processing time (w/o IO): 14.260689 s
	  Time (mean ± σ):     15.356 s ±  0.038 s    [User: 15.146 s, System: 0.264 s]
	  Range (min … max):   15.329 s … 15.383 s    2 runs
	 
Ruby:

	Benchmark 1: ruby related.rb
	Processing time (w/o IO): 47685ms
	Processing time (w/o IO): 47524ms
	Processing time (w/o IO): 48359ms
	  Time (mean ± σ):     48.243 s ±  0.596 s    [User: 48.161 s, System: 0.075 s]
	  Range (min … max):   47.822 s … 48.664 s    2 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 3.273052269s
	Processing time (w/o IO): 3.280629208s
	Processing time (w/o IO): 3.269858829s
	  Time (mean ± σ):      3.781 s ±  0.015 s    [User: 3.804 s, System: 0.102 s]
	  Range (min … max):    3.771 s …  3.792 s    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1.432435098s
	Processing time (w/o IO): 1.427141134s
	Processing time (w/o IO): 1.429812504s
	  Time (mean ± σ):      1.916 s ±  0.008 s    [User: 6.162 s, System: 0.104 s]
	  Range (min … max):    1.910 s …  1.921 s    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 3.03771081s
	Processing time (w/o IO): 3.039386233s
	Processing time (w/o IO): 3.036484574s
	  Time (mean ± σ):      3.247 s ±  0.014 s    [User: 3.169 s, System: 0.074 s]
	  Range (min … max):    3.237 s …  3.257 s    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 1.515801489s
	Processing time (w/o IO): 1.516187274s
	Processing time (w/o IO): 1.516752188s
	  Time (mean ± σ):      1.777 s ±  0.086 s    [User: 3.151 s, System: 0.071 s]
	  Range (min … max):    1.717 s …  1.838 s    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 2708.48ms
	Processing time (w/o IO): 2703.6ms
	Processing time (w/o IO): 2712.38ms
	  Time (mean ± σ):      3.655 s ±  0.007 s    [User: 3.544 s, System: 0.111 s]
	  Range (min … max):    3.651 s …  3.660 s    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 973.034ms
	Processing time (w/o IO): 972.359ms
	Processing time (w/o IO): 970.491ms
	  Time (mean ± σ):      1.895 s ±  0.002 s    [User: 4.491 s, System: 0.114 s]
	  Range (min … max):    1.893 s …  1.896 s    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 2921 ms
	Processing time (w/o IO): 2939 ms
	Processing time (w/o IO): 2912 ms
	  Time (mean ± σ):      5.615 s ±  0.040 s    [User: 5.107 s, System: 0.324 s]
	  Range (min … max):    5.587 s …  5.643 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 1404 ms
	Processing time (w/o IO): 1406 ms
	Processing time (w/o IO): 1401 ms
	  Time (mean ± σ):      4.178 s ±  0.065 s    [User: 7.869 s, System: 0.324 s]
	  Range (min … max):    4.132 s …  4.224 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 212.210s
	Processing time (w/o IO): 214.269s
	  Time (abs ≡):        214.713 s               [User: 214.512 s, System: 0.167 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 7989.358491ms
	Processing time (w/o IO): 8028.441093ms
	Processing time (w/o IO): 8014.210211ms
	  Time (mean ± σ):      8.751 s ±  0.028 s    [User: 8.654 s, System: 0.085 s]
	  Range (min … max):    8.731 s …  8.770 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 2987ms
	Processing time (w/o IO): 2993ms
	Processing time (w/o IO): 2988ms
	  Time (mean ± σ):      3.584 s ±  0.001 s    [User: 3.512 s, System: 0.064 s]
	  Range (min … max):    3.583 s …  3.584 s    2 runs
	 
Julia:

	Benchmark 1: julia -O3 --project=Related -e "using Related; main()"
	Processing time (w/o IO): 4261 milliseconds
	Processing time (w/o IO): 4221 milliseconds
	Processing time (w/o IO): 3168 milliseconds
	  Time (mean ± σ):      7.461 s ±  0.783 s    [User: 7.185 s, System: 0.369 s]
	  Range (min … max):    6.907 s …  8.014 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 136 milliseconds
	Processing time (w/o IO): 137 milliseconds
	Processing time (w/o IO): 144 milliseconds
	  Time (mean ± σ):      1.606 s ±  0.017 s    [User: 1.366 s, System: 0.340 s]
	  Range (min … max):    1.595 s …  1.618 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 1485 milliseconds
	Processing time (w/o IO): 1503 milliseconds
	Processing time (w/o IO): 1906 milliseconds
	  Time (mean ± σ):      5.683 s ±  0.257 s    [User: 11.867 s, System: 0.433 s]
	  Range (min … max):    5.501 s …  5.865 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  5.968466266s
	Processing time (w/o IO):  5.997210147s
	Processing time (w/o IO):  6.028926613s
	  Time (mean ± σ):      8.398 s ±  0.028 s    [User: 8.311 s, System: 0.079 s]
	  Range (min … max):    8.378 s …  8.418 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 6.593s
	Processing time (w/o IO): 6.589s
	Processing time (w/o IO): 6.617s
	  Time (mean ± σ):     85.658 s ±  1.511 s    [User: 85.198 s, System: 0.449 s]
	  Range (min … max):   84.590 s … 86.726 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 19671ms
	Processing time (w/o IO): 19683ms
	Processing time (w/o IO): 19687ms
	  Time (mean ± σ):     21.195 s ±  0.007 s    [User: 21.402 s, System: 0.258 s]
	  Range (min … max):   21.190 s … 21.200 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 17839ms
	Processing time (w/o IO): 17875ms
	Processing time (w/o IO): 17844ms
	  Time (mean ± σ):     19.375 s ±  0.011 s    [User: 19.365 s, System: 0.145 s]
	  Range (min … max):   19.367 s … 19.382 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 6254.669904708862ms
	Processing time (w/o IO): 6210.690021514893ms
	Processing time (w/o IO): 6200.245022773743ms
	  Time (mean ± σ):     10.574 s ±  0.047 s    [User: 10.013 s, System: 0.379 s]
	  Range (min … max):   10.541 s … 10.607 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 3480.568651ms
	Processing time (w/o IO): 3483.397906ms
	Processing time (w/o IO): 3477.093494ms
	  Time (mean ± σ):      7.893 s ±  0.065 s    [User: 17.618 s, System: 0.417 s]
	  Range (min … max):    7.847 s …  7.940 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 14280ms
	Processing time (w/o IO): 24083ms
	Processing time (w/o IO): 14242ms
	  Time (mean ± σ):     20.000 s ±  6.998 s    [User: 20.006 s, System: 0.215 s]
	  Range (min … max):   15.051 s … 24.948 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 12947ms
	Processing time (w/o IO): 11272ms
	Processing time (w/o IO): 12993ms
	  Time (mean ± σ):     12.634 s ±  1.215 s    [User: 12.580 s, System: 0.188 s]
	  Range (min … max):   11.775 s … 13.493 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 17870ms
	Processing time (w/o IO): 17905ms
	Processing time (w/o IO): 15832ms
	  Time (mean ± σ):     17.460 s ±  1.316 s    [User: 17.365 s, System: 0.176 s]
	  Range (min … max):   16.529 s … 18.391 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 7508 ms
	Processing time (w/o IO): 7513 ms
	Processing time (w/o IO): 7510 ms
	  Time (mean ± σ):     15.485 s ±  0.010 s    [User: 15.387 s, System: 0.091 s]
	  Range (min … max):   15.478 s … 15.492 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 5323 ms
	Processing time (w/o IO): 5328 ms
	Processing time (w/o IO): 5367 ms
	  Time (mean ± σ):      5.722 s ±  0.027 s    [User: 14.284 s, System: 0.103 s]
	  Range (min … max):    5.703 s …  5.741 s    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 2846.552ms
	Processing time (w/o IO): 2850.282ms
	Processing time (w/o IO): 2843.129ms
	  Time (mean ± σ):      3.237 s ±  0.010 s    [User: 3.148 s, System: 0.081 s]
	  Range (min … max):    3.230 s …  3.244 s    2 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 1476.42ms
	Processing time (w/o IO): 1476.82ms
	Processing time (w/o IO): 1474.629ms
	  Time (mean ± σ):      1.875 s ±  0.030 s    [User: 6.148 s, System: 0.091 s]
	  Range (min … max):    1.853 s …  1.896 s    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 4046ms
	Processing time (w/o IO): 4047ms
	Processing time (w/o IO): 4042ms
	  Time (mean ± σ):     13.449 s ±  0.027 s    [User: 14.443 s, System: 0.545 s]
	  Range (min … max):   13.429 s … 13.468 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 2489ms
	Processing time (w/o IO): 2497ms
	Processing time (w/o IO): 2401ms
	  Time (mean ± σ):     10.113 s ±  0.108 s    [User: 25.678 s, System: 0.514 s]
	  Range (min … max):   10.036 s … 10.189 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 2463ms
	Processing time (w/o IO): 2465ms
	Processing time (w/o IO): 2459ms
	  Time (mean ± σ):     13.025 s ±  0.046 s    [User: 28.953 s, System: 0.598 s]
	  Range (min … max):   12.992 s … 13.058 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 3414ms
	Processing time (w/o IO): 3405ms
	Processing time (w/o IO): 3435ms
	  Time (mean ± σ):     15.126 s ±  0.017 s    [User: 16.579 s, System: 0.539 s]
	  Range (min … max):   15.115 s … 15.138 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 3259.7637ms
	Processing time (w/o IO): 3260.7892ms
	Processing time (w/o IO): 3256.0752ms
	  Time (mean ± σ):      7.428 s ±  0.002 s    [User: 7.410 s, System: 0.160 s]
	  Range (min … max):    7.426 s …  7.429 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 3253.4574ms
	Processing time (w/o IO): 3238.7216ms
	Processing time (w/o IO): 3253.3916ms
	  Time (mean ± σ):      7.073 s ±  0.004 s    [User: 7.011 s, System: 0.190 s]
	  Range (min … max):    7.070 s …  7.076 s    2 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 1015.9409ms
	Processing time (w/o IO): 1016.4172ms
	Processing time (w/o IO): 1013.2241ms
	  Time (mean ± σ):      2.930 s ±  0.005 s    [User: 8.630 s, System: 0.215 s]
	  Range (min … max):    2.926 s …  2.933 s    2 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 1133.4687ms
	Processing time (w/o IO): 1163.2435ms
	Processing time (w/o IO): 1134.7581ms
	  Time (mean ± σ):      2.846 s ±  0.021 s    [User: 9.412 s, System: 0.178 s]
	  Range (min … max):    2.831 s …  2.861 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	13291.656970978	ms
	Processing time (w/o IO):	9731.2619686127	ms
	Processing time (w/o IO):	13270.2460289	ms
	  Time (mean ± σ):     15.852 s ±  2.508 s    [User: 15.665 s, System: 0.171 s]
	  Range (min … max):   14.079 s … 17.626 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	149990.99802971	ms
	Processing time (w/o IO):	149858.7949276	ms
	  Time (abs ≡):        156.533 s               [User: 156.330 s, System: 0.192 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 33353ms
	Processing time (w/o IO): 33378ms
	Processing time (w/o IO): 33546ms
	  Time (mean ± σ):     34.915 s ±  0.127 s    [User: 34.205 s, System: 0.697 s]
	  Range (min … max):   34.825 s … 35.005 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 138.449904 s
	Processing time (w/o IO): 138.568658 s
	Processing time (w/o IO): 138.396407 s
	  Time (mean ± σ):     141.749 s ±  0.028 s    [User: 140.923 s, System: 0.886 s]
	  Range (min … max):   141.729 s … 141.769 s    2 runs
	 
Ruby:

	Benchmark 1: ruby related.rb
	Processing time (w/o IO): 438714ms
	Processing time (w/o IO): 427806ms
	Processing time (w/o IO): 437863ms
	  Time (mean ± σ):     433.653 s ±  7.133 s    [User: 433.460 s, System: 0.154 s]
	  Range (min … max):   428.610 s … 438.697 s    2 runs
	 
