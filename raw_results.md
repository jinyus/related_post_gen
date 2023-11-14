Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 22.817473ms
	Processing time (w/o IO): 22.880774ms
	Processing time (w/o IO): 23.84449ms
	Processing time (w/o IO): 22.822173ms
	Processing time (w/o IO): 22.747472ms
	Processing time (w/o IO): 22.934775ms
	Processing time (w/o IO): 22.896075ms
	Processing time (w/o IO): 23.081178ms
	Processing time (w/o IO): 22.721072ms
	Processing time (w/o IO): 22.824273ms
	Processing time (w/o IO): 22.808073ms
	Processing time (w/o IO): 22.766272ms
	Processing time (w/o IO): 22.723771ms
	  Time (mean ± σ):      69.6 ms ±   4.2 ms    [User: 64.7 ms, System: 16.1 ms]
	  Range (min … max):    64.3 ms …  76.3 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 13.511121ms
	Processing time (w/o IO): 13.382719ms
	Processing time (w/o IO): 12.104498ms
	Processing time (w/o IO): 11.906895ms
	Processing time (w/o IO): 11.705691ms
	Processing time (w/o IO): 12.060797ms
	Processing time (w/o IO): 11.992296ms
	Processing time (w/o IO): 11.980096ms
	Processing time (w/o IO): 12.153398ms
	Processing time (w/o IO): 11.942095ms
	Processing time (w/o IO): 11.924395ms
	Processing time (w/o IO): 11.832893ms
	Processing time (w/o IO): 13.831926ms
	  Time (mean ± σ):      58.9 ms ±   3.6 ms    [User: 81.9 ms, System: 20.4 ms]
	  Range (min … max):    54.3 ms …  63.5 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 23.585376ms
	Processing time (w/o IO): 23.569176ms
	Processing time (w/o IO): 23.518775ms
	Processing time (w/o IO): 23.915882ms
	Processing time (w/o IO): 23.515275ms
	Processing time (w/o IO): 23.482875ms
	Processing time (w/o IO): 23.582477ms
	Processing time (w/o IO): 23.531775ms
	Processing time (w/o IO): 23.526475ms
	Processing time (w/o IO): 23.522876ms
	Processing time (w/o IO): 23.534375ms
	Processing time (w/o IO): 23.494375ms
	Processing time (w/o IO): 23.537576ms
	  Time (mean ± σ):      41.5 ms ±   0.7 ms    [User: 30.4 ms, System: 10.9 ms]
	  Range (min … max):    40.1 ms …  42.3 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 12.582002ms
	Processing time (w/o IO): 12.244896ms
	Processing time (w/o IO): 12.230596ms
	Processing time (w/o IO): 12.241396ms
	Processing time (w/o IO): 12.213095ms
	Processing time (w/o IO): 13.74282ms
	Processing time (w/o IO): 12.351298ms
	Processing time (w/o IO): 12.277296ms
	Processing time (w/o IO): 12.785805ms
	Processing time (w/o IO): 12.357798ms
	Processing time (w/o IO): 12.716004ms
	Processing time (w/o IO): 12.245396ms
	Processing time (w/o IO): 12.622002ms
	  Time (mean ± σ):      33.4 ms ±   0.6 ms    [User: 34.4 ms, System: 11.0 ms]
	  Range (min … max):    32.7 ms …  34.6 ms    10 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 33.566ms
	Processing time (w/o IO): 33.04ms
	Processing time (w/o IO): 32.888ms
	Processing time (w/o IO): 32.84ms
	Processing time (w/o IO): 32.888ms
	Processing time (w/o IO): 43.558ms
	Processing time (w/o IO): 33.233ms
	Processing time (w/o IO): 33.361ms
	Processing time (w/o IO): 32.807ms
	Processing time (w/o IO): 32.522ms
	Processing time (w/o IO): 32.67ms
	Processing time (w/o IO): 33.266ms
	Processing time (w/o IO): 32.467ms
	  Time (mean ± σ):     120.8 ms ±   4.4 ms    [User: 106.9 ms, System: 15.2 ms]
	  Range (min … max):   117.7 ms … 132.1 ms    10 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 13.339ms
	Processing time (w/o IO): 13.809ms
	Processing time (w/o IO): 13.843ms
	Processing time (w/o IO): 13.145ms
	Processing time (w/o IO): 13.524ms
	Processing time (w/o IO): 14.673ms
	Processing time (w/o IO): 13.538ms
	Processing time (w/o IO): 13.36ms
	Processing time (w/o IO): 13.01ms
	Processing time (w/o IO): 13.123ms
	Processing time (w/o IO): 14.647ms
	Processing time (w/o IO): 13.535ms
	Processing time (w/o IO): 13.893ms
	  Time (mean ± σ):      96.5 ms ±   1.2 ms    [User: 110.2 ms, System: 10.6 ms]
	  Range (min … max):    95.1 ms …  98.8 ms    10 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 22 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 23 ms
	  Time (mean ± σ):     243.6 ms ±   3.9 ms    [User: 206.3 ms, System: 37.1 ms]
	  Range (min … max):   240.3 ms … 253.7 ms    10 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 12 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 12 ms
	Processing time (w/o IO): 12 ms
	Processing time (w/o IO): 13 ms
	  Time (mean ± σ):     256.5 ms ±   4.3 ms    [User: 243.3 ms, System: 47.0 ms]
	  Range (min … max):   251.3 ms … 267.1 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 1.473s
	Processing time (w/o IO): 1.459s
	Processing time (w/o IO): 1.459s
	Processing time (w/o IO): 1.462s
	Processing time (w/o IO): 1.464s
	Processing time (w/o IO): 1.458s
	Processing time (w/o IO): 1.461s
	Processing time (w/o IO): 1.464s
	Processing time (w/o IO): 1.463s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.469s
	Processing time (w/o IO): 1.594s
	Processing time (w/o IO): 1.564s
	  Time (mean ± σ):      1.560 s ±  0.050 s    [User: 1.539 s, System: 0.021 s]
	  Range (min … max):    1.533 s …  1.668 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 435.6ms
	Processing time (w/o IO): 397.7ms
	Processing time (w/o IO): 389.0ms
	Processing time (w/o IO): 387.7ms
	Processing time (w/o IO): 386.7ms
	Processing time (w/o IO): 387.6ms
	Processing time (w/o IO): 395.5ms
	Processing time (w/o IO): 389.5ms
	Processing time (w/o IO): 383.2ms
	Processing time (w/o IO): 380.6ms
	Processing time (w/o IO): 389.5ms
	Processing time (w/o IO): 378.3ms
	Processing time (w/o IO): 380.3ms
	  Time (mean ± σ):     711.1 ms ±  23.5 ms    [User: 853.4 ms, System: 455.9 ms]
	  Range (min … max):   688.8 ms … 763.5 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 54.595651ms
	Processing time (w/o IO): 54.755354ms
	Processing time (w/o IO): 54.370547ms
	Processing time (w/o IO): 54.421248ms
	Processing time (w/o IO): 54.191745ms
	Processing time (w/o IO): 54.164845ms
	Processing time (w/o IO): 55.18066ms
	Processing time (w/o IO): 55.048858ms
	Processing time (w/o IO): 53.938641ms
	Processing time (w/o IO): 54.56055ms
	Processing time (w/o IO): 54.213245ms
	Processing time (w/o IO): 54.618752ms
	Processing time (w/o IO): 54.441549ms
	  Time (mean ± σ):     110.1 ms ±   1.3 ms    [User: 98.6 ms, System: 11.3 ms]
	  Range (min … max):   108.4 ms … 111.8 ms    10 runs
	 
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
	  Time (mean ± σ):      72.1 ms ±   0.6 ms    [User: 66.9 ms, System: 5.2 ms]
	  Range (min … max):    71.3 ms …  73.3 ms    10 runs
	 
