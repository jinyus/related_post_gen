Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 24.257957ms
	Processing time (w/o IO): 24.321258ms
	Processing time (w/o IO): 24.313457ms
	Processing time (w/o IO): 24.082654ms
	Processing time (w/o IO): 24.147855ms
	Processing time (w/o IO): 24.375459ms
	Processing time (w/o IO): 24.279457ms
	Processing time (w/o IO): 24.324358ms
	Processing time (w/o IO): 24.113554ms
	Processing time (w/o IO): 24.252757ms
	Processing time (w/o IO): 24.312558ms
	Processing time (w/o IO): 25.975882ms
	Processing time (w/o IO): 24.194956ms
	  Time (mean ± σ):      64.2 ms ±   1.7 ms    [User: 59.9 ms, System: 11.6 ms]
	  Range (min … max):    61.9 ms …  67.0 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 11.524669ms
	Processing time (w/o IO): 11.709472ms
	Processing time (w/o IO): 11.612371ms
	Processing time (w/o IO): 11.631271ms
	Processing time (w/o IO): 13.994006ms
	Processing time (w/o IO): 11.57367ms
	Processing time (w/o IO): 11.686972ms
	Processing time (w/o IO): 12.069178ms
	Processing time (w/o IO): 11.605171ms
	Processing time (w/o IO): 11.640471ms
	Processing time (w/o IO): 11.661272ms
	Processing time (w/o IO): 13.068392ms
	Processing time (w/o IO): 11.846174ms
	  Time (mean ± σ):      52.1 ms ±   2.0 ms    [User: 77.6 ms, System: 13.9 ms]
	  Range (min … max):    49.9 ms …  55.6 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 23.478775ms
	Processing time (w/o IO): 23.480574ms
	Processing time (w/o IO): 23.478074ms
	Processing time (w/o IO): 23.480075ms
	Processing time (w/o IO): 23.480375ms
	Processing time (w/o IO): 23.457575ms
	Processing time (w/o IO): 23.473875ms
	Processing time (w/o IO): 23.497075ms
	Processing time (w/o IO): 23.511575ms
	Processing time (w/o IO): 23.472575ms
	Processing time (w/o IO): 23.450375ms
	Processing time (w/o IO): 23.522675ms
	Processing time (w/o IO): 23.406873ms
	  Time (mean ± σ):      39.4 ms ±   0.4 ms    [User: 29.7 ms, System: 9.7 ms]
	  Range (min … max):    38.6 ms …  40.0 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 12.784899ms
	Processing time (w/o IO): 12.102788ms
	Processing time (w/o IO): 12.133488ms
	Processing time (w/o IO): 12.138589ms
	Processing time (w/o IO): 12.088888ms
	Processing time (w/o IO): 12.183789ms
	Processing time (w/o IO): 12.24079ms
	Processing time (w/o IO): 12.126088ms
	Processing time (w/o IO): 12.096188ms
	Processing time (w/o IO): 12.23299ms
	Processing time (w/o IO): 12.078588ms
	Processing time (w/o IO): 12.130088ms
	Processing time (w/o IO): 12.128188ms
	  Time (mean ± σ):      28.8 ms ±   0.4 ms    [User: 32.2 ms, System: 8.4 ms]
	  Range (min … max):    28.2 ms …  29.4 ms    10 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 25.828ms
	Processing time (w/o IO): 26.154ms
	Processing time (w/o IO): 24.56ms
	Processing time (w/o IO): 24.453ms
	Processing time (w/o IO): 24.909ms
	Processing time (w/o IO): 25.389ms
	Processing time (w/o IO): 24.522ms
	Processing time (w/o IO): 25.087ms
	Processing time (w/o IO): 24.678ms
	Processing time (w/o IO): 24.178ms
	Processing time (w/o IO): 25.235ms
	Processing time (w/o IO): 24.237ms
	Processing time (w/o IO): 25.058ms
	  Time (mean ± σ):     105.5 ms ±   0.7 ms    [User: 96.1 ms, System: 10.8 ms]
	  Range (min … max):   104.4 ms … 106.5 ms    10 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 12.819ms
	Processing time (w/o IO): 12.278ms
	Processing time (w/o IO): 13.607ms
	Processing time (w/o IO): 12.635ms
	Processing time (w/o IO): 11.887ms
	Processing time (w/o IO): 13.633ms
	Processing time (w/o IO): 12.628ms
	Processing time (w/o IO): 13.178ms
	Processing time (w/o IO): 13.187ms
	Processing time (w/o IO): 13.068ms
	Processing time (w/o IO): 13.365ms
	Processing time (w/o IO): 13.832ms
	Processing time (w/o IO): 14.046ms
	  Time (mean ± σ):      92.0 ms ±   0.9 ms    [User: 109.1 ms, System: 7.4 ms]
	  Range (min … max):    91.0 ms …  93.9 ms    10 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 36 ms
	  Time (mean ± σ):     243.4 ms ±   1.8 ms    [User: 210.2 ms, System: 33.1 ms]
	  Range (min … max):   240.9 ms … 247.5 ms    10 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 18 ms
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 16 ms
	Processing time (w/o IO): 18 ms
	Processing time (w/o IO): 18 ms
	Processing time (w/o IO): 15 ms
	Processing time (w/o IO): 17 ms
	Processing time (w/o IO): 16 ms
	  Time (mean ± σ):     231.4 ms ±   2.8 ms    [User: 240.0 ms, System: 32.2 ms]
	  Range (min … max):   225.6 ms … 236.0 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 1.553s
	Processing time (w/o IO): 1.464s
	Processing time (w/o IO): 1.455s
	Processing time (w/o IO): 1.462s
	Processing time (w/o IO): 1.461s
	Processing time (w/o IO): 1.462s
	Processing time (w/o IO): 1.456s
	Processing time (w/o IO): 1.457s
	Processing time (w/o IO): 1.471s
	Processing time (w/o IO): 1.465s
	Processing time (w/o IO): 1.466s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.499s
	  Time (mean ± σ):      1.533 s ±  0.013 s    [User: 1.517 s, System: 0.016 s]
	  Range (min … max):    1.524 s …  1.567 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 351.6ms
	Processing time (w/o IO): 353.3ms
	Processing time (w/o IO): 351.2ms
	Processing time (w/o IO): 352.9ms
	Processing time (w/o IO): 351.0ms
	Processing time (w/o IO): 355.3ms
	Processing time (w/o IO): 353.3ms
	Processing time (w/o IO): 360.1ms
	Processing time (w/o IO): 350.9ms
	Processing time (w/o IO): 352.9ms
	Processing time (w/o IO): 353.7ms
	Processing time (w/o IO): 351.9ms
	Processing time (w/o IO): 351.3ms
	  Time (mean ± σ):     654.7 ms ±  48.6 ms    [User: 867.0 ms, System: 389.7 ms]
	  Range (min … max):   633.1 ms … 789.7 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 60.762451ms
	Processing time (w/o IO): 60.219343ms
	Processing time (w/o IO): 60.353745ms
	Processing time (w/o IO): 60.460047ms
	Processing time (w/o IO): 60.203343ms
	Processing time (w/o IO): 60.186542ms
	Processing time (w/o IO): 60.945453ms
	Processing time (w/o IO): 60.405145ms
	Processing time (w/o IO): 60.783951ms
	Processing time (w/o IO): 60.70455ms
	Processing time (w/o IO): 60.374645ms
	Processing time (w/o IO): 61.020054ms
	Processing time (w/o IO): 60.305344ms
	  Time (mean ± σ):     109.7 ms ±   0.9 ms    [User: 100.6 ms, System: 9.0 ms]
	  Range (min … max):   108.5 ms … 111.1 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	  Time (mean ± σ):      74.9 ms ±   0.3 ms    [User: 69.6 ms, System: 5.4 ms]
	  Range (min … max):    74.4 ms …  75.4 ms    10 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	  Time (mean ± σ):     472.0 ms ±  13.9 ms    [User: 375.3 ms, System: 200.4 ms]
	  Range (min … max):   450.6 ms … 487.6 ms    10 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	  Time (mean ± σ):     994.2 ms ±  14.6 ms    [User: 873.7 ms, System: 224.0 ms]
	  Range (min … max):   977.9 ms … 1014.7 ms    10 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 17 milliseconds
	  Time (mean ± σ):     462.9 ms ±  18.2 ms    [User: 410.6 ms, System: 203.2 ms]
	  Range (min … max):   440.6 ms … 487.9 ms    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  40.956948ms
	Processing time (w/o IO):  40.657544ms
	Processing time (w/o IO):  41.12915ms
	Processing time (w/o IO):  41.013649ms
	Processing time (w/o IO):  41.013648ms
	Processing time (w/o IO):  40.988625ms
	Processing time (w/o IO):  41.44863ms
	Processing time (w/o IO):  41.329829ms
	Processing time (w/o IO):  41.350529ms
	Processing time (w/o IO):  40.918423ms
	Processing time (w/o IO):  41.40773ms
	Processing time (w/o IO):  41.882536ms
	Processing time (w/o IO):  41.352829ms
	  Time (mean ± σ):     259.4 ms ±   1.0 ms    [User: 250.6 ms, System: 8.7 ms]
	  Range (min … max):   258.3 ms … 261.5 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 49.164ms
	Processing time (w/o IO): 48.594ms
	Processing time (w/o IO): 49.217ms
	Processing time (w/o IO): 49.067ms
	Processing time (w/o IO): 48.907ms
	Processing time (w/o IO): 48.580ms
	Processing time (w/o IO): 48.899ms
	Processing time (w/o IO): 48.842ms
	Processing time (w/o IO): 49.050ms
	Processing time (w/o IO): 48.963ms
	Processing time (w/o IO): 48.574ms
	Processing time (w/o IO): 48.652ms
	Processing time (w/o IO): 49.231ms
	  Time (mean ± σ):     377.7 ms ±   1.6 ms    [User: 347.9 ms, System: 29.6 ms]
	  Range (min … max):   375.8 ms … 380.9 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 176ms
	Processing time (w/o IO): 168ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 175ms
	Processing time (w/o IO): 168ms
	Processing time (w/o IO): 168ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 176ms
	  Time (mean ± σ):     547.7 ms ±  14.8 ms    [User: 649.2 ms, System: 115.8 ms]
	  Range (min … max):   532.9 ms … 578.3 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 129ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	  Time (mean ± σ):     256.0 ms ±   1.6 ms    [User: 241.1 ms, System: 19.2 ms]
	  Range (min … max):   254.0 ms … 258.6 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 51.89800262451172ms
	Processing time (w/o IO): 50.784945487976074ms
	Processing time (w/o IO): 51.80203914642334ms
	Processing time (w/o IO): 50.79007148742676ms
	Processing time (w/o IO): 50.89890956878662ms
	Processing time (w/o IO): 50.91595649719238ms
	Processing time (w/o IO): 51.05400085449219ms
	Processing time (w/o IO): 50.814032554626465ms
	Processing time (w/o IO): 50.999999046325684ms
	Processing time (w/o IO): 51.080942153930664ms
	Processing time (w/o IO): 51.16593837738037ms
	Processing time (w/o IO): 51.10490322113037ms
	Processing time (w/o IO): 50.75693130493164ms
	  Time (mean ± σ):     418.4 ms ±   8.7 ms    [User: 345.1 ms, System: 46.7 ms]
	  Range (min … max):   403.8 ms … 427.0 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 32.311298ms
	Processing time (w/o IO): 31.70909ms
	Processing time (w/o IO): 32.169896ms
	Processing time (w/o IO): 31.70899ms
	Processing time (w/o IO): 31.060083ms
	Processing time (w/o IO): 31.043582ms
	Processing time (w/o IO): 30.87588ms
	Processing time (w/o IO): 31.226984ms
	Processing time (w/o IO): 30.858979ms
	Processing time (w/o IO): 31.890592ms
	Processing time (w/o IO): 31.415786ms
	Processing time (w/o IO): 31.538688ms
	Processing time (w/o IO): 31.497087ms
	  Time (mean ± σ):     400.4 ms ±   6.8 ms    [User: 423.1 ms, System: 37.9 ms]
	  Range (min … max):   387.7 ms … 411.6 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 135ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 125ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 129ms
	Processing time (w/o IO): 125ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 129ms
	Processing time (w/o IO): 125ms
	  Time (mean ± σ):     300.1 ms ±   2.4 ms    [User: 288.0 ms, System: 64.0 ms]
	  Range (min … max):   297.0 ms … 305.0 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 112ms
	Processing time (w/o IO): 124ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 118ms
	Processing time (w/o IO): 129ms
	Processing time (w/o IO): 104ms
	Processing time (w/o IO): 113ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 117ms
	Processing time (w/o IO): 112ms
	Processing time (w/o IO): 117ms
	Processing time (w/o IO): 105ms
	Processing time (w/o IO): 124ms
	  Time (mean ± σ):     173.1 ms ±   8.7 ms    [User: 192.7 ms, System: 34.4 ms]
	  Range (min … max):   159.6 ms … 188.1 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 198ms
	Processing time (w/o IO): 196ms
	Processing time (w/o IO): 197ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 193ms
	Processing time (w/o IO): 194ms
	Processing time (w/o IO): 197ms
	Processing time (w/o IO): 133ms
	Processing time (w/o IO): 193ms
	Processing time (w/o IO): 200ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 199ms
	  Time (mean ± σ):     251.0 ms ±  25.8 ms    [User: 241.1 ms, System: 35.2 ms]
	  Range (min … max):   199.5 ms … 268.0 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 55 ms
	  Time (mean ± σ):     393.8 ms ±  26.7 ms    [User: 685.0 ms, System: 47.9 ms]
	  Range (min … max):   377.3 ms … 467.0 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	  Time (mean ± σ):     142.8 ms ±   0.6 ms    [User: 130.8 ms, System: 12.1 ms]
	  Range (min … max):   141.9 ms … 143.9 ms    10 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 40 ms
	  Time (mean ± σ):      66.1 ms ±   1.6 ms    [User: 113.2 ms, System: 10.5 ms]
	  Range (min … max):    63.7 ms …  69.4 ms    10 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 30.934ms
	Processing time (w/o IO): 30.202ms
	Processing time (w/o IO): 30.262ms
	Processing time (w/o IO): 30.549ms
	Processing time (w/o IO): 30.288ms
	Processing time (w/o IO): 30.246ms
	Processing time (w/o IO): 30.148ms
	Processing time (w/o IO): 30.638ms
	Processing time (w/o IO): 30.432ms
	Processing time (w/o IO): 30.484ms
	Processing time (w/o IO): 30.421ms
	Processing time (w/o IO): 30.389ms
	Processing time (w/o IO): 30.276ms
	  Time (mean ± σ):      55.5 ms ±   0.9 ms    [User: 43.4 ms, System: 12.0 ms]
	  Range (min … max):    54.2 ms …  56.6 ms    10 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 93ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	  Time (mean ± σ):      1.028 s ±  0.003 s    [User: 1.142 s, System: 0.093 s]
	  Range (min … max):    1.024 s …  1.035 s    10 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	  Time (mean ± σ):     919.1 ms ±  19.0 ms    [User: 1081.1 ms, System: 99.5 ms]
	  Range (min … max):   867.4 ms … 936.2 ms    10 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	  Time (mean ± σ):     717.6 ms ±   3.8 ms    [User: 779.4 ms, System: 98.6 ms]
	  Range (min … max):   712.5 ms … 725.0 ms    10 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	  Time (mean ± σ):     744.3 ms ±   3.6 ms    [User: 725.1 ms, System: 77.9 ms]
	  Range (min … max):   739.8 ms … 750.2 ms    10 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 27.1542ms
	Processing time (w/o IO): 27.2694ms
	Processing time (w/o IO): 26.9911ms
	Processing time (w/o IO): 27.534ms
	Processing time (w/o IO): 27.0116ms
	Processing time (w/o IO): 27.2075ms
	Processing time (w/o IO): 27.2759ms
	Processing time (w/o IO): 27.0504ms
	Processing time (w/o IO): 27.017ms
	Processing time (w/o IO): 27.2238ms
	Processing time (w/o IO): 27.1331ms
	Processing time (w/o IO): 27.0686ms
	Processing time (w/o IO): 26.8888ms
	  Time (mean ± σ):     209.8 ms ±   5.0 ms    [User: 166.5 ms, System: 34.4 ms]
	  Range (min … max):   202.9 ms … 219.1 ms    10 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 26.1758ms
	Processing time (w/o IO): 27.4761ms
	Processing time (w/o IO): 25.9951ms
	Processing time (w/o IO): 26.1255ms
	Processing time (w/o IO): 26.2828ms
	Processing time (w/o IO): 26.0411ms
	Processing time (w/o IO): 27.7607ms
	Processing time (w/o IO): 26.3149ms
	Processing time (w/o IO): 26.0387ms
	Processing time (w/o IO): 26.9146ms
	Processing time (w/o IO): 26.1425ms
	Processing time (w/o IO): 26.0371ms
	Processing time (w/o IO): 26.1283ms
	  Time (mean ± σ):     100.6 ms ±   1.8 ms    [User: 99.1 ms, System: 18.3 ms]
	  Range (min … max):    98.3 ms … 104.6 ms    10 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 23.0778ms
	Processing time (w/o IO): 23.492ms
	Processing time (w/o IO): 21.5954ms
	Processing time (w/o IO): 23.7956ms
	Processing time (w/o IO): 24.3295ms
	Processing time (w/o IO): 19.7872ms
	Processing time (w/o IO): 22.7001ms
	Processing time (w/o IO): 27.0566ms
	Processing time (w/o IO): 18.2489ms
	Processing time (w/o IO): 25.393ms
	Processing time (w/o IO): 21.587ms
	Processing time (w/o IO): 27.8705ms
	Processing time (w/o IO): 23.0453ms
	  Time (mean ± σ):     235.4 ms ±   4.8 ms    [User: 214.3 ms, System: 59.9 ms]
	  Range (min … max):   228.4 ms … 245.4 ms    10 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 14.7579ms
	Processing time (w/o IO): 21.9872ms
	Processing time (w/o IO): 21.1621ms
	Processing time (w/o IO): 14.7713ms
	Processing time (w/o IO): 20.1292ms
	Processing time (w/o IO): 14.1088ms
	Processing time (w/o IO): 14.4327ms
	Processing time (w/o IO): 19.1412ms
	Processing time (w/o IO): 16.2237ms
	Processing time (w/o IO): 14.2073ms
	Processing time (w/o IO): 15.8815ms
	Processing time (w/o IO): 15.5504ms
	Processing time (w/o IO): 14.3306ms
	  Time (mean ± σ):      89.3 ms ±   2.9 ms    [User: 131.7 ms, System: 54.2 ms]
	  Range (min … max):    85.6 ms …  93.9 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	87.628841400146	ms
	Processing time (w/o IO):	111.27805709839	ms
	Processing time (w/o IO):	110.55898666382	ms
	Processing time (w/o IO):	104.28714752197	ms
	Processing time (w/o IO):	111.0258102417	ms
	Processing time (w/o IO):	104.572057724	ms
	Processing time (w/o IO):	87.538003921509	ms
	Processing time (w/o IO):	104.6040058136	ms
	Processing time (w/o IO):	87.971925735474	ms
	Processing time (w/o IO):	110.33511161804	ms
	Processing time (w/o IO):	90.664863586426	ms
	Processing time (w/o IO):	87.759971618652	ms
	Processing time (w/o IO):	111.64116859436	ms
	  Time (mean ± σ):     337.1 ms ±  11.5 ms    [User: 316.0 ms, System: 21.0 ms]
	  Range (min … max):   323.4 ms … 357.7 ms    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1092.2589302063	ms
	Processing time (w/o IO):	1095.8261489868	ms
	Processing time (w/o IO):	1088.9909267426	ms
	Processing time (w/o IO):	1090.6331539154	ms
	Processing time (w/o IO):	1095.8321094513	ms
	Processing time (w/o IO):	1093.5900211334	ms
	Processing time (w/o IO):	1091.6287899017	ms
	Processing time (w/o IO):	1094.2599773407	ms
	Processing time (w/o IO):	1093.4209823608	ms
	Processing time (w/o IO):	1093.7490463257	ms
	Processing time (w/o IO):	1092.1199321747	ms
	Processing time (w/o IO):	1090.1460647583	ms
	Processing time (w/o IO):	1090.7189846039	ms
	  Time (mean ± σ):      1.518 s ±  0.008 s    [User: 1.501 s, System: 0.016 s]
	  Range (min … max):    1.510 s …  1.536 s    10 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 139ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 136ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 136ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 139ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 139ms
	Processing time (w/o IO): 139ms
	  Time (mean ± σ):     237.2 ms ±  50.6 ms    [User: 193.5 ms, System: 28.3 ms]
	  Range (min … max):   217.8 ms … 381.2 ms    10 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 1.511180 s
	Processing time (w/o IO): 1.520741 s
	Processing time (w/o IO): 1.522512 s
	Processing time (w/o IO): 1.518475 s
	Processing time (w/o IO): 1.516227 s
	Processing time (w/o IO): 1.511384 s
	Processing time (w/o IO): 1.513505 s
	Processing time (w/o IO): 1.517329 s
	Processing time (w/o IO): 1.510546 s
	Processing time (w/o IO): 1.511955 s
	Processing time (w/o IO): 1.523191 s
	Processing time (w/o IO): 1.515413 s
	Processing time (w/o IO): 1.514453 s
	  Time (mean ± σ):      1.862 s ±  0.010 s    [User: 1.878 s, System: 0.107 s]
	  Range (min … max):    1.849 s …  1.879 s    10 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 373.1906ms
	Processing time (w/o IO): 373.076298ms
	Processing time (w/o IO): 375.097732ms
	  Time (mean ± σ):     522.8 ms ±   1.6 ms    [User: 502.6 ms, System: 47.5 ms]
	  Range (min … max):   521.7 ms … 524.0 ms    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 163.021673ms
	Processing time (w/o IO): 163.633384ms
	Processing time (w/o IO): 163.535582ms
	  Time (mean ± σ):     309.7 ms ±   0.5 ms    [User: 785.6 ms, System: 29.3 ms]
	  Range (min … max):   309.4 ms … 310.0 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 340.321989ms
	Processing time (w/o IO): 340.005183ms
	Processing time (w/o IO): 340.919999ms
	  Time (mean ± σ):     400.3 ms ±   0.6 ms    [User: 378.6 ms, System: 21.6 ms]
	  Range (min … max):   399.9 ms … 400.7 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 173.491251ms
	Processing time (w/o IO): 174.644171ms
	Processing time (w/o IO): 173.559352ms
	  Time (mean ± σ):     237.1 ms ±   0.9 ms    [User: 380.7 ms, System: 27.4 ms]
	  Range (min … max):   236.4 ms … 237.7 ms    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 319.662ms
	Processing time (w/o IO): 315.757ms
	Processing time (w/o IO): 314.352ms
	  Time (mean ± σ):     610.9 ms ±   2.0 ms    [User: 583.7 ms, System: 31.4 ms]
	  Range (min … max):   609.5 ms … 612.3 ms    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 122.598ms
	Processing time (w/o IO): 122.735ms
	Processing time (w/o IO): 123.255ms
	  Time (mean ± σ):     427.8 ms ±   8.7 ms    [User: 726.6 ms, System: 21.4 ms]
	  Range (min … max):   421.7 ms … 434.0 ms    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 519 ms
	Processing time (w/o IO): 519 ms
	Processing time (w/o IO): 519 ms
	  Time (mean ± σ):      1.335 s ±  0.010 s    [User: 1.228 s, System: 0.104 s]
	  Range (min … max):    1.328 s …  1.342 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 206 ms
	Processing time (w/o IO): 205 ms
	Processing time (w/o IO): 204 ms
	  Time (mean ± σ):      1.097 s ±  0.048 s    [User: 1.561 s, System: 0.091 s]
	  Range (min … max):    1.062 s …  1.131 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 23.625s
	Processing time (w/o IO): 23.369s
	  Time (abs ≡):        23.529 s               [User: 23.466 s, System: 0.060 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 5.745s
	Processing time (w/o IO): 7.154s
	Processing time (w/o IO): 7.093s
	  Time (mean ± σ):      7.625 s ±  0.048 s    [User: 5.126 s, System: 3.098 s]
	  Range (min … max):    7.591 s …  7.658 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 913.070825ms
	Processing time (w/o IO): 910.362099ms
	Processing time (w/o IO): 907.89778ms
	  Time (mean ± σ):      1.142 s ±  0.031 s    [User: 1.092 s, System: 0.023 s]
	  Range (min … max):    1.121 s …  1.164 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 430ms
	Processing time (w/o IO): 429ms
	Processing time (w/o IO): 429ms
	  Time (mean ± σ):     614.7 ms ±   0.3 ms    [User: 591.2 ms, System: 23.4 ms]
	  Range (min … max):   614.5 ms … 614.9 ms    2 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 479 milliseconds
	Processing time (w/o IO): 479 milliseconds
	Processing time (w/o IO): 479 milliseconds
	  Time (mean ± σ):      1.135 s ±  0.005 s    [User: 0.974 s, System: 0.265 s]
	  Range (min … max):    1.132 s …  1.138 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 54 milliseconds
	Processing time (w/o IO): 52 milliseconds
	Processing time (w/o IO): 51 milliseconds
	  Time (mean ± σ):      1.142 s ±  0.012 s    [User: 1.000 s, System: 0.244 s]
	  Range (min … max):    1.133 s …  1.150 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 221 milliseconds
	Processing time (w/o IO): 223 milliseconds
	Processing time (w/o IO): 223 milliseconds
	  Time (mean ± σ):     901.8 ms ±   2.8 ms    [User: 1402.0 ms, System: 257.6 ms]
	  Range (min … max):   899.8 ms … 903.8 ms    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  577.464652ms
	Processing time (w/o IO):  573.607894ms
	Processing time (w/o IO):  574.64171ms
	  Time (mean ± σ):      1.364 s ±  0.002 s    [User: 1.329 s, System: 0.033 s]
	  Range (min … max):    1.363 s …  1.366 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 741.251ms
	Processing time (w/o IO): 743.708ms
	Processing time (w/o IO): 741.767ms
	  Time (mean ± σ):     10.389 s ±  0.018 s    [User: 10.246 s, System: 0.139 s]
	  Range (min … max):   10.376 s … 10.402 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 2239ms
	Processing time (w/o IO): 2252ms
	Processing time (w/o IO): 2241ms
	  Time (mean ± σ):      2.925 s ±  0.011 s    [User: 3.110 s, System: 0.159 s]
	  Range (min … max):    2.918 s …  2.933 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 2244ms
	Processing time (w/o IO): 2237ms
	Processing time (w/o IO): 2235ms
	  Time (mean ± σ):      2.718 s ±  0.001 s    [User: 2.668 s, System: 0.075 s]
	  Range (min … max):    2.717 s …  2.718 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 715.3929471969604ms
	Processing time (w/o IO): 711.804986000061ms
	Processing time (w/o IO): 712.3199701309204ms
	  Time (mean ± σ):      2.115 s ±  0.009 s    [User: 1.931 s, System: 0.135 s]
	  Range (min … max):    2.109 s …  2.122 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 394.15074ms
	Processing time (w/o IO): 394.084714ms
	Processing time (w/o IO): 393.071304ms
	  Time (mean ± σ):      1.843 s ±  0.014 s    [User: 2.814 s, System: 0.103 s]
	  Range (min … max):    1.833 s …  1.852 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 2611ms
	Processing time (w/o IO): 2479ms
	Processing time (w/o IO): 2498ms
	  Time (mean ± σ):      2.816 s ±  0.014 s    [User: 2.829 s, System: 0.103 s]
	  Range (min … max):    2.806 s …  2.825 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 1529ms
	Processing time (w/o IO): 1526ms
	Processing time (w/o IO): 1528ms
	  Time (mean ± σ):      1.686 s ±  0.000 s    [User: 1.694 s, System: 0.065 s]
	  Range (min … max):    1.685 s …  1.686 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 1810ms
	Processing time (w/o IO): 1809ms
	Processing time (w/o IO): 1811ms
	  Time (mean ± σ):      2.402 s ±  0.092 s    [User: 1.957 s, System: 0.066 s]
	  Range (min … max):    2.337 s …  2.467 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 745 ms
	Processing time (w/o IO): 743 ms
	Processing time (w/o IO): 744 ms
	  Time (mean ± σ):      1.589 s ±  0.004 s    [User: 1.562 s, System: 0.026 s]
	  Range (min … max):    1.586 s …  1.592 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 593 ms
	Processing time (w/o IO): 595 ms
	Processing time (w/o IO): 594 ms
	  Time (mean ± σ):     707.3 ms ±  23.7 ms    [User: 1642.0 ms, System: 29.5 ms]
	  Range (min … max):   690.5 ms … 724.1 ms    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 435.794ms
	Processing time (w/o IO): 432.924ms
	Processing time (w/o IO): 435.26ms
	  Time (mean ± σ):     537.2 ms ±   0.4 ms    [User: 491.4 ms, System: 45.7 ms]
	  Range (min … max):   536.9 ms … 537.5 ms    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 530ms
	Processing time (w/o IO): 526ms
	Processing time (w/o IO): 527ms
	  Time (mean ± σ):      3.287 s ±  0.067 s    [User: 3.290 s, System: 0.267 s]
	  Range (min … max):    3.240 s …  3.335 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 287ms
	Processing time (w/o IO): 276ms
	Processing time (w/o IO): 273ms
	  Time (mean ± σ):      2.658 s ±  0.020 s    [User: 4.275 s, System: 0.234 s]
	  Range (min … max):    2.644 s …  2.673 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 231ms
	Processing time (w/o IO): 231ms
	Processing time (w/o IO): 231ms
	  Time (mean ± σ):      3.136 s ±  0.004 s    [User: 4.437 s, System: 0.268 s]
	  Range (min … max):    3.133 s …  3.139 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 389ms
	Processing time (w/o IO): 391ms
	Processing time (w/o IO): 392ms
	  Time (mean ± σ):      3.474 s ±  0.010 s    [User: 3.391 s, System: 0.284 s]
	  Range (min … max):    3.467 s …  3.481 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 374.6781ms
	Processing time (w/o IO): 372.7631ms
	Processing time (w/o IO): 374.1207ms
	  Time (mean ± σ):      1.077 s ±  0.002 s    [User: 1.022 s, System: 0.072 s]
	  Range (min … max):    1.075 s …  1.078 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 367.6112ms
	Processing time (w/o IO): 369.3428ms
	Processing time (w/o IO): 374.8307ms
	  Time (mean ± σ):     907.6 ms ±   6.3 ms    [User: 881.4 ms, System: 59.5 ms]
	  Range (min … max):   903.1 ms … 912.1 ms    2 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 163.6508ms
	Processing time (w/o IO): 154.4669ms
	Processing time (w/o IO): 166.361ms
	  Time (mean ± σ):     786.5 ms ±   9.7 ms    [User: 1520.8 ms, System: 333.7 ms]
	  Range (min … max):   779.7 ms … 793.4 ms    2 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 169.7098ms
	Processing time (w/o IO): 169.1721ms
	Processing time (w/o IO): 168.5777ms
	  Time (mean ± σ):     634.6 ms ±   9.3 ms    [User: 1374.8 ms, System: 382.1 ms]
	  Range (min … max):   628.0 ms … 641.2 ms    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	1418.0519580841	ms
	Processing time (w/o IO):	1576.2469768524	ms
	Processing time (w/o IO):	1481.2378883362	ms
	  Time (mean ± σ):      2.747 s ±  0.090 s    [User: 2.677 s, System: 0.067 s]
	  Range (min … max):    2.683 s …  2.810 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	16748.378992081	ms
	Processing time (w/o IO):	16777.313232422	ms
	  Time (abs ≡):        18.584 s               [User: 18.517 s, System: 0.063 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 2705ms
	Processing time (w/o IO): 2586ms
	Processing time (w/o IO): 2598ms
	  Time (mean ± σ):      3.003 s ±  0.006 s    [User: 2.900 s, System: 0.101 s]
	  Range (min … max):    2.998 s …  3.007 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 24.487372 s
	Processing time (w/o IO): 24.370978 s
	Processing time (w/o IO): 24.324803 s
	  Time (mean ± σ):     25.379 s ±  0.042 s    [User: 25.265 s, System: 0.258 s]
	  Range (min … max):   25.349 s … 25.408 s    2 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 3.26727508s
	Processing time (w/o IO): 3.269545844s
	Processing time (w/o IO): 3.270359339s
	  Time (mean ± σ):      3.761 s ±  0.007 s    [User: 3.787 s, System: 0.109 s]
	  Range (min … max):    3.756 s …  3.767 s    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1.417710114s
	Processing time (w/o IO): 1.424058286s
	Processing time (w/o IO): 1.425254809s
	  Time (mean ± σ):      1.902 s ±  0.010 s    [User: 6.134 s, System: 0.106 s]
	  Range (min … max):    1.895 s …  1.909 s    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 3.033868024s
	Processing time (w/o IO): 3.033002691s
	Processing time (w/o IO): 3.035606948s
	  Time (mean ± σ):      3.243 s ±  0.003 s    [User: 3.175 s, System: 0.062 s]
	  Range (min … max):    3.241 s …  3.246 s    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 1.517907112s
	Processing time (w/o IO): 1.514900667s
	Processing time (w/o IO): 1.512938111s
	  Time (mean ± σ):      1.770 s ±  0.074 s    [User: 3.131 s, System: 0.087 s]
	  Range (min … max):    1.718 s …  1.822 s    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 2701.32ms
	Processing time (w/o IO): 2702.26ms
	Processing time (w/o IO): 2700.71ms
	  Time (mean ± σ):      3.644 s ±  0.008 s    [User: 3.536 s, System: 0.114 s]
	  Range (min … max):    3.638 s …  3.650 s    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 969.833ms
	Processing time (w/o IO): 969.776ms
	Processing time (w/o IO): 969.382ms
	  Time (mean ± σ):      1.897 s ±  0.004 s    [User: 4.489 s, System: 0.113 s]
	  Range (min … max):    1.894 s …  1.899 s    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 4571 ms
	Processing time (w/o IO): 4569 ms
	Processing time (w/o IO): 4569 ms
	  Time (mean ± σ):      7.168 s ±  0.012 s    [User: 6.678 s, System: 0.332 s]
	  Range (min … max):    7.159 s …  7.176 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 1750 ms
	Processing time (w/o IO): 1748 ms
	Processing time (w/o IO): 1753 ms
	  Time (mean ± σ):      4.496 s ±  0.047 s    [User: 9.158 s, System: 0.335 s]
	  Range (min … max):    4.463 s …  4.530 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 215.346s
	Processing time (w/o IO): 213.352s
	  Time (abs ≡):        213.802 s               [User: 213.656 s, System: 0.124 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 7971.430343ms
	Processing time (w/o IO): 7959.008ms
	Processing time (w/o IO): 7956.289765ms
	  Time (mean ± σ):      8.668 s ±  0.000 s    [User: 8.561 s, System: 0.099 s]
	  Range (min … max):    8.668 s …  8.668 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 3789ms
	Processing time (w/o IO): 3783ms
	Processing time (w/o IO): 3800ms
	  Time (mean ± σ):      4.370 s ±  0.015 s    [User: 4.290 s, System: 0.075 s]
	  Range (min … max):    4.360 s …  4.380 s    2 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 4238 milliseconds
	Processing time (w/o IO): 4241 milliseconds
	Processing time (w/o IO): 4227 milliseconds
	  Time (mean ± σ):      5.226 s ±  0.014 s    [User: 5.048 s, System: 0.276 s]
	  Range (min … max):    5.215 s …  5.236 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 144 milliseconds
	Processing time (w/o IO): 137 milliseconds
	Processing time (w/o IO): 145 milliseconds
	  Time (mean ± σ):      1.610 s ±  0.025 s    [User: 1.384 s, System: 0.325 s]
	  Range (min … max):    1.592 s …  1.627 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 1943 milliseconds
	Processing time (w/o IO): 1939 milliseconds
	Processing time (w/o IO): 1937 milliseconds
	  Time (mean ± σ):      2.917 s ±  0.004 s    [User: 8.480 s, System: 0.299 s]
	  Range (min … max):    2.914 s …  2.920 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  6.044231443s
	Processing time (w/o IO):  6.041525218s
	Processing time (w/o IO):  6.179213972s
	  Time (mean ± σ):      8.518 s ±  0.090 s    [User: 8.446 s, System: 0.067 s]
	  Range (min … max):    8.454 s …  8.582 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 6.588s
	Processing time (w/o IO): 6.587s
	Processing time (w/o IO): 6.586s
	  Time (mean ± σ):     76.397 s ±  0.939 s    [User: 76.019 s, System: 0.365 s]
	  Range (min … max):   75.733 s … 77.061 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 19665ms
	Processing time (w/o IO): 19648ms
	Processing time (w/o IO): 19633ms
	  Time (mean ± σ):     21.162 s ±  0.007 s    [User: 21.381 s, System: 0.253 s]
	  Range (min … max):   21.157 s … 21.167 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 17901ms
	Processing time (w/o IO): 17832ms
	Processing time (w/o IO): 17861ms
	  Time (mean ± σ):     19.320 s ±  0.031 s    [User: 19.296 s, System: 0.155 s]
	  Range (min … max):   19.298 s … 19.342 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 6208.248019218445ms
	Processing time (w/o IO): 6192.667007446289ms
	Processing time (w/o IO): 6192.712903022766ms
	  Time (mean ± σ):     10.529 s ±  0.079 s    [User: 9.992 s, System: 0.351 s]
	  Range (min … max):   10.473 s … 10.585 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 3441.507659ms
	Processing time (w/o IO): 3461.21314ms
	Processing time (w/o IO): 3421.351728ms
	  Time (mean ± σ):      7.892 s ±  0.133 s    [User: 17.416 s, System: 0.424 s]
	  Range (min … max):    7.798 s …  7.986 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 18576ms
	Processing time (w/o IO): 18541ms
	Processing time (w/o IO): 24054ms
	  Time (mean ± σ):     22.109 s ±  3.893 s    [User: 22.120 s, System: 0.183 s]
	  Range (min … max):   19.356 s … 24.862 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 14252ms
	Processing time (w/o IO): 15350ms
	Processing time (w/o IO): 12153ms
	  Time (mean ± σ):     14.222 s ±  2.260 s    [User: 14.208 s, System: 0.152 s]
	  Range (min … max):   12.624 s … 15.820 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 15821ms
	Processing time (w/o IO): 17815ms
	Processing time (w/o IO): 17931ms
	  Time (mean ± σ):     18.454 s ±  0.046 s    [User: 18.364 s, System: 0.173 s]
	  Range (min … max):   18.422 s … 18.486 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 7514 ms
	Processing time (w/o IO): 7507 ms
	Processing time (w/o IO): 7506 ms
	  Time (mean ± σ):     15.450 s ±  0.029 s    [User: 15.327 s, System: 0.112 s]
	  Range (min … max):   15.429 s … 15.470 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 5303 ms
	Processing time (w/o IO): 5302 ms
	Processing time (w/o IO): 5297 ms
	  Time (mean ± σ):      5.654 s ±  0.004 s    [User: 14.153 s, System: 0.115 s]
	  Range (min … max):    5.651 s …  5.657 s    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 3814.847ms
	Processing time (w/o IO): 3816.299ms
	Processing time (w/o IO): 3818.803ms
	  Time (mean ± σ):      4.153 s ±  0.002 s    [User: 4.046 s, System: 0.099 s]
	  Range (min … max):    4.151 s …  4.154 s    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 4041ms
	Processing time (w/o IO): 4042ms
	Processing time (w/o IO): 4040ms
	  Time (mean ± σ):     13.396 s ±  0.007 s    [User: 14.404 s, System: 0.558 s]
	  Range (min … max):   13.391 s … 13.400 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 2482ms
	Processing time (w/o IO): 2401ms
	Processing time (w/o IO): 2485ms
	  Time (mean ± σ):     10.216 s ±  0.068 s    [User: 25.718 s, System: 0.529 s]
	  Range (min … max):   10.168 s … 10.265 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 2026ms
	Processing time (w/o IO): 2029ms
	Processing time (w/o IO): 2027ms
	  Time (mean ± σ):     12.344 s ±  0.070 s    [User: 25.980 s, System: 0.588 s]
	  Range (min … max):   12.295 s … 12.394 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 3421ms
	Processing time (w/o IO): 3408ms
	Processing time (w/o IO): 3416ms
	  Time (mean ± σ):     15.145 s ±  0.025 s    [User: 16.671 s, System: 0.629 s]
	  Range (min … max):   15.127 s … 15.162 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 3257.039ms
	Processing time (w/o IO): 3253.9756ms
	Processing time (w/o IO): 3259.4363ms
	  Time (mean ± σ):      7.397 s ±  0.006 s    [User: 7.339 s, System: 0.188 s]
	  Range (min … max):    7.393 s …  7.401 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 3243.4501ms
	Processing time (w/o IO): 3244.7447ms
	Processing time (w/o IO): 3250.8443ms
	  Time (mean ± σ):      7.019 s ±  0.006 s    [User: 6.996 s, System: 0.145 s]
	  Range (min … max):    7.015 s …  7.023 s    2 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 1284.7697ms
	Processing time (w/o IO): 1292.3834ms
	Processing time (w/o IO): 1286.5315ms
	  Time (mean ± σ):      3.812 s ±  0.024 s    [User: 10.773 s, System: 0.906 s]
	  Range (min … max):    3.795 s …  3.829 s    2 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 1400.5766ms
	Processing time (w/o IO): 1419.1932ms
	Processing time (w/o IO): 1406.7895ms
	  Time (mean ± σ):      3.627 s ±  0.023 s    [User: 11.087 s, System: 0.931 s]
	  Range (min … max):    3.611 s …  3.643 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	12356.48393631	ms
	Processing time (w/o IO):	12362.843990326	ms
	Processing time (w/o IO):	11986.552000046	ms
	  Time (mean ± σ):     16.383 s ±  0.220 s    [User: 16.183 s, System: 0.191 s]
	  Range (min … max):   16.228 s … 16.539 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	149734.59792137	ms
	Processing time (w/o IO):	149759.99403	ms
	  Time (abs ≡):        156.096 s               [User: 155.873 s, System: 0.199 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 34450ms
	Processing time (w/o IO): 34419ms
	Processing time (w/o IO): 34375ms
	  Time (mean ± σ):     35.844 s ±  0.031 s    [User: 35.134 s, System: 0.699 s]
	  Range (min … max):   35.822 s … 35.866 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 227.834660 s
	Processing time (w/o IO): 229.838919 s
	Processing time (w/o IO): 229.529255 s
	  Time (mean ± σ):     232.855 s ±  0.142 s    [User: 232.416 s, System: 0.573 s]
	  Range (min … max):   232.755 s … 232.955 s    2 runs
	 
