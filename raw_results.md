Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 24.042298ms
	Processing time (w/o IO): 24.571407ms
	Processing time (w/o IO): 24.082899ms
	Processing time (w/o IO): 24.1505ms
	Processing time (w/o IO): 24.095099ms
	Processing time (w/o IO): 24.1534ms
	Processing time (w/o IO): 24.373203ms
	Processing time (w/o IO): 23.966597ms
	Processing time (w/o IO): 24.092999ms
	Processing time (w/o IO): 23.964097ms
	Processing time (w/o IO): 24.029698ms
	Processing time (w/o IO): 24.080398ms
	Processing time (w/o IO): 24.067198ms
	  Time (mean ± σ):      62.4 ms ±   0.7 ms    [User: 57.4 ms, System: 10.6 ms]
	  Range (min … max):    61.5 ms …  64.1 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 12.630909ms
	Processing time (w/o IO): 12.66431ms
	Processing time (w/o IO): 12.631009ms
	Processing time (w/o IO): 12.739211ms
	Processing time (w/o IO): 12.65281ms
	Processing time (w/o IO): 12.724611ms
	Processing time (w/o IO): 12.598908ms
	Processing time (w/o IO): 12.70971ms
	Processing time (w/o IO): 13.31752ms
	Processing time (w/o IO): 14.730944ms
	Processing time (w/o IO): 12.879813ms
	Processing time (w/o IO): 12.596509ms
	Processing time (w/o IO): 12.62861ms
	  Time (mean ± σ):      50.0 ms ±   0.8 ms    [User: 80.5 ms, System: 8.4 ms]
	  Range (min … max):    49.0 ms …  51.4 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 23.884397ms
	Processing time (w/o IO): 23.717894ms
	Processing time (w/o IO): 24.270403ms
	Processing time (w/o IO): 23.717995ms
	Processing time (w/o IO): 24.65671ms
	Processing time (w/o IO): 24.0617ms
	Processing time (w/o IO): 24.0496ms
	Processing time (w/o IO): 23.846196ms
	Processing time (w/o IO): 23.737094ms
	Processing time (w/o IO): 24.120501ms
	Processing time (w/o IO): 24.0481ms
	Processing time (w/o IO): 24.105101ms
	Processing time (w/o IO): 23.9965ms
	  Time (mean ± σ):      40.2 ms ±   0.9 ms    [User: 33.3 ms, System: 7.0 ms]
	  Range (min … max):    39.2 ms …  42.1 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 20.725651ms
	Processing time (w/o IO): 20.467746ms
	Processing time (w/o IO): 20.227542ms
	Processing time (w/o IO): 20.339244ms
	Processing time (w/o IO): 20.451346ms
	Processing time (w/o IO): 20.323944ms
	Processing time (w/o IO): 20.830352ms
	Processing time (w/o IO): 20.239942ms
	Processing time (w/o IO): 20.284943ms
	Processing time (w/o IO): 20.308243ms
	Processing time (w/o IO): 20.371045ms
	Processing time (w/o IO): 20.376945ms
	Processing time (w/o IO): 20.330544ms
	  Time (mean ± σ):      37.3 ms ±   0.4 ms    [User: 42.6 ms, System: 13.6 ms]
	  Range (min … max):    36.8 ms …  37.9 ms    10 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 24.662ms
	Processing time (w/o IO): 24.931ms
	Processing time (w/o IO): 25.495ms
	Processing time (w/o IO): 24.95ms
	Processing time (w/o IO): 25.227ms
	Processing time (w/o IO): 24.927ms
	Processing time (w/o IO): 24.855ms
	Processing time (w/o IO): 25.076ms
	Processing time (w/o IO): 24.667ms
	Processing time (w/o IO): 24.564ms
	Processing time (w/o IO): 24.586ms
	Processing time (w/o IO): 24.499ms
	Processing time (w/o IO): 24.719ms
	  Time (mean ± σ):     104.6 ms ±   0.6 ms    [User: 91.5 ms, System: 14.4 ms]
	  Range (min … max):   103.5 ms … 105.5 ms    10 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 15.872ms
	Processing time (w/o IO): 13.41ms
	Processing time (w/o IO): 14.538ms
	Processing time (w/o IO): 14.415ms
	Processing time (w/o IO): 15.528ms
	Processing time (w/o IO): 13.296ms
	Processing time (w/o IO): 14.494ms
	Processing time (w/o IO): 15.461ms
	Processing time (w/o IO): 13.427ms
	Processing time (w/o IO): 13.911ms
	Processing time (w/o IO): 13.744ms
	Processing time (w/o IO): 13.349ms
	Processing time (w/o IO): 14.677ms
	  Time (mean ± σ):      96.1 ms ±   1.1 ms    [User: 112.8 ms, System: 10.8 ms]
	  Range (min … max):    94.5 ms …  98.4 ms    10 runs
	 