Julia:

	Benchmark 1: julia --startup-file=no --project=Related -e "using Related; main()"
	Processing time (w/o IO): 31.361202ms
	Processing time (w/o IO): 31.494904ms
	Processing time (w/o IO): 31.451603000000002ms
	Processing time (w/o IO): 31.433203ms
	Processing time (w/o IO): 31.499804ms
	Processing time (w/o IO): 31.395102ms
	Processing time (w/o IO): 31.450704ms
	Processing time (w/o IO): 31.609307000000005ms
	Processing time (w/o IO): 31.509404999999997ms
	Processing time (w/o IO): 31.504006ms
	Processing time (w/o IO): 31.461904999999998ms
	Processing time (w/o IO): 31.453905ms
	Processing time (w/o IO): 31.394502999999997ms
	  Time (mean ± σ):      1.126 s ±  0.015 s    [User: 0.970 s, System: 0.259 s]
	  Range (min … max):    1.106 s …  1.147 s    10 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 10 milliseconds
	Processing time (w/o IO): 10 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 10 milliseconds
	Processing time (w/o IO): 10 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 10 milliseconds
	  Time (mean ± σ):      1.118 s ±  0.011 s    [User: 0.953 s, System: 0.269 s]
	  Range (min … max):    1.101 s …  1.135 s    10 runs
	 
