Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 24.25828ms
	Processing time (w/o IO): 24.356082ms
	Processing time (w/o IO): 24.21728ms
	Processing time (w/o IO): 25.063994ms
	Processing time (w/o IO): 25.364598ms
	Processing time (w/o IO): 24.482584ms
	Processing time (w/o IO): 24.25428ms
	Processing time (w/o IO): 24.365082ms
	Processing time (w/o IO): 24.375083ms
	Processing time (w/o IO): 24.164579ms
	Processing time (w/o IO): 24.097178ms
	Processing time (w/o IO): 24.439184ms
	Processing time (w/o IO): 26.241012ms
	  Time (mean ± σ):      64.7 ms ±   2.0 ms    [User: 60.2 ms, System: 11.4 ms]
	  Range (min … max):    61.3 ms …  66.9 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 11.612982ms
	Processing time (w/o IO): 13.207507ms
	Processing time (w/o IO): 12.331993ms
	Processing time (w/o IO): 11.780085ms
	Processing time (w/o IO): 11.713584ms
	Processing time (w/o IO): 11.783285ms
	Processing time (w/o IO): 11.786285ms
	Processing time (w/o IO): 11.798285ms
	Processing time (w/o IO): 11.837986ms
	Processing time (w/o IO): 14.061421ms
	Processing time (w/o IO): 11.727084ms
	Processing time (w/o IO): 11.916387ms
	Processing time (w/o IO): 13.694414ms
	  Time (mean ± σ):      52.1 ms ±   1.4 ms    [User: 75.9 ms, System: 16.0 ms]
	  Range (min … max):    50.7 ms …  54.9 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 23.442775ms
	Processing time (w/o IO): 23.459276ms
	Processing time (w/o IO): 23.476875ms
	Processing time (w/o IO): 23.433575ms
	Processing time (w/o IO): 23.421375ms
	Processing time (w/o IO): 23.385575ms
	Processing time (w/o IO): 23.368174ms
	Processing time (w/o IO): 23.407975ms
	Processing time (w/o IO): 23.502076ms
	Processing time (w/o IO): 23.443475ms
	Processing time (w/o IO): 23.613778ms
	Processing time (w/o IO): 23.399975ms
	Processing time (w/o IO): 23.425675ms
	  Time (mean ± σ):      38.4 ms ±   0.7 ms    [User: 31.8 ms, System: 6.7 ms]
	  Range (min … max):    38.0 ms …  40.2 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 12.895197ms
	Processing time (w/o IO): 12.129785ms
	Processing time (w/o IO): 12.174686ms
	Processing time (w/o IO): 12.145585ms
	Processing time (w/o IO): 12.125785ms
	Processing time (w/o IO): 12.190085ms
	Processing time (w/o IO): 12.173786ms
	Processing time (w/o IO): 12.071284ms
	Processing time (w/o IO): 12.061284ms
	Processing time (w/o IO): 12.181586ms
	Processing time (w/o IO): 12.171185ms
	Processing time (w/o IO): 12.157785ms
	Processing time (w/o IO): 12.182585ms
	  Time (mean ± σ):      28.8 ms ±   0.6 ms    [User: 32.2 ms, System: 8.3 ms]
	  Range (min … max):    28.2 ms …  29.6 ms    10 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 25.212ms
	Processing time (w/o IO): 25.092ms
	Processing time (w/o IO): 24.622ms
	Processing time (w/o IO): 24.55ms
	Processing time (w/o IO): 24.757ms
	Processing time (w/o IO): 24.896ms
	Processing time (w/o IO): 25.014ms
	Processing time (w/o IO): 24.054ms
	Processing time (w/o IO): 25.709ms
	Processing time (w/o IO): 24.877ms
	Processing time (w/o IO): 24.846ms
	Processing time (w/o IO): 24.799ms
	Processing time (w/o IO): 25.144ms
	  Time (mean ± σ):     104.6 ms ±   1.0 ms    [User: 97.7 ms, System: 8.4 ms]
	  Range (min … max):   103.3 ms … 107.0 ms    10 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 12.368ms
	Processing time (w/o IO): 13.041ms
	Processing time (w/o IO): 13.086ms
	Processing time (w/o IO): 12.64ms
	Processing time (w/o IO): 12.719ms
	Processing time (w/o IO): 12.686ms
	Processing time (w/o IO): 13.414ms
	Processing time (w/o IO): 13.451ms
	Processing time (w/o IO): 13.598ms
	Processing time (w/o IO): 13.455ms
	Processing time (w/o IO): 12.24ms
	Processing time (w/o IO): 13.605ms
	Processing time (w/o IO): 12.063ms
	  Time (mean ± σ):      91.2 ms ±   1.0 ms    [User: 107.3 ms, System: 8.0 ms]
	  Range (min … max):    90.0 ms …  93.5 ms    10 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 27 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	Processing time (w/o IO): 25 ms
	  Time (mean ± σ):     226.8 ms ±   3.0 ms    [User: 194.9 ms, System: 31.8 ms]
	  Range (min … max):   222.7 ms … 231.6 ms    10 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 12 ms
	Processing time (w/o IO): 12 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 12 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 15 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 14 ms
	Processing time (w/o IO): 12 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 13 ms
	  Time (mean ± σ):     228.7 ms ±   3.4 ms    [User: 229.6 ms, System: 33.2 ms]
	  Range (min … max):   226.2 ms … 237.9 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 1.478s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.458s
	Processing time (w/o IO): 1.472s
	Processing time (w/o IO): 1.466s
	Processing time (w/o IO): 1.478s
	Processing time (w/o IO): 1.471s
	Processing time (w/o IO): 1.465s
	Processing time (w/o IO): 1.466s
	Processing time (w/o IO): 1.462s
	Processing time (w/o IO): 1.463s
	Processing time (w/o IO): 1.464s
	Processing time (w/o IO): 1.458s
	  Time (mean ± σ):      1.534 s ±  0.006 s    [User: 1.518 s, System: 0.016 s]
	  Range (min … max):    1.524 s …  1.545 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 350.7ms
	Processing time (w/o IO): 351.9ms
	Processing time (w/o IO): 354.0ms
	Processing time (w/o IO): 353.3ms
	Processing time (w/o IO): 352.2ms
	Processing time (w/o IO): 351.9ms
	Processing time (w/o IO): 356.6ms
	Processing time (w/o IO): 353.1ms
	Processing time (w/o IO): 352.5ms
	Processing time (w/o IO): 351.7ms
	Processing time (w/o IO): 351.4ms
	Processing time (w/o IO): 350.6ms
	Processing time (w/o IO): 351.6ms
	  Time (mean ± σ):     697.1 ms ± 176.9 ms    [User: 832.1 ms, System: 428.0 ms]
	  Range (min … max):   637.9 ms … 1200.4 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 60.56053ms
	Processing time (w/o IO): 60.209724ms
	Processing time (w/o IO): 60.005522ms
	Processing time (w/o IO): 60.653232ms
	Processing time (w/o IO): 60.076623ms
	Processing time (w/o IO): 60.225425ms
	Processing time (w/o IO): 60.719732ms
	Processing time (w/o IO): 60.190724ms
	Processing time (w/o IO): 59.943521ms
	Processing time (w/o IO): 60.207724ms
	Processing time (w/o IO): 60.303026ms
	Processing time (w/o IO): 60.042622ms
	Processing time (w/o IO): 60.944436ms
	  Time (mean ± σ):     108.8 ms ±   1.2 ms    [User: 99.8 ms, System: 9.0 ms]
	  Range (min … max):   107.1 ms … 111.4 ms    10 runs
	 
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
	  Time (mean ± σ):      69.7 ms ±   0.8 ms    [User: 63.9 ms, System: 5.9 ms]
	  Range (min … max):    69.0 ms …  71.3 ms    10 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 37 milliseconds
	Processing time (w/o IO): 37 milliseconds
	Processing time (w/o IO): 37 milliseconds
	Processing time (w/o IO): 37 milliseconds
	Processing time (w/o IO): 37 milliseconds
	Processing time (w/o IO): 38 milliseconds
	Processing time (w/o IO): 37 milliseconds
	Processing time (w/o IO): 37 milliseconds
	Processing time (w/o IO): 37 milliseconds
	Processing time (w/o IO): 37 milliseconds
	Processing time (w/o IO): 37 milliseconds
	Processing time (w/o IO): 37 milliseconds
	Processing time (w/o IO): 38 milliseconds
	  Time (mean ± σ):      1.007 s ±  0.012 s    [User: 0.887 s, System: 0.224 s]
	  Range (min … max):    0.989 s …  1.025 s    10 runs
	 
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
	Processing time (w/o IO): 9 milliseconds
	Processing time (w/o IO): 9 milliseconds
	  Time (mean ± σ):     997.5 ms ±  14.1 ms    [User: 893.5 ms, System: 207.6 ms]
	  Range (min … max):   982.2 ms … 1019.4 ms    10 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 17 milliseconds
	  Time (mean ± σ):     467.3 ms ±  14.9 ms    [User: 409.7 ms, System: 208.3 ms]
	  Range (min … max):   446.5 ms … 487.0 ms    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  47.64274ms
	Processing time (w/o IO):  47.483236ms
	Processing time (w/o IO):  47.388134ms
	Processing time (w/o IO):  47.337432ms
	Processing time (w/o IO):  47.131628ms
	Processing time (w/o IO):  47.873745ms
	Processing time (w/o IO):  47.772243ms
	Processing time (w/o IO):  47.036726ms
	Processing time (w/o IO):  47.339933ms
	Processing time (w/o IO):  47.361834ms
	Processing time (w/o IO):  47.167129ms
	Processing time (w/o IO):  47.620839ms
	Processing time (w/o IO):  47.450236ms
	  Time (mean ± σ):     264.6 ms ±   1.0 ms    [User: 255.0 ms, System: 9.5 ms]
	  Range (min … max):   263.3 ms … 266.9 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 49.150ms
	Processing time (w/o IO): 48.692ms
	Processing time (w/o IO): 49.116ms
	Processing time (w/o IO): 49.321ms
	Processing time (w/o IO): 48.651ms
	Processing time (w/o IO): 48.305ms
	Processing time (w/o IO): 48.576ms
	Processing time (w/o IO): 48.613ms
	Processing time (w/o IO): 48.701ms
	Processing time (w/o IO): 48.734ms
	Processing time (w/o IO): 48.686ms
	Processing time (w/o IO): 49.008ms
	Processing time (w/o IO): 48.767ms
	  Time (mean ± σ):     376.9 ms ±   3.2 ms    [User: 348.7 ms, System: 28.1 ms]
	  Range (min … max):   373.5 ms … 383.8 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 168ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 168ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 168ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 168ms
	Processing time (w/o IO): 169ms
	  Time (mean ± σ):     547.8 ms ±  14.6 ms    [User: 658.4 ms, System: 105.5 ms]
	  Range (min … max):   531.9 ms … 573.0 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 129ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	  Time (mean ± σ):     255.8 ms ±   2.2 ms    [User: 240.4 ms, System: 19.7 ms]
	  Range (min … max):   252.6 ms … 259.2 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 50.701022148132324ms
	Processing time (w/o IO): 50.935983657836914ms
	Processing time (w/o IO): 50.68206787109375ms
	Processing time (w/o IO): 50.99010467529297ms
	Processing time (w/o IO): 50.48799514770508ms
	Processing time (w/o IO): 50.53210258483887ms
	Processing time (w/o IO): 50.57096481323242ms
	Processing time (w/o IO): 50.61209201812744ms
	Processing time (w/o IO): 50.837039947509766ms
	Processing time (w/o IO): 50.86803436279297ms
	Processing time (w/o IO): 50.7889986038208ms
	Processing time (w/o IO): 51.13697052001953ms
	Processing time (w/o IO): 51.05793476104736ms
	  Time (mean ± σ):     409.5 ms ±   7.0 ms    [User: 351.0 ms, System: 40.7 ms]
	  Range (min … max):   399.9 ms … 421.4 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 31.005414ms
	Processing time (w/o IO): 32.124139ms
	Processing time (w/o IO): 32.082738ms
	Processing time (w/o IO): 31.560726ms
	Processing time (w/o IO): 32.048738ms
	Processing time (w/o IO): 31.942936ms
	Processing time (w/o IO): 31.430324ms
	Processing time (w/o IO): 32.170441ms
	Processing time (w/o IO): 32.234743ms
	Processing time (w/o IO): 30.929112ms
	Processing time (w/o IO): 31.388022ms
	Processing time (w/o IO): 32.343845ms
	Processing time (w/o IO): 31.420323ms
	  Time (mean ± σ):     402.5 ms ±  39.5 ms    [User: 422.1 ms, System: 40.3 ms]
	  Range (min … max):   383.0 ms … 514.5 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 128ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 125ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 126ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 128ms
	Processing time (w/o IO): 133ms
	  Time (mean ± σ):     304.4 ms ±   2.5 ms    [User: 297.1 ms, System: 62.2 ms]
	  Range (min … max):   299.4 ms … 308.1 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 118ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 125ms
	Processing time (w/o IO): 112ms
	Processing time (w/o IO): 124ms
	Processing time (w/o IO): 117ms
	Processing time (w/o IO): 104ms
	Processing time (w/o IO): 116ms
	Processing time (w/o IO): 123ms
	Processing time (w/o IO): 117ms
	Processing time (w/o IO): 125ms
	Processing time (w/o IO): 124ms
	Processing time (w/o IO): 103ms
	  Time (mean ± σ):     172.9 ms ±   7.7 ms    [User: 190.7 ms, System: 33.8 ms]
	  Range (min … max):   159.7 ms … 180.9 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 197ms
	Processing time (w/o IO): 133ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 136ms
	Processing time (w/o IO): 198ms
	Processing time (w/o IO): 198ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 193ms
	Processing time (w/o IO): 139ms
	Processing time (w/o IO): 136ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 137ms
	  Time (mean ± σ):     224.0 ms ±  28.6 ms    [User: 216.9 ms, System: 31.9 ms]
	  Range (min … max):   202.6 ms … 268.6 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 52 ms
	  Time (mean ± σ):     386.5 ms ±   7.8 ms    [User: 685.3 ms, System: 52.6 ms]
	  Range (min … max):   376.2 ms … 399.2 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 56 ms
	  Time (mean ± σ):     142.8 ms ±   0.9 ms    [User: 129.9 ms, System: 13.0 ms]
	  Range (min … max):   141.2 ms … 143.9 ms    10 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 38 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 38 ms
	  Time (mean ± σ):      68.2 ms ±   0.9 ms    [User: 112.7 ms, System: 13.5 ms]
	  Range (min … max):    66.5 ms …  69.5 ms    10 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 25.295ms
	Processing time (w/o IO): 24.896ms
	Processing time (w/o IO): 24.955ms
	Processing time (w/o IO): 24.844ms
	Processing time (w/o IO): 24.949ms
	Processing time (w/o IO): 25.115ms
	Processing time (w/o IO): 24.909ms
	Processing time (w/o IO): 24.879ms
	Processing time (w/o IO): 25.065ms
	Processing time (w/o IO): 24.794ms
	Processing time (w/o IO): 24.792ms
	Processing time (w/o IO): 24.913ms
	Processing time (w/o IO): 25.136ms
	  Time (mean ± σ):      50.7 ms ±   0.7 ms    [User: 40.3 ms, System: 10.4 ms]
	  Range (min … max):    49.4 ms …  51.8 ms    10 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 16.212ms
	Processing time (w/o IO): 15.684ms
	Processing time (w/o IO): 15.664ms
	Processing time (w/o IO): 17.688ms
	Processing time (w/o IO): 15.638ms
	Processing time (w/o IO): 15.618ms
	Processing time (w/o IO): 16.487ms
	Processing time (w/o IO): 17.938ms
	Processing time (w/o IO): 15.614ms
	Processing time (w/o IO): 18.076ms
	Processing time (w/o IO): 17.121ms
	Processing time (w/o IO): 18.072ms
	Processing time (w/o IO): 16.937ms
	  Time (mean ± σ):      42.8 ms ±   1.0 ms    [User: 78.9 ms, System: 9.4 ms]
	  Range (min … max):    41.4 ms …  44.5 ms    10 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 94ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 92ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 91ms
	Processing time (w/o IO): 92ms
	  Time (mean ± σ):      1.034 s ±  0.005 s    [User: 1.138 s, System: 0.100 s]
	  Range (min … max):    1.025 s …  1.044 s    10 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 21ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 20ms
	Processing time (w/o IO): 24ms
	  Time (mean ± σ):     926.0 ms ±  18.2 ms    [User: 1094.6 ms, System: 98.3 ms]
	  Range (min … max):   880.6 ms … 949.5 ms    10 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 16ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 15ms
	Processing time (w/o IO): 16ms
	  Time (mean ± σ):     715.8 ms ±   4.5 ms    [User: 785.9 ms, System: 88.3 ms]
	  Range (min … max):   708.5 ms … 723.4 ms    10 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 27ms
	Processing time (w/o IO): 28ms
	Processing time (w/o IO): 27ms
	  Time (mean ± σ):     742.2 ms ±   3.2 ms    [User: 728.9 ms, System: 71.9 ms]
	  Range (min … max):   736.5 ms … 746.5 ms    10 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 26.932ms
	Processing time (w/o IO): 27.2897ms
	Processing time (w/o IO): 27.1387ms
	Processing time (w/o IO): 28.4626ms
	Processing time (w/o IO): 27.5297ms
	Processing time (w/o IO): 27.2865ms
	Processing time (w/o IO): 27.1959ms
	Processing time (w/o IO): 27.0432ms
	Processing time (w/o IO): 27.0469ms
	Processing time (w/o IO): 27.1818ms
	Processing time (w/o IO): 27.1697ms
	Processing time (w/o IO): 27.0051ms
	Processing time (w/o IO): 27.217ms
	  Time (mean ± σ):     208.8 ms ±   5.6 ms    [User: 173.7 ms, System: 27.1 ms]
	  Range (min … max):   199.3 ms … 215.4 ms    10 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 26.0811ms
	Processing time (w/o IO): 27.9248ms
	Processing time (w/o IO): 27.1203ms
	Processing time (w/o IO): 26.4569ms
	Processing time (w/o IO): 27.186ms
	Processing time (w/o IO): 26.4399ms
	Processing time (w/o IO): 26.2974ms
	Processing time (w/o IO): 26.2832ms
	Processing time (w/o IO): 26.5179ms
	Processing time (w/o IO): 26.5958ms
	Processing time (w/o IO): 26.5648ms
	Processing time (w/o IO): 26.4617ms
	Processing time (w/o IO): 27.9578ms
	  Time (mean ± σ):     103.0 ms ±   2.2 ms    [User: 99.8 ms, System: 20.6 ms]
	  Range (min … max):   100.3 ms … 107.9 ms    10 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 13.8251ms
	Processing time (w/o IO): 12.5806ms
	Processing time (w/o IO): 14.5402ms
	Processing time (w/o IO): 15.2487ms
	Processing time (w/o IO): 13.6319ms
	Processing time (w/o IO): 13.535ms
	Processing time (w/o IO): 13.4187ms
	Processing time (w/o IO): 13.6186ms
	Processing time (w/o IO): 14.1555ms
	Processing time (w/o IO): 13.5751ms
	Processing time (w/o IO): 14.2561ms
	Processing time (w/o IO): 13.7181ms
	Processing time (w/o IO): 14.1573ms
	  Time (mean ± σ):     198.6 ms ±   5.7 ms    [User: 197.6 ms, System: 37.4 ms]
	  Range (min … max):   192.2 ms … 210.4 ms    10 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 10.9553ms
	Processing time (w/o IO): 10.9691ms
	Processing time (w/o IO): 11.0293ms
	Processing time (w/o IO): 10.8345ms
	Processing time (w/o IO): 11.0343ms
	Processing time (w/o IO): 10.9422ms
	Processing time (w/o IO): 10.8491ms
	Processing time (w/o IO): 10.8785ms
	Processing time (w/o IO): 11.0796ms
	Processing time (w/o IO): 14.4185ms
	Processing time (w/o IO): 10.9314ms
	Processing time (w/o IO): 10.9319ms
	Processing time (w/o IO): 11.5968ms
	  Time (mean ± σ):      72.8 ms ±   2.4 ms    [User: 122.4 ms, System: 25.4 ms]
	  Range (min … max):    70.1 ms …  77.2 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	92.868089675903	ms
	Processing time (w/o IO):	107.84196853638	ms
	Processing time (w/o IO):	106.8480014801	ms
	Processing time (w/o IO):	107.31315612793	ms
	Processing time (w/o IO):	117.05994606018	ms
	Processing time (w/o IO):	115.44299125671	ms
	Processing time (w/o IO):	91.187953948975	ms
	Processing time (w/o IO):	114.78281021118	ms
	Processing time (w/o IO):	110.35704612732	ms
	Processing time (w/o IO):	92.822074890137	ms
	Processing time (w/o IO):	116.03713035583	ms
	Processing time (w/o IO):	118.51096153259	ms
	Processing time (w/o IO):	115.79298973083	ms
	  Time (mean ± σ):     372.3 ms ±  13.2 ms    [User: 350.9 ms, System: 21.3 ms]
	  Range (min … max):   354.6 ms … 396.1 ms    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1107.7690124512	ms
	Processing time (w/o IO):	1108.7989807129	ms
	Processing time (w/o IO):	1115.8139705658	ms
	Processing time (w/o IO):	1109.0481281281	ms
	Processing time (w/o IO):	1096.873998642	ms
	Processing time (w/o IO):	1094.0730571747	ms
	Processing time (w/o IO):	1097.048997879	ms
	Processing time (w/o IO):	1093.5740470886	ms
	Processing time (w/o IO):	1094.2251682281	ms
	Processing time (w/o IO):	1097.7900028229	ms
	Processing time (w/o IO):	1097.9859828949	ms
	Processing time (w/o IO):	1092.7889347076	ms
	Processing time (w/o IO):	1090.7709598541	ms
	  Time (mean ± σ):      1.533 s ±  0.009 s    [User: 1.513 s, System: 0.019 s]
	  Range (min … max):    1.518 s …  1.545 s    10 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 155ms
	Processing time (w/o IO): 149ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 150ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 149ms
	Processing time (w/o IO): 149ms
	Processing time (w/o IO): 151ms
	Processing time (w/o IO): 152ms
	Processing time (w/o IO): 151ms
	Processing time (w/o IO): 152ms
	Processing time (w/o IO): 151ms
	  Time (mean ± σ):     242.4 ms ±   3.4 ms    [User: 215.4 ms, System: 26.3 ms]
	  Range (min … max):   237.2 ms … 246.4 ms    10 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 0.905973 s
	Processing time (w/o IO): 0.880278 s
	Processing time (w/o IO): 0.886864 s
	Processing time (w/o IO): 0.880899 s
	Processing time (w/o IO): 0.889059 s
	Processing time (w/o IO): 0.885258 s
	Processing time (w/o IO): 0.885860 s
	Processing time (w/o IO): 0.888604 s
	Processing time (w/o IO): 0.886256 s
	Processing time (w/o IO): 0.892383 s
	Processing time (w/o IO): 0.889466 s
	Processing time (w/o IO): 0.885777 s
	Processing time (w/o IO): 0.879467 s
	  Time (mean ± σ):      1.243 s ±  0.007 s    [User: 1.180 s, System: 0.097 s]
	  Range (min … max):    1.232 s …  1.253 s    10 runs
	 