cpp:

	Benchmark 1: ./main
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 24 ms
	Processing time (w/o IO): 24 ms
	  Time (mean ± σ):     221.2 ms ±   1.9 ms    [User: 186.9 ms, System: 34.2 ms]
	  Range (min … max):   218.5 ms … 223.6 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 1.483s
	Processing time (w/o IO): 1.459s
	Processing time (w/o IO): 1.508s
	Processing time (w/o IO): 1.535s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.475s
	Processing time (w/o IO): 1.461s
	Processing time (w/o IO): 1.461s
	Processing time (w/o IO): 1.479s
	Processing time (w/o IO): 1.458s
	Processing time (w/o IO): 1.461s
	Processing time (w/o IO): 1.465s
	Processing time (w/o IO): 1.466s
	  Time (mean ± σ):      1.539 s ±  0.023 s    [User: 1.521 s, System: 0.018 s]
	  Range (min … max):    1.525 s …  1.602 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 348.0ms
	Processing time (w/o IO): 348.0ms
	Processing time (w/o IO): 350.0ms
	Processing time (w/o IO): 348.2ms
	Processing time (w/o IO): 346.9ms
	Processing time (w/o IO): 348.5ms
	Processing time (w/o IO): 351.0ms
	Processing time (w/o IO): 348.3ms
	Processing time (w/o IO): 348.0ms
	Processing time (w/o IO): 349.2ms
	Processing time (w/o IO): 346.6ms
	Processing time (w/o IO): 348.2ms
	Processing time (w/o IO): 348.3ms
	  Time (mean ± σ):     662.7 ms ±  68.9 ms    [User: 839.8 ms, System: 408.8 ms]
	  Range (min … max):   628.9 ms … 851.9 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 65.541089ms
	Processing time (w/o IO): 64.878378ms
	Processing time (w/o IO): 64.885278ms
	Processing time (w/o IO): 64.947879ms
	Processing time (w/o IO): 64.906879ms
	Processing time (w/o IO): 65.391287ms
	Processing time (w/o IO): 64.98408ms
	Processing time (w/o IO): 64.98148ms
	Processing time (w/o IO): 65.251685ms
	Processing time (w/o IO): 65.221584ms
	Processing time (w/o IO): 65.033782ms
	Processing time (w/o IO): 64.897279ms
	Processing time (w/o IO): 65.628791ms
	  Time (mean ± σ):     115.4 ms ±   1.4 ms    [User: 101.0 ms, System: 14.4 ms]
	  Range (min … max):   113.3 ms … 117.5 ms    10 runs
	 
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
	  Time (mean ± σ):      69.1 ms ±   0.4 ms    [User: 64.4 ms, System: 4.8 ms]
	  Range (min … max):    68.5 ms …  70.0 ms    10 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 24 milliseconds
	Processing time (w/o IO): 24 milliseconds
	Processing time (w/o IO): 24 milliseconds
	Processing time (w/o IO): 25 milliseconds
	Processing time (w/o IO): 25 milliseconds
	Processing time (w/o IO): 24 milliseconds
	Processing time (w/o IO): 25 milliseconds
	Processing time (w/o IO): 25 milliseconds
	Processing time (w/o IO): 25 milliseconds
	Processing time (w/o IO): 24 milliseconds
	Processing time (w/o IO): 25 milliseconds
	Processing time (w/o IO): 24 milliseconds
	Processing time (w/o IO): 24 milliseconds
	  Time (mean ± σ):     439.4 ms ±  11.8 ms    [User: 291.5 ms, System: 147.9 ms]
	  Range (min … max):   425.7 ms … 460.0 ms    10 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 13 milliseconds
	Processing time (w/o IO): 14 milliseconds
	Processing time (w/o IO): 15 milliseconds
	Processing time (w/o IO): 14 milliseconds
	Processing time (w/o IO): 15 milliseconds
	Processing time (w/o IO): 13 milliseconds
	Processing time (w/o IO): 14 milliseconds
	Processing time (w/o IO): 16 milliseconds
	Processing time (w/o IO): 14 milliseconds
	Processing time (w/o IO): 15 milliseconds
	Processing time (w/o IO): 15 milliseconds
	Processing time (w/o IO): 13 milliseconds
	Processing time (w/o IO): 13 milliseconds
	  Time (mean ± σ):     432.4 ms ±  10.3 ms    [User: 340.6 ms, System: 132.2 ms]
	  Range (min … max):   419.5 ms … 456.6 ms    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  47.875612ms
	Processing time (w/o IO):  47.754809ms
	Processing time (w/o IO):  48.470022ms
	Processing time (w/o IO):  48.161916ms
	Processing time (w/o IO):  48.233918ms
	Processing time (w/o IO):  47.991714ms
	Processing time (w/o IO):  48.275219ms
	Processing time (w/o IO):  47.986613ms
	Processing time (w/o IO):  47.785165ms
	Processing time (w/o IO):  48.339369ms
	Processing time (w/o IO):  48.402169ms
	Processing time (w/o IO):  48.013767ms
	Processing time (w/o IO):  47.977367ms
	  Time (mean ± σ):     266.2 ms ±   1.0 ms    [User: 253.8 ms, System: 12.3 ms]
	  Range (min … max):   265.2 ms … 268.6 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 51.238ms
	Processing time (w/o IO): 51.371ms
	Processing time (w/o IO): 51.281ms
	Processing time (w/o IO): 51.423ms
	Processing time (w/o IO): 51.146ms
	Processing time (w/o IO): 51.206ms
	Processing time (w/o IO): 51.267ms
	Processing time (w/o IO): 50.938ms
	Processing time (w/o IO): 51.374ms
	Processing time (w/o IO): 51.254ms
	Processing time (w/o IO): 51.102ms
	Processing time (w/o IO): 51.569ms
	Processing time (w/o IO): 51.693ms
	  Time (mean ± σ):     378.7 ms ±   1.6 ms    [User: 351.5 ms, System: 27.1 ms]
	  Range (min … max):   376.1 ms … 381.3 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 129ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 129ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 150ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 149ms
	  Time (mean ± σ):     511.3 ms ±  11.0 ms    [User: 629.7 ms, System: 100.1 ms]
	  Range (min … max):   493.5 ms … 524.2 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 188ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	  Time (mean ± σ):     311.8 ms ±   1.3 ms    [User: 294.8 ms, System: 21.1 ms]
	  Range (min … max):   310.2 ms … 314.6 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 51.02705955505371ms
	Processing time (w/o IO): 50.752997398376465ms
	Processing time (w/o IO): 50.68397521972656ms
	Processing time (w/o IO): 50.79305171966553ms
	Processing time (w/o IO): 50.52292346954346ms
	Processing time (w/o IO): 50.56798458099365ms
	Processing time (w/o IO): 50.59707164764404ms
	Processing time (w/o IO): 50.53603649139404ms
	Processing time (w/o IO): 50.58002471923828ms
	Processing time (w/o IO): 50.715088844299316ms
	Processing time (w/o IO): 50.79293251037598ms
	Processing time (w/o IO): 50.45199394226074ms
	Processing time (w/o IO): 50.87292194366455ms
	  Time (mean ± σ):     403.0 ms ±   4.8 ms    [User: 354.1 ms, System: 30.1 ms]
	  Range (min … max):   394.3 ms … 408.3 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 31.486425ms
	Processing time (w/o IO): 30.888915ms
	Processing time (w/o IO): 31.139619ms
	Processing time (w/o IO): 32.38464ms
	Processing time (w/o IO): 31.554026ms
	Processing time (w/o IO): 31.043118ms
	Processing time (w/o IO): 31.78903ms
	Processing time (w/o IO): 31.453524ms
	Processing time (w/o IO): 30.864415ms
	Processing time (w/o IO): 30.976616ms
	Processing time (w/o IO): 31.556226ms
	Processing time (w/o IO): 31.466525ms
	Processing time (w/o IO): 30.835014ms
	  Time (mean ± σ):     389.9 ms ±   3.3 ms    [User: 420.9 ms, System: 37.7 ms]
	  Range (min … max):   386.7 ms … 396.8 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 180ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 184ms
	Processing time (w/o IO): 176ms
	Processing time (w/o IO): 180ms
	Processing time (w/o IO): 183ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 181ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 181ms
	Processing time (w/o IO): 183ms
	Processing time (w/o IO): 175ms
	  Time (mean ± σ):     352.0 ms ±   4.0 ms    [User: 358.5 ms, System: 59.5 ms]
	  Range (min … max):   347.2 ms … 358.4 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 781ms
	Processing time (w/o IO): 763ms
	Processing time (w/o IO): 798ms
	Processing time (w/o IO): 785ms
	Processing time (w/o IO): 785ms
	Processing time (w/o IO): 778ms
	Processing time (w/o IO): 785ms
	Processing time (w/o IO): 763ms
	Processing time (w/o IO): 768ms
	Processing time (w/o IO): 762ms
	Processing time (w/o IO): 780ms
	Processing time (w/o IO): 789ms
	Processing time (w/o IO): 765ms
	  Time (mean ± σ):     832.9 ms ±  10.1 ms    [User: 858.2 ms, System: 31.0 ms]
	  Range (min … max):   818.9 ms … 844.5 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 193ms
	Processing time (w/o IO): 195ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 190ms
	Processing time (w/o IO): 198ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 197ms
	Processing time (w/o IO): 194ms
	Processing time (w/o IO): 190ms
	  Time (mean ± σ):     258.9 ms ±   3.0 ms    [User: 251.8 ms, System: 30.0 ms]
	  Range (min … max):   255.7 ms … 263.8 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 55 ms
	  Time (mean ± σ):     383.6 ms ±   7.9 ms    [User: 692.5 ms, System: 38.4 ms]
	  Range (min … max):   375.8 ms … 396.9 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 41 ms
	Processing time (w/o IO): 41 ms
	Processing time (w/o IO): 41 ms
	Processing time (w/o IO): 41 ms
	Processing time (w/o IO): 41 ms
	Processing time (w/o IO): 41 ms
	Processing time (w/o IO): 41 ms
	Processing time (w/o IO): 41 ms
	Processing time (w/o IO): 41 ms
	Processing time (w/o IO): 41 ms
	Processing time (w/o IO): 41 ms
	Processing time (w/o IO): 41 ms
	Processing time (w/o IO): 41 ms
	  Time (mean ± σ):     111.4 ms ±   0.7 ms    [User: 101.6 ms, System: 9.9 ms]
	  Range (min … max):   110.2 ms … 112.3 ms    10 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 38 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	  Time (mean ± σ):      68.7 ms ±   0.7 ms    [User: 114.9 ms, System: 12.4 ms]
	  Range (min … max):    67.6 ms …  69.9 ms    10 runs
	 
