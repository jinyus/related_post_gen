Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 24.775267ms
	Processing time (w/o IO): 24.606263ms
	Processing time (w/o IO): 24.298854ms
	Processing time (w/o IO): 24.684065ms
	Processing time (w/o IO): 24.246553ms
	Processing time (w/o IO): 24.053848ms
	Processing time (w/o IO): 24.208352ms
	Processing time (w/o IO): 24.196552ms
	Processing time (w/o IO): 24.835369ms
	Processing time (w/o IO): 24.057448ms
	Processing time (w/o IO): 24.022648ms
	Processing time (w/o IO): 24.172752ms
	Processing time (w/o IO): 24.197552ms
	  Time (mean ± σ):      63.2 ms ±   2.0 ms    [User: 57.4 ms, System: 12.3 ms]
	  Range (min … max):    60.9 ms …  68.4 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 12.702642ms
	Processing time (w/o IO): 12.533738ms
	Processing time (w/o IO): 13.038052ms
	Processing time (w/o IO): 14.891001ms
	Processing time (w/o IO): 13.976277ms
	Processing time (w/o IO): 12.392334ms
	Processing time (w/o IO): 12.486337ms
	Processing time (w/o IO): 14.425989ms
	Processing time (w/o IO): 12.61954ms
	Processing time (w/o IO): 12.538437ms
	Processing time (w/o IO): 14.384787ms
	Processing time (w/o IO): 14.700996ms
	Processing time (w/o IO): 12.98645ms
	  Time (mean ± σ):      50.6 ms ±   1.9 ms    [User: 76.0 ms, System: 14.5 ms]
	  Range (min … max):    48.5 ms …  54.7 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 23.831999ms
	Processing time (w/o IO): 24.116707ms
	Processing time (w/o IO): 24.214409ms
	Processing time (w/o IO): 23.852999ms
	Processing time (w/o IO): 23.799199ms
	Processing time (w/o IO): 23.803899ms
	Processing time (w/o IO): 24.26331ms
	Processing time (w/o IO): 24.055905ms
	Processing time (w/o IO): 23.907001ms
	Processing time (w/o IO): 23.917601ms
	Processing time (w/o IO): 23.838999ms
	Processing time (w/o IO): 23.645494ms
	Processing time (w/o IO): 23.801498ms
	  Time (mean ± σ):      39.0 ms ±   0.3 ms    [User: 33.0 ms, System: 6.0 ms]
	  Range (min … max):    38.3 ms …  39.3 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 21.81586ms
	Processing time (w/o IO): 20.182825ms
	Processing time (w/o IO): 20.120924ms
	Processing time (w/o IO): 20.353428ms
	Processing time (w/o IO): 20.059722ms
	Processing time (w/o IO): 20.088923ms
	Processing time (w/o IO): 20.235127ms
	Processing time (w/o IO): 20.230826ms
	Processing time (w/o IO): 20.177025ms
	Processing time (w/o IO): 20.141324ms
	Processing time (w/o IO): 20.059323ms
	Processing time (w/o IO): 20.231326ms
	Processing time (w/o IO): 20.087523ms
	  Time (mean ± σ):      36.4 ms ±   0.4 ms    [User: 46.5 ms, System: 8.9 ms]
	  Range (min … max):    36.0 ms …  37.3 ms    10 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 31.105ms
	Processing time (w/o IO): 30.968ms
	Processing time (w/o IO): 30.769ms
	Processing time (w/o IO): 30.516ms
	Processing time (w/o IO): 30.565ms
	Processing time (w/o IO): 30.712ms
	Processing time (w/o IO): 30.992ms
	Processing time (w/o IO): 30.906ms
	Processing time (w/o IO): 31.833ms
	Processing time (w/o IO): 30.846ms
	Processing time (w/o IO): 31.083ms
	Processing time (w/o IO): 30.976ms
	Processing time (w/o IO): 30.536ms
	  Time (mean ± σ):     106.0 ms ±   1.8 ms    [User: 98.9 ms, System: 8.3 ms]
	  Range (min … max):   104.4 ms … 110.5 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 1.478s
	Processing time (w/o IO): 1.463s
	Processing time (w/o IO): 1.465s
	Processing time (w/o IO): 1.466s
	Processing time (w/o IO): 1.476s
	Processing time (w/o IO): 1.465s
	Processing time (w/o IO): 1.466s
	Processing time (w/o IO): 1.461s
	Processing time (w/o IO): 1.457s
	Processing time (w/o IO): 1.477s
	Processing time (w/o IO): 1.462s
	Processing time (w/o IO): 1.468s
	Processing time (w/o IO): 1.462s
	  Time (mean ± σ):      1.533 s ±  0.006 s    [User: 1.515 s, System: 0.017 s]
	  Range (min … max):    1.523 s …  1.544 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 439.3ms
	Processing time (w/o IO): 353.8ms
	Processing time (w/o IO): 350.7ms
	Processing time (w/o IO): 348.2ms
	Processing time (w/o IO): 350.5ms
	Processing time (w/o IO): 348.0ms
	Processing time (w/o IO): 348.8ms
	Processing time (w/o IO): 348.5ms
	Processing time (w/o IO): 352.3ms
	Processing time (w/o IO): 348.0ms
	Processing time (w/o IO): 346.5ms
	Processing time (w/o IO): 351.8ms
	Processing time (w/o IO): 354.2ms
	  Time (mean ± σ):     637.0 ms ±  13.8 ms    [User: 843.2 ms, System: 399.3 ms]
	  Range (min … max):   629.1 ms … 675.9 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 60.78523ms
	Processing time (w/o IO): 60.488925ms
	Processing time (w/o IO): 60.145618ms
	Processing time (w/o IO): 60.559327ms
	Processing time (w/o IO): 60.342022ms
	Processing time (w/o IO): 60.453625ms
	Processing time (w/o IO): 60.24782ms
	Processing time (w/o IO): 60.437925ms
	Processing time (w/o IO): 60.23372ms
	Processing time (w/o IO): 60.442776ms
	Processing time (w/o IO): 60.438176ms
	Processing time (w/o IO): 60.251873ms
	Processing time (w/o IO): 60.218772ms
	  Time (mean ± σ):     109.7 ms ±   0.8 ms    [User: 98.7 ms, System: 10.9 ms]
	  Range (min … max):   108.3 ms … 111.1 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	  Time (mean ± σ):      75.5 ms ±   0.3 ms    [User: 72.1 ms, System: 3.5 ms]
	  Range (min … max):    75.2 ms …  76.0 ms    10 runs
	 
