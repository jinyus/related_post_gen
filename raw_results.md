Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 24.243311ms
	Processing time (w/o IO): 24.529919ms
	Processing time (w/o IO): 24.930931ms
	Processing time (w/o IO): 28.264529ms
	Processing time (w/o IO): 30.540595ms
	Processing time (w/o IO): 24.067206ms
	Processing time (w/o IO): 25.181939ms
	Processing time (w/o IO): 24.688824ms
	Processing time (w/o IO): 24.586321ms
	Processing time (w/o IO): 24.722325ms
	Processing time (w/o IO): 24.181509ms
	Processing time (w/o IO): 24.242511ms
	Processing time (w/o IO): 24.228111ms
	  Time (mean ± σ):      67.7 ms ±   4.4 ms    [User: 62.5 ms, System: 9.9 ms]
	  Range (min … max):    63.3 ms …  76.5 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 14.231917ms
	Processing time (w/o IO): 12.696672ms
	Processing time (w/o IO): 15.593358ms
	Processing time (w/o IO): 13.688302ms
	Processing time (w/o IO): 13.712102ms
	Processing time (w/o IO): 13.371192ms
	Processing time (w/o IO): 13.024582ms
	Processing time (w/o IO): 14.461024ms
	Processing time (w/o IO): 13.364692ms
	Processing time (w/o IO): 15.082743ms
	Processing time (w/o IO): 13.356592ms
	Processing time (w/o IO): 12.831676ms
	Processing time (w/o IO): 14.722532ms
	  Time (mean ± σ):      54.4 ms ±   2.2 ms    [User: 86.3 ms, System: 9.6 ms]
	  Range (min … max):    51.8 ms …  58.5 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 23.847603ms
	Processing time (w/o IO): 23.738201ms
	Processing time (w/o IO): 23.766001ms
	Processing time (w/o IO): 23.774502ms
	Processing time (w/o IO): 24.09631ms
	Processing time (w/o IO): 24.167712ms
	Processing time (w/o IO): 23.786602ms
	Processing time (w/o IO): 23.668199ms
	Processing time (w/o IO): 24.191012ms
	Processing time (w/o IO): 23.776902ms
	Processing time (w/o IO): 24.12331ms
	Processing time (w/o IO): 23.774802ms
	Processing time (w/o IO): 23.72ms
	  Time (mean ± σ):      42.0 ms ±   1.1 ms    [User: 35.5 ms, System: 6.5 ms]
	  Range (min … max):    40.6 ms …  43.9 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 22.602075ms
	Processing time (w/o IO): 20.497022ms
	Processing time (w/o IO): 21.478646ms
	Processing time (w/o IO): 21.62325ms
	Processing time (w/o IO): 21.240141ms
	Processing time (w/o IO): 21.095637ms
	Processing time (w/o IO): 21.973059ms
	Processing time (w/o IO): 21.129937ms
	Processing time (w/o IO): 21.173938ms
	Processing time (w/o IO): 21.165439ms
	Processing time (w/o IO): 34.709483ms
	Processing time (w/o IO): 22.209065ms
	Processing time (w/o IO): 21.262641ms
	  Time (mean ± σ):      43.1 ms ±   4.7 ms    [User: 52.1 ms, System: 11.9 ms]
	  Range (min … max):    40.4 ms …  56.2 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 1.478s
	Processing time (w/o IO): 1.461s
	Processing time (w/o IO): 1.460s
	Processing time (w/o IO): 1.462s
	Processing time (w/o IO): 1.474s
	Processing time (w/o IO): 1.462s
	Processing time (w/o IO): 1.465s
	Processing time (w/o IO): 1.462s
	Processing time (w/o IO): 1.463s
	Processing time (w/o IO): 1.465s
	Processing time (w/o IO): 1.470s
	Processing time (w/o IO): 1.464s
	Processing time (w/o IO): 1.461s
	  Time (mean ± σ):      1.536 s ±  0.005 s    [User: 1.519 s, System: 0.016 s]
	  Range (min … max):    1.531 s …  1.547 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 351.5ms
	Processing time (w/o IO): 356.7ms
	Processing time (w/o IO): 353.2ms
	Processing time (w/o IO): 356.4ms
	Processing time (w/o IO): 353.4ms
	Processing time (w/o IO): 355.5ms
	Processing time (w/o IO): 354.8ms
	Processing time (w/o IO): 357.3ms
	Processing time (w/o IO): 358.3ms
	Processing time (w/o IO): 353.9ms
	Processing time (w/o IO): 352.5ms
	Processing time (w/o IO): 352.4ms
	Processing time (w/o IO): 354.2ms
	  Time (mean ± σ):     683.1 ms ±  77.1 ms    [User: 870.9 ms, System: 399.0 ms]
	  Range (min … max):   647.7 ms … 898.5 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 60.632627ms
	Processing time (w/o IO): 60.682028ms
	Processing time (w/o IO): 60.679528ms
	Processing time (w/o IO): 60.610326ms
	Processing time (w/o IO): 60.634427ms
	Processing time (w/o IO): 61.013336ms
	Processing time (w/o IO): 60.843331ms
	Processing time (w/o IO): 60.485523ms
	Processing time (w/o IO): 62.761577ms
	Processing time (w/o IO): 63.821901ms
	Processing time (w/o IO): 71.204875ms
	Processing time (w/o IO): 60.50852ms
	Processing time (w/o IO): 70.561155ms
	  Time (mean ± σ):     123.0 ms ±   9.5 ms    [User: 111.0 ms, System: 11.9 ms]
	  Range (min … max):   114.6 ms … 140.3 ms    10 runs
	 
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
	  Time (mean ± σ):      77.8 ms ±   0.1 ms    [User: 70.6 ms, System: 7.2 ms]
	  Range (min … max):    77.6 ms …  78.1 ms    10 runs
	 
