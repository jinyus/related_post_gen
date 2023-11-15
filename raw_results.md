Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 22.600759ms
	Processing time (w/o IO): 22.715359ms
	Processing time (w/o IO): 22.735059ms
	Processing time (w/o IO): 22.637746ms
	Processing time (w/o IO): 22.721247ms
	Processing time (w/o IO): 22.795948ms
	Processing time (w/o IO): 22.752247ms
	Processing time (w/o IO): 22.591647ms
	Processing time (w/o IO): 22.742847ms
	Processing time (w/o IO): 22.899148ms
	Processing time (w/o IO): 24.77546ms
	Processing time (w/o IO): 22.607846ms
	Processing time (w/o IO): 22.831248ms
	  Time (mean ± σ):      62.5 ms ±   1.1 ms    [User: 61.2 ms, System: 8.7 ms]
	  Range (min … max):    60.9 ms …  64.1 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 11.768076ms
	Processing time (w/o IO): 11.934878ms
	Processing time (w/o IO): 11.843076ms
	Processing time (w/o IO): 11.836077ms
	Processing time (w/o IO): 14.145192ms
	Processing time (w/o IO): 11.792976ms
	Processing time (w/o IO): 11.711276ms
	Processing time (w/o IO): 12.190979ms
	Processing time (w/o IO): 11.691975ms
	Processing time (w/o IO): 11.800077ms
	Processing time (w/o IO): 12.064478ms
	Processing time (w/o IO): 11.755876ms
	Processing time (w/o IO): 11.792476ms
	  Time (mean ± σ):      51.6 ms ±   1.1 ms    [User: 78.1 ms, System: 12.4 ms]
	  Range (min … max):    50.1 ms …  53.7 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 23.910574ms
	Processing time (w/o IO): 23.58257ms
	Processing time (w/o IO): 23.45117ms
	Processing time (w/o IO): 23.48217ms
	Processing time (w/o IO): 23.527171ms
	Processing time (w/o IO): 23.46997ms
	Processing time (w/o IO): 23.46467ms
	Processing time (w/o IO): 23.479971ms
	Processing time (w/o IO): 23.49987ms
	Processing time (w/o IO): 23.458769ms
	Processing time (w/o IO): 23.501871ms
	Processing time (w/o IO): 23.695271ms
	Processing time (w/o IO): 23.528771ms
	  Time (mean ± σ):      39.0 ms ±   0.9 ms    [User: 32.2 ms, System: 6.8 ms]
	  Range (min … max):    38.3 ms …  41.1 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 12.212887ms
	Processing time (w/o IO): 12.435589ms
	Processing time (w/o IO): 12.276988ms
	Processing time (w/o IO): 12.248787ms
	Processing time (w/o IO): 12.269787ms
	Processing time (w/o IO): 12.308588ms
	Processing time (w/o IO): 12.236787ms
	Processing time (w/o IO): 12.310487ms
	Processing time (w/o IO): 12.149287ms
	Processing time (w/o IO): 12.267388ms
	Processing time (w/o IO): 12.310587ms
	Processing time (w/o IO): 12.311888ms
	Processing time (w/o IO): 12.295887ms
	  Time (mean ± σ):      29.8 ms ±   0.5 ms    [User: 32.3 ms, System: 9.5 ms]
	  Range (min … max):    28.9 ms …  30.4 ms    10 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 39.677ms
	Processing time (w/o IO): 40.328ms
	Processing time (w/o IO): 39.915ms
	Processing time (w/o IO): 39.69ms
	Processing time (w/o IO): 40.328ms
	Processing time (w/o IO): 40.416ms
	Processing time (w/o IO): 39.972ms
	Processing time (w/o IO): 40.432ms
	Processing time (w/o IO): 39.967ms
	Processing time (w/o IO): 40.175ms
	Processing time (w/o IO): 40.293ms
	Processing time (w/o IO): 40.341ms
	Processing time (w/o IO): 39.947ms
	  Time (mean ± σ):     117.9 ms ±   0.7 ms    [User: 109.9 ms, System: 9.4 ms]
	  Range (min … max):   117.0 ms … 119.2 ms    10 runs
	 
D (v2):

	Benchmark 1: ./related
	Processing time (w/o IO): 21.543ms
	Processing time (w/o IO): 21.382ms
	Processing time (w/o IO): 21.507ms
	Processing time (w/o IO): 21.647ms
	Processing time (w/o IO): 21.669ms
	Processing time (w/o IO): 21.778ms
	Processing time (w/o IO): 21.648ms
	Processing time (w/o IO): 21.4ms
	Processing time (w/o IO): 21.802ms
	Processing time (w/o IO): 21.68ms
	Processing time (w/o IO): 21.733ms
	Processing time (w/o IO): 21.695ms
	Processing time (w/o IO): 21.295ms
	  Time (mean ± σ):      98.5 ms ±   0.9 ms    [User: 88.3 ms, System: 11.5 ms]
	  Range (min … max):    97.3 ms … 100.0 ms    10 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 12.419ms
	Processing time (w/o IO): 11.632ms
	Processing time (w/o IO): 12.272ms
	Processing time (w/o IO): 11.791ms
	Processing time (w/o IO): 12.924ms
	Processing time (w/o IO): 12.342ms
	Processing time (w/o IO): 12.718ms
	Processing time (w/o IO): 13.047ms
	Processing time (w/o IO): 13.286ms
	Processing time (w/o IO): 11.803ms
	Processing time (w/o IO): 12.534ms
	Processing time (w/o IO): 12.204ms
	Processing time (w/o IO): 12.134ms
	  Time (mean ± σ):      91.6 ms ±   1.2 ms    [User: 108.5 ms, System: 8.4 ms]
	  Range (min … max):    89.8 ms …  94.1 ms    10 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 22 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 22 ms
	Processing time (w/o IO): 22 ms
	Processing time (w/o IO): 22 ms
	Processing time (w/o IO): 22 ms
	Processing time (w/o IO): 22 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 22 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 22 ms
	  Time (mean ± σ):     215.0 ms ±   1.7 ms    [User: 188.2 ms, System: 26.6 ms]
	  Range (min … max):   211.7 ms … 216.6 ms    10 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 15 ms
	Processing time (w/o IO): 15 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 15 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 14 ms
	  Time (mean ± σ):     232.1 ms ±   2.5 ms    [User: 230.9 ms, System: 35.8 ms]
	  Range (min … max):   227.4 ms … 235.9 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 1.472s
	Processing time (w/o IO): 1.461s
	Processing time (w/o IO): 1.458s
	Processing time (w/o IO): 1.473s
	Processing time (w/o IO): 1.462s
	Processing time (w/o IO): 1.468s
	Processing time (w/o IO): 1.458s
	Processing time (w/o IO): 1.464s
	Processing time (w/o IO): 1.464s
	Processing time (w/o IO): 1.469s
	Processing time (w/o IO): 1.471s
	Processing time (w/o IO): 1.467s
	Processing time (w/o IO): 1.464s
	  Time (mean ± σ):      1.534 s ±  0.005 s    [User: 1.515 s, System: 0.019 s]
	  Range (min … max):    1.526 s …  1.543 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 353.1ms
	Processing time (w/o IO): 354.2ms
	Processing time (w/o IO): 351.8ms
	Processing time (w/o IO): 356.2ms
	Processing time (w/o IO): 352.9ms
	Processing time (w/o IO): 353.2ms
	Processing time (w/o IO): 356.7ms
	Processing time (w/o IO): 352.8ms
	Processing time (w/o IO): 353.1ms
	Processing time (w/o IO): 352.4ms
	Processing time (w/o IO): 351.1ms
	Processing time (w/o IO): 358.4ms
	Processing time (w/o IO): 353.2ms
	  Time (mean ± σ):     704.6 ms ± 159.2 ms    [User: 861.5 ms, System: 395.2 ms]
	  Range (min … max):   639.2 ms … 1149.7 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 53.834487ms
	Processing time (w/o IO): 54.29459ms
	Processing time (w/o IO): 54.39199ms
	Processing time (w/o IO): 53.820486ms
	Processing time (w/o IO): 53.659885ms
	Processing time (w/o IO): 53.582785ms
	Processing time (w/o IO): 54.158089ms
	Processing time (w/o IO): 53.465784ms
	Processing time (w/o IO): 54.262789ms
	Processing time (w/o IO): 53.626085ms
	Processing time (w/o IO): 53.770885ms
	Processing time (w/o IO): 53.710486ms
	Processing time (w/o IO): 53.643185ms
	  Time (mean ± σ):     104.9 ms ±   0.9 ms    [User: 95.1 ms, System: 9.7 ms]
	  Range (min … max):   103.8 ms … 106.2 ms    10 runs
	 
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
	  Time (mean ± σ):      70.6 ms ±   0.9 ms    [User: 65.1 ms, System: 5.6 ms]
	  Range (min … max):    69.8 ms …  72.7 ms    10 runs
	 