Ruby:

	Benchmark 1: ruby related.rb
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 371.261609ms
	Processing time (w/o IO): 371.58161ms
	Processing time (w/o IO): 372.06021ms
	  Time (mean ± σ):     523.8 ms ±   4.0 ms    [User: 518.2 ms, System: 31.9 ms]
	  Range (min … max):   521.0 ms … 526.6 ms    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 163.090684ms
	Processing time (w/o IO): 163.707793ms
	Processing time (w/o IO): 163.579192ms
	  Time (mean ± σ):     323.4 ms ±  17.8 ms    [User: 791.4 ms, System: 42.0 ms]
	  Range (min … max):   310.8 ms … 336.0 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 342.440025ms
	Processing time (w/o IO): 347.676608ms
	Processing time (w/o IO): 339.669682ms
	  Time (mean ± σ):     407.4 ms ±   7.4 ms    [User: 375.9 ms, System: 31.4 ms]
	  Range (min … max):   402.1 ms … 412.7 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 174.143458ms
	Processing time (w/o IO): 174.159059ms
	Processing time (w/o IO): 173.56185ms
	  Time (mean ± σ):     236.8 ms ±   0.2 ms    [User: 375.8 ms, System: 31.4 ms]
	  Range (min … max):   236.7 ms … 236.9 ms    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 317.015ms
	Processing time (w/o IO): 313.774ms
	Processing time (w/o IO): 314.774ms
	  Time (mean ± σ):     612.9 ms ±   1.2 ms    [User: 589.8 ms, System: 27.6 ms]
	  Range (min … max):   612.1 ms … 613.8 ms    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 123.752ms
	Processing time (w/o IO): 122.961ms
	Processing time (w/o IO): 123.765ms
	  Time (mean ± σ):     431.7 ms ±   8.9 ms    [User: 712.9 ms, System: 39.6 ms]
	  Range (min … max):   425.3 ms … 438.0 ms    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 338 ms
	Processing time (w/o IO): 338 ms
	Processing time (w/o IO): 337 ms
	  Time (mean ± σ):      1.179 s ±  0.006 s    [User: 1.051 s, System: 0.123 s]
	  Range (min … max):    1.175 s …  1.183 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 164 ms
	Processing time (w/o IO): 164 ms
	Processing time (w/o IO): 165 ms
	  Time (mean ± σ):      1.039 s ±  0.004 s    [User: 1.386 s, System: 0.131 s]
	  Range (min … max):    1.036 s …  1.042 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 23.451s
	Processing time (w/o IO): 23.594s
	  Time (abs ≡):        23.759 s               [User: 23.704 s, System: 0.047 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 6.143s
	Processing time (w/o IO): 6.790s
	Processing time (w/o IO): 7.591s
	  Time (mean ± σ):      7.713 s ±  0.568 s    [User: 5.203 s, System: 3.106 s]
	  Range (min … max):    7.311 s …  8.114 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 909.852969ms
	Processing time (w/o IO): 907.657933ms
	Processing time (w/o IO): 910.076873ms
	  Time (mean ± σ):      1.135 s ±  0.013 s    [User: 1.085 s, System: 0.042 s]
	  Range (min … max):    1.125 s …  1.144 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 336ms
	Processing time (w/o IO): 338ms
	Processing time (w/o IO): 337ms
	  Time (mean ± σ):     530.7 ms ±   0.3 ms    [User: 509.2 ms, System: 21.4 ms]
	  Range (min … max):   530.4 ms … 530.9 ms    2 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 482 milliseconds
	Processing time (w/o IO): 482 milliseconds
	Processing time (w/o IO): 481 milliseconds
	  Time (mean ± σ):      1.637 s ±  0.007 s    [User: 1.476 s, System: 0.264 s]
	  Range (min … max):    1.632 s …  1.642 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 60 milliseconds
	Processing time (w/o IO): 58 milliseconds
	Processing time (w/o IO): 58 milliseconds
	  Time (mean ± σ):      1.183 s ±  0.002 s    [User: 1.011 s, System: 0.275 s]
	  Range (min … max):    1.181 s …  1.185 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 232 milliseconds
	Processing time (w/o IO): 224 milliseconds
	Processing time (w/o IO): 222 milliseconds
	  Time (mean ± σ):     899.6 ms ±  20.3 ms    [User: 1418.1 ms, System: 237.7 ms]
	  Range (min … max):   885.2 ms … 914.0 ms    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  691.934371ms
	Processing time (w/o IO):  689.993742ms
	Processing time (w/o IO):  689.939941ms
	  Time (mean ± σ):      1.479 s ±  0.006 s    [User: 1.437 s, System: 0.039 s]
	  Range (min … max):    1.475 s …  1.484 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 740.116ms
	Processing time (w/o IO): 742.206ms
	Processing time (w/o IO): 740.422ms
	  Time (mean ± σ):     10.255 s ±  0.377 s    [User: 10.108 s, System: 0.143 s]
	  Range (min … max):    9.989 s … 10.522 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 2050ms
	Processing time (w/o IO): 2068ms
	Processing time (w/o IO): 2236ms
	  Time (mean ± σ):      2.837 s ±  0.114 s    [User: 3.009 s, System: 0.173 s]
	  Range (min … max):    2.756 s …  2.918 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 2013ms
	Processing time (w/o IO): 2008ms
	Processing time (w/o IO): 2003ms
	  Time (mean ± σ):      2.494 s ±  0.003 s    [User: 2.439 s, System: 0.079 s]
	  Range (min … max):    2.491 s …  2.496 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 712.8250598907471ms
	Processing time (w/o IO): 710.2330923080444ms
	Processing time (w/o IO): 717.602014541626ms
	  Time (mean ± σ):      2.114 s ±  0.017 s    [User: 1.953 s, System: 0.128 s]
	  Range (min … max):    2.102 s …  2.126 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 393.045472ms
	Processing time (w/o IO): 391.681652ms
	Processing time (w/o IO): 393.778183ms
	  Time (mean ± σ):      1.811 s ±  0.003 s    [User: 2.776 s, System: 0.148 s]
	  Range (min … max):    1.809 s …  1.813 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 2480ms
	Processing time (w/o IO): 2617ms
	Processing time (w/o IO): 2608ms
	  Time (mean ± σ):      2.947 s ±  0.018 s    [User: 2.941 s, System: 0.109 s]
	  Range (min … max):    2.934 s …  2.960 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 1434ms
	Processing time (w/o IO): 1767ms
	Processing time (w/o IO): 1760ms
	  Time (mean ± σ):      1.928 s ±  0.004 s    [User: 1.928 s, System: 0.074 s]
	  Range (min … max):    1.925 s …  1.931 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 2030ms
	Processing time (w/o IO): 1808ms
	Processing time (w/o IO): 1812ms
	  Time (mean ± σ):      2.178 s ±  0.252 s    [User: 1.949 s, System: 0.076 s]
	  Range (min … max):    2.000 s …  2.356 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 641 ms
	Processing time (w/o IO): 637 ms
	Processing time (w/o IO): 638 ms
	  Time (mean ± σ):      1.379 s ±  0.000 s    [User: 1.319 s, System: 0.058 s]
	  Range (min … max):    1.379 s …  1.379 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 464 ms
	Processing time (w/o IO): 462 ms
	Processing time (w/o IO): 464 ms
	  Time (mean ± σ):     559.3 ms ±   1.8 ms    [User: 1282.1 ms, System: 39.4 ms]
	  Range (min … max):   558.0 ms … 560.6 ms    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 350.073ms
	Processing time (w/o IO): 348.983ms
	Processing time (w/o IO): 346.98ms
	  Time (mean ± σ):     450.0 ms ±   1.9 ms    [User: 416.2 ms, System: 33.6 ms]
	  Range (min … max):   448.6 ms … 451.3 ms    2 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 222.605ms
	Processing time (w/o IO): 223.483ms
	Processing time (w/o IO): 220.654ms
	  Time (mean ± σ):     331.1 ms ±   1.2 ms    [User: 939.6 ms, System: 39.5 ms]
	  Range (min … max):   330.3 ms … 332.0 ms    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 527ms
	Processing time (w/o IO): 528ms
	Processing time (w/o IO): 528ms
	  Time (mean ± σ):      3.294 s ±  0.023 s    [User: 3.253 s, System: 0.289 s]
	  Range (min … max):    3.278 s …  3.310 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 274ms
	Processing time (w/o IO): 277ms
	Processing time (w/o IO): 277ms
	  Time (mean ± σ):      2.733 s ±  0.068 s    [User: 4.303 s, System: 0.290 s]
	  Range (min … max):    2.685 s …  2.781 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 230ms
	Processing time (w/o IO): 232ms
	Processing time (w/o IO): 231ms
	  Time (mean ± σ):      3.153 s ±  0.014 s    [User: 4.474 s, System: 0.281 s]
	  Range (min … max):    3.143 s …  3.163 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 390ms
	Processing time (w/o IO): 390ms
	Processing time (w/o IO): 391ms
	  Time (mean ± σ):      3.502 s ±  0.003 s    [User: 3.392 s, System: 0.296 s]
	  Range (min … max):    3.500 s …  3.505 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 372.5301ms
	Processing time (w/o IO): 376.3393ms
	Processing time (w/o IO): 374.318ms
	  Time (mean ± σ):      1.076 s ±  0.002 s    [User: 1.019 s, System: 0.075 s]
	  Range (min … max):    1.075 s …  1.077 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 374.1335ms
	Processing time (w/o IO): 370.8822ms
	Processing time (w/o IO): 370.6862ms
	  Time (mean ± σ):     915.9 ms ±   7.5 ms    [User: 889.0 ms, System: 59.8 ms]
	  Range (min … max):   910.6 ms … 921.2 ms    2 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 122.6418ms
	Processing time (w/o IO): 121.8597ms
	Processing time (w/o IO): 122.3883ms
	  Time (mean ± σ):     580.2 ms ±   4.5 ms    [User: 1203.9 ms, System: 63.4 ms]
	  Range (min … max):   577.0 ms … 583.4 ms    2 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 135.9345ms
	Processing time (w/o IO): 137.1741ms
	Processing time (w/o IO): 136.3761ms
	  Time (mean ± σ):     442.4 ms ±   4.6 ms    [User: 1176.5 ms, System: 71.6 ms]
	  Range (min … max):   439.1 ms … 445.6 ms    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	1458.5711956024	ms
	Processing time (w/o IO):	1460.7028961182	ms
	Processing time (w/o IO):	1403.4740924835	ms
	  Time (mean ± σ):      2.753 s ±  0.054 s    [User: 2.680 s, System: 0.072 s]
	  Range (min … max):    2.715 s …  2.791 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	16721.554994583	ms
	Processing time (w/o IO):	16958.912134171	ms
	  Time (abs ≡):        18.863 s               [User: 18.815 s, System: 0.043 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 2651ms
	Processing time (w/o IO): 2710ms
	Processing time (w/o IO): 2740ms
	  Time (mean ± σ):      3.149 s ±  0.016 s    [User: 3.002 s, System: 0.145 s]
	  Range (min … max):    3.138 s …  3.160 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 14.778721 s
	Processing time (w/o IO): 14.703586 s
	Processing time (w/o IO): 14.746790 s
	  Time (mean ± σ):     15.780 s ±  0.036 s    [User: 15.560 s, System: 0.275 s]
	  Range (min … max):   15.754 s … 15.806 s    2 runs
	 
Ruby:

	Benchmark 1: ruby related.rb
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 3.276757723s
	Processing time (w/o IO): 3.271337729s
	Processing time (w/o IO): 3.266043154s
	  Time (mean ± σ):      3.765 s ±  0.002 s    [User: 3.770 s, System: 0.122 s]
	  Range (min … max):    3.763 s …  3.767 s    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1.41622092s
	Processing time (w/o IO): 1.426060612s
	Processing time (w/o IO): 1.424938034s
	  Time (mean ± σ):      1.906 s ±  0.002 s    [User: 6.135 s, System: 0.131 s]
	  Range (min … max):    1.905 s …  1.908 s    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 3.042634707s
	Processing time (w/o IO): 3.038035919s
	Processing time (w/o IO): 3.037225403s
	  Time (mean ± σ):      3.251 s ±  0.004 s    [User: 3.165 s, System: 0.077 s]
	  Range (min … max):    3.248 s …  3.253 s    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 1.52215252s
	Processing time (w/o IO): 1.516426709s
	Processing time (w/o IO): 1.519437003s
	  Time (mean ± σ):      1.779 s ±  0.070 s    [User: 3.152 s, System: 0.075 s]
	  Range (min … max):    1.729 s …  1.828 s    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 2701.68ms
	Processing time (w/o IO): 2706.41ms
	Processing time (w/o IO): 2696.49ms
	  Time (mean ± σ):      3.644 s ±  0.004 s    [User: 3.532 s, System: 0.119 s]
	  Range (min … max):    3.641 s …  3.647 s    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 983.585ms
	Processing time (w/o IO): 971.27ms
	Processing time (w/o IO): 975.88ms
	  Time (mean ± σ):      1.902 s ±  0.005 s    [User: 4.507 s, System: 0.108 s]
	  Range (min … max):    1.899 s …  1.906 s    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 2941 ms
	Processing time (w/o IO): 2912 ms
	Processing time (w/o IO): 2921 ms
	  Time (mean ± σ):      5.635 s ±  0.064 s    [User: 5.060 s, System: 0.336 s]
	  Range (min … max):    5.589 s …  5.680 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 1404 ms
	Processing time (w/o IO): 1405 ms
	Processing time (w/o IO): 1409 ms
	  Time (mean ± σ):      4.151 s ±  0.080 s    [User: 7.825 s, System: 0.340 s]
	  Range (min … max):    4.094 s …  4.208 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 212.901s
	Processing time (w/o IO): 213.059s
	  Time (abs ≡):        213.550 s               [User: 213.395 s, System: 0.131 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 7985.387073ms
	Processing time (w/o IO): 7979.129002ms
	Processing time (w/o IO): 8021.42835ms
	  Time (mean ± σ):      8.740 s ±  0.021 s    [User: 8.609 s, System: 0.121 s]
	  Range (min … max):    8.725 s …  8.756 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 3023ms
	Processing time (w/o IO): 3022ms
	Processing time (w/o IO): 3018ms
	  Time (mean ± σ):      3.620 s ±  0.009 s    [User: 3.549 s, System: 0.065 s]
	  Range (min … max):    3.614 s …  3.627 s    2 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 4216 milliseconds
	Processing time (w/o IO): 4225 milliseconds
	Processing time (w/o IO): 4216 milliseconds
	  Time (mean ± σ):      5.679 s ±  0.009 s    [User: 5.467 s, System: 0.308 s]
	  Range (min … max):    5.672 s …  5.686 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 139 milliseconds
	Processing time (w/o IO): 143 milliseconds
	Processing time (w/o IO): 148 milliseconds
	  Time (mean ± σ):      1.621 s ±  0.023 s    [User: 1.385 s, System: 0.337 s]
	  Range (min … max):    1.605 s …  1.638 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 1942 milliseconds
	Processing time (w/o IO): 1940 milliseconds
	Processing time (w/o IO): 1935 milliseconds
	  Time (mean ± σ):      2.946 s ±  0.022 s    [User: 8.506 s, System: 0.307 s]
	  Range (min … max):    2.931 s …  2.961 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  6.075223354s
	Processing time (w/o IO):  6.119290193s
	Processing time (w/o IO):  6.065278975s
	  Time (mean ± σ):      8.493 s ±  0.042 s    [User: 8.399 s, System: 0.083 s]
	  Range (min … max):    8.464 s …  8.523 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 6.592s
	Processing time (w/o IO): 6.593s
	Processing time (w/o IO): 6.595s
	  Time (mean ± σ):     81.249 s ±  1.189 s    [User: 80.856 s, System: 0.377 s]
	  Range (min … max):   80.409 s … 82.090 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 19689ms
	Processing time (w/o IO): 19653ms
	Processing time (w/o IO): 19684ms
	  Time (mean ± σ):     21.179 s ±  0.008 s    [User: 21.386 s, System: 0.259 s]
	  Range (min … max):   21.173 s … 21.185 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 17872ms
	Processing time (w/o IO): 17825ms
	Processing time (w/o IO): 17815ms
	  Time (mean ± σ):     19.317 s ±  0.041 s    [User: 19.294 s, System: 0.154 s]
	  Range (min … max):   19.288 s … 19.346 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 6226.530909538269ms
	Processing time (w/o IO): 6198.652982711792ms
	Processing time (w/o IO): 6193.397998809814ms
	  Time (mean ± σ):     10.494 s ±  0.000 s    [User: 9.990 s, System: 0.337 s]
	  Range (min … max):   10.494 s … 10.494 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 3471.181286ms
	Processing time (w/o IO): 3469.481924ms
	Processing time (w/o IO): 3472.140255ms
	  Time (mean ± σ):      7.860 s ±  0.063 s    [User: 17.629 s, System: 0.351 s]
	  Range (min … max):    7.816 s …  7.904 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 22906ms
	Processing time (w/o IO): 18644ms
	Processing time (w/o IO): 18577ms
	  Time (mean ± σ):     19.450 s ±  0.055 s    [User: 19.469 s, System: 0.175 s]
	  Range (min … max):   19.411 s … 19.489 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 13290ms
	Processing time (w/o IO): 14033ms
	Processing time (w/o IO): 12160ms
	  Time (mean ± σ):     13.541 s ±  1.335 s    [User: 13.551 s, System: 0.128 s]
	  Range (min … max):   12.597 s … 14.485 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 15856ms
	Processing time (w/o IO): 15895ms
	Processing time (w/o IO): 15889ms
	  Time (mean ± σ):     16.370 s ±  0.012 s    [User: 16.399 s, System: 0.163 s]
	  Range (min … max):   16.362 s … 16.379 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 7513 ms
	Processing time (w/o IO): 7516 ms
	Processing time (w/o IO): 7515 ms
	  Time (mean ± σ):     15.483 s ±  0.001 s    [User: 15.369 s, System: 0.103 s]
	  Range (min … max):   15.482 s … 15.483 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 5319 ms
	Processing time (w/o IO): 5320 ms
	Processing time (w/o IO): 5333 ms
	  Time (mean ± σ):      5.669 s ±  0.005 s    [User: 14.220 s, System: 0.107 s]
	  Range (min … max):    5.665 s …  5.672 s    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 3065.158ms
	Processing time (w/o IO): 3069.82ms
	Processing time (w/o IO): 3064.214ms
	  Time (mean ± σ):      3.419 s ±  0.005 s    [User: 3.311 s, System: 0.100 s]
	  Range (min … max):    3.416 s …  3.422 s    2 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 1992.509ms
	Processing time (w/o IO): 1993.008ms
	Processing time (w/o IO): 1993.778ms
	  Time (mean ± σ):      2.375 s ±  0.009 s    [User: 8.165 s, System: 0.117 s]
	  Range (min … max):    2.369 s …  2.381 s    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 4044ms
	Processing time (w/o IO): 4045ms
	Processing time (w/o IO): 4046ms
	  Time (mean ± σ):     13.422 s ±  0.004 s    [User: 14.401 s, System: 0.584 s]
	  Range (min … max):   13.419 s … 13.424 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 2403ms
	Processing time (w/o IO): 2407ms
	Processing time (w/o IO): 2514ms
	  Time (mean ± σ):     10.138 s ±  0.145 s    [User: 25.717 s, System: 0.545 s]
	  Range (min … max):   10.035 s … 10.241 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 2026ms
	Processing time (w/o IO): 2027ms
	Processing time (w/o IO): 2027ms
	  Time (mean ± σ):     12.099 s ±  0.034 s    [User: 25.162 s, System: 0.606 s]
	  Range (min … max):   12.075 s … 12.123 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 3417ms
	Processing time (w/o IO): 3413ms
	Processing time (w/o IO): 3408ms
	  Time (mean ± σ):     15.018 s ±  0.002 s    [User: 16.267 s, System: 0.557 s]
	  Range (min … max):   15.017 s … 15.019 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 3260.4185ms
	Processing time (w/o IO): 3260.0179ms
	Processing time (w/o IO): 3249.4561ms
	  Time (mean ± σ):      7.378 s ±  0.010 s    [User: 7.328 s, System: 0.168 s]
	  Range (min … max):    7.371 s …  7.385 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 3244.2899ms
	Processing time (w/o IO): 3247.2025ms
	Processing time (w/o IO): 3239.5416ms
	  Time (mean ± σ):      7.023 s ±  0.017 s    [User: 6.992 s, System: 0.155 s]
	  Range (min … max):    7.010 s …  7.035 s    2 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 1011.9496ms
	Processing time (w/o IO): 1011.7039ms
	Processing time (w/o IO): 1008.027ms
	  Time (mean ± σ):      2.906 s ±  0.027 s    [User: 8.622 s, System: 0.181 s]
	  Range (min … max):    2.886 s …  2.925 s    2 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 1131.5864ms
	Processing time (w/o IO): 1133.3848ms
	Processing time (w/o IO): 1131.4683ms
	  Time (mean ± σ):      2.780 s ±  0.021 s    [User: 9.332 s, System: 0.168 s]
	  Range (min … max):    2.765 s …  2.795 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	11961.282968521	ms
	Processing time (w/o IO):	12054.555892944	ms
	Processing time (w/o IO):	12415.471792221	ms
	  Time (mean ± σ):     16.439 s ±  0.222 s    [User: 16.259 s, System: 0.175 s]
	  Range (min … max):   16.282 s … 16.596 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	149907.64403343	ms
	Processing time (w/o IO):	149998.30102921	ms
	  Time (abs ≡):        156.465 s               [User: 156.232 s, System: 0.216 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 33480ms
	Processing time (w/o IO): 33474ms
	Processing time (w/o IO): 34032ms
	  Time (mean ± σ):     35.238 s ±  0.406 s    [User: 34.496 s, System: 0.730 s]
	  Range (min … max):   34.951 s … 35.525 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 133.076075 s
	Processing time (w/o IO): 131.978154 s
	Processing time (w/o IO): 131.616317 s
	  Time (mean ± σ):     134.642 s ±  0.214 s    [User: 133.891 s, System: 0.812 s]
	  Range (min … max):   134.491 s … 134.793 s    2 runs
	 
Ruby:

	Benchmark 1: ruby related.rb