Julia:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 38 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 38 milliseconds
	Processing time (w/o IO): 38 milliseconds
	Processing time (w/o IO): 38 milliseconds
	Processing time (w/o IO): 38 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 30 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 31 milliseconds
	Processing time (w/o IO): 38 milliseconds
	  Time (mean ± σ):      3.219 s ±  0.014 s    [User: 3.037 s, System: 0.181 s]
	  Range (min … max):    3.200 s …  3.254 s    10 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads auto related.jl
	Processing time (w/o IO): 17 milliseconds
	Processing time (w/o IO): 19 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 19 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 19 milliseconds
	Processing time (w/o IO): 18 milliseconds
	Processing time (w/o IO): 18 milliseconds
	  Time (mean ± σ):      3.333 s ±  0.015 s    [User: 4.459 s, System: 0.192 s]
	  Range (min … max):    3.306 s …  3.356 s    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  47.466579ms
	Processing time (w/o IO):  47.197875ms
	Processing time (w/o IO):  47.210276ms
	Processing time (w/o IO):  47.484679ms
	Processing time (w/o IO):  48.156587ms
	Processing time (w/o IO):  47.627481ms
	Processing time (w/o IO):  48.46039ms
	Processing time (w/o IO):  47.590381ms
	Processing time (w/o IO):  47.180375ms
	Processing time (w/o IO):  47.348877ms
	Processing time (w/o IO):  47.063974ms
	Processing time (w/o IO):  47.457578ms
	Processing time (w/o IO):  47.164575ms
	  Time (mean ± σ):     266.5 ms ±   0.9 ms    [User: 257.4 ms, System: 9.1 ms]
	  Range (min … max):   265.2 ms … 268.0 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 51.808ms
	Processing time (w/o IO): 51.171ms
	Processing time (w/o IO): 51.138ms
	Processing time (w/o IO): 51.405ms
	Processing time (w/o IO): 51.433ms
	Processing time (w/o IO): 51.322ms
	Processing time (w/o IO): 51.240ms
	Processing time (w/o IO): 51.355ms
	Processing time (w/o IO): 51.308ms
	Processing time (w/o IO): 51.276ms
	Processing time (w/o IO): 51.445ms
	Processing time (w/o IO): 51.325ms
	Processing time (w/o IO): 51.494ms
	  Time (mean ± σ):     386.8 ms ±   1.4 ms    [User: 359.2 ms, System: 27.6 ms]
	  Range (min … max):   383.6 ms … 389.0 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 129ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 135ms
	Processing time (w/o IO): 146ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 152ms
	Processing time (w/o IO): 130ms
	  Time (mean ± σ):     510.4 ms ±  14.3 ms    [User: 622.2 ms, System: 103.7 ms]
	  Range (min … max):   491.9 ms … 530.6 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 187ms
	Processing time (w/o IO): 187ms
	Processing time (w/o IO): 187ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 187ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 188ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 188ms
	  Time (mean ± σ):     312.5 ms ±   1.7 ms    [User: 297.7 ms, System: 19.0 ms]
	  Range (min … max):   310.1 ms … 315.2 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 50.76706409454346ms
	Processing time (w/o IO): 50.59707164764404ms
	Processing time (w/o IO): 50.81605911254883ms
	Processing time (w/o IO): 50.89998245239258ms
	Processing time (w/o IO): 50.842881202697754ms
	Processing time (w/o IO): 50.65298080444336ms
	Processing time (w/o IO): 50.5070686340332ms
	Processing time (w/o IO): 50.64892768859863ms
	Processing time (w/o IO): 50.72295665740967ms
	Processing time (w/o IO): 51.293015480041504ms
	Processing time (w/o IO): 50.450921058654785ms
	Processing time (w/o IO): 50.59492588043213ms
	Processing time (w/o IO): 50.372958183288574ms
	  Time (mean ± σ):     404.5 ms ±   6.6 ms    [User: 351.5 ms, System: 32.7 ms]
	  Range (min … max):   397.9 ms … 416.6 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 31.257384ms
	Processing time (w/o IO): 30.792179ms
	Processing time (w/o IO): 31.250384ms
	Processing time (w/o IO): 30.867679ms
	Processing time (w/o IO): 31.813891ms
	Processing time (w/o IO): 31.120109ms
	Processing time (w/o IO): 31.295711ms
	Processing time (w/o IO): 31.731415ms
	Processing time (w/o IO): 30.774606ms
	Processing time (w/o IO): 31.15541ms
	Processing time (w/o IO): 30.762705ms
	Processing time (w/o IO): 31.919918ms
	Processing time (w/o IO): 31.810216ms
	  Time (mean ± σ):     414.1 ms ±  43.9 ms    [User: 426.7 ms, System: 42.0 ms]
	  Range (min … max):   395.3 ms … 538.6 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 184ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 176ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 176ms
	Processing time (w/o IO): 184ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 177ms
	Processing time (w/o IO): 183ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 177ms
	  Time (mean ± σ):     349.6 ms ±   4.1 ms    [User: 352.4 ms, System: 61.4 ms]
	  Range (min … max):   344.5 ms … 357.0 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 201ms
	Processing time (w/o IO): 193ms
	Processing time (w/o IO): 199ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 197ms
	Processing time (w/o IO): 190ms
	Processing time (w/o IO): 196ms
	Processing time (w/o IO): 191ms
	Processing time (w/o IO): 193ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 193ms
	  Time (mean ± σ):     258.2 ms ±   1.9 ms    [User: 252.3 ms, System: 28.0 ms]
	  Range (min … max):   256.1 ms … 261.7 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 107 ms
	Processing time (w/o IO): 110 ms
	Processing time (w/o IO): 100 ms
	Processing time (w/o IO): 101 ms
	Processing time (w/o IO): 103 ms
	Processing time (w/o IO): 111 ms
	Processing time (w/o IO): 104 ms
	Processing time (w/o IO): 101 ms
	Processing time (w/o IO): 100 ms
	Processing time (w/o IO): 111 ms
	Processing time (w/o IO): 101 ms
	Processing time (w/o IO): 100 ms
	Processing time (w/o IO): 107 ms
	  Time (mean ± σ):     328.2 ms ±   4.3 ms    [User: 617.9 ms, System: 45.2 ms]
	  Range (min … max):   322.9 ms … 333.4 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 36 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 38 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 37 ms
	Processing time (w/o IO): 37 ms
	  Time (mean ± σ):      65.8 ms ±   0.8 ms    [User: 54.8 ms, System: 11.1 ms]
	  Range (min … max):    64.9 ms …  67.8 ms    10 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 38 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 38 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 38 ms
	Processing time (w/o IO): 39 ms
	  Time (mean ± σ):      66.3 ms ±   1.7 ms    [User: 115.0 ms, System: 9.6 ms]
	  Range (min … max):    63.2 ms …  68.1 ms    10 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 31ms
	Processing time (w/o IO): 31ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 31ms
	Processing time (w/o IO): 31ms
	Processing time (w/o IO): 31ms
	Processing time (w/o IO): 31ms
	Processing time (w/o IO): 31ms
	Processing time (w/o IO): 31ms
	Processing time (w/o IO): 31ms
	Processing time (w/o IO): 31ms
	Processing time (w/o IO): 31ms
	  Time (mean ± σ):      57.1 ms ±   0.8 ms    [User: 48.5 ms, System: 8.6 ms]
	  Range (min … max):    56.1 ms …  58.3 ms    10 runs
	 
