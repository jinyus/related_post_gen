Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 30.314997ms
	Processing time (w/o IO): 30.103296ms
	Processing time (w/o IO): 30.284297ms
	Processing time (w/o IO): 29.860394ms
	Processing time (w/o IO): 30.188896ms
	Processing time (w/o IO): 30.075496ms
	Processing time (w/o IO): 30.566199ms
	Processing time (w/o IO): 30.002695ms
	Processing time (w/o IO): 30.040895ms
	Processing time (w/o IO): 30.119796ms
	Processing time (w/o IO): 29.847894ms
	Processing time (w/o IO): 30.532399ms
	Processing time (w/o IO): 34.003021ms
	Processing time (w/o IO): 30.8296ms
	Processing time (w/o IO): 30.509598ms
	  Time (mean ± σ):      60.0 ms ±   5.7 ms    [User: 56.4 ms, System: 8.3 ms]
	  Range (min … max):    56.5 ms …  75.0 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 21.715141ms
	Processing time (w/o IO): 22.115844ms
	Processing time (w/o IO): 22.186744ms
	Processing time (w/o IO): 22.079944ms
	Processing time (w/o IO): 21.940427ms
	Processing time (w/o IO): 21.977924ms
	Processing time (w/o IO): 21.725223ms
	Processing time (w/o IO): 21.858824ms
	Processing time (w/o IO): 21.729324ms
	Processing time (w/o IO): 21.860223ms
	Processing time (w/o IO): 21.933424ms
	Processing time (w/o IO): 21.903123ms
	Processing time (w/o IO): 21.943524ms
	Processing time (w/o IO): 22.020624ms
	Processing time (w/o IO): 22.130024ms
	  Time (mean ± σ):      49.9 ms ±   0.6 ms    [User: 65.6 ms, System: 12.0 ms]
	  Range (min … max):    48.9 ms …  51.1 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 36.182227ms
	Processing time (w/o IO): 36.007427ms
	Processing time (w/o IO): 36.143727ms
	Processing time (w/o IO): 35.950526ms
	Processing time (w/o IO): 35.991027ms
	Processing time (w/o IO): 35.902226ms
	Processing time (w/o IO): 36.019227ms
	Processing time (w/o IO): 35.972526ms
	Processing time (w/o IO): 36.097427ms
	Processing time (w/o IO): 36.099727ms
	Processing time (w/o IO): 35.916726ms
	Processing time (w/o IO): 36.453127ms
	Processing time (w/o IO): 35.996426ms
	Processing time (w/o IO): 36.293527ms
	Processing time (w/o IO): 35.925527ms
	  Time (mean ± σ):      51.9 ms ±   0.4 ms    [User: 47.0 ms, System: 4.9 ms]
	  Range (min … max):    51.2 ms …  52.6 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 16.12193ms
	Processing time (w/o IO): 15.473629ms
	Processing time (w/o IO): 15.510628ms
	Processing time (w/o IO): 15.764828ms
	Processing time (w/o IO): 15.412728ms
	Processing time (w/o IO): 15.770129ms
	Processing time (w/o IO): 15.271628ms
	Processing time (w/o IO): 15.298028ms
	Processing time (w/o IO): 16.196529ms
	Processing time (w/o IO): 15.712928ms
	Processing time (w/o IO): 15.929729ms
	Processing time (w/o IO): 15.538228ms
	Processing time (w/o IO): 15.461228ms
	Processing time (w/o IO): 15.427329ms
	Processing time (w/o IO): 21.517139ms
	  Time (mean ± σ):      32.9 ms ±   2.0 ms    [User: 37.7 ms, System: 8.6 ms]
	  Range (min … max):    31.7 ms …  38.3 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 1.747s
	Processing time (w/o IO): 1.696s
	Processing time (w/o IO): 1.708s
	Processing time (w/o IO): 1.684s
	Processing time (w/o IO): 1.700s
	Processing time (w/o IO): 1.682s
	Processing time (w/o IO): 1.689s
	Processing time (w/o IO): 1.692s
	Processing time (w/o IO): 1.687s
	Processing time (w/o IO): 1.689s
	Processing time (w/o IO): 1.683s
	Processing time (w/o IO): 1.700s
	Processing time (w/o IO): 1.682s
	  Time (mean ± σ):      1.758 s ±  0.007 s    [User: 1.745 s, System: 0.013 s]
	  Range (min … max):    1.751 s …  1.769 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 393.8ms
	Processing time (w/o IO): 393.4ms
	Processing time (w/o IO): 371.3ms
	Processing time (w/o IO): 378.3ms
	Processing time (w/o IO): 360.6ms
	Processing time (w/o IO): 360.4ms
	Processing time (w/o IO): 360.9ms
	Processing time (w/o IO): 361.6ms
	Processing time (w/o IO): 361.6ms
	Processing time (w/o IO): 361.7ms
	Processing time (w/o IO): 359.9ms
	Processing time (w/o IO): 359.8ms
	Processing time (w/o IO): 362.1ms
	  Time (mean ± σ):     567.9 ms ±   5.8 ms    [User: 609.1 ms, System: 146.1 ms]
	  Range (min … max):   562.6 ms … 583.2 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 58.157135ms
	Processing time (w/o IO): 58.704036ms
	Processing time (w/o IO): 58.088935ms
	Processing time (w/o IO): 58.026436ms
	Processing time (w/o IO): 58.062635ms
	Processing time (w/o IO): 58.141236ms
	Processing time (w/o IO): 57.808736ms
	Processing time (w/o IO): 57.985536ms
	Processing time (w/o IO): 59.684337ms
	Processing time (w/o IO): 58.698736ms
	Processing time (w/o IO): 58.120135ms
	Processing time (w/o IO): 58.070836ms
	Processing time (w/o IO): 58.915336ms
	Processing time (w/o IO): 59.609936ms
	Processing time (w/o IO): 58.212135ms
	  Time (mean ± σ):     105.1 ms ±   1.4 ms    [User: 96.0 ms, System: 8.9 ms]
	  Range (min … max):   103.2 ms … 107.8 ms    10 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 31ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 30ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 30ms
	Processing time (w/o IO): 29ms
	Processing time (w/o IO): 29ms
	  Time (mean ± σ):      57.7 ms ±   0.7 ms    [User: 50.2 ms, System: 6.8 ms]
	  Range (min … max):    56.8 ms …  58.9 ms    10 runs
	 