Julia:

	Benchmark 1: julia --startup-file=no --project=Related -e "using Related; main()"
	Processing time (w/o IO): 24.010593ms
	Processing time (w/o IO): 23.828889ms
	Processing time (w/o IO): 23.953991000000002ms
	Processing time (w/o IO): 23.952891ms
	Processing time (w/o IO): 23.881691ms
	Processing time (w/o IO): 23.951791ms
	Processing time (w/o IO): 23.957691999999998ms
	Processing time (w/o IO): 23.954968ms
	Processing time (w/o IO): 23.916667ms
	Processing time (w/o IO): 23.952768ms
	Processing time (w/o IO): 23.986068ms
	Processing time (w/o IO): 24.088171ms
	Processing time (w/o IO): 23.909267ms
	  Time (mean ± σ):     982.2 ms ±  14.1 ms    [User: 881.2 ms, System: 204.4 ms]
	  Range (min … max):   963.3 ms … 1003.3 ms    10 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	  Time (mean ± σ):     970.9 ms ±  17.8 ms    [User: 856.5 ms, System: 217.9 ms]
	  Range (min … max):   953.0 ms … 995.7 ms    10 runs
	 
Julia Concurrent:

	Benchmark 1: julia --startup-file=no --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 12.993651ms
	Processing time (w/o IO): 14.054565ms
	Processing time (w/o IO): 13.511062ms
	Processing time (w/o IO): 13.952564ms
	Processing time (w/o IO): 12.821437999999999ms
	Processing time (w/o IO): 14.708272999999998ms
	Processing time (w/o IO): 13.52645ms
	Processing time (w/o IO): 13.166644ms
	Processing time (w/o IO): 13.479049999999999ms
	Processing time (w/o IO): 13.324637000000001ms
	Processing time (w/o IO): 12.864230000000001ms
	Processing time (w/o IO): 13.45674ms
	Processing time (w/o IO): 14.394557ms
	  Time (mean ± σ):     976.0 ms ±  24.6 ms    [User: 898.8 ms, System: 220.4 ms]
	  Range (min … max):   949.6 ms … 1026.7 ms    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  40.864229ms
	Processing time (w/o IO):  41.005432ms
	Processing time (w/o IO):  41.492641ms
	Processing time (w/o IO):  41.270894ms
	Processing time (w/o IO):  41.124091ms
	Processing time (w/o IO):  41.513897ms
	Processing time (w/o IO):  41.167292ms
	Processing time (w/o IO):  41.355895ms
	Processing time (w/o IO):  41.307394ms
	Processing time (w/o IO):  41.078191ms
	Processing time (w/o IO):  40.814387ms
	Processing time (w/o IO):  40.931289ms
	Processing time (w/o IO):  40.884688ms
	  Time (mean ± σ):     258.6 ms ±   1.1 ms    [User: 249.8 ms, System: 8.7 ms]
	  Range (min … max):   257.4 ms … 260.7 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 49.019ms
	Processing time (w/o IO): 49.110ms
	Processing time (w/o IO): 48.946ms
	Processing time (w/o IO): 48.731ms
	Processing time (w/o IO): 48.256ms
	Processing time (w/o IO): 48.603ms
	Processing time (w/o IO): 48.327ms
	Processing time (w/o IO): 48.813ms
	Processing time (w/o IO): 48.417ms
	Processing time (w/o IO): 48.568ms
	Processing time (w/o IO): 48.682ms
	Processing time (w/o IO): 48.679ms
	Processing time (w/o IO): 49.149ms
	  Time (mean ± σ):     341.8 ms ±   1.9 ms    [User: 314.8 ms, System: 26.9 ms]
	  Range (min … max):   339.8 ms … 345.3 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 176ms
	Processing time (w/o IO): 176ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 163ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 163ms
	Processing time (w/o IO): 163ms
	Processing time (w/o IO): 169ms
	  Time (mean ± σ):     544.6 ms ±  13.8 ms    [User: 650.1 ms, System: 107.0 ms]
	  Range (min … max):   521.9 ms … 562.9 ms    10 runs
	 
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
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	  Time (mean ± σ):     255.6 ms ±   1.4 ms    [User: 238.9 ms, System: 21.0 ms]
	  Range (min … max):   253.4 ms … 257.5 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 50.58407783508301ms
	Processing time (w/o IO): 50.6819486618042ms
	Processing time (w/o IO): 50.859928131103516ms
	Processing time (w/o IO): 51.135897636413574ms
	Processing time (w/o IO): 51.00393295288086ms
	Processing time (w/o IO): 50.94099044799805ms
	Processing time (w/o IO): 50.8650541305542ms
	Processing time (w/o IO): 51.444053649902344ms
	Processing time (w/o IO): 51.05996131896973ms
	Processing time (w/o IO): 50.256967544555664ms
	Processing time (w/o IO): 50.7429838180542ms
	Processing time (w/o IO): 51.28002166748047ms
	Processing time (w/o IO): 50.84109306335449ms
	  Time (mean ± σ):     404.9 ms ±  10.6 ms    [User: 352.8 ms, System: 31.7 ms]
	  Range (min … max):   395.6 ms … 424.3 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 31.188821ms
	Processing time (w/o IO): 32.101036ms
	Processing time (w/o IO): 31.409125ms
	Processing time (w/o IO): 31.429226ms
	Processing time (w/o IO): 31.307723ms
	Processing time (w/o IO): 31.12912ms
	Processing time (w/o IO): 31.714829ms
	Processing time (w/o IO): 30.979817ms
	Processing time (w/o IO): 31.380424ms
	Processing time (w/o IO): 31.653329ms
	Processing time (w/o IO): 35.402891ms
	Processing time (w/o IO): 31.142121ms
	Processing time (w/o IO): 31.13392ms
	  Time (mean ± σ):     400.4 ms ±  38.7 ms    [User: 416.1 ms, System: 41.6 ms]
	  Range (min … max):   380.9 ms … 508.9 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 211ms
	Processing time (w/o IO): 203ms
	Processing time (w/o IO): 164ms
	Processing time (w/o IO): 203ms
	Processing time (w/o IO): 157ms
	Processing time (w/o IO): 156ms
	Processing time (w/o IO): 152ms
	Processing time (w/o IO): 154ms
	Processing time (w/o IO): 206ms
	Processing time (w/o IO): 150ms
	Processing time (w/o IO): 209ms
	Processing time (w/o IO): 154ms
	Processing time (w/o IO): 156ms
	  Time (mean ± σ):     343.0 ms ±  25.9 ms    [User: 346.6 ms, System: 60.4 ms]
	  Range (min … max):   322.7 ms … 385.0 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 125ms
	Processing time (w/o IO): 119ms
	Processing time (w/o IO): 125ms
	Processing time (w/o IO): 116ms
	Processing time (w/o IO): 122ms
	Processing time (w/o IO): 104ms
	Processing time (w/o IO): 124ms
	Processing time (w/o IO): 116ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 117ms
	Processing time (w/o IO): 117ms
	Processing time (w/o IO): 123ms
	  Time (mean ± σ):     173.3 ms ±   7.3 ms    [User: 191.5 ms, System: 34.2 ms]
	  Range (min … max):   157.4 ms … 182.6 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 194ms
	Processing time (w/o IO): 180ms
	Processing time (w/o IO): 182ms
	Processing time (w/o IO): 164ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 184ms
	Processing time (w/o IO): 183ms
	Processing time (w/o IO): 183ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 183ms
	Processing time (w/o IO): 184ms
	Processing time (w/o IO): 184ms
	Processing time (w/o IO): 179ms
	  Time (mean ± σ):     248.5 ms ±   6.2 ms    [User: 246.0 ms, System: 28.5 ms]
	  Range (min … max):   232.4 ms … 253.6 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 56 ms
	  Time (mean ± σ):     389.7 ms ±   7.5 ms    [User: 702.0 ms, System: 46.7 ms]
	  Range (min … max):   379.0 ms … 402.9 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	  Time (mean ± σ):     130.6 ms ±   0.6 ms    [User: 116.8 ms, System: 13.9 ms]
	  Range (min … max):   129.8 ms … 131.7 ms    10 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 46 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 51 ms
	  Time (mean ± σ):      82.7 ms ±   1.8 ms    [User: 145.5 ms, System: 12.3 ms]
	  Range (min … max):    78.5 ms …  84.8 ms    10 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 22.778ms
	Processing time (w/o IO): 22.164ms
	Processing time (w/o IO): 22.345ms
	Processing time (w/o IO): 22.065ms
	Processing time (w/o IO): 22.18ms
	Processing time (w/o IO): 22.058ms
	Processing time (w/o IO): 22.219ms
	Processing time (w/o IO): 22.096ms
	Processing time (w/o IO): 22.073ms
	Processing time (w/o IO): 22.019ms
	Processing time (w/o IO): 22.275ms
	Processing time (w/o IO): 22.098ms
	Processing time (w/o IO): 21.986ms
	  Time (mean ± σ):      51.1 ms ±   0.4 ms    [User: 39.8 ms, System: 11.2 ms]
	  Range (min … max):    50.6 ms …  51.5 ms    10 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 12.225ms
	Processing time (w/o IO): 12.702ms
	Processing time (w/o IO): 12.211ms
	Processing time (w/o IO): 14.168ms
	Processing time (w/o IO): 12.296ms
	Processing time (w/o IO): 12.193ms
	Processing time (w/o IO): 12.098ms
	Processing time (w/o IO): 12.882ms
	Processing time (w/o IO): 14.215ms
	Processing time (w/o IO): 13.942ms
	Processing time (w/o IO): 12.243ms
	Processing time (w/o IO): 12.571ms
	Processing time (w/o IO): 12.585ms
	  Time (mean ± σ):      39.9 ms ±   1.1 ms    [User: 66.0 ms, System: 8.7 ms]
	  Range (min … max):    38.6 ms …  41.4 ms    10 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 84.8581ms
	Processing time (w/o IO): 85.2985ms
	Processing time (w/o IO): 85.0098ms
	Processing time (w/o IO): 86.2766ms
	Processing time (w/o IO): 85.8338ms
	Processing time (w/o IO): 85.5415ms
	Processing time (w/o IO): 85.5654ms
	Processing time (w/o IO): 84.9875ms
	Processing time (w/o IO): 85.1442ms
	Processing time (w/o IO): 85.8231ms
	Processing time (w/o IO): 85.3704ms
	Processing time (w/o IO): 84.869ms
	Processing time (w/o IO): 85.1428ms
	  Time (mean ± σ):      1.030 s ±  0.005 s    [User: 1.135 s, System: 0.102 s]
	  Range (min … max):    1.024 s …  1.037 s    10 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 24ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 22ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	  Time (mean ± σ):     924.1 ms ±  23.8 ms    [User: 1065.1 ms, System: 105.7 ms]
	  Range (min … max):   879.1 ms … 957.6 ms    10 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 19ms
	Processing time (w/o IO): 18ms
	Processing time (w/o IO): 19ms
	  Time (mean ± σ):     727.4 ms ±   3.1 ms    [User: 814.8 ms, System: 91.8 ms]
	  Range (min … max):   723.8 ms … 733.1 ms    10 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 26.7028ms
	Processing time (w/o IO): 26.613ms
	Processing time (w/o IO): 26.5416ms
	Processing time (w/o IO): 26.9111ms
	Processing time (w/o IO): 26.5516ms
	Processing time (w/o IO): 26.4319ms
	Processing time (w/o IO): 26.7008ms
	Processing time (w/o IO): 28.9852ms
	Processing time (w/o IO): 26.9942ms
	Processing time (w/o IO): 26.6752ms
	Processing time (w/o IO): 26.9763ms
	Processing time (w/o IO): 26.9253ms
	Processing time (w/o IO): 26.8771ms
	  Time (mean ± σ):     739.3 ms ±   6.2 ms    [User: 708.2 ms, System: 90.1 ms]
	  Range (min … max):   734.5 ms … 753.3 ms    10 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 27.2363ms
	Processing time (w/o IO): 27.2735ms
	Processing time (w/o IO): 28.6413ms
	Processing time (w/o IO): 27.2756ms
	Processing time (w/o IO): 29.0853ms
	Processing time (w/o IO): 27.1471ms
	Processing time (w/o IO): 27.3177ms
	Processing time (w/o IO): 26.9123ms
	Processing time (w/o IO): 27.3949ms
	Processing time (w/o IO): 27.4058ms
	Processing time (w/o IO): 27.0661ms
	Processing time (w/o IO): 26.9852ms
	Processing time (w/o IO): 27.2943ms
	  Time (mean ± σ):     212.0 ms ±   5.1 ms    [User: 165.8 ms, System: 40.7 ms]
	  Range (min … max):   202.8 ms … 220.8 ms    10 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 26.9002ms
	Processing time (w/o IO): 26.073ms
	Processing time (w/o IO): 26.3059ms
	Processing time (w/o IO): 26.4088ms
	Processing time (w/o IO): 26.519ms
	Processing time (w/o IO): 26.334ms
	Processing time (w/o IO): 26.2957ms
	Processing time (w/o IO): 26.1944ms
	Processing time (w/o IO): 26.2553ms
	Processing time (w/o IO): 26.1834ms
	Processing time (w/o IO): 26.4513ms
	Processing time (w/o IO): 26.7574ms
	Processing time (w/o IO): 26.2555ms
	  Time (mean ± σ):     103.1 ms ±   2.3 ms    [User: 98.1 ms, System: 22.6 ms]
	  Range (min … max):   100.1 ms … 107.3 ms    10 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 14.4115ms
	Processing time (w/o IO): 14.3863ms
	Processing time (w/o IO): 14.1942ms
	Processing time (w/o IO): 11.7639ms
	Processing time (w/o IO): 13.462ms
	Processing time (w/o IO): 13.8995ms
	Processing time (w/o IO): 14.7383ms
	Processing time (w/o IO): 13.8696ms
	Processing time (w/o IO): 14.605ms
	Processing time (w/o IO): 15.1367ms
	Processing time (w/o IO): 13.7356ms
	Processing time (w/o IO): 14.1916ms
	Processing time (w/o IO): 13.7573ms
	  Time (mean ± σ):     211.1 ms ±  12.6 ms    [User: 210.7 ms, System: 44.4 ms]
	  Range (min … max):   197.4 ms … 233.4 ms    10 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 11.1789ms
	Processing time (w/o IO): 10.9564ms
	Processing time (w/o IO): 11.0796ms
	Processing time (w/o IO): 11.1167ms
	Processing time (w/o IO): 11.1492ms
	Processing time (w/o IO): 10.9048ms
	Processing time (w/o IO): 11.2806ms
	Processing time (w/o IO): 11.1217ms
	Processing time (w/o IO): 11.1183ms
	Processing time (w/o IO): 11.4515ms
	Processing time (w/o IO): 11.2037ms
	Processing time (w/o IO): 10.9847ms
	Processing time (w/o IO): 10.9671ms
	  Time (mean ± σ):      76.4 ms ±   1.9 ms    [User: 126.9 ms, System: 31.2 ms]
	  Range (min … max):    73.6 ms …  80.5 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	119.69113349915	ms
	Processing time (w/o IO):	91.278076171875	ms
	Processing time (w/o IO):	116.00399017334	ms
	Processing time (w/o IO):	105.62801361084	ms
	Processing time (w/o IO):	117.16794967651	ms
	Processing time (w/o IO):	88.901996612549	ms
	Processing time (w/o IO):	115.85378646851	ms
	Processing time (w/o IO):	115.20195007324	ms
	Processing time (w/o IO):	89.155912399292	ms
	Processing time (w/o IO):	88.477849960327	ms
	Processing time (w/o IO):	107.31506347656	ms
	Processing time (w/o IO):	113.48986625671	ms
	Processing time (w/o IO):	114.31503295898	ms
	  Time (mean ± σ):     356.6 ms ±  13.1 ms    [User: 335.9 ms, System: 20.6 ms]
	  Range (min … max):   335.3 ms … 375.0 ms    10 runs
	 