F#:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 40ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	  Time (mean ± σ):     281.7 ms ±   4.7 ms    [User: 232.3 ms, System: 35.1 ms]
	  Range (min … max):   275.9 ms … 291.6 ms    10 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net7.0/fsharp_con
	Processing time (w/o IO): 34ms
	Processing time (w/o IO): 34ms
	Processing time (w/o IO): 34ms
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 34ms
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 34ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 30ms
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 34ms
	Processing time (w/o IO): 34ms
	  Time (mean ± σ):     791.9 ms ±  12.7 ms    [User: 797.1 ms, System: 74.7 ms]
	  Range (min … max):   765.7 ms … 802.0 ms    10 runs
	 
C#:

	Benchmark 1: ./bin/release/net7.0/publish/related
	Processing time (w/o IO): 65.3888ms
	Processing time (w/o IO): 64.7313ms
	Processing time (w/o IO): 64.4493ms
	Processing time (w/o IO): 65.1043ms
	Processing time (w/o IO): 65.144ms
	Processing time (w/o IO): 65.0235ms
	Processing time (w/o IO): 64.954ms
	Processing time (w/o IO): 65.1382ms
	Processing time (w/o IO): 64.7804ms
	Processing time (w/o IO): 64.9034ms
	Processing time (w/o IO): 65.0442ms
	Processing time (w/o IO): 64.7359ms
	Processing time (w/o IO): 65.0324ms
	  Time (mean ± σ):     109.4 ms ±   1.3 ms    [User: 100.0 ms, System: 19.5 ms]
	  Range (min … max):   106.8 ms … 111.0 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	112.03694343567	ms
	Processing time (w/o IO):	106.63104057312	ms
	Processing time (w/o IO):	106.39882087708	ms
	Processing time (w/o IO):	111.32597923279	ms
	Processing time (w/o IO):	87.809085845947	ms
	Processing time (w/o IO):	106.32991790771	ms
	Processing time (w/o IO):	112.46800422668	ms
	Processing time (w/o IO):	112.00594902039	ms
	Processing time (w/o IO):	113.01016807556	ms
	Processing time (w/o IO):	111.37199401855	ms
	Processing time (w/o IO):	105.01503944397	ms
	Processing time (w/o IO):	110.84604263306	ms
	Processing time (w/o IO):	88.422060012817	ms
	  Time (mean ± σ):     348.7 ms ±  12.5 ms    [User: 327.6 ms, System: 21.0 ms]
	  Range (min … max):   320.9 ms … 361.1 ms    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1094.77186203	ms
	Processing time (w/o IO):	1096.0388183594	ms
	Processing time (w/o IO):	1114.7320270538	ms
	Processing time (w/o IO):	1092.9989814758	ms
	Processing time (w/o IO):	1091.5801525116	ms
	Processing time (w/o IO):	1091.7770862579	ms
	Processing time (w/o IO):	1091.4330482483	ms
	Processing time (w/o IO):	1090.3780460358	ms
	Processing time (w/o IO):	1100.6019115448	ms
	Processing time (w/o IO):	1094.9602127075	ms
	Processing time (w/o IO):	1091.5379524231	ms
	Processing time (w/o IO):	1094.4669246674	ms
	Processing time (w/o IO):	1093.740940094	ms
	  Time (mean ± σ):      1.518 s ±  0.007 s    [User: 1.503 s, System: 0.015 s]
	  Range (min … max):    1.511 s …  1.532 s    10 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 136ms
	Processing time (w/o IO): 135ms
	Processing time (w/o IO): 135ms
	Processing time (w/o IO): 136ms
	Processing time (w/o IO): 134ms
	Processing time (w/o IO): 136ms
	Processing time (w/o IO): 136ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 133ms
	Processing time (w/o IO): 135ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 141ms
	  Time (mean ± σ):     226.0 ms ±  22.0 ms    [User: 190.8 ms, System: 28.3 ms]
	  Range (min … max):   215.4 ms … 287.9 ms    10 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 371.988468ms
	Processing time (w/o IO): 388.376956ms
	Processing time (w/o IO): 371.672365ms
	  Time (mean ± σ):     521.3 ms ±   9.5 ms    [User: 509.7 ms, System: 44.1 ms]
	  Range (min … max):   514.6 ms … 528.0 ms    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 167.497122ms
	Processing time (w/o IO): 168.670635ms
	Processing time (w/o IO): 166.038806ms
	  Time (mean ± σ):     309.0 ms ±   0.1 ms    [User: 776.6 ms, System: 42.8 ms]
	  Range (min … max):   308.9 ms … 309.0 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 389.179766ms
	Processing time (w/o IO): 387.380945ms
	Processing time (w/o IO): 388.991164ms
	  Time (mean ± σ):     458.0 ms ±   3.6 ms    [User: 428.6 ms, System: 29.3 ms]
	  Range (min … max):   455.5 ms … 460.6 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 305.556506ms
	Processing time (w/o IO): 303.902588ms
	Processing time (w/o IO): 303.340781ms
	  Time (mean ± σ):     370.4 ms ±   0.1 ms    [User: 641.0 ms, System: 29.4 ms]
	  Range (min … max):   370.3 ms … 370.4 ms    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 464.043ms
	Processing time (w/o IO): 462.517ms
	Processing time (w/o IO): 463.198ms
	  Time (mean ± σ):     741.0 ms ±   2.1 ms    [User: 716.5 ms, System: 27.5 ms]
	  Range (min … max):   739.5 ms … 742.6 ms    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 23.640s
	Processing time (w/o IO): 23.250s
	  Time (abs ≡):        23.408 s               [User: 23.358 s, System: 0.043 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 5.196s
	Processing time (w/o IO): 4.961s
	Processing time (w/o IO): 4.838s
	  Time (mean ± σ):      5.316 s ±  0.092 s    [User: 4.776 s, System: 1.153 s]
	  Range (min … max):    5.251 s …  5.381 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 934.098196ms
	Processing time (w/o IO): 933.759728ms
	Processing time (w/o IO): 932.034283ms
	  Time (mean ± σ):      1.142 s ±  0.001 s    [User: 1.102 s, System: 0.037 s]
	  Range (min … max):    1.142 s …  1.143 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 429ms
	Processing time (w/o IO): 431ms
	Processing time (w/o IO): 430ms
	  Time (mean ± σ):     620.3 ms ±   0.5 ms    [User: 606.5 ms, System: 13.5 ms]
	  Range (min … max):   619.9 ms … 620.6 ms    2 runs
	 
Julia:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 579 milliseconds
	Processing time (w/o IO): 575 milliseconds
	Processing time (w/o IO): 575 milliseconds
	  Time (mean ± σ):      4.377 s ±  0.001 s    [User: 4.186 s, System: 0.188 s]
	  Range (min … max):    4.377 s …  4.378 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads auto related.jl
	Processing time (w/o IO): 251 milliseconds
	Processing time (w/o IO): 252 milliseconds
	Processing time (w/o IO): 250 milliseconds
	  Time (mean ± σ):      3.906 s ±  0.022 s    [User: 6.394 s, System: 0.189 s]
	  Range (min … max):    3.890 s …  3.921 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  574.917315ms
	Processing time (w/o IO):  572.628172ms
	Processing time (w/o IO):  574.739935ms
	  Time (mean ± σ):      1.354 s ±  0.001 s    [User: 1.325 s, System: 0.028 s]
	  Range (min … max):    1.354 s …  1.355 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 755.708ms
	Processing time (w/o IO): 756.445ms
	Processing time (w/o IO): 757.077ms
	  Time (mean ± σ):      7.258 s ±  0.065 s    [User: 7.136 s, System: 0.117 s]
	  Range (min … max):    7.212 s …  7.304 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 2382ms
	Processing time (w/o IO): 2511ms
	Processing time (w/o IO): 2395ms
	  Time (mean ± σ):      3.112 s ±  0.077 s    [User: 3.309 s, System: 0.144 s]
	  Range (min … max):    3.058 s …  3.167 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 2889ms
	Processing time (w/o IO): 2881ms
	Processing time (w/o IO): 2883ms
	  Time (mean ± σ):      3.371 s ±  0.002 s    [User: 3.324 s, System: 0.067 s]
	  Range (min … max):    3.369 s …  3.372 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 705.9130668640137ms
	Processing time (w/o IO): 709.2210054397583ms
	Processing time (w/o IO): 713.3949995040894ms
	  Time (mean ± σ):      2.103 s ±  0.014 s    [User: 1.984 s, System: 0.084 s]
	  Range (min … max):    2.093 s …  2.112 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 392.301802ms
	Processing time (w/o IO): 391.811772ms
	Processing time (w/o IO): 391.510214ms
	  Time (mean ± σ):      1.811 s ±  0.021 s    [User: 2.749 s, System: 0.165 s]
	  Range (min … max):    1.796 s …  1.825 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 2419ms
	Processing time (w/o IO): 2432ms
	Processing time (w/o IO): 2422ms
	  Time (mean ± σ):      2.748 s ±  0.008 s    [User: 2.753 s, System: 0.100 s]
	  Range (min … max):    2.743 s …  2.753 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 2259ms
	Processing time (w/o IO): 2263ms
	Processing time (w/o IO): 2261ms
	  Time (mean ± σ):      2.644 s ±  0.091 s    [User: 2.450 s, System: 0.057 s]
	  Range (min … max):    2.580 s …  2.708 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 841 ms
	Processing time (w/o IO): 856 ms
	Processing time (w/o IO): 833 ms
	  Time (mean ± σ):      1.148 s ±  0.001 s    [User: 1.708 s, System: 0.084 s]
	  Range (min … max):    1.147 s …  1.149 s    2 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 446 ms
	Processing time (w/o IO): 447 ms
	Processing time (w/o IO): 446 ms
	  Time (mean ± σ):     546.6 ms ±   0.0 ms    [User: 521.4 ms, System: 25.4 ms]
	  Range (min … max):   546.6 ms … 546.7 ms    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 601 ms
	Processing time (w/o IO): 596 ms
	Processing time (w/o IO): 599 ms
	  Time (mean ± σ):     696.3 ms ±   2.9 ms    [User: 1651.1 ms, System: 25.4 ms]
	  Range (min … max):   694.2 ms … 698.3 ms    2 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 770ms
	Processing time (w/o IO): 774ms
	Processing time (w/o IO): 769ms
	  Time (mean ± σ):     869.5 ms ±   4.0 ms    [User: 837.9 ms, System: 31.5 ms]
	  Range (min … max):   866.6 ms … 872.3 ms    2 runs
	 
F#:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 499ms
	Processing time (w/o IO): 500ms
	Processing time (w/o IO): 500ms
	  Time (mean ± σ):      1.016 s ±  0.002 s    [User: 0.979 s, System: 0.057 s]
	  Range (min … max):    1.014 s …  1.017 s    2 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net7.0/fsharp_con
	Processing time (w/o IO): 324ms
	Processing time (w/o IO): 325ms
	Processing time (w/o IO): 325ms
	  Time (mean ± σ):      2.732 s ±  0.002 s    [User: 3.639 s, System: 0.135 s]
	  Range (min … max):    2.731 s …  2.733 s    2 runs
	 
C#:

	Benchmark 1: ./bin/release/net7.0/publish/related
	Processing time (w/o IO): 977.5981ms
	Processing time (w/o IO): 975.7779ms
	Processing time (w/o IO): 976.5059ms
	  Time (mean ± σ):      1.167 s ±  0.000 s    [User: 1.150 s, System: 0.050 s]
	  Range (min … max):    1.166 s …  1.167 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	1476.448059082	ms
	Processing time (w/o IO):	1546.4150905609	ms
	Processing time (w/o IO):	1485.2609634399	ms
	  Time (mean ± σ):      2.828 s ±  0.025 s    [User: 2.763 s, System: 0.063 s]
	  Range (min … max):    2.810 s …  2.846 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	16745.438098907	ms
	Processing time (w/o IO):	17044.975996017	ms
	  Time (abs ≡):        18.832 s               [User: 18.763 s, System: 0.063 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 2637ms
	Processing time (w/o IO): 2600ms
	Processing time (w/o IO): 2667ms
	  Time (mean ± σ):      3.052 s ±  0.042 s    [User: 2.904 s, System: 0.146 s]
	  Range (min … max):    3.023 s …  3.082 s    2 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 3.284634041s
	Processing time (w/o IO): 3.281534233s
	Processing time (w/o IO): 3.27074046s
	  Time (mean ± σ):      3.756 s ±  0.025 s    [User: 3.795 s, System: 0.100 s]
	  Range (min … max):    3.738 s …  3.773 s    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1.418944963s
	Processing time (w/o IO): 1.418931873s
	Processing time (w/o IO): 1.422333684s
	  Time (mean ± σ):      1.897 s ±  0.006 s    [User: 6.127 s, System: 0.106 s]
	  Range (min … max):    1.893 s …  1.902 s    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 3.438542588s
	Processing time (w/o IO): 3.435611604s
	Processing time (w/o IO): 3.439727021s
	  Time (mean ± σ):      3.676 s ±  0.017 s    [User: 3.600 s, System: 0.072 s]
	  Range (min … max):    3.664 s …  3.689 s    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 2.736736401s
	Processing time (w/o IO): 2.722988394s
	Processing time (w/o IO): 2.721652179s
	  Time (mean ± σ):      2.954 s ±  0.007 s    [User: 5.576 s, System: 0.087 s]
	  Range (min … max):    2.949 s …  2.959 s    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 4120.46ms
	Processing time (w/o IO): 4111.57ms
	Processing time (w/o IO): 4115.29ms
	  Time (mean ± σ):      5.011 s ±  0.002 s    [User: 4.887 s, System: 0.132 s]
	  Range (min … max):    5.010 s …  5.013 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 215.698s
	Processing time (w/o IO): 214.736s
	  Time (abs ≡):        215.208 s               [User: 215.028 s, System: 0.151 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 8238.719464ms
	Processing time (w/o IO): 8244.431706ms
	Processing time (w/o IO): 8225.268691ms
	  Time (mean ± σ):      8.927 s ±  0.011 s    [User: 8.832 s, System: 0.086 s]
	  Range (min … max):    8.920 s …  8.935 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 3845ms
	Processing time (w/o IO): 3842ms
	Processing time (w/o IO): 3831ms
	  Time (mean ± σ):      4.424 s ±  0.009 s    [User: 4.347 s, System: 0.069 s]
	  Range (min … max):    4.417 s …  4.430 s    2 runs
	 
Julia:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 5039 milliseconds
	Processing time (w/o IO): 5031 milliseconds
	Processing time (w/o IO): 5044 milliseconds
	  Time (mean ± σ):     13.685 s ±  0.048 s    [User: 13.363 s, System: 0.312 s]
	  Range (min … max):   13.651 s … 13.719 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads auto related.jl
	Processing time (w/o IO): 2181 milliseconds
	Processing time (w/o IO): 2175 milliseconds
	Processing time (w/o IO): 2219 milliseconds
	  Time (mean ± σ):      8.106 s ±  0.001 s    [User: 21.967 s, System: 0.278 s]
	  Range (min … max):    8.105 s …  8.106 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  6.039339808s
	Processing time (w/o IO):  6.071461438s
	Processing time (w/o IO):  6.232626558s
	  Time (mean ± σ):      8.533 s ±  0.108 s    [User: 8.448 s, System: 0.075 s]
	  Range (min … max):    8.456 s …  8.609 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 6.663s
	Processing time (w/o IO): 6.660s
	Processing time (w/o IO): 6.662s
	  Time (mean ± σ):     74.972 s ±  0.090 s    [User: 74.570 s, System: 0.387 s]
	  Range (min … max):   74.908 s … 75.036 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 21047ms
	Processing time (w/o IO): 21221ms
	Processing time (w/o IO): 21289ms
	  Time (mean ± σ):     22.714 s ±  0.036 s    [User: 22.918 s, System: 0.243 s]
	  Range (min … max):   22.689 s … 22.739 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 25765ms
	Processing time (w/o IO): 25759ms
	Processing time (w/o IO): 25745ms
	  Time (mean ± σ):     27.231 s ±  0.010 s    [User: 27.202 s, System: 0.127 s]
	  Range (min … max):   27.223 s … 27.238 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 6150.436997413635ms
	Processing time (w/o IO): 6174.723982810974ms
	Processing time (w/o IO): 6164.8759841918945ms
	  Time (mean ± σ):     10.472 s ±  0.046 s    [User: 9.948 s, System: 0.345 s]
	  Range (min … max):   10.440 s … 10.504 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 3426.202772ms
	Processing time (w/o IO): 3420.673954ms
	Processing time (w/o IO): 3415.477335ms
	  Time (mean ± σ):      7.924 s ±  0.035 s    [User: 17.471 s, System: 0.344 s]
	  Range (min … max):    7.899 s …  7.949 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 21293ms
	Processing time (w/o IO): 21802ms
	Processing time (w/o IO): 21543ms
	  Time (mean ± σ):     22.468 s ±  0.173 s    [User: 22.460 s, System: 0.189 s]
	  Range (min … max):   22.345 s … 22.590 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 20088ms
	Processing time (w/o IO): 19979ms
	Processing time (w/o IO): 20319ms
	  Time (mean ± σ):     21.092 s ±  0.373 s    [User: 20.622 s, System: 0.178 s]
	  Range (min … max):   20.828 s … 21.356 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 6867 ms
	Processing time (w/o IO): 6871 ms
	Processing time (w/o IO): 6613 ms
	  Time (mean ± σ):      7.258 s ±  0.157 s    [User: 8.065 s, System: 0.135 s]
	  Range (min … max):    7.147 s …  7.369 s    2 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 4001 ms
	Processing time (w/o IO): 4002 ms
	Processing time (w/o IO): 3995 ms
	  Time (mean ± σ):      4.352 s ±  0.013 s    [User: 4.247 s, System: 0.100 s]
	  Range (min … max):    4.343 s …  4.361 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 5323 ms
	Processing time (w/o IO): 5326 ms
	Processing time (w/o IO): 5329 ms
	  Time (mean ± σ):      5.670 s ±  0.008 s    [User: 14.215 s, System: 0.112 s]
	  Range (min … max):    5.664 s …  5.676 s    2 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 7273ms
	Processing time (w/o IO): 7264ms
	Processing time (w/o IO): 7264ms
	  Time (mean ± σ):      7.611 s ±  0.005 s    [User: 7.503 s, System: 0.099 s]
	  Range (min … max):    7.608 s …  7.615 s    2 runs
	 
F#:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 5434ms
	Processing time (w/o IO): 5427ms
	Processing time (w/o IO): 5428ms
	  Time (mean ± σ):      6.554 s ±  0.007 s    [User: 6.425 s, System: 0.181 s]
	  Range (min … max):    6.549 s …  6.559 s    2 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net7.0/fsharp_con
	Processing time (w/o IO): 2326ms
	Processing time (w/o IO): 2332ms
	Processing time (w/o IO): 2331ms
	  Time (mean ± σ):      8.939 s ±  0.043 s    [User: 15.762 s, System: 0.383 s]
	  Range (min … max):    8.909 s …  8.970 s    2 runs
	 
C#:

	Benchmark 1: ./bin/release/net7.0/publish/related
	Processing time (w/o IO): 8658.3027ms
	Processing time (w/o IO): 8675.4876ms
	Processing time (w/o IO): 8659.6709ms
	  Time (mean ± σ):      9.256 s ±  0.002 s    [User: 9.278 s, System: 0.165 s]
	  Range (min … max):    9.254 s …  9.257 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	12073.385953903	ms
	Processing time (w/o IO):	13140.126943588	ms
	Processing time (w/o IO):	12004.830121994	ms
	  Time (mean ± σ):     16.783 s ±  0.839 s    [User: 16.572 s, System: 0.201 s]
	  Range (min … max):   16.190 s … 17.376 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	150189.89706039	ms
	Processing time (w/o IO):	150179.62121964	ms
	  Time (abs ≡):        156.642 s               [User: 156.396 s, System: 0.228 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 34253ms
	Processing time (w/o IO): 34189ms
	Processing time (w/o IO): 34499ms
	  Time (mean ± σ):     35.861 s ±  0.204 s    [User: 35.016 s, System: 0.835 s]
	  Range (min … max):   35.717 s … 36.005 s    2 runs
	 