Julia Concurrent:

	Benchmark 1: julia --startup-file=no --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 13.178119ms
	Processing time (w/o IO): 14.47194ms
	Processing time (w/o IO): 13.454624ms
	Processing time (w/o IO): 12.736612ms
	Processing time (w/o IO): 13.554926ms
	Processing time (w/o IO): 13.738528ms
	Processing time (w/o IO): 14.618941ms
	Processing time (w/o IO): 12.988114ms
	Processing time (w/o IO): 13.292518999999999ms
	Processing time (w/o IO): 13.703827ms
	Processing time (w/o IO): 12.72241ms
	Processing time (w/o IO): 13.95603ms
	Processing time (w/o IO): 13.809128000000001ms
	  Time (mean ± σ):      1.109 s ±  0.011 s    [User: 0.983 s, System: 0.269 s]
	  Range (min … max):    1.086 s …  1.120 s    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  47.679476ms
	Processing time (w/o IO):  47.91118ms
	Processing time (w/o IO):  48.57259ms
	Processing time (w/o IO):  47.740877ms
	Processing time (w/o IO):  47.763477ms
	Processing time (w/o IO):  47.804978ms
	Processing time (w/o IO):  47.755477ms
	Processing time (w/o IO):  48.642591ms
	Processing time (w/o IO):  47.698976ms
	Processing time (w/o IO):  48.074982ms
	Processing time (w/o IO):  47.95318ms
	Processing time (w/o IO):  48.342186ms
	Processing time (w/o IO):  48.711692ms
	  Time (mean ± σ):     271.9 ms ±   1.2 ms    [User: 258.0 ms, System: 13.8 ms]
	  Range (min … max):   270.0 ms … 274.4 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 49.815ms
	Processing time (w/o IO): 50.010ms
	Processing time (w/o IO): 49.653ms
	Processing time (w/o IO): 49.851ms
	Processing time (w/o IO): 49.006ms
	Processing time (w/o IO): 49.570ms
	Processing time (w/o IO): 50.201ms
	Processing time (w/o IO): 50.297ms
	Processing time (w/o IO): 49.355ms
	Processing time (w/o IO): 49.395ms
	Processing time (w/o IO): 50.037ms
	Processing time (w/o IO): 49.423ms
	Processing time (w/o IO): 49.934ms
	  Time (mean ± σ):     410.2 ms ±   1.9 ms    [User: 374.9 ms, System: 35.2 ms]
	  Range (min … max):   407.5 ms … 414.0 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 171ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 171ms
	Processing time (w/o IO): 171ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 173ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 116ms
	Processing time (w/o IO): 171ms
	Processing time (w/o IO): 171ms
	Processing time (w/o IO): 171ms
	Processing time (w/o IO): 171ms
	Processing time (w/o IO): 178ms
	  Time (mean ± σ):     588.1 ms ±  18.3 ms    [User: 683.8 ms, System: 137.8 ms]
	  Range (min … max):   546.1 ms … 610.9 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 131ms
	  Time (mean ± σ):     267.2 ms ±   2.6 ms    [User: 241.1 ms, System: 30.7 ms]
	  Range (min … max):   262.6 ms … 272.2 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 51.79905891418457ms
	Processing time (w/o IO): 51.22101306915283ms
	Processing time (w/o IO): 51.39303207397461ms
	Processing time (w/o IO): 51.45299434661865ms
	Processing time (w/o IO): 51.9789457321167ms
	Processing time (w/o IO): 51.312923431396484ms
	Processing time (w/o IO): 51.99790000915527ms
	Processing time (w/o IO): 52.03902721405029ms
	Processing time (w/o IO): 51.29992961883545ms
	Processing time (w/o IO): 52.937984466552734ms
	Processing time (w/o IO): 52.16503143310547ms
	Processing time (w/o IO): 52.124977111816406ms
	Processing time (w/o IO): 52.5890588760376ms
	  Time (mean ± σ):     421.3 ms ±   3.9 ms    [User: 364.5 ms, System: 44.7 ms]
	  Range (min … max):   417.4 ms … 429.1 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 32.070925ms
	Processing time (w/o IO): 34.559866ms
	Processing time (w/o IO): 33.60895ms
	Processing time (w/o IO): 32.199527ms
	Processing time (w/o IO): 32.153026ms
	Processing time (w/o IO): 32.946439ms
	Processing time (w/o IO): 31.458015ms
	Processing time (w/o IO): 32.515932ms
	Processing time (w/o IO): 31.360914ms
	Processing time (w/o IO): 32.653034ms
	Processing time (w/o IO): 31.501316ms
	Processing time (w/o IO): 33.730039ms
	Processing time (w/o IO): 32.253116ms
	  Time (mean ± σ):     434.6 ms ±  37.7 ms    [User: 440.3 ms, System: 57.4 ms]
	  Range (min … max):   412.8 ms … 538.8 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 167ms
	Processing time (w/o IO): 206ms
	Processing time (w/o IO): 156ms
	Processing time (w/o IO): 157ms
	Processing time (w/o IO): 167ms
	Processing time (w/o IO): 201ms
	Processing time (w/o IO): 206ms
	Processing time (w/o IO): 217ms
	Processing time (w/o IO): 153ms
	Processing time (w/o IO): 206ms
	Processing time (w/o IO): 217ms
	Processing time (w/o IO): 207ms
	Processing time (w/o IO): 161ms
	  Time (mean ± σ):     380.0 ms ±  27.3 ms    [User: 373.3 ms, System: 74.6 ms]
	  Range (min … max):   341.1 ms … 409.1 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 144ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 125ms
	Processing time (w/o IO): 127ms
	Processing time (w/o IO): 111ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 125ms
	Processing time (w/o IO): 123ms
	Processing time (w/o IO): 130ms
	  Time (mean ± σ):     197.6 ms ±   7.4 ms    [User: 205.2 ms, System: 50.7 ms]
	  Range (min … max):   179.7 ms … 204.5 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 183ms
	Processing time (w/o IO): 182ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 180ms
	Processing time (w/o IO): 181ms
	Processing time (w/o IO): 182ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 181ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 167ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 181ms
	  Time (mean ± σ):     259.3 ms ±   5.4 ms    [User: 251.5 ms, System: 35.6 ms]
	  Range (min … max):   246.2 ms … 264.4 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 54 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 54 ms
	Processing time (w/o IO): 54 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 54 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	  Time (mean ± σ):     405.7 ms ±   5.6 ms    [User: 707.7 ms, System: 62.4 ms]
	  Range (min … max):   399.0 ms … 416.9 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 50 ms
	  Time (mean ± σ):     133.8 ms ±   1.0 ms    [User: 122.3 ms, System: 11.7 ms]
	  Range (min … max):   131.9 ms … 134.9 ms    10 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 44 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 48 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 52 ms
	  Time (mean ± σ):      84.2 ms ±   1.7 ms    [User: 146.8 ms, System: 13.5 ms]
	  Range (min … max):    80.3 ms …  86.3 ms    10 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 22.281ms
	Processing time (w/o IO): 22.232ms
	Processing time (w/o IO): 22.082ms
	Processing time (w/o IO): 22.148ms
	Processing time (w/o IO): 22.157ms
	Processing time (w/o IO): 22.23ms
	Processing time (w/o IO): 22.203ms
	Processing time (w/o IO): 22.242ms
	Processing time (w/o IO): 22.097ms
	Processing time (w/o IO): 22.419ms
	Processing time (w/o IO): 22.152ms
	Processing time (w/o IO): 22.213ms
	Processing time (w/o IO): 22.106ms
	  Time (mean ± σ):      54.2 ms ±   0.9 ms    [User: 39.6 ms, System: 14.5 ms]
	  Range (min … max):    53.0 ms …  55.5 ms    10 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 14.811ms
	Processing time (w/o IO): 12.717ms
	Processing time (w/o IO): 12.889ms
	Processing time (w/o IO): 12.727ms
	Processing time (w/o IO): 14.25ms
	Processing time (w/o IO): 12.419ms
	Processing time (w/o IO): 13.998ms
	Processing time (w/o IO): 12.314ms
	Processing time (w/o IO): 13.814ms
	Processing time (w/o IO): 12.514ms
	Processing time (w/o IO): 12.377ms
	Processing time (w/o IO): 13.27ms
	Processing time (w/o IO): 12.266ms
	  Time (mean ± σ):      42.5 ms ±   1.1 ms    [User: 66.0 ms, System: 11.2 ms]
	  Range (min … max):    40.8 ms …  44.6 ms    10 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 85.8196ms
	Processing time (w/o IO): 85.7963ms
	Processing time (w/o IO): 86.0802ms
	Processing time (w/o IO): 87.3692ms
	Processing time (w/o IO): 86.1022ms
	Processing time (w/o IO): 85.597ms
	Processing time (w/o IO): 86.1204ms
	Processing time (w/o IO): 85.5271ms
	Processing time (w/o IO): 87.4026ms
	Processing time (w/o IO): 85.8005ms
	Processing time (w/o IO): 86.8545ms
	Processing time (w/o IO): 86.2585ms
	Processing time (w/o IO): 85.484ms
	  Time (mean ± σ):      1.075 s ±  0.029 s    [User: 1.166 s, System: 0.137 s]
	  Range (min … max):    1.051 s …  1.128 s    10 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	  Time (mean ± σ):     984.8 ms ±  35.3 ms    [User: 1118.4 ms, System: 137.7 ms]
	  Range (min … max):   923.5 ms … 1037.0 ms    10 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 15ms
	  Time (mean ± σ):     785.3 ms ±   5.9 ms    [User: 827.3 ms, System: 127.8 ms]
	  Range (min … max):   778.3 ms … 798.5 ms    10 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 27.1394ms
	Processing time (w/o IO): 27.0773ms
	Processing time (w/o IO): 27.0839ms
	Processing time (w/o IO): 27.2335ms
	Processing time (w/o IO): 27.3499ms
	Processing time (w/o IO): 26.9457ms
	Processing time (w/o IO): 27.136ms
	Processing time (w/o IO): 27.3157ms
	Processing time (w/o IO): 27.0413ms
	Processing time (w/o IO): 27.0107ms
	Processing time (w/o IO): 26.9111ms
	Processing time (w/o IO): 26.8484ms
	Processing time (w/o IO): 27.1525ms
	  Time (mean ± σ):     788.7 ms ±   2.4 ms    [User: 744.8 ms, System: 105.2 ms]
	  Range (min … max):   785.7 ms … 794.4 ms    10 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 28.3887ms
	Processing time (w/o IO): 27.1372ms
	Processing time (w/o IO): 28.0911ms
	Processing time (w/o IO): 27.5879ms
	Processing time (w/o IO): 27.7498ms
	Processing time (w/o IO): 31.8404ms
	Processing time (w/o IO): 27.9987ms
	Processing time (w/o IO): 27.6953ms
	Processing time (w/o IO): 27.6647ms
	Processing time (w/o IO): 27.7661ms
	Processing time (w/o IO): 28.2262ms
	Processing time (w/o IO): 28.6984ms
	Processing time (w/o IO): 28.0991ms
	  Time (mean ± σ):     229.5 ms ±   5.1 ms    [User: 179.3 ms, System: 44.7 ms]
	  Range (min … max):   222.7 ms … 238.8 ms    10 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 26.9923ms
	Processing time (w/o IO): 27.0961ms
	Processing time (w/o IO): 26.9857ms
	Processing time (w/o IO): 26.6784ms
	Processing time (w/o IO): 26.8952ms
	Processing time (w/o IO): 26.6917ms
	Processing time (w/o IO): 26.9309ms
	Processing time (w/o IO): 26.8988ms
	Processing time (w/o IO): 26.6053ms
	Processing time (w/o IO): 26.8752ms
	Processing time (w/o IO): 26.9725ms
	Processing time (w/o IO): 26.8088ms
	Processing time (w/o IO): 27.0625ms
	  Time (mean ± σ):     111.8 ms ±   1.8 ms    [User: 95.0 ms, System: 34.6 ms]
	  Range (min … max):   108.8 ms … 114.0 ms    10 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 14.331ms
	Processing time (w/o IO): 14.424ms
	Processing time (w/o IO): 16.5956ms
	Processing time (w/o IO): 13.9842ms
	Processing time (w/o IO): 14.1172ms
	Processing time (w/o IO): 12.6298ms
	Processing time (w/o IO): 13.6035ms
	Processing time (w/o IO): 13.6318ms
	Processing time (w/o IO): 14.9114ms
	Processing time (w/o IO): 13.8998ms
	Processing time (w/o IO): 15.255ms
	Processing time (w/o IO): 13.8998ms
	Processing time (w/o IO): 14.5007ms
	  Time (mean ± σ):     223.0 ms ±  10.8 ms    [User: 213.5 ms, System: 56.5 ms]
	  Range (min … max):   208.5 ms … 241.6 ms    10 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 11.8532ms
	Processing time (w/o IO): 11.136ms
	Processing time (w/o IO): 11.2041ms
	Processing time (w/o IO): 10.9709ms
	Processing time (w/o IO): 11.1635ms
	Processing time (w/o IO): 10.8108ms
	Processing time (w/o IO): 11.1542ms
	Processing time (w/o IO): 11.1569ms
	Processing time (w/o IO): 11.2379ms
	Processing time (w/o IO): 11.2176ms
	Processing time (w/o IO): 11.3601ms
	Processing time (w/o IO): 10.9428ms
	Processing time (w/o IO): 11.1751ms
	  Time (mean ± σ):      81.1 ms ±   3.2 ms    [User: 128.3 ms, System: 37.5 ms]
	  Range (min … max):    77.2 ms …  87.0 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	107.48720169067	ms
	Processing time (w/o IO):	118.30711364746	ms
	Processing time (w/o IO):	95.587015151978	ms
	Processing time (w/o IO):	95.917940139771	ms
	Processing time (w/o IO):	121.56200408936	ms
	Processing time (w/o IO):	120.13506889343	ms
	Processing time (w/o IO):	124.73487854004	ms
	Processing time (w/o IO):	118.49498748779	ms
	Processing time (w/o IO):	119.6928024292	ms
	Processing time (w/o IO):	116.37687683105	ms
	Processing time (w/o IO):	117.45810508728	ms
	Processing time (w/o IO):	117.83695220947	ms
	Processing time (w/o IO):	120.96285820007	ms
	  Time (mean ± σ):     400.2 ms ±  13.8 ms    [User: 378.7 ms, System: 21.4 ms]
	  Range (min … max):   379.9 ms … 418.9 ms    10 runs
	 