LuaJIT (JIT OFF):

	Benchmark 1: luajit -joff only_lua.lua
	Processing time (w/o IO):	674.71981048584	ms
	Processing time (w/o IO):	671.6251373291	ms
	Processing time (w/o IO):	674.46899414063	ms
	Processing time (w/o IO):	672.50514030457	ms
	Processing time (w/o IO):	668.94102096558	ms
	Processing time (w/o IO):	685.60791015625	ms
	Processing time (w/o IO):	673.20585250854	ms
	Processing time (w/o IO):	671.68116569519	ms
	Processing time (w/o IO):	670.92895507813	ms
	Processing time (w/o IO):	668.81489753723	ms
	Processing time (w/o IO):	672.42002487183	ms
	Processing time (w/o IO):	673.10309410095	ms
	Processing time (w/o IO):	673.03419113159	ms
	  Time (mean ± σ):      1.001 s ±  0.011 s    [User: 0.977 s, System: 0.022 s]
	  Range (min … max):    0.987 s …  1.021 s    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1094.7210788727	ms
	Processing time (w/o IO):	1094.762802124	ms
	Processing time (w/o IO):	1093.1620597839	ms
	Processing time (w/o IO):	1092.0310020447	ms
	Processing time (w/o IO):	1093.2490825653	ms
	Processing time (w/o IO):	1092.0329093933	ms
	Processing time (w/o IO):	1092.8390026093	ms
	Processing time (w/o IO):	1108.3550453186	ms
	Processing time (w/o IO):	1092.896938324	ms
	Processing time (w/o IO):	1092.8988456726	ms
	Processing time (w/o IO):	1098.4129905701	ms
	Processing time (w/o IO):	1105.1909923553	ms
	Processing time (w/o IO):	1093.367099762	ms
	  Time (mean ± σ):      1.527 s ±  0.008 s    [User: 1.510 s, System: 0.016 s]
	  Range (min … max):    1.519 s …  1.546 s    10 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 142ms
	Processing time (w/o IO): 142ms
	Processing time (w/o IO): 144ms
	Processing time (w/o IO): 143ms
	Processing time (w/o IO): 143ms
	Processing time (w/o IO): 144ms
	Processing time (w/o IO): 142ms
	Processing time (w/o IO): 143ms
	Processing time (w/o IO): 144ms
	Processing time (w/o IO): 145ms
	Processing time (w/o IO): 143ms
	  Time (mean ± σ):     231.4 ms ±   1.0 ms    [User: 205.6 ms, System: 25.5 ms]
	  Range (min … max):   229.7 ms … 232.6 ms    10 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 0.889284 s
	Processing time (w/o IO): 0.884222 s
	Processing time (w/o IO): 0.897108 s
	Processing time (w/o IO): 0.892345 s
	Processing time (w/o IO): 0.890884 s
	Processing time (w/o IO): 0.885219 s
	Processing time (w/o IO): 0.883801 s
	Processing time (w/o IO): 0.885486 s
	Processing time (w/o IO): 0.881248 s
	Processing time (w/o IO): 0.895762 s
	Processing time (w/o IO): 0.899823 s
	Processing time (w/o IO): 0.884177 s
	Processing time (w/o IO): 0.904344 s
	  Time (mean ± σ):      1.249 s ±  0.010 s    [User: 1.188 s, System: 0.097 s]
	  Range (min … max):    1.238 s …  1.266 s    10 runs
	 