Julia:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 32 milliseconds
	Processing time (w/o IO): 33 milliseconds
	Processing time (w/o IO): 32 milliseconds
	Processing time (w/o IO): 33 milliseconds
	Processing time (w/o IO): 33 milliseconds
	Processing time (w/o IO): 32 milliseconds
	Processing time (w/o IO): 33 milliseconds
	Processing time (w/o IO): 33 milliseconds
	Processing time (w/o IO): 33 milliseconds
	Processing time (w/o IO): 33 milliseconds
	Processing time (w/o IO): 33 milliseconds
	Processing time (w/o IO): 33 milliseconds
	Processing time (w/o IO): 33 milliseconds
	Processing time (w/o IO): 33 milliseconds
	Processing time (w/o IO): 33 milliseconds
	  Time (mean ± σ):      3.196 s ±  0.011 s    [User: 3.042 s, System: 0.152 s]
	  Range (min … max):    3.178 s …  3.218 s    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  55.472854ms
	Processing time (w/o IO):  54.577655ms
	Processing time (w/o IO):  54.386254ms
	Processing time (w/o IO):  54.618247ms
	Processing time (w/o IO):  54.173647ms
	Processing time (w/o IO):  55.240747ms
	Processing time (w/o IO):  54.178047ms
	Processing time (w/o IO):  54.406247ms
	Processing time (w/o IO):  54.522447ms
	Processing time (w/o IO):  54.281446ms
	Processing time (w/o IO):  54.505847ms
	Processing time (w/o IO):  54.820031ms
	Processing time (w/o IO):  54.307593ms
	Processing time (w/o IO):  54.145393ms
	Processing time (w/o IO):  54.187493ms
	  Time (mean ± σ):     336.9 ms ±   1.0 ms    [User: 328.7 ms, System: 8.2 ms]
	  Range (min … max):   335.5 ms … 338.4 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 46.435ms
	Processing time (w/o IO): 45.847ms
	Processing time (w/o IO): 46.132ms
	Processing time (w/o IO): 46.338ms
	Processing time (w/o IO): 45.997ms
	Processing time (w/o IO): 46.054ms
	Processing time (w/o IO): 45.778ms
	Processing time (w/o IO): 46.188ms
	Processing time (w/o IO): 45.752ms
	Processing time (w/o IO): 46.718ms
	Processing time (w/o IO): 46.128ms
	Processing time (w/o IO): 46.118ms
	Processing time (w/o IO): 46.225ms
	Processing time (w/o IO): 45.877ms
	Processing time (w/o IO): 45.848ms
	  Time (mean ± σ):     340.5 ms ±   2.6 ms    [User: 314.6 ms, System: 25.3 ms]
	  Range (min … max):   334.1 ms … 343.8 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 75ms
	Processing time (w/o IO): 76ms
	Processing time (w/o IO): 78ms
	Processing time (w/o IO): 79ms
	Processing time (w/o IO): 76ms
	Processing time (w/o IO): 75ms
	Processing time (w/o IO): 75ms
	Processing time (w/o IO): 75ms
	Processing time (w/o IO): 80ms
	Processing time (w/o IO): 78ms
	Processing time (w/o IO): 78ms
	Processing time (w/o IO): 80ms
	Processing time (w/o IO): 78ms
	  Time (mean ± σ):     509.6 ms ±  13.5 ms    [User: 571.8 ms, System: 131.4 ms]
	  Range (min … max):   499.1 ms … 542.4 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 118ms
	Processing time (w/o IO): 116ms
	Processing time (w/o IO): 115ms
	Processing time (w/o IO): 115ms
	Processing time (w/o IO): 114ms
	Processing time (w/o IO): 115ms
	Processing time (w/o IO): 116ms
	Processing time (w/o IO): 116ms
	Processing time (w/o IO): 116ms
	Processing time (w/o IO): 115ms
	Processing time (w/o IO): 116ms
	Processing time (w/o IO): 118ms
	Processing time (w/o IO): 118ms
	  Time (mean ± σ):     242.4 ms ±   2.2 ms    [User: 226.0 ms, System: 20.3 ms]
	  Range (min … max):   239.4 ms … 245.8 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 49.19791221618652ms
	Processing time (w/o IO): 48.507094383239746ms
	Processing time (w/o IO): 49.005985260009766ms
	Processing time (w/o IO): 49.04806613922119ms
	Processing time (w/o IO): 48.82705211639404ms
	Processing time (w/o IO): 48.870086669921875ms
	Processing time (w/o IO): 49.11303520202637ms
	Processing time (w/o IO): 49.33500289916992ms
	Processing time (w/o IO): 48.49898815155029ms
	Processing time (w/o IO): 49.28910732269287ms
	Processing time (w/o IO): 60.851097106933594ms
	Processing time (w/o IO): 48.590898513793945ms
	Processing time (w/o IO): 48.76399040222168ms
	Processing time (w/o IO): 49.118995666503906ms
	Processing time (w/o IO): 49.13794994354248ms
	  Time (mean ± σ):     407.0 ms ±   4.2 ms    [User: 371.5 ms, System: 31.6 ms]
	  Range (min … max):   403.7 ms … 418.3 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 30.246634ms
	Processing time (w/o IO): 30.363633ms
	Processing time (w/o IO): 53.358358ms
	Processing time (w/o IO): 29.835133ms
	Processing time (w/o IO): 30.207233ms
	Processing time (w/o IO): 30.328933ms
	Processing time (w/o IO): 30.099233ms
	Processing time (w/o IO): 30.395833ms
	Processing time (w/o IO): 30.703734ms
	Processing time (w/o IO): 30.221833ms
	Processing time (w/o IO): 30.046933ms
	Processing time (w/o IO): 30.067433ms
	Processing time (w/o IO): 29.847633ms
	Processing time (w/o IO): 30.511734ms
	Processing time (w/o IO): 30.418433ms
	  Time (mean ± σ):     391.5 ms ±   2.2 ms    [User: 380.2 ms, System: 35.2 ms]
	  Range (min … max):   388.5 ms … 395.2 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 159ms
	Processing time (w/o IO): 152ms
	Processing time (w/o IO): 153ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 152ms
	Processing time (w/o IO): 152ms
	Processing time (w/o IO): 153ms
	Processing time (w/o IO): 154ms
	Processing time (w/o IO): 160ms
	Processing time (w/o IO): 152ms
	Processing time (w/o IO): 151ms
	Processing time (w/o IO): 154ms
	Processing time (w/o IO): 153ms
	  Time (mean ± σ):     251.8 ms ±   8.2 ms    [User: 224.0 ms, System: 63.0 ms]
	  Range (min … max):   245.5 ms … 270.0 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 553ms
	Processing time (w/o IO): 695ms
	Processing time (w/o IO): 544ms
	Processing time (w/o IO): 539ms
	Processing time (w/o IO): 541ms
	Processing time (w/o IO): 546ms
	Processing time (w/o IO): 544ms
	Processing time (w/o IO): 549ms
	Processing time (w/o IO): 554ms
	Processing time (w/o IO): 557ms
	Processing time (w/o IO): 545ms
	Processing time (w/o IO): 557ms
	Processing time (w/o IO): 550ms
	  Time (mean ± σ):     602.3 ms ±   6.0 ms    [User: 620.6 ms, System: 27.7 ms]
	  Range (min … max):   594.9 ms … 613.2 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 170ms
	Processing time (w/o IO): 167ms
	Processing time (w/o IO): 168ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 175ms
	Processing time (w/o IO): 168ms
	Processing time (w/o IO): 167ms
	Processing time (w/o IO): 167ms
	Processing time (w/o IO): 167ms
	Processing time (w/o IO): 168ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 168ms
	  Time (mean ± σ):     238.0 ms ±   3.0 ms    [User: 232.1 ms, System: 24.8 ms]
	  Range (min … max):   235.6 ms … 245.9 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -Xms10m -Xmx10m -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 242 ms
	Processing time (w/o IO): 240 ms
	Processing time (w/o IO): 246 ms
	Processing time (w/o IO): 240 ms
	Processing time (w/o IO): 240 ms
	Processing time (w/o IO): 313 ms
	Processing time (w/o IO): 235 ms
	Processing time (w/o IO): 242 ms
	Processing time (w/o IO): 234 ms
	Processing time (w/o IO): 229 ms
	Processing time (w/o IO): 222 ms
	Processing time (w/o IO): 235 ms
	Processing time (w/o IO): 222 ms
	  Time (mean ± σ):     509.0 ms ±  38.4 ms    [User: 854.0 ms, System: 53.9 ms]
	  Range (min … max):   487.7 ms … 615.7 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
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
	  Time (mean ± σ):      61.8 ms ±   0.4 ms    [User: 53.5 ms, System: 8.4 ms]
	  Range (min … max):    61.2 ms …  62.4 ms    10 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	  Time (mean ± σ):      56.7 ms ±   0.4 ms    [User: 47.8 ms, System: 8.7 ms]
	  Range (min … max):    56.2 ms …  57.4 ms    10 runs
	 