Julia:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 23 milliseconds
	Processing time (w/o IO): 23 milliseconds
	Processing time (w/o IO): 23 milliseconds
	Processing time (w/o IO): 23 milliseconds
	Processing time (w/o IO): 23 milliseconds
	Processing time (w/o IO): 23 milliseconds
	Processing time (w/o IO): 23 milliseconds
	Processing time (w/o IO): 23 milliseconds
	Processing time (w/o IO): 23 milliseconds
	Processing time (w/o IO): 23 milliseconds
	Processing time (w/o IO): 23 milliseconds
	Processing time (w/o IO): 23 milliseconds
	Processing time (w/o IO): 24 milliseconds
	  Time (mean ± σ):      3.372 s ±  0.040 s    [User: 3.183 s, System: 0.189 s]
	  Range (min … max):    3.330 s …  3.447 s    10 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads auto related.jl
	Processing time (w/o IO): 12 milliseconds
	Processing time (w/o IO): 12 milliseconds
	Processing time (w/o IO): 12 milliseconds
	Processing time (w/o IO): 15 milliseconds
	Processing time (w/o IO): 12 milliseconds
	Processing time (w/o IO): 12 milliseconds
	Processing time (w/o IO): 11 milliseconds
	Processing time (w/o IO): 11 milliseconds
	Processing time (w/o IO): 12 milliseconds
	Processing time (w/o IO): 12 milliseconds
	Processing time (w/o IO): 12 milliseconds
	Processing time (w/o IO): 15 milliseconds
	Processing time (w/o IO): 15 milliseconds
	  Time (mean ± σ):      3.541 s ±  0.048 s    [User: 4.997 s, System: 0.196 s]
	  Range (min … max):    3.461 s …  3.646 s    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  53.186666ms
	Processing time (w/o IO):  48.105883ms
	Processing time (w/o IO):  48.294486ms
	Processing time (w/o IO):  48.49879ms
	Processing time (w/o IO):  51.306435ms
	Processing time (w/o IO):  48.397688ms
	Processing time (w/o IO):  48.168484ms
	Processing time (w/o IO):  48.265786ms
	Processing time (w/o IO):  48.485889ms
	Processing time (w/o IO):  48.130484ms
	Processing time (w/o IO):  48.331487ms
	Processing time (w/o IO):  48.006982ms
	Processing time (w/o IO):  48.238185ms
	  Time (mean ± σ):     270.0 ms ±   8.3 ms    [User: 261.5 ms, System: 8.4 ms]
	  Range (min … max):   265.1 ms … 292.5 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 52.649ms
	Processing time (w/o IO): 52.327ms
	Processing time (w/o IO): 52.331ms
	Processing time (w/o IO): 52.305ms
	Processing time (w/o IO): 51.923ms
	Processing time (w/o IO): 52.243ms
	Processing time (w/o IO): 52.159ms
	Processing time (w/o IO): 52.659ms
	Processing time (w/o IO): 52.157ms
	Processing time (w/o IO): 52.187ms
	Processing time (w/o IO): 52.266ms
	Processing time (w/o IO): 51.991ms
	Processing time (w/o IO): 52.384ms
	  Time (mean ± σ):     386.6 ms ±   1.5 ms    [User: 362.8 ms, System: 23.7 ms]
	  Range (min … max):   384.2 ms … 388.9 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 159ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 133ms
	Processing time (w/o IO): 144ms
	Processing time (w/o IO): 132ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 132ms
	  Time (mean ± σ):     523.6 ms ±  16.7 ms    [User: 645.7 ms, System: 104.5 ms]
	  Range (min … max):   508.4 ms … 556.4 ms    10 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 187ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 187ms
	Processing time (w/o IO): 187ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 186ms
	Processing time (w/o IO): 188ms
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 186ms
	  Time (mean ± σ):     314.9 ms ±   1.7 ms    [User: 301.9 ms, System: 17.4 ms]
	  Range (min … max):   312.8 ms … 317.6 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 57.717084884643555ms
	Processing time (w/o IO): 56.951045989990234ms
	Processing time (w/o IO): 55.22000789642334ms
	Processing time (w/o IO): 51.97799205780029ms
	Processing time (w/o IO): 51.986098289489746ms
	Processing time (w/o IO): 52.31499671936035ms
	Processing time (w/o IO): 52.16097831726074ms
	Processing time (w/o IO): 52.114009857177734ms
	Processing time (w/o IO): 52.15489864349365ms
	Processing time (w/o IO): 51.99599266052246ms
	Processing time (w/o IO): 52.186012268066406ms
	Processing time (w/o IO): 51.93197727203369ms
	Processing time (w/o IO): 52.13606357574463ms
	  Time (mean ± σ):     413.0 ms ±   4.6 ms    [User: 354.4 ms, System: 40.2 ms]
	  Range (min … max):   406.2 ms … 418.1 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 31.537549ms
	Processing time (w/o IO): 40.546007ms
	Processing time (w/o IO): 32.928874ms
	Processing time (w/o IO): 31.887456ms
	Processing time (w/o IO): 31.404848ms
	Processing time (w/o IO): 31.56395ms
	Processing time (w/o IO): 32.052959ms
	Processing time (w/o IO): 31.851155ms
	Processing time (w/o IO): 32.004996ms
	Processing time (w/o IO): 32.314601ms
	Processing time (w/o IO): 32.335302ms
	Processing time (w/o IO): 31.798893ms
	Processing time (w/o IO): 32.605305ms
	  Time (mean ± σ):     409.1 ms ±  46.7 ms    [User: 421.6 ms, System: 43.4 ms]
	  Range (min … max):   390.8 ms … 541.7 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 187ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 182ms
	Processing time (w/o IO): 183ms
	Processing time (w/o IO): 202ms
	Processing time (w/o IO): 182ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 179ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 176ms
	  Time (mean ± σ):     363.6 ms ±  15.3 ms    [User: 370.8 ms, System: 59.7 ms]
	  Range (min … max):   352.0 ms … 402.3 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 738ms
	Processing time (w/o IO): 603ms
	Processing time (w/o IO): 664ms
	Processing time (w/o IO): 802ms
	Processing time (w/o IO): 755ms
	Processing time (w/o IO): 764ms
	Processing time (w/o IO): 727ms
	Processing time (w/o IO): 741ms
	Processing time (w/o IO): 755ms
	Processing time (w/o IO): 773ms
	Processing time (w/o IO): 710ms
	Processing time (w/o IO): 745ms
	Processing time (w/o IO): 720ms
	  Time (mean ± σ):     806.3 ms ±  28.3 ms    [User: 834.8 ms, System: 32.4 ms]
	  Range (min … max):   767.9 ms … 865.5 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 193ms
	Processing time (w/o IO): 215ms
	Processing time (w/o IO): 209ms
	Processing time (w/o IO): 215ms
	Processing time (w/o IO): 199ms
	Processing time (w/o IO): 198ms
	Processing time (w/o IO): 192ms
	Processing time (w/o IO): 198ms
	Processing time (w/o IO): 199ms
	Processing time (w/o IO): 196ms
	Processing time (w/o IO): 199ms
	Processing time (w/o IO): 196ms
	Processing time (w/o IO): 193ms
	  Time (mean ± σ):     266.0 ms ±   8.2 ms    [User: 259.4 ms, System: 31.0 ms]
	  Range (min … max):   257.4 ms … 287.0 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 114 ms
	Processing time (w/o IO): 126 ms
	Processing time (w/o IO): 116 ms
	Processing time (w/o IO): 108 ms
	Processing time (w/o IO): 105 ms
	Processing time (w/o IO): 110 ms
	Processing time (w/o IO): 114 ms
	Processing time (w/o IO): 114 ms
	Processing time (w/o IO): 104 ms
	Processing time (w/o IO): 113 ms
	Processing time (w/o IO): 104 ms
	Processing time (w/o IO): 112 ms
	Processing time (w/o IO): 118 ms
	  Time (mean ± σ):     343.2 ms ±   5.2 ms    [User: 644.3 ms, System: 52.1 ms]
	  Range (min … max):   336.0 ms … 349.6 ms    10 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 46 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 38 ms
	Processing time (w/o IO): 38 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 38 ms
	Processing time (w/o IO): 40 ms
	Processing time (w/o IO): 39 ms
	Processing time (w/o IO): 38 ms
	Processing time (w/o IO): 38 ms
	Processing time (w/o IO): 41 ms
	  Time (mean ± σ):      71.8 ms ±   1.6 ms    [User: 59.9 ms, System: 12.1 ms]
	  Range (min … max):    69.9 ms …  75.2 ms    10 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 47 ms
	Processing time (w/o IO): 49 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 48 ms
	Processing time (w/o IO): 50 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 45 ms
	Processing time (w/o IO): 48 ms
	Processing time (w/o IO): 46 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 51 ms
	Processing time (w/o IO): 51 ms
	  Time (mean ± σ):      79.4 ms ±   2.7 ms    [User: 141.1 ms, System: 13.1 ms]
	  Range (min … max):    75.3 ms …  82.9 ms    10 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 31ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 31ms
	Processing time (w/o IO): 32ms
	Processing time (w/o IO): 31ms
	Processing time (w/o IO): 31ms
	Processing time (w/o IO): 31ms
	  Time (mean ± σ):      58.6 ms ±   0.5 ms    [User: 47.5 ms, System: 11.1 ms]
	  Range (min … max):    58.1 ms …  59.6 ms    10 runs
	 