Racket:

	Benchmark 1: racket related.rkt
	Processing time (w/o IO): 238.42ms
	Processing time (w/o IO): 230.19ms
	Processing time (w/o IO): 229.03ms
	Processing time (w/o IO): 240.48ms
	Processing time (w/o IO): 229.21ms
	Processing time (w/o IO): 232.65ms
	Processing time (w/o IO): 232.61ms
	Processing time (w/o IO): 244.51ms
	Processing time (w/o IO): 235.85ms
	Processing time (w/o IO): 233.73ms
	Processing time (w/o IO): 239.11ms
	Processing time (w/o IO): 242.63ms
	Processing time (w/o IO): 253.46ms
	  Time (mean ± σ):     716.1 ms ±   9.8 ms    [User: 636.0 ms, System: 79.8 ms]
	  Range (min … max):   700.6 ms … 734.1 ms    10 runs
	 
Lobster (JIT):

	Benchmark 1: lobster related.lobster
	Processing time (w/o IO): 1.350061s
	Processing time (w/o IO): 1.364238s
	Processing time (w/o IO): 1.364253s
	Processing time (w/o IO): 1.362139s
	Processing time (w/o IO): 1.366548s
	Processing time (w/o IO): 1.354059s
	Processing time (w/o IO): 1.363561s
	Processing time (w/o IO): 1.359845s
	Processing time (w/o IO): 1.366886s
	Processing time (w/o IO): 1.35862s
	Processing time (w/o IO): 1.356041s
	Processing time (w/o IO): 1.383597s
	Processing time (w/o IO): 1.353963s
	  Time (mean ± σ):      1.452 s ±  0.009 s    [User: 1.433 s, System: 0.018 s]
	  Range (min … max):    1.441 s …  1.471 s    10 runs
	 