F#:

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 45ms
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 46ms
	Processing time (w/o IO): 47ms
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 44ms
	  Time (mean ± σ):     906.1 ms ±   6.6 ms    [User: 978.0 ms, System: 91.6 ms]
	  Range (min … max):   899.6 ms … 918.4 ms    10 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 43ms
	Processing time (w/o IO): 42ms
	Processing time (w/o IO): 43ms
	Processing time (w/o IO): 42ms
	Processing time (w/o IO): 43ms
	Processing time (w/o IO): 43ms
	Processing time (w/o IO): 43ms
	Processing time (w/o IO): 43ms
	Processing time (w/o IO): 42ms
	Processing time (w/o IO): 44ms
	Processing time (w/o IO): 43ms
	Processing time (w/o IO): 43ms
	Processing time (w/o IO): 43ms
	  Time (mean ± σ):     878.5 ms ±  28.6 ms    [User: 995.8 ms, System: 104.4 ms]
	  Range (min … max):   843.7 ms … 914.9 ms    10 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 40ms
	  Time (mean ± σ):     760.6 ms ±   2.4 ms    [User: 724.5 ms, System: 78.6 ms]
	  Range (min … max):   755.6 ms … 763.1 ms    10 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 58.1806ms
	Processing time (w/o IO): 57.5693ms
	Processing time (w/o IO): 57.9034ms
	Processing time (w/o IO): 57.8725ms
	Processing time (w/o IO): 57.8928ms
	Processing time (w/o IO): 57.8617ms
	Processing time (w/o IO): 58.1428ms
	Processing time (w/o IO): 58.485ms
	Processing time (w/o IO): 57.6506ms
	Processing time (w/o IO): 57.9952ms
	Processing time (w/o IO): 57.9924ms
	Processing time (w/o IO): 57.8193ms
	Processing time (w/o IO): 57.8749ms
	  Time (mean ± σ):     200.9 ms ±   5.6 ms    [User: 158.2 ms, System: 24.6 ms]
	  Range (min … max):   194.7 ms … 211.8 ms    10 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 42.5751ms
	Processing time (w/o IO): 42.6343ms
	Processing time (w/o IO): 42.4708ms
	Processing time (w/o IO): 42.6711ms
	Processing time (w/o IO): 42.3196ms
	Processing time (w/o IO): 42.6095ms
	Processing time (w/o IO): 42.6388ms
	Processing time (w/o IO): 42.8808ms
	Processing time (w/o IO): 42.5795ms
	Processing time (w/o IO): 42.7869ms
	Processing time (w/o IO): 43.0672ms
	Processing time (w/o IO): 42.9845ms
	Processing time (w/o IO): 42.7117ms
	  Time (mean ± σ):      85.6 ms ±   0.9 ms    [User: 77.7 ms, System: 18.2 ms]
	  Range (min … max):    84.1 ms …  87.2 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	112.95294761658	ms
	Processing time (w/o IO):	103.87086868286	ms
	Processing time (w/o IO):	88.363170623779	ms
	Processing time (w/o IO):	87.449073791504	ms
	Processing time (w/o IO):	110.56780815125	ms
	Processing time (w/o IO):	88.480949401855	ms
	Processing time (w/o IO):	112.57910728455	ms
	Processing time (w/o IO):	110.31198501587	ms
	Processing time (w/o IO):	105.40509223938	ms
	Processing time (w/o IO):	90.264081954956	ms
	Processing time (w/o IO):	111.03892326355	ms
	Processing time (w/o IO):	103.96695137024	ms
	Processing time (w/o IO):	88.649034500122	ms
	  Time (mean ± σ):     339.6 ms ±  10.0 ms    [User: 320.0 ms, System: 19.5 ms]
	  Range (min … max):   322.1 ms … 351.8 ms    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1090.0931358337	ms
	Processing time (w/o IO):	1092.8020477295	ms
	Processing time (w/o IO):	1091.2268161774	ms
	Processing time (w/o IO):	1106.3029766083	ms
	Processing time (w/o IO):	1090.5220508575	ms
	Processing time (w/o IO):	1089.7150039673	ms
	Processing time (w/o IO):	1091.2449359894	ms
	Processing time (w/o IO):	1092.7939414978	ms
	Processing time (w/o IO):	1091.372013092	ms
	Processing time (w/o IO):	1089.7629261017	ms
	Processing time (w/o IO):	1091.2821292877	ms
	Processing time (w/o IO):	1090.4178619385	ms
	Processing time (w/o IO):	1089.0510082245	ms
	  Time (mean ± σ):      1.511 s ±  0.006 s    [User: 1.492 s, System: 0.018 s]
	  Range (min … max):    1.503 s …  1.524 s    10 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 142ms
	Processing time (w/o IO): 143ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 145ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 139ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 139ms
	Processing time (w/o IO): 139ms
	Processing time (w/o IO): 137ms
	  Time (mean ± σ):     221.7 ms ±   2.4 ms    [User: 194.4 ms, System: 27.2 ms]
	  Range (min … max):   219.8 ms … 227.7 ms    10 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 371.696641ms
	Processing time (w/o IO): 370.889328ms
	Processing time (w/o IO): 370.237318ms
	  Time (mean ± σ):     514.8 ms ±   1.8 ms    [User: 499.3 ms, System: 47.8 ms]
	  Range (min … max):   513.5 ms … 516.1 ms    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 166.912723ms
	Processing time (w/o IO): 167.206027ms
	Processing time (w/o IO): 166.69942ms
	  Time (mean ± σ):     307.2 ms ±   3.4 ms    [User: 776.5 ms, System: 39.7 ms]
	  Range (min … max):   304.8 ms … 309.6 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 389.939928ms
	Processing time (w/o IO): 388.714509ms
	Processing time (w/o IO): 387.980697ms
	  Time (mean ± σ):     458.3 ms ±   1.5 ms    [User: 430.9 ms, System: 27.3 ms]
	  Range (min … max):   457.2 ms … 459.4 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 304.18238ms
	Processing time (w/o IO): 304.538786ms
	Processing time (w/o IO): 305.950708ms
	  Time (mean ± σ):     374.5 ms ±   2.7 ms    [User: 645.5 ms, System: 29.6 ms]
	  Range (min … max):   372.5 ms … 376.4 ms    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 316.902ms
	Processing time (w/o IO): 312.917ms
	Processing time (w/o IO): 315.749ms
	  Time (mean ± σ):     612.3 ms ±   0.7 ms    [User: 591.0 ms, System: 25.6 ms]
	  Range (min … max):   611.8 ms … 612.8 ms    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 145.376ms
	Processing time (w/o IO): 144.32ms
	Processing time (w/o IO): 144.384ms
	  Time (mean ± σ):     449.0 ms ±   8.6 ms    [User: 808.2 ms, System: 19.7 ms]
	  Range (min … max):   442.9 ms … 455.1 ms    2 runs
	 