LuaJIT (JIT OFF):

	Benchmark 1: luajit -joff only_lua.lua
	Processing time (w/o IO):	682.89184570313	ms
	Processing time (w/o IO):	679.35800552368	ms
	Processing time (w/o IO):	677.85692214966	ms
	Processing time (w/o IO):	678.67708206177	ms
	Processing time (w/o IO):	680.11784553528	ms
	Processing time (w/o IO):	679.98003959656	ms
	Processing time (w/o IO):	677.35195159912	ms
	Processing time (w/o IO):	676.92708969116	ms
	Processing time (w/o IO):	681.42914772034	ms
	Processing time (w/o IO):	678.14087867737	ms
	Processing time (w/o IO):	674.51906204224	ms
	Processing time (w/o IO):	677.06203460693	ms
	Processing time (w/o IO):	680.00483512878	ms
	  Time (mean ± σ):      1.038 s ±  0.015 s    [User: 1.009 s, System: 0.027 s]
	  Range (min … max):    1.010 s …  1.056 s    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1113.2140159607	ms
	Processing time (w/o IO):	1100.1000404358	ms
	Processing time (w/o IO):	1100.5499362946	ms
	Processing time (w/o IO):	1107.5057983398	ms
	Processing time (w/o IO):	1101.175069809	ms
	Processing time (w/o IO):	1100.5280017853	ms
	Processing time (w/o IO):	1097.5389480591	ms
	Processing time (w/o IO):	1099.7219085693	ms
	Processing time (w/o IO):	1099.9529361725	ms
	Processing time (w/o IO):	1104.3841838837	ms
	Processing time (w/o IO):	1100.8460521698	ms
	Processing time (w/o IO):	1101.6829013824	ms
	Processing time (w/o IO):	1099.1258621216	ms
	  Time (mean ± σ):      1.553 s ±  0.014 s    [User: 1.531 s, System: 0.022 s]
	  Range (min … max):    1.540 s …  1.581 s    10 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 149ms
	Processing time (w/o IO): 146ms
	Processing time (w/o IO): 145ms
	Processing time (w/o IO): 149ms
	Processing time (w/o IO): 144ms
	Processing time (w/o IO): 145ms
	Processing time (w/o IO): 144ms
	Processing time (w/o IO): 153ms
	Processing time (w/o IO): 150ms
	Processing time (w/o IO): 155ms
	Processing time (w/o IO): 152ms
	Processing time (w/o IO): 154ms
	  Time (mean ± σ):     249.0 ms ±   7.1 ms    [User: 213.9 ms, System: 33.9 ms]
	  Range (min … max):   236.8 ms … 256.4 ms    10 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 0.895118 s
	Processing time (w/o IO): 0.897186 s
	Processing time (w/o IO): 0.887841 s
	Processing time (w/o IO): 0.895117 s
	Processing time (w/o IO): 0.887378 s
	Processing time (w/o IO): 0.889576 s
	Processing time (w/o IO): 0.886405 s
	Processing time (w/o IO): 0.885780 s
	Processing time (w/o IO): 0.884596 s
	Processing time (w/o IO): 0.883429 s
	Processing time (w/o IO): 0.893849 s
	Processing time (w/o IO): 0.890622 s
	Processing time (w/o IO): 0.889988 s
	  Time (mean ± σ):      1.273 s ±  0.008 s    [User: 1.192 s, System: 0.117 s]
	  Range (min … max):    1.261 s …  1.291 s    10 runs
	 