F#:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 39ms
	Processing time (w/o IO): 38ms
	Processing time (w/o IO): 39ms
	  Time (mean ± σ):     292.5 ms ±   5.6 ms    [User: 240.2 ms, System: 33.4 ms]
	  Range (min … max):   285.5 ms … 303.2 ms    10 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net7.0/fsharp_con
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 41ms
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 35ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 36ms
	Processing time (w/o IO): 37ms
	  Time (mean ± σ):     854.7 ms ±  24.4 ms    [User: 863.9 ms, System: 68.7 ms]
	  Range (min … max):   829.4 ms … 902.6 ms    10 runs
	 
C#:

	Benchmark 1: ./bin/release/net7.0/publish/related
	Processing time (w/o IO): 45.3548ms
	Processing time (w/o IO): 45.076ms
	Processing time (w/o IO): 44.9298ms
	Processing time (w/o IO): 45.2503ms
	Processing time (w/o IO): 45.0079ms
	Processing time (w/o IO): 45.6714ms
	Processing time (w/o IO): 45.3273ms
	Processing time (w/o IO): 45.4404ms
	Processing time (w/o IO): 45.2464ms
	Processing time (w/o IO): 49.7079ms
	Processing time (w/o IO): 64.5391ms
	Processing time (w/o IO): 46.5445ms
	Processing time (w/o IO): 55.5641ms
	  Time (mean ± σ):      98.3 ms ±   8.3 ms    [User: 91.2 ms, System: 17.4 ms]
	  Range (min … max):    91.1 ms … 111.9 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	136.31987571716	ms
	Processing time (w/o IO):	111.21797561646	ms
	Processing time (w/o IO):	109.24601554871	ms
	Processing time (w/o IO):	114.18890953064	ms
	Processing time (w/o IO):	107.06901550293	ms
	Processing time (w/o IO):	108.46185684204	ms
	Processing time (w/o IO):	115.80395698547	ms
	Processing time (w/o IO):	90.844869613647	ms
	Processing time (w/o IO):	116.41788482666	ms
	Processing time (w/o IO):	113.79408836365	ms
	Processing time (w/o IO):	117.91110038757	ms
	Processing time (w/o IO):	117.50984191895	ms
	Processing time (w/o IO):	93.410015106201	ms
	  Time (mean ± σ):     364.7 ms ±  14.1 ms    [User: 348.2 ms, System: 16.4 ms]
	  Range (min … max):   335.7 ms … 381.1 ms    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1104.2561531067	ms
	Processing time (w/o IO):	1091.8939113617	ms
	Processing time (w/o IO):	1116.3969039917	ms
	Processing time (w/o IO):	1091.6249752045	ms
	Processing time (w/o IO):	1091.0661220551	ms
	Processing time (w/o IO):	1090.3940200806	ms
	Processing time (w/o IO):	1090.7130241394	ms
	Processing time (w/o IO):	1090.0778770447	ms
	Processing time (w/o IO):	1104.2640209198	ms
	Processing time (w/o IO):	1099.7080802917	ms
	Processing time (w/o IO):	1094.5711135864	ms
	Processing time (w/o IO):	1091.7308330536	ms
	Processing time (w/o IO):	1090.77501297	ms
	  Time (mean ± σ):      1.547 s ±  0.019 s    [User: 1.527 s, System: 0.019 s]
	  Range (min … max):    1.527 s …  1.583 s    10 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 154ms
	Processing time (w/o IO): 152ms
	Processing time (w/o IO): 149ms
	Processing time (w/o IO): 149ms
	Processing time (w/o IO): 147ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 145ms
	Processing time (w/o IO): 144ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 146ms
	Processing time (w/o IO): 144ms
	Processing time (w/o IO): 145ms
	  Time (mean ± σ):     245.6 ms ±  38.0 ms    [User: 204.1 ms, System: 29.8 ms]
	  Range (min … max):   229.5 ms … 353.2 ms    10 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 380.838231ms
	Processing time (w/o IO): 374.617246ms
	Processing time (w/o IO): 371.471952ms
	  Time (mean ± σ):     521.8 ms ±   9.1 ms    [User: 518.8 ms, System: 37.2 ms]
	  Range (min … max):   515.4 ms … 528.2 ms    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 167.334678ms
	Processing time (w/o IO): 168.460712ms
	Processing time (w/o IO): 168.450085ms
	  Time (mean ± σ):     313.4 ms ±   3.2 ms    [User: 799.8 ms, System: 25.8 ms]
	  Range (min … max):   311.1 ms … 315.7 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 388.099345ms
	Processing time (w/o IO): 390.186822ms
	Processing time (w/o IO): 387.976141ms
	  Time (mean ± σ):     462.6 ms ±   4.1 ms    [User: 433.0 ms, System: 29.5 ms]
	  Range (min … max):   459.7 ms … 465.5 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 324.538612ms
	Processing time (w/o IO): 329.821806ms
	Processing time (w/o IO): 331.178785ms
	  Time (mean ± σ):     405.4 ms ±   3.6 ms    [User: 686.3 ms, System: 21.7 ms]
	  Range (min … max):   402.9 ms … 408.0 ms    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 23.657s
	Processing time (w/o IO): 23.301s
	  Time (abs ≡):        23.463 s               [User: 23.413 s, System: 0.043 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 5.335s
	Processing time (w/o IO): 5.371s
	Processing time (w/o IO): 5.528s
	  Time (mean ± σ):      5.923 s ±  0.080 s    [User: 4.874 s, System: 1.632 s]
	  Range (min … max):    5.866 s …  5.980 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 937.17546ms
	Processing time (w/o IO): 933.127953ms
	Processing time (w/o IO): 934.297157ms
	  Time (mean ± σ):      1.153 s ±  0.002 s    [User: 1.117 s, System: 0.033 s]
	  Range (min … max):    1.152 s …  1.155 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 432ms
	Processing time (w/o IO): 432ms
	Processing time (w/o IO): 432ms
	  Time (mean ± σ):     626.8 ms ±   0.4 ms    [User: 601.5 ms, System: 25.2 ms]
	  Range (min … max):   626.5 ms … 627.1 ms    2 runs
	 
Julia:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 339 milliseconds
	Processing time (w/o IO): 340 milliseconds
	Processing time (w/o IO): 336 milliseconds
	  Time (mean ± σ):      4.049 s ±  0.029 s    [User: 3.829 s, System: 0.215 s]
	  Range (min … max):    4.029 s …  4.069 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads auto related.jl
	Processing time (w/o IO): 162 milliseconds
	Processing time (w/o IO): 162 milliseconds
	Processing time (w/o IO): 162 milliseconds
	  Time (mean ± σ):      3.899 s ±  0.015 s    [User: 6.125 s, System: 0.218 s]
	  Range (min … max):    3.889 s …  3.910 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  690.996571ms
	Processing time (w/o IO):  687.814378ms
	Processing time (w/o IO):  687.353162ms
	  Time (mean ± σ):      1.472 s ±  0.005 s    [User: 1.442 s, System: 0.029 s]
	  Range (min … max):    1.469 s …  1.476 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 756.360ms
	Processing time (w/o IO): 755.590ms
	Processing time (w/o IO): 757.525ms
	  Time (mean ± σ):      8.597 s ±  0.075 s    [User: 8.470 s, System: 0.122 s]
	  Range (min … max):    8.544 s …  8.650 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 2126ms
	Processing time (w/o IO): 2126ms
	Processing time (w/o IO): 2570ms
	  Time (mean ± σ):      3.028 s ±  0.313 s    [User: 3.234 s, System: 0.137 s]
	  Range (min … max):    2.806 s …  3.249 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 2993ms
	Processing time (w/o IO): 2892ms
	Processing time (w/o IO): 2895ms
	  Time (mean ± σ):      3.401 s ±  0.003 s    [User: 3.360 s, System: 0.058 s]
	  Range (min … max):    3.399 s …  3.403 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 721.1430072784424ms
	Processing time (w/o IO): 725.9269952774048ms
	Processing time (w/o IO): 720.6170558929443ms
	  Time (mean ± σ):      2.120 s ±  0.010 s    [User: 1.950 s, System: 0.122 s]
	  Range (min … max):    2.114 s …  2.127 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 395.483427ms
	Processing time (w/o IO): 394.787625ms
	Processing time (w/o IO): 404.624823ms
	  Time (mean ± σ):      1.834 s ±  0.009 s    [User: 2.826 s, System: 0.111 s]
	  Range (min … max):    1.828 s …  1.841 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 2442ms
	Processing time (w/o IO): 2428ms
	Processing time (w/o IO): 2443ms
	  Time (mean ± σ):      2.769 s ±  0.019 s    [User: 2.769 s, System: 0.104 s]
	  Range (min … max):    2.755 s …  2.783 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 11240ms
	Processing time (w/o IO): 11542ms
	Processing time (w/o IO): 11142ms
	  Time (mean ± σ):     11.507 s ±  0.289 s    [User: 11.529 s, System: 0.093 s]
	  Range (min … max):   11.302 s … 11.711 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 2267ms
	Processing time (w/o IO): 2260ms
	Processing time (w/o IO): 2260ms
	  Time (mean ± σ):      2.500 s ±  0.075 s    [User: 2.440 s, System: 0.083 s]
	  Range (min … max):    2.446 s …  2.553 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 865 ms
	Processing time (w/o IO): 834 ms
	Processing time (w/o IO): 862 ms
	  Time (mean ± σ):      1.153 s ±  0.001 s    [User: 1.725 s, System: 0.072 s]
	  Range (min … max):    1.152 s …  1.153 s    2 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 457 ms
	Processing time (w/o IO): 458 ms
	Processing time (w/o IO): 458 ms
	  Time (mean ± σ):     556.3 ms ±   1.5 ms    [User: 538.8 ms, System: 17.6 ms]
	  Range (min … max):   555.3 ms … 557.4 ms    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 603 ms
	Processing time (w/o IO): 602 ms
	Processing time (w/o IO): 600 ms
	  Time (mean ± σ):     697.3 ms ±   1.5 ms    [User: 1656.4 ms, System: 31.5 ms]
	  Range (min … max):   696.2 ms … 698.4 ms    2 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 780ms
	Processing time (w/o IO): 778ms
	Processing time (w/o IO): 780ms
	  Time (mean ± σ):     884.7 ms ±   2.8 ms    [User: 849.0 ms, System: 35.6 ms]
	  Range (min … max):   882.7 ms … 886.7 ms    2 runs
	 
F#:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 559ms
	Processing time (w/o IO): 500ms
	Processing time (w/o IO): 501ms
	  Time (mean ± σ):      1.031 s ±  0.004 s    [User: 0.974 s, System: 0.069 s]
	  Range (min … max):    1.027 s …  1.034 s    2 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net7.0/fsharp_con
	Processing time (w/o IO): 325ms
	Processing time (w/o IO): 332ms
	Processing time (w/o IO): 328ms
	  Time (mean ± σ):      2.717 s ±  0.001 s    [User: 3.645 s, System: 0.143 s]
	  Range (min … max):    2.716 s …  2.717 s    2 runs
	 
C#:

	Benchmark 1: ./bin/release/net7.0/publish/related
	Processing time (w/o IO): 650.367ms
	Processing time (w/o IO): 658.4677ms
	Processing time (w/o IO): 649.7797ms
	  Time (mean ± σ):     849.4 ms ±   7.4 ms    [User: 820.3 ms, System: 61.2 ms]
	  Range (min … max):   844.2 ms … 854.6 ms    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	1396.4581489563	ms
	Processing time (w/o IO):	1531.5539836884	ms
	Processing time (w/o IO):	1520.1621055603	ms
	  Time (mean ± σ):      2.826 s ±  0.022 s    [User: 2.758 s, System: 0.067 s]
	  Range (min … max):    2.811 s …  2.841 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	16741.847991943	ms
	Processing time (w/o IO):	16754.419803619	ms
	  Time (abs ≡):        18.776 s               [User: 18.725 s, System: 0.048 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 3038ms
	Processing time (w/o IO): 3037ms
	Processing time (w/o IO): 2980ms
	  Time (mean ± σ):      3.446 s ±  0.040 s    [User: 3.355 s, System: 0.088 s]
	  Range (min … max):    3.417 s …  3.474 s    2 runs
	 
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 3.282982159s
	Processing time (w/o IO): 3.276381854s
	Processing time (w/o IO): 3.314907781s
	  Time (mean ± σ):      3.790 s ±  0.032 s    [User: 3.792 s, System: 0.133 s]
	  Range (min … max):    3.767 s …  3.812 s    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 1.454562141s
	Processing time (w/o IO): 1.43865089s
	Processing time (w/o IO): 1.419901839s
	  Time (mean ± σ):      1.921 s ±  0.025 s    [User: 6.129 s, System: 0.097 s]
	  Range (min … max):    1.903 s …  1.938 s    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 3.445990026s
	Processing time (w/o IO): 3.457474668s
	Processing time (w/o IO): 3.440954827s
	  Time (mean ± σ):      3.703 s ±  0.005 s    [User: 3.632 s, System: 0.067 s]
	  Range (min … max):    3.699 s …  3.706 s    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 2.777836668s
	Processing time (w/o IO): 2.725675069s
	Processing time (w/o IO): 2.776927085s
	  Time (mean ± σ):      3.005 s ±  0.033 s    [User: 5.653 s, System: 0.077 s]
	  Range (min … max):    2.981 s …  3.029 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 219.492s
	Processing time (w/o IO): 215.130s
	  Time (abs ≡):        215.579 s               [User: 215.412 s, System: 0.136 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 8245.601014ms
	Processing time (w/o IO): 8238.870208ms
	Processing time (w/o IO): 8250.86721ms
	  Time (mean ± σ):      8.998 s ±  0.013 s    [User: 8.883 s, System: 0.105 s]
	  Range (min … max):    8.988 s …  9.007 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 3855ms
	Processing time (w/o IO): 3844ms
	Processing time (w/o IO): 3845ms
	  Time (mean ± σ):      4.448 s ±  0.001 s    [User: 4.380 s, System: 0.063 s]
	  Range (min … max):    4.447 s …  4.449 s    2 runs
	 
Julia:

	Benchmark 1: julia related.jl
	Processing time (w/o IO): 2910 milliseconds
	Processing time (w/o IO): 2912 milliseconds
	Processing time (w/o IO): 2909 milliseconds
	  Time (mean ± σ):      9.622 s ±  0.032 s    [User: 9.348 s, System: 0.266 s]
	  Range (min … max):    9.600 s …  9.645 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --threads auto related.jl
	Processing time (w/o IO): 1390 milliseconds
	Processing time (w/o IO): 1395 milliseconds
	Processing time (w/o IO): 1391 milliseconds
	  Time (mean ± σ):      6.890 s ±  0.104 s    [User: 16.431 s, System: 0.274 s]
	  Range (min … max):    6.816 s …  6.964 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  5.038782399s
	Processing time (w/o IO):  5.059793927s
	Processing time (w/o IO):  5.036818703s
	  Time (mean ± σ):      7.443 s ±  0.024 s    [User: 7.356 s, System: 0.080 s]
	  Range (min … max):    7.426 s …  7.459 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 6.655s
	Processing time (w/o IO): 6.651s
	Processing time (w/o IO): 6.653s
	  Time (mean ± σ):     86.303 s ±  1.110 s    [User: 85.840 s, System: 0.445 s]
	  Range (min … max):   85.518 s … 87.088 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 21285ms
	Processing time (w/o IO): 21093ms
	Processing time (w/o IO): 20909ms
	  Time (mean ± σ):     22.514 s ±  0.141 s    [User: 22.762 s, System: 0.219 s]
	  Range (min … max):   22.414 s … 22.614 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 25864ms
	Processing time (w/o IO): 25800ms
	Processing time (w/o IO): 25811ms
	  Time (mean ± σ):     27.304 s ±  0.003 s    [User: 27.240 s, System: 0.160 s]
	  Range (min … max):   27.302 s … 27.306 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 6175.658941268921ms
	Processing time (w/o IO): 6179.410934448242ms
	Processing time (w/o IO): 6208.509922027588ms
	  Time (mean ± σ):     10.474 s ±  0.029 s    [User: 9.974 s, System: 0.325 s]
	  Range (min … max):   10.454 s … 10.494 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 3506.808094ms
	Processing time (w/o IO): 3506.544384ms
	Processing time (w/o IO): 3484.017848ms
	  Time (mean ± σ):      7.788 s ±  0.062 s    [User: 17.403 s, System: 0.379 s]
	  Range (min … max):    7.744 s …  7.831 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 24471ms
	Processing time (w/o IO): 24470ms
	Processing time (w/o IO): 21830ms
	  Time (mean ± σ):     23.979 s ±  1.897 s    [User: 24.032 s, System: 0.162 s]
	  Range (min … max):   22.637 s … 25.320 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 103153ms
	Processing time (w/o IO): 101380ms
	Processing time (w/o IO): 101324ms
	  Time (mean ± σ):     101.842 s ±  0.034 s    [User: 101.815 s, System: 0.181 s]
	  Range (min … max):   101.817 s … 101.866 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 20032ms
	Processing time (w/o IO): 19968ms
	Processing time (w/o IO): 20069ms
	  Time (mean ± σ):     20.704 s ±  0.050 s    [User: 20.503 s, System: 0.163 s]
	  Range (min … max):   20.668 s … 20.739 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 6585 ms
	Processing time (w/o IO): 6614 ms
	Processing time (w/o IO): 6646 ms
	  Time (mean ± σ):      7.192 s ±  0.059 s    [User: 7.930 s, System: 0.147 s]
	  Range (min … max):    7.151 s …  7.234 s    2 runs
	 
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 4739 ms
	Processing time (w/o IO): 4746 ms
	Processing time (w/o IO): 4750 ms
	  Time (mean ± σ):      5.098 s ±  0.002 s    [User: 5.002 s, System: 0.089 s]
	  Range (min … max):    5.097 s …  5.099 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 5360 ms
	Processing time (w/o IO): 5326 ms
	Processing time (w/o IO): 5383 ms
	  Time (mean ± σ):      5.720 s ±  0.054 s    [User: 14.326 s, System: 0.089 s]
	  Range (min … max):    5.682 s …  5.758 s    2 runs
	 
Nim:

	Benchmark 1: ./src/related
	Processing time (w/o IO): 7389ms
	Processing time (w/o IO): 7537ms
	Processing time (w/o IO): 7569ms
	  Time (mean ± σ):      7.929 s ±  0.020 s    [User: 7.829 s, System: 0.091 s]
	  Range (min … max):    7.916 s …  7.943 s    2 runs
	 
F#:

	Benchmark 1: ./bin/release/net7.0/fsharp
	Processing time (w/o IO): 5424ms
	Processing time (w/o IO): 5450ms
	Processing time (w/o IO): 5435ms
	  Time (mean ± σ):      6.568 s ±  0.013 s    [User: 6.481 s, System: 0.173 s]
	  Range (min … max):    6.558 s …  6.577 s    2 runs
	 
F# Concurrent:

	Benchmark 1: ./bin/release/net7.0/fsharp_con
	Processing time (w/o IO): 2362ms
	Processing time (w/o IO): 2361ms
	Processing time (w/o IO): 2338ms
	  Time (mean ± σ):      8.883 s ±  0.031 s    [User: 15.773 s, System: 0.362 s]
	  Range (min … max):    8.861 s …  8.905 s    2 runs
	 
C#:

	Benchmark 1: ./bin/release/net7.0/publish/related
	Processing time (w/o IO): 5712.1604ms
	Processing time (w/o IO): 5711.2389ms
	Processing time (w/o IO): 5725.7979ms
	  Time (mean ± σ):      6.325 s ±  0.010 s    [User: 6.389 s, System: 0.130 s]
	  Range (min … max):    6.318 s …  6.332 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	13243.416786194	ms
	Processing time (w/o IO):	11998.953104019	ms
	Processing time (w/o IO):	12320.650815964	ms
	  Time (mean ± σ):     16.299 s ±  0.396 s    [User: 16.120 s, System: 0.168 s]
	  Range (min … max):   16.019 s … 16.579 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	150451.82919502	ms
	Processing time (w/o IO):	149922.67394066	ms
	  Time (abs ≡):        156.383 s               [User: 156.179 s, System: 0.183 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 31765ms
	Processing time (w/o IO): 32671ms
	Processing time (w/o IO): 32692ms
	  Time (mean ± σ):     34.290 s ±  0.001 s    [User: 33.559 s, System: 0.718 s]
	  Range (min … max):   34.290 s … 34.291 s    2 runs
	 