Lobster (C++):

	Benchmark 1: compiled_lobster
	Processing time (w/o IO): 0.186753s
	Processing time (w/o IO): 0.185215s
	Processing time (w/o IO): 0.185553s
	Processing time (w/o IO): 0.186637s
	Processing time (w/o IO): 0.188689s
	Processing time (w/o IO): 0.185481s
	Processing time (w/o IO): 0.186625s
	Processing time (w/o IO): 0.184568s
	Processing time (w/o IO): 0.183738s
	Processing time (w/o IO): 0.185398s
	Processing time (w/o IO): 0.183793s
	Processing time (w/o IO): 0.18614s
	Processing time (w/o IO): 0.185242s
	  Time (mean ± σ):     273.0 ms ±   2.2 ms    [User: 255.4 ms, System: 17.4 ms]
	  Range (min … max):   269.8 ms … 276.6 ms    10 runs
	 
Scala Native:

	Benchmark 1: ./target/scala-3.3.1/scala_native-out
	Processing time (w/o IO): 242ms
	Processing time (w/o IO): 275ms
	Processing time (w/o IO): 243ms
	Processing time (w/o IO): 243ms
	Processing time (w/o IO): 243ms
	Processing time (w/o IO): 243ms
	Processing time (w/o IO): 246ms
	Processing time (w/o IO): 244ms
	Processing time (w/o IO): 277ms
	Processing time (w/o IO): 255ms
	Processing time (w/o IO): 263ms
	Processing time (w/o IO): 242ms
	Processing time (w/o IO): 260ms
	  Time (mean ± σ):     332.9 ms ±  16.3 ms    [User: 308.4 ms, System: 78.4 ms]
	  Range (min … max):   319.9 ms … 373.4 ms    10 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 320.613762ms
	Processing time (w/o IO): 323.141715ms
	Processing time (w/o IO): 324.472443ms
	  Time (mean ± σ):     476.4 ms ±   0.5 ms    [User: 464.0 ms, System: 35.7 ms]
	  Range (min … max):   476.1 ms … 476.8 ms    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 164.233313ms
	Processing time (w/o IO): 164.892826ms
	Processing time (w/o IO): 165.583441ms
	  Time (mean ± σ):     315.8 ms ±   4.2 ms    [User: 799.0 ms, System: 29.2 ms]
	  Range (min … max):   312.8 ms … 318.7 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 340.546176ms
	Processing time (w/o IO): 340.218224ms
	Processing time (w/o IO): 340.944102ms
	  Time (mean ± σ):     401.6 ms ±   0.3 ms    [User: 378.2 ms, System: 23.4 ms]
	  Range (min … max):   401.5 ms … 401.8 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 174.699098ms
	Processing time (w/o IO): 176.303135ms
	Processing time (w/o IO): 175.000305ms
	  Time (mean ± σ):     239.0 ms ±   0.1 ms    [User: 386.1 ms, System: 25.2 ms]
	  Range (min … max):   238.9 ms … 239.1 ms    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 561.265ms
	Processing time (w/o IO): 561.411ms
	Processing time (w/o IO): 561.367ms
	  Time (mean ± σ):     850.1 ms ±   0.5 ms    [User: 839.0 ms, System: 15.4 ms]
	  Range (min … max):   849.8 ms … 850.4 ms    2 runs
	 