Lobster (JIT):

	Benchmark 1: lobster related.lobster
	Processing time (w/o IO): 1.367299s
	Processing time (w/o IO): 1.372103s
	Processing time (w/o IO): 1.362967s
	Processing time (w/o IO): 1.359755s
	Processing time (w/o IO): 1.359677s
	Processing time (w/o IO): 1.365236s
	Processing time (w/o IO): 1.370389s
	Processing time (w/o IO): 1.37139s
	Processing time (w/o IO): 1.373886s
	Processing time (w/o IO): 1.360362s
	Processing time (w/o IO): 1.379226s
	Processing time (w/o IO): 1.367465s
	Processing time (w/o IO): 1.363706s
	  Time (mean ± σ):      1.465 s ±  0.006 s    [User: 1.441 s, System: 0.023 s]
	  Range (min … max):    1.457 s …  1.475 s    10 runs
	 
Lobster (C++):

	Benchmark 1: compiled_lobster
	Processing time (w/o IO): 0.185183s
	Processing time (w/o IO): 0.184783s
	Processing time (w/o IO): 0.205631s
	Processing time (w/o IO): 0.186823s
	Processing time (w/o IO): 0.186587s
	Processing time (w/o IO): 0.187244s
	Processing time (w/o IO): 0.185977s
	Processing time (w/o IO): 0.186341s
	Processing time (w/o IO): 0.186189s
	Processing time (w/o IO): 0.18451s
	Processing time (w/o IO): 0.184845s
	Processing time (w/o IO): 0.18625s
	Processing time (w/o IO): 0.185582s
	  Time (mean ± σ):     279.5 ms ±   1.1 ms    [User: 260.0 ms, System: 19.5 ms]
	  Range (min … max):   278.4 ms … 282.2 ms    10 runs
	 