cpp:

	Benchmark 1: ./main
	Processing time (w/o IO): 334 ms
	Processing time (w/o IO): 333 ms
	Processing time (w/o IO): 333 ms
	  Time (mean ± σ):      1.157 s ±  0.003 s    [User: 1.034 s, System: 0.115 s]
	  Range (min … max):    1.155 s …  1.159 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 23.600s
	Processing time (w/o IO): 23.586s
	  Time (abs ≡):        23.746 s               [User: 23.683 s, System: 0.059 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 5.451s
	Processing time (w/o IO): 6.538s
	Processing time (w/o IO): 6.408s
	  Time (mean ± σ):      6.977 s ±  0.108 s    [User: 5.033 s, System: 2.531 s]
	  Range (min … max):    6.901 s …  7.054 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 974.040953ms
	Processing time (w/o IO): 971.890021ms
	Processing time (w/o IO): 971.888121ms
	  Time (mean ± σ):      1.194 s ±  0.013 s    [User: 1.154 s, System: 0.031 s]
	  Range (min … max):    1.185 s …  1.203 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 343ms
	Processing time (w/o IO): 342ms
	Processing time (w/o IO): 343ms
	  Time (mean ± σ):     528.9 ms ±   1.6 ms    [User: 517.3 ms, System: 11.5 ms]
	  Range (min … max):   527.7 ms … 530.0 ms    2 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 391 milliseconds
	Processing time (w/o IO): 391 milliseconds
	Processing time (w/o IO): 392 milliseconds
	  Time (mean ± σ):      1.051 s ±  0.009 s    [User: 0.863 s, System: 0.187 s]
	  Range (min … max):    1.044 s …  1.057 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 182 milliseconds
	Processing time (w/o IO): 182 milliseconds
	Processing time (w/o IO): 182 milliseconds
	  Time (mean ± σ):     847.6 ms ±  29.5 ms    [User: 1187.8 ms, System: 193.9 ms]
	  Range (min … max):   826.7 ms … 868.4 ms    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  679.129081ms
	Processing time (w/o IO):  675.728804ms
	Processing time (w/o IO):  678.213047ms
	  Time (mean ± σ):      1.461 s ±  0.000 s    [User: 1.429 s, System: 0.029 s]
	  Range (min … max):    1.461 s …  1.461 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 756.935ms
	Processing time (w/o IO): 757.718ms
	Processing time (w/o IO): 757.107ms
	  Time (mean ± σ):     11.155 s ±  0.018 s    [User: 11.029 s, System: 0.121 s]
	  Range (min … max):   11.142 s … 11.168 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 2354ms
	Processing time (w/o IO): 2501ms
	Processing time (w/o IO): 2508ms
	  Time (mean ± σ):      3.193 s ±  0.017 s    [User: 3.387 s, System: 0.167 s]
	  Range (min … max):    3.181 s …  3.205 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 2883ms
	Processing time (w/o IO): 2899ms
	Processing time (w/o IO): 2889ms
	  Time (mean ± σ):      3.391 s ±  0.011 s    [User: 3.342 s, System: 0.065 s]
	  Range (min … max):    3.384 s …  3.399 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 712.2519016265869ms
	Processing time (w/o IO): 712.7909660339355ms
	Processing time (w/o IO): 720.3580141067505ms
	  Time (mean ± σ):      2.132 s ±  0.008 s    [User: 1.944 s, System: 0.149 s]
	  Range (min … max):    2.126 s …  2.138 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 394.577115ms
	Processing time (w/o IO): 392.737585ms
	Processing time (w/o IO): 392.858687ms
	  Time (mean ± σ):      1.843 s ±  0.011 s    [User: 2.801 s, System: 0.142 s]
	  Range (min … max):    1.836 s …  1.851 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 2422ms
	Processing time (w/o IO): 2423ms
	Processing time (w/o IO): 2437ms
	  Time (mean ± σ):      2.769 s ±  0.008 s    [User: 2.781 s, System: 0.095 s]
	  Range (min … max):    2.763 s …  2.775 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 12156ms
	Processing time (w/o IO): 11630ms
	Processing time (w/o IO): 12154ms
	  Time (mean ± σ):     12.049 s ±  0.369 s    [User: 12.100 s, System: 0.073 s]
	  Range (min … max):   11.788 s … 12.310 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 2266ms
	Processing time (w/o IO): 2255ms
	Processing time (w/o IO): 2277ms
	  Time (mean ± σ):      2.552 s ±  0.086 s    [User: 2.465 s, System: 0.068 s]
	  Range (min … max):    2.491 s …  2.613 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 774 ms
	Processing time (w/o IO): 757 ms
	Processing time (w/o IO): 779 ms
	  Time (mean ± σ):      1.939 s ±  0.030 s    [User: 2.560 s, System: 0.093 s]
	  Range (min … max):    1.918 s …  1.961 s    2 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 496 ms
	Processing time (w/o IO): 495 ms
	Processing time (w/o IO): 499 ms
	  Time (mean ± σ):      1.102 s ±  0.010 s    [User: 1.065 s, System: 0.030 s]
	  Range (min … max):    1.095 s …  1.108 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 462 ms
	Processing time (w/o IO): 471 ms
	Processing time (w/o IO): 475 ms
	  Time (mean ± σ):     570.5 ms ±   1.8 ms    [User: 1312.9 ms, System: 31.7 ms]
	  Range (min … max):   569.2 ms … 571.7 ms    2 runs
	 
F#:

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 624ms
	Processing time (w/o IO): 623ms
	Processing time (w/o IO): 623ms
	  Time (mean ± σ):      3.329 s ±  0.020 s    [User: 3.223 s, System: 0.306 s]
	  Range (min … max):    3.315 s …  3.344 s    2 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 405ms
	Processing time (w/o IO): 433ms
	Processing time (w/o IO): 394ms
	  Time (mean ± σ):      2.589 s ±  0.031 s    [User: 3.673 s, System: 0.264 s]
	  Range (min … max):    2.567 s …  2.611 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 488ms
	Processing time (w/o IO): 487ms
	Processing time (w/o IO): 487ms
	  Time (mean ± σ):      3.988 s ±  0.009 s    [User: 4.180 s, System: 0.448 s]
	  Range (min … max):    3.982 s …  3.995 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 774.3821ms
	Processing time (w/o IO): 774.7584ms
	Processing time (w/o IO): 771.8208ms
	  Time (mean ± σ):      1.091 s ±  0.002 s    [User: 1.049 s, System: 0.069 s]
	  Range (min … max):    1.090 s …  1.092 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 616.2469ms
	Processing time (w/o IO): 614.9015ms
	Processing time (w/o IO): 619.0623ms
	  Time (mean ± σ):     793.9 ms ±   4.1 ms    [User: 785.1 ms, System: 53.8 ms]
	  Range (min … max):   791.0 ms … 796.8 ms    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	1161.1649990082	ms
	Processing time (w/o IO):	1169.3651676178	ms
	Processing time (w/o IO):	1550.6279468536	ms
	  Time (mean ± σ):      2.596 s ±  0.275 s    [User: 2.522 s, System: 0.073 s]
	  Range (min … max):    2.402 s …  2.791 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	17477.26392746	ms
	Processing time (w/o IO):	16748.620986938	ms
	  Time (abs ≡):        18.552 s               [User: 18.506 s, System: 0.039 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 2638ms
	Processing time (w/o IO): 2620ms
	Processing time (w/o IO): 2565ms
	  Time (mean ± σ):      3.006 s ±  0.032 s    [User: 2.853 s, System: 0.151 s]
	  Range (min … max):    2.983 s …  3.028 s    2 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 3.279210703s
	Processing time (w/o IO): 3.27832758s
	Processing time (w/o IO): 3.279757989s
	  Time (mean ± σ):      3.759 s ±  0.001 s    [User: 3.759 s, System: 0.131 s]
	  Range (min … max):    3.758 s …  3.760 s    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1.41884575s
	Processing time (w/o IO): 1.417851333s
	Processing time (w/o IO): 1.42242441s
	  Time (mean ± σ):      1.882 s ±  0.002 s    [User: 6.096 s, System: 0.113 s]
	  Range (min … max):    1.881 s …  1.883 s    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 3.447784606s
	Processing time (w/o IO): 3.451297755s
	Processing time (w/o IO): 3.448319431s
	  Time (mean ± σ):      3.691 s ±  0.004 s    [User: 3.596 s, System: 0.087 s]
	  Range (min … max):    3.688 s …  3.693 s    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 2.72810026s
	Processing time (w/o IO): 2.720142609s
	Processing time (w/o IO): 2.71875294s
	  Time (mean ± σ):      2.957 s ±  0.001 s    [User: 5.584 s, System: 0.080 s]
	  Range (min … max):    2.957 s …  2.958 s    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 2706.7ms
	Processing time (w/o IO): 2720.8ms
	Processing time (w/o IO): 2717.71ms
	  Time (mean ± σ):      3.665 s ±  0.003 s    [User: 3.562 s, System: 0.107 s]
	  Range (min … max):    3.664 s …  3.667 s    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1158.4ms
	Processing time (w/o IO): 1165.2ms
	Processing time (w/o IO): 1158.74ms
	  Time (mean ± σ):      2.113 s ±  0.000 s    [User: 5.334 s, System: 0.105 s]
	  Range (min … max):    2.113 s …  2.113 s    2 runs
	 
cpp:

	Benchmark 1: ./main
	Processing time (w/o IO): 2945 ms
	Processing time (w/o IO): 2939 ms
	Processing time (w/o IO): 2949 ms
	  Time (mean ± σ):      5.507 s ±  0.054 s    [User: 5.097 s, System: 0.332 s]
	  Range (min … max):    5.469 s …  5.545 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 217.520s
	Processing time (w/o IO): 213.493s
	  Time (abs ≡):        213.955 s               [User: 213.771 s, System: 0.143 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 8652.411915ms
	Processing time (w/o IO): 8660.763404ms
	Processing time (w/o IO): 8652.541923ms
	  Time (mean ± σ):      9.348 s ±  0.005 s    [User: 9.240 s, System: 0.098 s]
	  Range (min … max):    9.345 s …  9.352 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 3019ms
	Processing time (w/o IO): 3012ms
	Processing time (w/o IO): 3018ms
	  Time (mean ± σ):      3.593 s ±  0.002 s    [User: 3.495 s, System: 0.087 s]
	  Range (min … max):    3.591 s …  3.595 s    2 runs
	 
Julia:

	Benchmark 1: julia --project=Related -e "using Related; main()"
	Processing time (w/o IO): 3443 milliseconds
	Processing time (w/o IO): 3444 milliseconds
	Processing time (w/o IO): 3435 milliseconds
	  Time (mean ± σ):      4.434 s ±  0.001 s    [User: 4.191 s, System: 0.237 s]
	  Range (min … max):    4.433 s …  4.435 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 1582 milliseconds
	Processing time (w/o IO): 1586 milliseconds
	Processing time (w/o IO): 1581 milliseconds
	  Time (mean ± σ):      2.579 s ±  0.012 s    [User: 7.012 s, System: 0.276 s]
	  Range (min … max):    2.571 s …  2.587 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  5.032426625s
	Processing time (w/o IO):  5.092788018s
	Processing time (w/o IO):  5.138690349s
	  Time (mean ± σ):      7.521 s ±  0.059 s    [User: 7.410 s, System: 0.099 s]
	  Range (min … max):    7.479 s …  7.563 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 6.668s
	Processing time (w/o IO): 6.663s
	Processing time (w/o IO): 6.667s
	  Time (mean ± σ):     83.719 s ±  1.875 s    [User: 83.330 s, System: 0.374 s]
	  Range (min … max):   82.392 s … 85.045 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 21046ms
	Processing time (w/o IO): 21186ms
	Processing time (w/o IO): 20922ms
	  Time (mean ± σ):     22.552 s ±  0.172 s    [User: 22.733 s, System: 0.282 s]
	  Range (min … max):   22.430 s … 22.673 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 25777ms
	Processing time (w/o IO): 25796ms
	Processing time (w/o IO): 25791ms
	  Time (mean ± σ):     27.296 s ±  0.031 s    [User: 27.244 s, System: 0.161 s]
	  Range (min … max):   27.274 s … 27.318 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 6201.695919036865ms
	Processing time (w/o IO): 6201.072931289673ms
	Processing time (w/o IO): 6196.627974510193ms
	  Time (mean ± σ):     10.495 s ±  0.005 s    [User: 10.000 s, System: 0.317 s]
	  Range (min … max):   10.492 s … 10.498 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 3441.558421ms
	Processing time (w/o IO): 3458.829718ms
	Processing time (w/o IO): 3437.507415ms
	  Time (mean ± σ):      7.793 s ±  0.043 s    [User: 17.480 s, System: 0.365 s]
	  Range (min … max):    7.762 s …  7.823 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 24473ms
	Processing time (w/o IO): 24534ms
	Processing time (w/o IO): 24625ms
	  Time (mean ± σ):     25.413 s ±  0.060 s    [User: 25.516 s, System: 0.161 s]
	  Range (min … max):   25.371 s … 25.456 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 109970ms
	Processing time (w/o IO): 107147ms
	Processing time (w/o IO): 105904ms
	  Time (mean ± σ):     107.001 s ±  0.881 s    [User: 106.989 s, System: 0.167 s]
	  Range (min … max):   106.378 s … 107.624 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 41082ms
	Processing time (w/o IO): 41038ms
	Processing time (w/o IO): 20479ms
	  Time (mean ± σ):     31.385 s ± 14.322 s    [User: 31.249 s, System: 0.172 s]
	  Range (min … max):   21.258 s … 41.513 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 6422 ms
	Processing time (w/o IO): 6497 ms
	Processing time (w/o IO): 6426 ms
	  Time (mean ± σ):     13.619 s ±  0.061 s    [User: 14.335 s, System: 0.136 s]
	  Range (min … max):   13.576 s … 13.662 s    2 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 5292 ms
	Processing time (w/o IO): 5287 ms
	Processing time (w/o IO): 5289 ms
	  Time (mean ± σ):     11.040 s ±  0.009 s    [User: 10.914 s, System: 0.116 s]
	  Range (min … max):   11.033 s … 11.046 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 5309 ms
	Processing time (w/o IO): 5302 ms
	Processing time (w/o IO): 5301 ms
	  Time (mean ± σ):      5.654 s ±  0.007 s    [User: 14.184 s, System: 0.101 s]
	  Range (min … max):    5.649 s …  5.659 s    2 runs
	 
F#:

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 5502ms
	Processing time (w/o IO): 5504ms
	Processing time (w/o IO): 5504ms
	  Time (mean ± σ):     16.389 s ±  0.028 s    [User: 17.200 s, System: 0.562 s]
	  Range (min … max):   16.369 s … 16.408 s    2 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 3270ms
	Processing time (w/o IO): 3270ms
	Processing time (w/o IO): 3515ms
	  Time (mean ± σ):      8.875 s ±  0.059 s    [User: 19.604 s, System: 0.553 s]
	  Range (min … max):    8.833 s …  8.917 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 5178ms
	Processing time (w/o IO): 5181ms
	Processing time (w/o IO): 5185ms
	  Time (mean ± σ):     18.470 s ±  0.026 s    [User: 19.592 s, System: 0.584 s]
	  Range (min … max):   18.452 s … 18.488 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 6775.3214ms
	Processing time (w/o IO): 6770.2214ms
	Processing time (w/o IO): 6762.8539ms
	  Time (mean ± σ):      7.633 s ±  0.006 s    [User: 7.654 s, System: 0.158 s]
	  Range (min … max):    7.630 s …  7.637 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 5405.2772ms
	Processing time (w/o IO): 5409.2654ms
	Processing time (w/o IO): 5407.3672ms
	  Time (mean ± σ):      5.955 s ±  0.004 s    [User: 5.913 s, System: 0.182 s]
	  Range (min … max):    5.953 s …  5.958 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	9804.5461177826	ms
	Processing time (w/o IO):	12958.563089371	ms
	Processing time (w/o IO):	11972.514152527	ms
	  Time (mean ± σ):     16.549 s ±  0.733 s    [User: 16.341 s, System: 0.192 s]
	  Range (min … max):   16.031 s … 17.067 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	149859.56907272	ms
	Processing time (w/o IO):	155534.93094444	ms
	  Time (abs ≡):        162.196 s               [User: 161.948 s, System: 0.212 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 33918ms
	Processing time (w/o IO): 34188ms
	Processing time (w/o IO): 33998ms
	  Time (mean ± σ):     35.576 s ±  0.128 s    [User: 34.802 s, System: 0.761 s]
	  Range (min … max):   35.486 s … 35.667 s    2 runs
	 