F#:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 56ms
	Processing time (w/o IO): 56ms
	Processing time (w/o IO): 56ms
	Processing time (w/o IO): 56ms
	Processing time (w/o IO): 56ms
	Processing time (w/o IO): 56ms
	Processing time (w/o IO): 56ms
	Processing time (w/o IO): 56ms
	Processing time (w/o IO): 56ms
	Processing time (w/o IO): 56ms
	Processing time (w/o IO): 56ms
	Processing time (w/o IO): 56ms
	Processing time (w/o IO): 56ms
	Processing time (w/o IO): 56ms
	Processing time (w/o IO): 56ms
	  Time (mean ± σ):     296.2 ms ±   3.4 ms    [User: 243.5 ms, System: 38.1 ms]
	  Range (min … max):   292.2 ms … 301.2 ms    10 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net7.0/fsharp_con
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	  Time (mean ± σ):     781.7 ms ±   3.9 ms    [User: 742.2 ms, System: 58.2 ms]
	  Range (min … max):   774.9 ms … 788.9 ms    10 runs
	 
C#:

	Benchmark 1: ./bin/release/net7.0/publish/related
	Processing time (w/o IO): 56.0328ms
	Processing time (w/o IO): 55.6481ms
	Processing time (w/o IO): 58.4725ms
	Processing time (w/o IO): 55.914ms
	Processing time (w/o IO): 56.4524ms
	Processing time (w/o IO): 55.9634ms
	Processing time (w/o IO): 57.2098ms
	Processing time (w/o IO): 55.7569ms
	Processing time (w/o IO): 55.931ms
	Processing time (w/o IO): 55.6684ms
	Processing time (w/o IO): 55.6402ms
	Processing time (w/o IO): 59.1516ms
	Processing time (w/o IO): 56.2324ms
	Processing time (w/o IO): 55.6654ms
	Processing time (w/o IO): 56.0537ms
	  Time (mean ± σ):     109.5 ms ±   1.3 ms    [User: 100.7 ms, System: 18.5 ms]
	  Range (min … max):   108.3 ms … 112.7 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	101.71484947205	ms
	Processing time (w/o IO):	101.26113891602	ms
	Processing time (w/o IO):	103.84702682495	ms
	Processing time (w/o IO):	101.12404823303	ms
	Processing time (w/o IO):	101.23014450073	ms
	Processing time (w/o IO):	101.40109062195	ms
	Processing time (w/o IO):	101.10878944397	ms
	Processing time (w/o IO):	101.20391845703	ms
	Processing time (w/o IO):	101.10306739807	ms
	Processing time (w/o IO):	101.71103477478	ms
	Processing time (w/o IO):	101.33504867554	ms
	Processing time (w/o IO):	101.55892372131	ms
	Processing time (w/o IO):	101.26709938049	ms
	Processing time (w/o IO):	101.48811340332	ms
	Processing time (w/o IO):	101.2270450592	ms
	  Time (mean ± σ):     347.8 ms ±   1.2 ms    [User: 327.8 ms, System: 19.9 ms]
	  Range (min … max):   346.3 ms … 349.8 ms    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1935.1079463959	ms
	Processing time (w/o IO):	1946.9549655914	ms
	Processing time (w/o IO):	1947.4999904633	ms
	Processing time (w/o IO):	1936.8751049042	ms
	Processing time (w/o IO):	1941.5550231934	ms
	Processing time (w/o IO):	1932.5020313263	ms
	Processing time (w/o IO):	1938.0948543549	ms
	Processing time (w/o IO):	1956.848859787	ms
	Processing time (w/o IO):	1949.5959281921	ms
	Processing time (w/o IO):	1940.4089450836	ms
	Processing time (w/o IO):	1931.6849708557	ms
	Processing time (w/o IO):	1965.5768871307	ms
	  Time (mean ± σ):      2.514 s ±  0.013 s    [User: 2.484 s, System: 0.027 s]
	  Range (min … max):    2.497 s …  2.535 s    10 runs
	 