Scala Native:

	Benchmark 1: ./target/scala-3.3.1/scala_native-out
	Processing time (w/o IO): 308ms
	Processing time (w/o IO): 293ms
	Processing time (w/o IO): 291ms
	Processing time (w/o IO): 292ms
	Processing time (w/o IO): 291ms
	Processing time (w/o IO): 292ms
	Processing time (w/o IO): 309ms
	Processing time (w/o IO): 324ms
	Processing time (w/o IO): 326ms
	Processing time (w/o IO): 325ms
	Processing time (w/o IO): 294ms
	Processing time (w/o IO): 320ms
	Processing time (w/o IO): 306ms
	  Time (mean ± σ):     403.6 ms ±  16.4 ms    [User: 358.3 ms, System: 114.5 ms]
	  Range (min … max):   384.8 ms … 424.0 ms    10 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 324.441752ms
	Processing time (w/o IO): 324.152147ms
	Processing time (w/o IO): 324.88346ms
	  Time (mean ± σ):     489.0 ms ±   0.3 ms    [User: 477.4 ms, System: 38.0 ms]
	  Range (min … max):   488.8 ms … 489.2 ms    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 164.999121ms
	Processing time (w/o IO): 168.841181ms
	Processing time (w/o IO): 165.217324ms
	  Time (mean ± σ):     333.8 ms ±   1.8 ms    [User: 806.6 ms, System: 39.2 ms]
	  Range (min … max):   332.5 ms … 335.1 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 341.953931ms
	Processing time (w/o IO): 342.313136ms
	Processing time (w/o IO): 343.346852ms
	  Time (mean ± σ):     427.1 ms ±   6.3 ms    [User: 391.6 ms, System: 35.4 ms]
	  Range (min … max):   422.6 ms … 431.6 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 178.726238ms
	Processing time (w/o IO): 176.3403ms
	Processing time (w/o IO): 178.997442ms
	  Time (mean ± σ):     257.8 ms ±   1.5 ms    [User: 385.6 ms, System: 45.4 ms]
	  Range (min … max):   256.7 ms … 258.8 ms    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 444.818ms
	Processing time (w/o IO): 448.277ms
	Processing time (w/o IO): 446.301ms
	  Time (mean ± σ):     761.4 ms ±   2.2 ms    [User: 736.3 ms, System: 29.5 ms]
	  Range (min … max):   759.8 ms … 762.9 ms    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 128.319ms
	Processing time (w/o IO): 129.712ms
	Processing time (w/o IO): 134.745ms
	  Time (mean ± σ):     454.7 ms ±   2.0 ms    [User: 754.7 ms, System: 37.5 ms]
	  Range (min … max):   453.3 ms … 456.1 ms    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 328 ms
	Processing time (w/o IO): 324 ms
	Processing time (w/o IO): 326 ms
	  Time (mean ± σ):      1.242 s ±  0.004 s    [User: 1.072 s, System: 0.169 s]
	  Range (min … max):    1.239 s …  1.245 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 165 ms
	Processing time (w/o IO): 167 ms
	Processing time (w/o IO): 168 ms
	  Time (mean ± σ):      1.186 s ±  0.004 s    [User: 1.493 s, System: 0.171 s]
	  Range (min … max):    1.183 s …  1.188 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 23.582s
	Processing time (w/o IO): 23.365s
	  Time (abs ≡):        23.562 s               [User: 23.479 s, System: 0.075 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 6.582s
	Processing time (w/o IO): 6.454s
	Processing time (w/o IO): 6.466s
	  Time (mean ± σ):      6.981 s ±  0.002 s    [User: 5.147 s, System: 2.450 s]
	  Range (min … max):    6.979 s …  6.982 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 822.671805ms
	Processing time (w/o IO): 824.061936ms
	Processing time (w/o IO): 822.230094ms
	  Time (mean ± σ):      1.064 s ±  0.001 s    [User: 1.010 s, System: 0.053 s]
	  Range (min … max):    1.063 s …  1.064 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 343ms
	Processing time (w/o IO): 338ms
	Processing time (w/o IO): 340ms
	  Time (mean ± σ):     542.6 ms ±   2.6 ms    [User: 520.9 ms, System: 21.5 ms]
	  Range (min … max):   540.7 ms … 544.4 ms    2 runs
	 
Julia:

	Benchmark 1: julia --startup-file=no --project=Related -e "using Related; main()"
	Processing time (w/o IO): 507.05485100000004ms
	Processing time (w/o IO): 505.564628ms
	Processing time (w/o IO): 504.311408ms
	  Time (mean ± σ):      1.714 s ±  0.014 s    [User: 1.488 s, System: 0.329 s]
	  Range (min … max):    1.704 s …  1.725 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 69 milliseconds
	Processing time (w/o IO): 62 milliseconds
	Processing time (w/o IO): 65 milliseconds
	  Time (mean ± σ):      1.265 s ±  0.004 s    [User: 1.098 s, System: 0.271 s]
	  Range (min … max):    1.262 s …  1.268 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --startup-file=no --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 173.173114ms
	Processing time (w/o IO): 188.943871ms
	Processing time (w/o IO): 173.56696ms
	  Time (mean ± σ):      1.407 s ±  0.029 s    [User: 1.718 s, System: 0.285 s]
	  Range (min … max):    1.387 s …  1.427 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  692.797591ms
	Processing time (w/o IO):  688.315906ms
	Processing time (w/o IO):  691.717971ms
	  Time (mean ± σ):      1.502 s ±  0.003 s    [User: 1.465 s, System: 0.035 s]
	  Range (min … max):    1.500 s …  1.505 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 746.388ms
	Processing time (w/o IO): 746.328ms
	Processing time (w/o IO): 745.447ms
	  Time (mean ± σ):      8.044 s ±  0.040 s    [User: 7.901 s, System: 0.139 s]
	  Range (min … max):    8.015 s …  8.072 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 2267ms
	Processing time (w/o IO): 2251ms
	Processing time (w/o IO): 2270ms
	  Time (mean ± σ):      3.012 s ±  0.020 s    [User: 3.207 s, System: 0.186 s]
	  Range (min … max):    2.998 s …  3.026 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 2013ms
	Processing time (w/o IO): 2010ms
	Processing time (w/o IO): 2012ms
	  Time (mean ± σ):      2.545 s ±  0.011 s    [User: 2.503 s, System: 0.067 s]
	  Range (min … max):    2.538 s …  2.553 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 724.3740558624268ms
	Processing time (w/o IO): 728.2938957214355ms
	Processing time (w/o IO): 727.0239591598511ms
	  Time (mean ± σ):      2.251 s ±  0.036 s    [User: 2.054 s, System: 0.174 s]
	  Range (min … max):    2.226 s …  2.277 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 401.162145ms
	Processing time (w/o IO): 399.217712ms
	Processing time (w/o IO): 395.385945ms
	  Time (mean ± σ):      1.928 s ±  0.002 s    [User: 2.849 s, System: 0.201 s]
	  Range (min … max):    1.926 s …  1.929 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 2034ms
	Processing time (w/o IO): 1956ms
	Processing time (w/o IO): 1949ms
	  Time (mean ± σ):      2.304 s ±  0.001 s    [User: 2.277 s, System: 0.126 s]
	  Range (min … max):    2.303 s …  2.305 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 1542ms
	Processing time (w/o IO): 1547ms
	Processing time (w/o IO): 1432ms
	  Time (mean ± σ):      1.691 s ±  0.086 s    [User: 1.680 s, System: 0.088 s]
	  Range (min … max):    1.630 s …  1.751 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 2302ms
	Processing time (w/o IO): 2301ms
	Processing time (w/o IO): 2315ms
	  Time (mean ± σ):      2.546 s ±  0.045 s    [User: 2.443 s, System: 0.105 s]
	  Range (min … max):    2.514 s …  2.578 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 855 ms
	Processing time (w/o IO): 857 ms
	Processing time (w/o IO): 857 ms
	  Time (mean ± σ):      1.826 s ±  0.001 s    [User: 1.783 s, System: 0.042 s]
	  Range (min … max):    1.826 s …  1.827 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 602 ms
	Processing time (w/o IO): 611 ms
	Processing time (w/o IO): 612 ms
	  Time (mean ± σ):     722.8 ms ±   4.1 ms    [User: 1680.9 ms, System: 39.5 ms]
	  Range (min … max):   720.0 ms … 725.7 ms    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 319.033ms
	Processing time (w/o IO): 319.451ms
	Processing time (w/o IO): 319.797ms
	  Time (mean ± σ):     460.1 ms ±   7.4 ms    [User: 404.8 ms, System: 55.1 ms]
	  Range (min … max):   454.8 ms … 465.3 ms    2 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 171.182ms
	Processing time (w/o IO): 175.453ms
	Processing time (w/o IO): 172.655ms
	  Time (mean ± σ):     308.5 ms ±   3.7 ms    [User: 760.5 ms, System: 51.0 ms]
	  Range (min … max):   305.9 ms … 311.2 ms    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 739.2534ms
	Processing time (w/o IO): 735.8139ms
	Processing time (w/o IO): 622.3532ms
	  Time (mean ± σ):      3.733 s ±  0.160 s    [User: 3.648 s, System: 0.402 s]
	  Range (min … max):    3.619 s …  3.846 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 276ms
	Processing time (w/o IO): 287ms
	Processing time (w/o IO): 279ms
	  Time (mean ± σ):      2.937 s ±  0.000 s    [User: 4.511 s, System: 0.423 s]
	  Range (min … max):    2.936 s …  2.937 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 232ms
	Processing time (w/o IO): 233ms
	Processing time (w/o IO): 232ms
	  Time (mean ± σ):      3.398 s ±  0.004 s    [User: 4.640 s, System: 0.394 s]
	  Range (min … max):    3.395 s …  3.401 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 376.2662ms
	Processing time (w/o IO): 374.724ms
	Processing time (w/o IO): 376.6702ms
	  Time (mean ± σ):      3.702 s ±  0.029 s    [User: 3.562 s, System: 0.375 s]
	  Range (min … max):    3.682 s …  3.723 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 382.1615ms
	Processing time (w/o IO): 379.2464ms
	Processing time (w/o IO): 378.6768ms
	  Time (mean ± σ):      1.128 s ±  0.007 s    [User: 1.059 s, System: 0.095 s]
	  Range (min … max):    1.123 s …  1.133 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 378.3901ms
	Processing time (w/o IO): 375.6593ms
	Processing time (w/o IO): 377.8328ms
	  Time (mean ± σ):     963.4 ms ±   9.0 ms    [User: 923.2 ms, System: 75.7 ms]
	  Range (min … max):   957.0 ms … 969.8 ms    2 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 126.815ms
	Processing time (w/o IO): 130.9119ms
	Processing time (w/o IO): 129.0827ms
	  Time (mean ± σ):     629.6 ms ±   3.5 ms    [User: 1238.4 ms, System: 103.9 ms]
	  Range (min … max):   627.1 ms … 632.1 ms    2 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 139.7048ms
	Processing time (w/o IO): 141.5598ms
	Processing time (w/o IO): 141.0924ms
	  Time (mean ± σ):     485.8 ms ±   2.4 ms    [User: 1226.7 ms, System: 79.6 ms]
	  Range (min … max):   484.1 ms … 487.5 ms    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	1195.2688694	ms
	Processing time (w/o IO):	1507.6961517334	ms
	Processing time (w/o IO):	1199.4171142578	ms
	  Time (mean ± σ):      2.920 s ±  0.235 s    [User: 2.848 s, System: 0.069 s]
	  Range (min … max):    2.754 s …  3.086 s    2 runs
	 
LuaJIT (JIT OFF):

	Benchmark 1: luajit -joff only_lua.lua
	Processing time (w/o IO):	10359.721899033	ms
	Processing time (w/o IO):	10300.547122955	ms
	Processing time (w/o IO):	10301.635026932	ms
	  Time (mean ± σ):     12.205 s ±  0.002 s    [User: 12.102 s, System: 0.099 s]
	  Range (min … max):   12.204 s … 12.207 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	16829.02097702	ms
	Processing time (w/o IO):	16806.861162186	ms
	  Time (abs ≡):        18.892 s               [User: 18.813 s, System: 0.075 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 2957ms
	Processing time (w/o IO): 2967ms
	Processing time (w/o IO): 3008ms
	  Time (mean ± σ):      3.471 s ±  0.031 s    [User: 3.276 s, System: 0.193 s]
	  Range (min … max):    3.448 s …  3.493 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 14.582548 s
	Processing time (w/o IO): 14.494475 s
	Processing time (w/o IO): 14.576638 s
	  Time (mean ± σ):     15.668 s ±  0.080 s    [User: 15.359 s, System: 0.356 s]
	  Range (min … max):   15.611 s … 15.724 s    2 runs
	 
Lobster (JIT):

	Benchmark 1: lobster related.lobster
	Processing time (w/o IO): 21.375993s
	Processing time (w/o IO): 21.346514s
	  Time (abs ≡):        21.721 s               [User: 21.637 s, System: 0.079 s]
	 
Lobster (C++):

	Benchmark 1: compiled_lobster
	Processing time (w/o IO): 2.89151s
	Processing time (w/o IO): 2.883548s
	  Time (abs ≡):         3.252 s               [User: 3.185 s, System: 0.067 s]
	 
Scala Native:

	Benchmark 1: ./target/scala-3.3.1/scala_native-out
	Processing time (w/o IO): 3951ms
	Processing time (w/o IO): 3750ms
	  Time (abs ≡):         4.173 s               [User: 4.385 s, System: 0.580 s]
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 2.865714235s
	Processing time (w/o IO): 2.863860469s
	Processing time (w/o IO): 2.86627044s
	  Time (mean ± σ):      3.442 s ±  0.011 s    [User: 3.447 s, System: 0.162 s]
	  Range (min … max):    3.434 s …  3.450 s    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1.439651808s
	Processing time (w/o IO): 1.428712749s
	Processing time (w/o IO): 1.422374074s
	  Time (mean ± σ):      1.988 s ±  0.006 s    [User: 6.205 s, System: 0.133 s]
	  Range (min … max):    1.984 s …  1.992 s    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 3.043233686s
	Processing time (w/o IO): 3.051038045s
	Processing time (w/o IO): 3.041919584s
	  Time (mean ± σ):      3.331 s ±  0.020 s    [User: 3.214 s, System: 0.109 s]
	  Range (min … max):    3.317 s …  3.345 s    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 1.524816206s
	Processing time (w/o IO): 1.524968025s
	Processing time (w/o IO): 1.526806415s
	  Time (mean ± σ):      1.852 s ±  0.090 s    [User: 3.195 s, System: 0.099 s]
	  Range (min … max):    1.789 s …  1.916 s    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 3869.07ms
	Processing time (w/o IO): 3873.4ms
	Processing time (w/o IO): 3871.01ms
	  Time (mean ± σ):      4.890 s ±  0.003 s    [User: 4.762 s, System: 0.133 s]
	  Range (min … max):    4.887 s …  4.892 s    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1015.83ms
	Processing time (w/o IO): 1013.2ms
	Processing time (w/o IO): 1014.51ms
	  Time (mean ± σ):      1.993 s ±  0.010 s    [User: 4.705 s, System: 0.119 s]
	  Range (min … max):    1.986 s …  2.000 s    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 2793 ms
	Processing time (w/o IO): 2800 ms
	Processing time (w/o IO): 2801 ms
	  Time (mean ± σ):      5.661 s ±  0.044 s    [User: 5.120 s, System: 0.374 s]
	  Range (min … max):    5.630 s …  5.692 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 1422 ms
	Processing time (w/o IO): 1408 ms
	Processing time (w/o IO): 1405 ms
	  Time (mean ± σ):      4.569 s ±  0.012 s    [User: 8.122 s, System: 0.423 s]
	  Range (min … max):    4.561 s …  4.577 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 215.399s
	Processing time (w/o IO): 213.003s
	  Time (abs ≡):        213.598 s               [User: 213.398 s, System: 0.175 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 7180.869283ms
	Processing time (w/o IO): 7174.042886ms
	Processing time (w/o IO): 7165.699115ms
	  Time (mean ± σ):      8.011 s ±  0.004 s    [User: 7.869 s, System: 0.133 s]
	  Range (min … max):    8.009 s …  8.014 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 3014ms
	Processing time (w/o IO): 3001ms
	Processing time (w/o IO): 3000ms
	  Time (mean ± σ):      3.647 s ±  0.007 s    [User: 3.579 s, System: 0.064 s]
	  Range (min … max):    3.642 s …  3.651 s    2 runs
	 
Julia:

	Benchmark 1: julia --startup-file=no --project=Related -e "using Related; main()"
	Processing time (w/o IO): 4246.506026ms
	Processing time (w/o IO): 4244.490503999999ms
	Processing time (w/o IO): 4230.6993139999995ms
	  Time (mean ± σ):      5.927 s ±  0.005 s    [User: 5.657 s, System: 0.366 s]
	  Range (min … max):    5.923 s …  5.930 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 184 milliseconds
	Processing time (w/o IO): 175 milliseconds
	Processing time (w/o IO): 179 milliseconds
	  Time (mean ± σ):      1.870 s ±  0.009 s    [User: 1.582 s, System: 0.388 s]
	  Range (min … max):    1.863 s …  1.876 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --startup-file=no --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 1478.6754529999998ms
	Processing time (w/o IO): 1474.853787ms
	Processing time (w/o IO): 1490.536334ms
	  Time (mean ± σ):      3.128 s ±  0.001 s    [User: 7.200 s, System: 0.377 s]
	  Range (min … max):    3.128 s …  3.129 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  5.987583001s
	Processing time (w/o IO):  6.178369694s
	Processing time (w/o IO):  5.98967269s
	  Time (mean ± σ):      8.556 s ±  0.131 s    [User: 8.454 s, System: 0.095 s]
	  Range (min … max):    8.463 s …  8.649 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 6.622s
	Processing time (w/o IO): 6.620s
	Processing time (w/o IO): 6.621s
	  Time (mean ± σ):     75.583 s ±  0.849 s    [User: 75.090 s, System: 0.473 s]
	  Range (min … max):   74.983 s … 76.184 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 19723ms
	Processing time (w/o IO): 17845ms
	Processing time (w/o IO): 19721ms
	  Time (mean ± σ):     20.489 s ±  1.305 s    [User: 20.693 s, System: 0.305 s]
	  Range (min … max):   19.567 s … 21.412 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 17914ms
	Processing time (w/o IO): 17865ms
	Processing time (w/o IO): 17873ms
	  Time (mean ± σ):     19.511 s ±  0.013 s    [User: 19.473 s, System: 0.186 s]
	  Range (min … max):   19.502 s … 19.520 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 6252.888083457947ms
	Processing time (w/o IO): 6229.382038116455ms
	Processing time (w/o IO): 6208.985924720764ms
	  Time (mean ± σ):     10.867 s ±  0.032 s    [User: 10.252 s, System: 0.465 s]
	  Range (min … max):   10.844 s … 10.890 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 3440.644621ms
	Processing time (w/o IO): 3423.212009ms
	Processing time (w/o IO): 3423.991573ms
	  Time (mean ± σ):      8.104 s ±  0.012 s    [User: 17.578 s, System: 0.493 s]
	  Range (min … max):    8.096 s …  8.112 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 15910ms
	Processing time (w/o IO): 24226ms
	Processing time (w/o IO): 17593ms
	  Time (mean ± σ):     21.726 s ±  4.704 s    [User: 21.633 s, System: 0.239 s]
	  Range (min … max):   18.399 s … 25.052 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 13040ms
	Processing time (w/o IO): 12983ms
	Processing time (w/o IO): 14380ms
	  Time (mean ± σ):     14.272 s ±  0.969 s    [User: 14.209 s, System: 0.209 s]
	  Range (min … max):   13.587 s … 14.958 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 20282ms
	Processing time (w/o IO): 23444ms
	Processing time (w/o IO): 20277ms
	  Time (mean ± σ):     22.558 s ±  2.063 s    [User: 22.395 s, System: 0.226 s]
	  Range (min … max):   21.099 s … 24.017 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 5567 ms
	Processing time (w/o IO): 5567 ms
	Processing time (w/o IO): 5572 ms
	  Time (mean ± σ):     11.671 s ±  0.002 s    [User: 11.537 s, System: 0.125 s]
	  Range (min … max):   11.670 s … 11.672 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 4140 ms
	Processing time (w/o IO): 4148 ms
	Processing time (w/o IO): 4144 ms
	  Time (mean ± σ):      4.550 s ±  0.004 s    [User: 11.122 s, System: 0.120 s]
	  Range (min … max):    4.547 s …  4.553 s    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 2857.026ms
	Processing time (w/o IO): 2852.591ms
	Processing time (w/o IO): 2852.447ms
	  Time (mean ± σ):      3.343 s ±  0.034 s    [User: 3.217 s, System: 0.117 s]
	  Range (min … max):    3.319 s …  3.367 s    2 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 1477.668ms
	Processing time (w/o IO): 1485.947ms
	Processing time (w/o IO): 1475.4ms
	  Time (mean ± σ):      1.956 s ±  0.014 s    [User: 6.200 s, System: 0.137 s]
	  Range (min … max):    1.946 s …  1.966 s    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 4880.9162ms
	Processing time (w/o IO): 5403.552ms
	Processing time (w/o IO): 4869.9599ms
	  Time (mean ± σ):     16.242 s ±  0.697 s    [User: 17.393 s, System: 0.736 s]
	  Range (min … max):   15.749 s … 16.735 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 2518ms
	Processing time (w/o IO): 2499ms
	Processing time (w/o IO): 2498ms
	  Time (mean ± σ):     10.772 s ±  0.012 s    [User: 26.693 s, System: 0.862 s]
	  Range (min … max):   10.763 s … 10.780 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 2033ms
	Processing time (w/o IO): 2032ms
	Processing time (w/o IO): 2033ms
	  Time (mean ± σ):     12.803 s ±  0.038 s    [User: 26.183 s, System: 0.813 s]
	  Range (min … max):   12.776 s … 12.830 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 3249.484ms
	Processing time (w/o IO): 3257.9171ms
	Processing time (w/o IO): 3251.8632ms
	  Time (mean ± σ):     15.336 s ±  0.024 s    [User: 17.033 s, System: 0.822 s]
	  Range (min … max):   15.319 s … 15.353 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 3284.409ms
	Processing time (w/o IO): 3277.4908ms
	Processing time (w/o IO): 3278.3138ms
	  Time (mean ± σ):      7.580 s ±  0.024 s    [User: 7.442 s, System: 0.287 s]
	  Range (min … max):    7.563 s …  7.597 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 3277.4156ms
	Processing time (w/o IO): 3276.6273ms
	Processing time (w/o IO): 3274.4718ms
	  Time (mean ± σ):      7.195 s ±  0.013 s    [User: 7.098 s, System: 0.223 s]
	  Range (min … max):    7.186 s …  7.205 s    2 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 1027.9971ms
	Processing time (w/o IO): 1031.5674ms
	Processing time (w/o IO): 1029.2134ms
	  Time (mean ± σ):      3.085 s ±  0.024 s    [User: 8.843 s, System: 0.239 s]
	  Range (min … max):    3.067 s …  3.102 s    2 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 1155.5347ms
	Processing time (w/o IO): 1146.4979ms
	Processing time (w/o IO): 1153.8284ms
	  Time (mean ± σ):      2.909 s ±  0.022 s    [User: 9.434 s, System: 0.245 s]
	  Range (min … max):    2.894 s …  2.925 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	12166.63813591	ms
	Processing time (w/o IO):	12538.992166519	ms
	Processing time (w/o IO):	9980.7260036469	ms
	  Time (mean ± σ):     16.365 s ±  1.687 s    [User: 16.116 s, System: 0.235 s]
	  Range (min … max):   15.172 s … 17.557 s    2 runs
	 
LuaJIT (JIT OFF):

	Benchmark 1: luajit -joff only_lua.lua
	Processing time (w/o IO):	91477.077007294	ms
	Processing time (w/o IO):	91561.289072037	ms
	Processing time (w/o IO):	91231.734991074	ms
	  Time (mean ± σ):     97.484 s ±  0.335 s    [User: 97.181 s, System: 0.289 s]
	  Range (min … max):   97.247 s … 97.722 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	150447.56293297	ms
	Processing time (w/o IO):	150199.01990891	ms
	  Time (abs ≡):        158.074 s               [User: 157.775 s, System: 0.271 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 38368ms
	Processing time (w/o IO): 38415ms
	Processing time (w/o IO): 38414ms
	  Time (mean ± σ):     40.092 s ±  0.006 s    [User: 38.612 s, System: 1.469 s]
	  Range (min … max):   40.088 s … 40.096 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 136.014868 s
	Processing time (w/o IO): 135.249287 s
	Processing time (w/o IO): 137.014207 s
	  Time (mean ± σ):     139.543 s ±  1.263 s    [User: 138.598 s, System: 1.004 s]
	  Range (min … max):   138.650 s … 140.436 s    2 runs
	 
Lobster (JIT):

	Benchmark 1: lobster related.lobster
	Processing time (w/o IO): 190.794735s
	Processing time (w/o IO): 190.494485s
	  Time (abs ≡):        191.653 s               [User: 191.416 s, System: 0.203 s]
	 
Lobster (C++):

	Benchmark 1: compiled_lobster
	Processing time (w/o IO): 25.800153s
	Processing time (w/o IO): 25.866497s
	  Time (abs ≡):        27.056 s               [User: 26.805 s, System: 0.239 s]
	 
Scala Native:

	Benchmark 1: ./target/scala-3.3.1/scala_native-out
	Processing time (w/o IO): 31787ms
	Processing time (w/o IO): 31955ms
	  Time (abs ≡):        33.411 s               [User: 37.336 s, System: 2.242 s]
	 