D (v2):

	Benchmark 1: ./related
	Processing time (w/o IO): 260.666ms
	Processing time (w/o IO): 260.161ms
	Processing time (w/o IO): 259.423ms
	  Time (mean ± σ):     551.4 ms ±   1.0 ms    [User: 536.1 ms, System: 19.4 ms]
	  Range (min … max):   550.7 ms … 552.1 ms    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 124.564ms
	Processing time (w/o IO): 125.624ms
	Processing time (w/o IO): 125.74ms
	  Time (mean ± σ):     428.8 ms ±   5.5 ms    [User: 729.3 ms, System: 27.3 ms]
	  Range (min … max):   424.9 ms … 432.6 ms    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 319 ms
	Processing time (w/o IO): 321 ms
	Processing time (w/o IO): 320 ms
	  Time (mean ± σ):      1.106 s ±  0.003 s    [User: 1.013 s, System: 0.093 s]
	  Range (min … max):    1.104 s …  1.108 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 165 ms
	Processing time (w/o IO): 165 ms
	Processing time (w/o IO): 164 ms
	  Time (mean ± σ):      1.030 s ±  0.001 s    [User: 1.393 s, System: 0.115 s]
	  Range (min … max):    1.029 s …  1.030 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 23.770s
	Processing time (w/o IO): 23.447s
	  Time (abs ≡):        23.613 s               [User: 23.574 s, System: 0.035 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 6.649s
	Processing time (w/o IO): 6.847s
	Processing time (w/o IO): 6.982s
	  Time (mean ± σ):      7.425 s ±  0.093 s    [User: 5.146 s, System: 2.893 s]
	  Range (min … max):    7.359 s …  7.490 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 817.904941ms
	Processing time (w/o IO): 816.527218ms
	Processing time (w/o IO): 816.720221ms
	  Time (mean ± σ):      1.035 s ±  0.002 s    [User: 0.989 s, System: 0.044 s]
	  Range (min … max):    1.033 s …  1.036 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 337ms
	Processing time (w/o IO): 336ms
	Processing time (w/o IO): 336ms
	  Time (mean ± σ):     529.3 ms ±   0.5 ms    [User: 502.1 ms, System: 27.1 ms]
	  Range (min … max):   528.9 ms … 529.7 ms    2 runs
	 
Julia:

	Benchmark 1: julia --startup-file=no --project=Related -e "using Related; main()"
	Processing time (w/o IO): 384.953461ms
	Processing time (w/o IO): 390.965365ms
	Processing time (w/o IO): 402.273061ms
	  Time (mean ± σ):      1.509 s ±  0.003 s    [User: 1.321 s, System: 0.290 s]
	  Range (min … max):    1.507 s …  1.511 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 56 milliseconds
	Processing time (w/o IO): 53 milliseconds
	Processing time (w/o IO): 54 milliseconds
	  Time (mean ± σ):      1.142 s ±  0.001 s    [User: 1.024 s, System: 0.221 s]
	  Range (min … max):    1.141 s …  1.143 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --startup-file=no --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 172.486512ms
	Processing time (w/o IO): 171.733667ms
	Processing time (w/o IO): 171.796551ms
	  Time (mean ± σ):      1.272 s ±  0.010 s    [User: 1.643 s, System: 0.231 s]
	  Range (min … max):    1.264 s …  1.279 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  677.561059ms
	Processing time (w/o IO):  680.802902ms
	Processing time (w/o IO):  679.52053ms
	  Time (mean ± σ):      1.486 s ±  0.003 s    [User: 1.450 s, System: 0.033 s]
	  Range (min … max):    1.484 s …  1.488 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 741.654ms
	Processing time (w/o IO): 742.903ms
	Processing time (w/o IO): 740.971ms
	  Time (mean ± σ):      8.588 s ±  0.144 s    [User: 8.469 s, System: 0.117 s]
	  Range (min … max):    8.486 s …  8.689 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 2348ms
	Processing time (w/o IO): 2252ms
	Processing time (w/o IO): 2336ms
	  Time (mean ± σ):      2.982 s ±  0.063 s    [User: 3.179 s, System: 0.149 s]
	  Range (min … max):    2.937 s …  3.026 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 2007ms
	Processing time (w/o IO): 2008ms
	Processing time (w/o IO): 2007ms
	  Time (mean ± σ):      2.503 s ±  0.010 s    [User: 2.452 s, System: 0.073 s]
	  Range (min … max):    2.496 s …  2.511 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 716.0390615463257ms
	Processing time (w/o IO): 716.4120674133301ms
	Processing time (w/o IO): 717.289924621582ms
	  Time (mean ± σ):      2.117 s ±  0.015 s    [User: 1.969 s, System: 0.114 s]
	  Range (min … max):    2.106 s …  2.127 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 393.355774ms
	Processing time (w/o IO): 393.162971ms
	Processing time (w/o IO): 395.278402ms
	  Time (mean ± σ):      1.813 s ±  0.008 s    [User: 2.791 s, System: 0.131 s]
	  Range (min … max):    1.807 s …  1.819 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 1938ms
	Processing time (w/o IO): 1930ms
	Processing time (w/o IO): 1944ms
	  Time (mean ± σ):      2.258 s ±  0.011 s    [User: 2.246 s, System: 0.104 s]
	  Range (min … max):    2.250 s …  2.265 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 1540ms
	Processing time (w/o IO): 1549ms
	Processing time (w/o IO): 1531ms
	  Time (mean ± σ):      1.700 s ±  0.015 s    [User: 1.709 s, System: 0.069 s]
	  Range (min … max):    1.689 s …  1.711 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 2510ms
	Processing time (w/o IO): 2289ms
	Processing time (w/o IO): 2288ms
	  Time (mean ± σ):      2.715 s ±  0.356 s    [User: 2.433 s, System: 0.065 s]
	  Range (min … max):    2.464 s …  2.967 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 853 ms
	Processing time (w/o IO): 853 ms
	Processing time (w/o IO): 853 ms
	  Time (mean ± σ):      1.809 s ±  0.002 s    [User: 1.765 s, System: 0.041 s]
	  Range (min … max):    1.808 s …  1.810 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 475 ms
	Processing time (w/o IO): 474 ms
	Processing time (w/o IO): 487 ms
	  Time (mean ± σ):     578.9 ms ±   6.7 ms    [User: 1337.1 ms, System: 25.4 ms]
	  Range (min … max):   574.2 ms … 583.6 ms    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 326.095ms
	Processing time (w/o IO): 325.767ms
	Processing time (w/o IO): 316.845ms
	  Time (mean ± σ):     438.3 ms ±   6.0 ms    [User: 408.6 ms, System: 29.4 ms]
	  Range (min … max):   434.0 ms … 442.5 ms    2 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 172.646ms
	Processing time (w/o IO): 172.194ms
	Processing time (w/o IO): 172.035ms
	  Time (mean ± σ):     283.1 ms ±   2.0 ms    [User: 750.0 ms, System: 33.3 ms]
	  Range (min … max):   281.7 ms … 284.5 ms    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 614.4463ms
	Processing time (w/o IO): 613.6114ms
	Processing time (w/o IO): 615.849ms
	  Time (mean ± σ):      3.484 s ±  0.015 s    [User: 3.481 s, System: 0.307 s]
	  Range (min … max):    3.474 s …  3.494 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 277ms
	Processing time (w/o IO): 294ms
	Processing time (w/o IO): 287ms
	  Time (mean ± σ):      2.768 s ±  0.057 s    [User: 4.397 s, System: 0.295 s]
	  Range (min … max):    2.728 s …  2.809 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 280ms
	Processing time (w/o IO): 279ms
	Processing time (w/o IO): 278ms
	  Time (mean ± σ):      3.275 s ±  0.009 s    [User: 4.875 s, System: 0.297 s]
	  Range (min … max):    3.269 s …  3.282 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 371.129ms
	Processing time (w/o IO): 374.2992ms
	Processing time (w/o IO): 371.8351ms
	  Time (mean ± σ):      3.495 s ±  0.008 s    [User: 3.399 s, System: 0.314 s]
	  Range (min … max):    3.490 s …  3.501 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 374.9737ms
	Processing time (w/o IO): 374.9093ms
	Processing time (w/o IO): 377.1439ms
	  Time (mean ± σ):      1.096 s ±  0.013 s    [User: 1.040 s, System: 0.075 s]
	  Range (min … max):    1.087 s …  1.105 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 386.6379ms
	Processing time (w/o IO): 374.3901ms
	Processing time (w/o IO): 373.2848ms
	  Time (mean ± σ):     921.9 ms ±   3.3 ms    [User: 904.1 ms, System: 51.4 ms]
	  Range (min … max):   919.6 ms … 924.3 ms    2 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 123.2417ms
	Processing time (w/o IO): 122.9437ms
	Processing time (w/o IO): 122.9041ms
	  Time (mean ± σ):     596.9 ms ±  10.9 ms    [User: 1208.6 ms, System: 77.9 ms]
	  Range (min … max):   589.2 ms … 604.6 ms    2 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 137.8811ms
	Processing time (w/o IO): 135.7657ms
	Processing time (w/o IO): 135.8273ms
	  Time (mean ± σ):     442.7 ms ±   2.7 ms    [User: 1174.9 ms, System: 75.4 ms]
	  Range (min … max):   440.8 ms … 444.6 ms    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	1173.0980873108	ms
	Processing time (w/o IO):	1166.8810844421	ms
	Processing time (w/o IO):	1154.7830104828	ms
	  Time (mean ± σ):      2.535 s ±  0.009 s    [User: 2.468 s, System: 0.065 s]
	  Range (min … max):    2.529 s …  2.542 s    2 runs
	 
LuaJIT (JIT OFF):

	Benchmark 1: luajit -joff only_lua.lua
	Processing time (w/o IO):	10258.438825607	ms
	Processing time (w/o IO):	10235.796928406	ms
	Processing time (w/o IO):	10267.253875732	ms
	  Time (mean ± σ):     11.826 s ±  0.036 s    [User: 11.756 s, System: 0.065 s]
	  Range (min … max):   11.800 s … 11.851 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	16761.025905609	ms
	Processing time (w/o IO):	16769.431114197	ms
	  Time (abs ≡):        18.650 s               [User: 18.586 s, System: 0.060 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 2759ms
	Processing time (w/o IO): 2842ms
	Processing time (w/o IO): 2777ms
	  Time (mean ± σ):      3.247 s ±  0.053 s    [User: 3.082 s, System: 0.163 s]
	  Range (min … max):    3.209 s …  3.284 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 14.923429 s
	Processing time (w/o IO): 14.960833 s
	Processing time (w/o IO): 14.886891 s
	  Time (mean ± σ):     16.012 s ±  0.064 s    [User: 15.783 s, System: 0.281 s]
	  Range (min … max):   15.967 s … 16.058 s    2 runs
	 
Racket:

	Benchmark 1: racket related.rkt
	Processing time (w/o IO): 3945.97ms
	Processing time (w/o IO): 3937.26ms
	Processing time (w/o IO): 3991.92ms
	  Time (mean ± σ):      5.089 s ±  0.039 s    [User: 4.951 s, System: 0.137 s]
	  Range (min … max):    5.062 s …  5.117 s    2 runs
	 
Lobster (JIT):

	Benchmark 1: lobster related.lobster
	Processing time (w/o IO): 21.165237s
	Processing time (w/o IO): 21.188805s
	  Time (abs ≡):        21.520 s               [User: 21.465 s, System: 0.051 s]
	 
Lobster (C++):

	Benchmark 1: compiled_lobster
	Processing time (w/o IO): 2.872683s
	Processing time (w/o IO): 2.871344s
	  Time (abs ≡):         3.202 s               [User: 3.148 s, System: 0.052 s]
	 
Scala Native:

	Benchmark 1: ./target/scala-3.3.1/scala_native-out
	Processing time (w/o IO): 3569ms
	Processing time (w/o IO): 3558ms
	  Time (abs ≡):         3.949 s               [User: 4.162 s, System: 0.526 s]
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 2.864121108s
	Processing time (w/o IO): 2.861575473s
	Processing time (w/o IO): 2.863881441s
	  Time (mean ± σ):      3.377 s ±  0.005 s    [User: 3.407 s, System: 0.098 s]
	  Range (min … max):    3.373 s …  3.380 s    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1.419256178s
	Processing time (w/o IO): 1.429275637s
	Processing time (w/o IO): 1.427575627s
	  Time (mean ± σ):      1.920 s ±  0.000 s    [User: 6.148 s, System: 0.107 s]
	  Range (min … max):    1.920 s …  1.920 s    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 3.042923466s
	Processing time (w/o IO): 3.040698362s
	Processing time (w/o IO): 3.048124295s
	  Time (mean ± σ):      3.265 s ±  0.001 s    [User: 3.189 s, System: 0.070 s]
	  Range (min … max):    3.265 s …  3.266 s    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 1.521423857s
	Processing time (w/o IO): 1.520619453s
	Processing time (w/o IO): 1.520975855s
	  Time (mean ± σ):      1.739 s ±  0.001 s    [User: 3.162 s, System: 0.088 s]
	  Range (min … max):    1.738 s …  1.740 s    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 4927.49ms
	Processing time (w/o IO): 4924.95ms
	Processing time (w/o IO): 4924.74ms
	  Time (mean ± σ):      5.869 s ±  0.001 s    [User: 5.757 s, System: 0.115 s]
	  Range (min … max):    5.868 s …  5.869 s    2 runs
	 
D (v2):

	Benchmark 1: ./related
	Processing time (w/o IO): 2165.86ms
	Processing time (w/o IO): 2169.89ms
	Processing time (w/o IO): 2165.76ms
	  Time (mean ± σ):      3.119 s ±  0.002 s    [User: 3.018 s, System: 0.105 s]
	  Range (min … max):    3.118 s …  3.120 s    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 999.352ms
	Processing time (w/o IO): 995.47ms
	Processing time (w/o IO): 995.25ms
	  Time (mean ± σ):      1.990 s ±  0.006 s    [User: 4.729 s, System: 0.105 s]
	  Range (min … max):    1.986 s …  1.995 s    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 2781 ms
	Processing time (w/o IO): 2784 ms
	Processing time (w/o IO): 2782 ms
	  Time (mean ± σ):      5.367 s ±  0.016 s    [User: 4.859 s, System: 0.302 s]
	  Range (min … max):    5.355 s …  5.378 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 1402 ms
	Processing time (w/o IO): 1402 ms
	Processing time (w/o IO): 1410 ms
	  Time (mean ± σ):      4.265 s ±  0.003 s    [User: 7.900 s, System: 0.326 s]
	  Range (min … max):    4.263 s …  4.267 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 215.414s
	Processing time (w/o IO): 215.028s
	  Time (abs ≡):        215.518 s               [User: 215.283 s, System: 0.204 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 7157.663159ms
	Processing time (w/o IO): 7127.387229ms
	Processing time (w/o IO): 7171.920516ms
	  Time (mean ± σ):      7.881 s ±  0.032 s    [User: 7.761 s, System: 0.111 s]
	  Range (min … max):    7.858 s …  7.904 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 3010ms
	Processing time (w/o IO): 3015ms
	Processing time (w/o IO): 3017ms
	  Time (mean ± σ):      3.630 s ±  0.000 s    [User: 3.544 s, System: 0.079 s]
	  Range (min … max):    3.630 s …  3.631 s    2 runs
	 
Julia:

	Benchmark 1: julia --startup-file=no --project=Related -e "using Related; main()"
	Processing time (w/o IO): 3170.6502680000003ms
	Processing time (w/o IO): 3163.393184ms
	Processing time (w/o IO): 3169.94821ms
	  Time (mean ± σ):      4.661 s ±  0.002 s    [User: 4.452 s, System: 0.304 s]
	  Range (min … max):    4.660 s …  4.663 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 157 milliseconds
	Processing time (w/o IO): 156 milliseconds
	Processing time (w/o IO): 151 milliseconds
	  Time (mean ± σ):      1.665 s ±  0.020 s    [User: 1.469 s, System: 0.296 s]
	  Range (min … max):    1.651 s …  1.680 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --startup-file=no --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 1477.4813330000002ms
	Processing time (w/o IO): 1477.112352ms
	Processing time (w/o IO): 1481.859956ms
	  Time (mean ± σ):      2.979 s ±  0.017 s    [User: 7.119 s, System: 0.320 s]
	  Range (min … max):    2.967 s …  2.991 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  6.081084301s
	Processing time (w/o IO):  6.084460915s
	Processing time (w/o IO):  6.100056833s
	  Time (mean ± σ):      8.526 s ±  0.005 s    [User: 8.444 s, System: 0.074 s]
	  Range (min … max):    8.523 s …  8.530 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 6.602s
	Processing time (w/o IO): 6.600s
	Processing time (w/o IO): 6.598s
	  Time (mean ± σ):     76.157 s ±  1.833 s    [User: 75.739 s, System: 0.403 s]
	  Range (min … max):   74.861 s … 77.454 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 17839ms
	Processing time (w/o IO): 17872ms
	Processing time (w/o IO): 17816ms
	  Time (mean ± σ):     19.367 s ±  0.012 s    [User: 19.557 s, System: 0.279 s]
	  Range (min … max):   19.358 s … 19.376 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 17898ms
	Processing time (w/o IO): 17886ms
	Processing time (w/o IO): 17881ms
	  Time (mean ± σ):     19.372 s ±  0.021 s    [User: 19.382 s, System: 0.125 s]
	  Range (min … max):   19.358 s … 19.387 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 6185.765027999878ms
	Processing time (w/o IO): 6184.137940406799ms
	Processing time (w/o IO): 6191.519021987915ms
	  Time (mean ± σ):     10.472 s ±  0.034 s    [User: 9.931 s, System: 0.366 s]
	  Range (min … max):   10.448 s … 10.496 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 3429.64986ms
	Processing time (w/o IO): 3437.474341ms
	Processing time (w/o IO): 3409.657245ms
	  Time (mean ± σ):      7.757 s ±  0.011 s    [User: 17.302 s, System: 0.411 s]
	  Range (min … max):    7.749 s …  7.765 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 17894ms
	Processing time (w/o IO): 17553ms
	Processing time (w/o IO): 17588ms
	  Time (mean ± σ):     18.287 s ±  0.027 s    [User: 18.242 s, System: 0.195 s]
	  Range (min … max):   18.268 s … 18.306 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 13228ms
	Processing time (w/o IO): 12198ms
	Processing time (w/o IO): 14047ms
	  Time (mean ± σ):     13.592 s ±  1.300 s    [User: 13.583 s, System: 0.143 s]
	  Range (min … max):   12.672 s … 14.511 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 20229ms
	Processing time (w/o IO): 22002ms
	Processing time (w/o IO): 21969ms
	  Time (mean ± σ):     22.778 s ±  0.001 s    [User: 22.464 s, System: 0.198 s]
	  Range (min … max):   22.777 s … 22.779 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 5559 ms
	Processing time (w/o IO): 5559 ms
	Processing time (w/o IO): 5566 ms
	  Time (mean ± σ):     11.601 s ±  0.015 s    [User: 11.500 s, System: 0.093 s]
	  Range (min … max):   11.590 s … 11.611 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 4125 ms
	Processing time (w/o IO): 4116 ms
	Processing time (w/o IO): 4124 ms
	  Time (mean ± σ):      4.477 s ±  0.015 s    [User: 11.053 s, System: 0.101 s]
	  Range (min … max):    4.467 s …  4.488 s    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 2849.162ms
	Processing time (w/o IO): 2844.783ms
	Processing time (w/o IO): 2840.917ms
	  Time (mean ± σ):      3.225 s ±  0.002 s    [User: 3.148 s, System: 0.071 s]
	  Range (min … max):    3.224 s …  3.226 s    2 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 1474.696ms
	Processing time (w/o IO): 1481.52ms
	Processing time (w/o IO): 1478.387ms
	  Time (mean ± σ):      1.854 s ±  0.008 s    [User: 6.153 s, System: 0.085 s]
	  Range (min … max):    1.848 s …  1.860 s    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 4844.3196ms
	Processing time (w/o IO): 4847.3175ms
	Processing time (w/o IO): 4848.4319ms
	  Time (mean ± σ):     15.120 s ±  0.099 s    [User: 16.165 s, System: 0.619 s]
	  Range (min … max):   15.050 s … 15.190 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 2501ms
	Processing time (w/o IO): 2482ms
	Processing time (w/o IO): 2401ms
	  Time (mean ± σ):     10.246 s ±  0.108 s    [User: 25.838 s, System: 0.633 s]
	  Range (min … max):   10.170 s … 10.322 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 2460ms
	Processing time (w/o IO): 2461ms
	Processing time (w/o IO): 2460ms
	  Time (mean ± σ):     13.109 s ±  0.161 s    [User: 29.140 s, System: 0.621 s]
	  Range (min … max):   12.995 s … 13.223 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 3223.9712ms
	Processing time (w/o IO): 3225.1595ms
	Processing time (w/o IO): 3233.2331ms
	  Time (mean ± σ):     14.809 s ±  0.085 s    [User: 16.280 s, System: 0.659 s]
	  Range (min … max):   14.749 s … 14.869 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 3255.6199ms
	Processing time (w/o IO): 3258.3162ms
	Processing time (w/o IO): 3270.7869ms
	  Time (mean ± σ):      7.422 s ±  0.002 s    [User: 7.388 s, System: 0.173 s]
	  Range (min … max):    7.420 s …  7.424 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 3282.8492ms
	Processing time (w/o IO): 3245.9318ms
	Processing time (w/o IO): 3253.9739ms
	  Time (mean ± σ):      7.044 s ±  0.013 s    [User: 7.023 s, System: 0.148 s]
	  Range (min … max):    7.035 s …  7.053 s    2 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 1011.0708ms
	Processing time (w/o IO): 1024.1518ms
	Processing time (w/o IO): 1013.112ms
	  Time (mean ± σ):      2.929 s ±  0.015 s    [User: 8.673 s, System: 0.187 s]
	  Range (min … max):    2.918 s …  2.940 s    2 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 1141.0603ms
	Processing time (w/o IO): 1135.8003ms
	Processing time (w/o IO): 1136.915ms
	  Time (mean ± σ):      2.794 s ±  0.025 s    [User: 9.324 s, System: 0.169 s]
	  Range (min … max):    2.777 s …  2.812 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	10002.5639534	ms
	Processing time (w/o IO):	13241.166114807	ms
	Processing time (w/o IO):	12465.179204941	ms
	  Time (mean ± σ):     17.157 s ±  0.578 s    [User: 16.947 s, System: 0.205 s]
	  Range (min … max):   16.748 s … 17.566 s    2 runs
	 
LuaJIT (JIT OFF):

	Benchmark 1: luajit -joff only_lua.lua
	Processing time (w/o IO):	91073.252916336	ms
	Processing time (w/o IO):	91051.364183426	ms
	Processing time (w/o IO):	91490.298032761	ms
	  Time (mean ± σ):     96.388 s ±  0.231 s    [User: 96.179 s, System: 0.188 s]
	  Range (min … max):   96.224 s … 96.551 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	150223.88505936	ms
	Processing time (w/o IO):	150160.15291214	ms
	  Time (abs ≡):        156.774 s               [User: 156.551 s, System: 0.195 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 34770ms
	Processing time (w/o IO): 34764ms
	Processing time (w/o IO): 34822ms
	  Time (mean ± σ):     36.347 s ±  0.062 s    [User: 35.569 s, System: 0.767 s]
	  Range (min … max):   36.303 s … 36.391 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 131.808923 s
	Processing time (w/o IO): 132.985992 s
	Processing time (w/o IO): 137.009657 s
	  Time (mean ± σ):     137.885 s ±  2.917 s    [User: 137.190 s, System: 0.755 s]
	  Range (min … max):   135.822 s … 139.947 s    2 runs
	 
Racket:

	Benchmark 1: racket related.rkt
	Processing time (w/o IO): 34904.54ms
	Processing time (w/o IO): 35354.93ms
	Processing time (w/o IO): 34249.87ms
	  Time (mean ± σ):     38.117 s ±  0.836 s    [User: 37.784 s, System: 0.329 s]
	  Range (min … max):   37.526 s … 38.708 s    2 runs
	 
Lobster (JIT):

	Benchmark 1: lobster related.lobster
	Processing time (w/o IO): 188.96393s
	Processing time (w/o IO): 188.922925s
	  Time (abs ≡):        189.933 s               [User: 189.754 s, System: 0.155 s]
	 
Lobster (C++):

	Benchmark 1: compiled_lobster
	Processing time (w/o IO): 25.734695s
	Processing time (w/o IO): 25.806304s
	  Time (abs ≡):        26.844 s               [User: 26.694 s, System: 0.135 s]
	 
Scala Native:

	Benchmark 1: ./target/scala-3.3.1/scala_native-out
	Processing time (w/o IO): 29599ms
	Processing time (w/o IO): 29765ms
	  Time (abs ≡):        31.001 s               [User: 35.340 s, System: 1.537 s]
	 
