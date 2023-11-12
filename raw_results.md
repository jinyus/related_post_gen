Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 29.178086ms
	Processing time (w/o IO): 29.043585ms
	Processing time (w/o IO): 29.113085ms
	Processing time (w/o IO): 30.5373ms
	Processing time (w/o IO): 28.983884ms
	Processing time (w/o IO): 29.189786ms
	Processing time (w/o IO): 29.973694ms
	Processing time (w/o IO): 30.646401ms
	Processing time (w/o IO): 29.449289ms
	Processing time (w/o IO): 29.53109ms
	Processing time (w/o IO): 31.61001ms
	Processing time (w/o IO): 29.246387ms
	Processing time (w/o IO): 30.536199ms
	  Time (mean ± σ):      72.8 ms ±   5.0 ms    [User: 69.6 ms, System: 13.3 ms]
	  Range (min … max):    68.6 ms …  86.3 ms    10 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 8.483783ms
	Processing time (w/o IO): 7.643075ms
	Processing time (w/o IO): 6.595665ms
	Processing time (w/o IO): 6.896468ms
	Processing time (w/o IO): 8.10798ms
	Processing time (w/o IO): 6.711966ms
	Processing time (w/o IO): 8.278081ms
	Processing time (w/o IO): 8.433183ms
	Processing time (w/o IO): 8.449783ms
	Processing time (w/o IO): 7.953378ms
	Processing time (w/o IO): 6.709566ms
	Processing time (w/o IO): 8.200381ms
	Processing time (w/o IO): 7.852578ms
	  Time (mean ± σ):      48.1 ms ±   1.1 ms    [User: 87.3 ms, System: 11.1 ms]
	  Range (min … max):    45.9 ms …  50.1 ms    10 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 23.494036ms
	Processing time (w/o IO): 23.417836ms
	Processing time (w/o IO): 23.980641ms
	Processing time (w/o IO): 23.382535ms
	Processing time (w/o IO): 23.503537ms
	Processing time (w/o IO): 23.452636ms
	Processing time (w/o IO): 24.034041ms
	Processing time (w/o IO): 23.485336ms
	Processing time (w/o IO): 23.693838ms
	Processing time (w/o IO): 24.084242ms
	Processing time (w/o IO): 23.678838ms
	Processing time (w/o IO): 23.451736ms
	Processing time (w/o IO): 23.428235ms
	  Time (mean ± σ):      40.6 ms ±   0.8 ms    [User: 31.5 ms, System: 9.0 ms]
	  Range (min … max):    39.6 ms …  42.0 ms    10 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 8.600987ms
	Processing time (w/o IO): 6.426564ms
	Processing time (w/o IO): 8.434885ms
	Processing time (w/o IO): 6.342964ms
	Processing time (w/o IO): 6.578666ms
	Processing time (w/o IO): 6.473665ms
	Processing time (w/o IO): 6.474265ms
	Processing time (w/o IO): 6.465166ms
	Processing time (w/o IO): 6.567467ms
	Processing time (w/o IO): 6.297565ms
	Processing time (w/o IO): 6.293864ms
	Processing time (w/o IO): 6.744169ms
	Processing time (w/o IO): 6.509667ms
	  Time (mean ± σ):      24.6 ms ±   0.6 ms    [User: 33.0 ms, System: 10.5 ms]
	  Range (min … max):    23.6 ms …  25.6 ms    10 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 33.048ms
	Processing time (w/o IO): 32.583ms
	Processing time (w/o IO): 32.421ms
	Processing time (w/o IO): 32.86ms
	Processing time (w/o IO): 32.31ms
	Processing time (w/o IO): 32.538ms
	Processing time (w/o IO): 32.934ms
	Processing time (w/o IO): 32.86ms
	Processing time (w/o IO): 33.003ms
	Processing time (w/o IO): 32.927ms
	Processing time (w/o IO): 32.833ms
	Processing time (w/o IO): 33.079ms
	Processing time (w/o IO): 33.037ms
	  Time (mean ± σ):     116.4 ms ±   0.7 ms    [User: 105.1 ms, System: 13.5 ms]
	  Range (min … max):   115.6 ms … 117.6 ms    10 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 10.328ms
	Processing time (w/o IO): 10.247ms
	Processing time (w/o IO): 10.522ms
	Processing time (w/o IO): 8.932ms
	Processing time (w/o IO): 10.287ms
	Processing time (w/o IO): 9.58ms
	Processing time (w/o IO): 10.168ms
	Processing time (w/o IO): 9.717ms
	Processing time (w/o IO): 10.45ms
	Processing time (w/o IO): 10.232ms
	Processing time (w/o IO): 8.64ms
	Processing time (w/o IO): 9.066ms
	Processing time (w/o IO): 10.819ms
	  Time (mean ± σ):      90.3 ms ±   1.1 ms    [User: 109.2 ms, System: 12.5 ms]
	  Range (min … max):    89.2 ms …  92.6 ms    10 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 22 ms
	Processing time (w/o IO): 22 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 23 ms
	Processing time (w/o IO): 23 ms
	  Time (mean ± σ):     220.9 ms ±   2.0 ms    [User: 191.5 ms, System: 29.3 ms]
	  Range (min … max):   217.8 ms … 223.6 ms    10 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 7 ms
	Processing time (w/o IO): 8 ms
	Processing time (w/o IO): 8 ms
	Processing time (w/o IO): 8 ms
	Processing time (w/o IO): 7 ms
	Processing time (w/o IO): 7 ms
	Processing time (w/o IO): 7 ms
	Processing time (w/o IO): 9 ms
	Processing time (w/o IO): 8 ms
	Processing time (w/o IO): 9 ms
	Processing time (w/o IO): 9 ms
	Processing time (w/o IO): 13 ms
	Processing time (w/o IO): 9 ms
	  Time (mean ± σ):     229.1 ms ±   4.5 ms    [User: 216.4 ms, System: 32.9 ms]
	  Range (min … max):   222.3 ms … 236.6 ms    10 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 1.479s
	Processing time (w/o IO): 1.474s
	Processing time (w/o IO): 1.459s
	Processing time (w/o IO): 1.463s
	Processing time (w/o IO): 1.461s
	Processing time (w/o IO): 1.481s
	Processing time (w/o IO): 1.476s
	Processing time (w/o IO): 1.469s
	Processing time (w/o IO): 1.461s
	Processing time (w/o IO): 1.473s
	Processing time (w/o IO): 1.458s
	Processing time (w/o IO): 1.458s
	Processing time (w/o IO): 1.466s
	  Time (mean ± σ):      1.536 s ±  0.008 s    [User: 1.517 s, System: 0.019 s]
	  Range (min … max):    1.527 s …  1.552 s    10 runs
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 353.5ms
	Processing time (w/o IO): 353.3ms
	Processing time (w/o IO): 355.0ms
	Processing time (w/o IO): 354.5ms
	Processing time (w/o IO): 354.3ms
	Processing time (w/o IO): 354.5ms
	Processing time (w/o IO): 351.1ms
	Processing time (w/o IO): 347.6ms
	Processing time (w/o IO): 358.0ms
	Processing time (w/o IO): 357.0ms
	Processing time (w/o IO): 355.1ms
	Processing time (w/o IO): 353.4ms
	Processing time (w/o IO): 353.4ms
	  Time (mean ± σ):     655.2 ms ±  12.0 ms    [User: 1138.6 ms, System: 956.4 ms]
	  Range (min … max):   642.7 ms … 686.7 ms    10 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 55.045193ms
	Processing time (w/o IO): 54.232385ms
	Processing time (w/o IO): 53.79178ms
	Processing time (w/o IO): 53.851581ms
	Processing time (w/o IO): 54.127184ms
	Processing time (w/o IO): 53.924181ms
	Processing time (w/o IO): 53.953482ms
	Processing time (w/o IO): 54.116284ms
	Processing time (w/o IO): 53.732579ms
	Processing time (w/o IO): 53.689579ms
	Processing time (w/o IO): 53.629679ms
	Processing time (w/o IO): 54.048383ms
	Processing time (w/o IO): 54.211285ms
	  Time (mean ± σ):     107.3 ms ±   1.5 ms    [User: 98.5 ms, System: 8.7 ms]
	  Range (min … max):   105.0 ms … 109.8 ms    10 runs
	 
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
	  Time (mean ± σ):      71.3 ms ±   0.9 ms    [User: 64.5 ms, System: 6.8 ms]
	  Range (min … max):    69.7 ms …  72.6 ms    10 runs
	 
Julia:

	Benchmark 1: julia --startup-file=no --project=Related -e "using Related; main()"
	Processing time (w/o IO): 31.185118000000003ms
	Processing time (w/o IO): 31.251818ms
	Processing time (w/o IO): 31.093211999999998ms
	Processing time (w/o IO): 31.092112ms
	Processing time (w/o IO): 30.977911ms
	Processing time (w/o IO): 31.054712000000002ms
	Processing time (w/o IO): 31.054312ms
	Processing time (w/o IO): 31.102413ms
	Processing time (w/o IO): 31.072912000000002ms
	Processing time (w/o IO): 31.270313ms
	Processing time (w/o IO): 31.047047000000003ms
	Processing time (w/o IO): 31.125148ms
	Processing time (w/o IO): 31.201949ms
	  Time (mean ± σ):      1.003 s ±  0.013 s    [User: 1.000 s, System: 0.314 s]
	  Range (min … max):    0.982 s …  1.017 s    10 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 8 milliseconds
	Processing time (w/o IO): 9 milliseconds
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
	  Time (mean ± σ):     992.1 ms ±   5.3 ms    [User: 963.1 ms, System: 339.7 ms]
	  Range (min … max):   986.0 ms … 1002.5 ms    10 runs
	 
Julia Concurrent:

	Benchmark 1: julia --startup-file=no --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 8.391584ms
	Processing time (w/o IO): 8.784555ms
	Processing time (w/o IO): 8.04355ms
	Processing time (w/o IO): 8.901055ms
	Processing time (w/o IO): 7.98255ms
	Processing time (w/o IO): 8.841655000000001ms
	Processing time (w/o IO): 7.805849ms
	Processing time (w/o IO): 7.782049ms
	Processing time (w/o IO): 11.721674ms
	Processing time (w/o IO): 8.013673ms
	Processing time (w/o IO): 9.538186000000001ms
	Processing time (w/o IO): 9.501786ms
	Processing time (w/o IO): 8.036973ms
	  Time (mean ± σ):     983.6 ms ±  13.3 ms    [User: 1009.7 ms, System: 336.3 ms]
	  Range (min … max):   963.4 ms … 1001.7 ms    10 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  48.573639ms
	Processing time (w/o IO):  48.297336ms
	Processing time (w/o IO):  48.097934ms
	Processing time (w/o IO):  48.744043ms
	Processing time (w/o IO):  48.045835ms
	Processing time (w/o IO):  48.185737ms
	Processing time (w/o IO):  48.183637ms
	Processing time (w/o IO):  47.936334ms
	Processing time (w/o IO):  47.815832ms
	Processing time (w/o IO):  48.334338ms
	Processing time (w/o IO):  47.840733ms
	Processing time (w/o IO):  48.640342ms
	Processing time (w/o IO):  47.931234ms
	  Time (mean ± σ):     269.3 ms ±   1.2 ms    [User: 259.3 ms, System: 10.0 ms]
	  Range (min … max):   268.0 ms … 271.3 ms    10 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 49.140ms
	Processing time (w/o IO): 48.404ms
	Processing time (w/o IO): 48.900ms
	Processing time (w/o IO): 48.706ms
	Processing time (w/o IO): 48.728ms
	Processing time (w/o IO): 48.601ms
	Processing time (w/o IO): 48.823ms
	Processing time (w/o IO): 48.829ms
	Processing time (w/o IO): 48.717ms
	Processing time (w/o IO): 48.655ms
	Processing time (w/o IO): 48.506ms
	Processing time (w/o IO): 48.990ms
	Processing time (w/o IO): 48.923ms
	  Time (mean ± σ):     350.9 ms ±   2.7 ms    [User: 323.6 ms, System: 27.3 ms]
	  Range (min … max):   347.1 ms … 356.6 ms    10 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 114ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 131ms
	Processing time (w/o IO): 155ms
	Processing time (w/o IO): 114ms
	Processing time (w/o IO): 163ms
	Processing time (w/o IO): 176ms
	Processing time (w/o IO): 168ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 169ms
	Processing time (w/o IO): 168ms
	Processing time (w/o IO): 130ms
	  Time (mean ± σ):     504.3 ms ±  19.1 ms    [User: 598.8 ms, System: 101.7 ms]
	  Range (min … max):   470.4 ms … 530.4 ms    10 runs
	 
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
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	Processing time (w/o IO): 130ms
	  Time (mean ± σ):     255.3 ms ±   1.3 ms    [User: 239.5 ms, System: 20.1 ms]
	  Range (min … max):   253.8 ms … 257.4 ms    10 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 51.24390125274658ms
	Processing time (w/o IO): 52.041053771972656ms
	Processing time (w/o IO): 51.51700973510742ms
	Processing time (w/o IO): 51.367998123168945ms
	Processing time (w/o IO): 50.66704750061035ms
	Processing time (w/o IO): 51.01501941680908ms
	Processing time (w/o IO): 51.080942153930664ms
	Processing time (w/o IO): 51.216959953308105ms
	Processing time (w/o IO): 51.362037658691406ms
	Processing time (w/o IO): 51.2239933013916ms
	Processing time (w/o IO): 51.29408836364746ms
	Processing time (w/o IO): 51.23090744018555ms
	Processing time (w/o IO): 51.303982734680176ms
	  Time (mean ± σ):     396.4 ms ±   2.7 ms    [User: 348.0 ms, System: 35.3 ms]
	  Range (min … max):   393.2 ms … 402.6 ms    10 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 19.20989ms
	Processing time (w/o IO): 18.21078ms
	Processing time (w/o IO): 18.25548ms
	Processing time (w/o IO): 19.23419ms
	Processing time (w/o IO): 18.13868ms
	Processing time (w/o IO): 18.757886ms
	Processing time (w/o IO): 19.16769ms
	Processing time (w/o IO): 18.424982ms
	Processing time (w/o IO): 18.768585ms
	Processing time (w/o IO): 18.709384ms
	Processing time (w/o IO): 18.298881ms
	Processing time (w/o IO): 18.19288ms
	Processing time (w/o IO): 17.834376ms
	  Time (mean ± σ):     374.1 ms ±   4.5 ms    [User: 432.8 ms, System: 36.6 ms]
	  Range (min … max):   369.4 ms … 384.8 ms    10 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 153ms
	Processing time (w/o IO): 150ms
	Processing time (w/o IO): 201ms
	Processing time (w/o IO): 208ms
	Processing time (w/o IO): 148ms
	Processing time (w/o IO): 151ms
	Processing time (w/o IO): 203ms
	Processing time (w/o IO): 150ms
	Processing time (w/o IO): 151ms
	Processing time (w/o IO): 150ms
	Processing time (w/o IO): 150ms
	Processing time (w/o IO): 196ms
	Processing time (w/o IO): 151ms
	  Time (mean ± σ):     335.4 ms ±  26.0 ms    [User: 341.6 ms, System: 54.9 ms]
	  Range (min … max):   316.8 ms … 378.5 ms    10 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 111ms
	Processing time (w/o IO): 109ms
	Processing time (w/o IO): 114ms
	Processing time (w/o IO): 122ms
	Processing time (w/o IO): 115ms
	Processing time (w/o IO): 108ms
	Processing time (w/o IO): 107ms
	Processing time (w/o IO): 121ms
	Processing time (w/o IO): 109ms
	Processing time (w/o IO): 109ms
	Processing time (w/o IO): 114ms
	Processing time (w/o IO): 108ms
	Processing time (w/o IO): 116ms
	  Time (mean ± σ):     171.0 ms ±   5.3 ms    [User: 185.5 ms, System: 34.5 ms]
	  Range (min … max):   164.3 ms … 178.1 ms    10 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 185ms
	Processing time (w/o IO): 167ms
	Processing time (w/o IO): 167ms
	Processing time (w/o IO): 167ms
	Processing time (w/o IO): 166ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 167ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 178ms
	Processing time (w/o IO): 176ms
	Processing time (w/o IO): 167ms
	Processing time (w/o IO): 166ms
	Processing time (w/o IO): 165ms
	  Time (mean ± σ):     239.5 ms ±   5.6 ms    [User: 231.5 ms, System: 34.1 ms]
	  Range (min … max):   234.0 ms … 247.0 ms    10 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 53 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 55 ms
	Processing time (w/o IO): 52 ms
	Processing time (w/o IO): 52 ms
	  Time (mean ± σ):     335.5 ms ±   5.1 ms    [User: 563.7 ms, System: 44.9 ms]
	  Range (min … max):   329.8 ms … 342.9 ms    10 runs
	 
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
	Processing time (w/o IO): 56 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	Processing time (w/o IO): 57 ms
	  Time (mean ± σ):     143.5 ms ±   1.2 ms    [User: 132.3 ms, System: 11.3 ms]
	  Range (min … max):   141.9 ms … 145.3 ms    10 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 19 ms
	Processing time (w/o IO): 19 ms
	Processing time (w/o IO): 18 ms
	Processing time (w/o IO): 18 ms
	Processing time (w/o IO): 18 ms
	Processing time (w/o IO): 19 ms
	Processing time (w/o IO): 19 ms
	Processing time (w/o IO): 19 ms
	Processing time (w/o IO): 18 ms
	Processing time (w/o IO): 18 ms
	Processing time (w/o IO): 18 ms
	Processing time (w/o IO): 19 ms
	Processing time (w/o IO): 18 ms
	  Time (mean ± σ):      48.5 ms ±   0.7 ms    [User: 127.2 ms, System: 11.5 ms]
	  Range (min … max):    47.7 ms …  49.8 ms    10 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 21.939ms
	Processing time (w/o IO): 22.164ms
	Processing time (w/o IO): 22.081ms
	Processing time (w/o IO): 22.108ms
	Processing time (w/o IO): 22.324ms
	Processing time (w/o IO): 22.085ms
	Processing time (w/o IO): 22.235ms
	Processing time (w/o IO): 22.375ms
	Processing time (w/o IO): 22.022ms
	Processing time (w/o IO): 22.154ms
	Processing time (w/o IO): 22.286ms
	Processing time (w/o IO): 22.216ms
	Processing time (w/o IO): 22.113ms
	  Time (mean ± σ):      52.3 ms ±   0.8 ms    [User: 42.1 ms, System: 10.2 ms]
	  Range (min … max):    51.1 ms …  53.4 ms    10 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 8.398ms
	Processing time (w/o IO): 8.648ms
	Processing time (w/o IO): 8.672000000000001ms
	Processing time (w/o IO): 7.195ms
	Processing time (w/o IO): 8.305ms
	Processing time (w/o IO): 8.618ms
	Processing time (w/o IO): 7.398ms
	Processing time (w/o IO): 8.401ms
	Processing time (w/o IO): 9.393000000000001ms
	Processing time (w/o IO): 8.757ms
	Processing time (w/o IO): 8.925000000000001ms
	Processing time (w/o IO): 7.44ms
	Processing time (w/o IO): 8.323ms
	  Time (mean ± σ):      35.6 ms ±   1.8 ms    [User: 66.7 ms, System: 12.9 ms]
	  Range (min … max):    33.2 ms …  38.1 ms    10 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 86.3377ms
	Processing time (w/o IO): 84.9117ms
	Processing time (w/o IO): 84.296ms
	Processing time (w/o IO): 85.9061ms
	Processing time (w/o IO): 85.2137ms
	Processing time (w/o IO): 85.1303ms
	Processing time (w/o IO): 84.9655ms
	Processing time (w/o IO): 85.4488ms
	Processing time (w/o IO): 85.8124ms
	Processing time (w/o IO): 84.4879ms
	Processing time (w/o IO): 85.0469ms
	Processing time (w/o IO): 84.6988ms
	Processing time (w/o IO): 85.7044ms
	  Time (mean ± σ):     979.6 ms ±   4.1 ms    [User: 971.8 ms, System: 113.6 ms]
	  Range (min … max):   971.3 ms … 985.6 ms    10 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 10ms
	Processing time (w/o IO): 11ms
	Processing time (w/o IO): 10ms
	Processing time (w/o IO): 11ms
	Processing time (w/o IO): 11ms
	Processing time (w/o IO): 11ms
	Processing time (w/o IO): 11ms
	Processing time (w/o IO): 11ms
	Processing time (w/o IO): 12ms
	Processing time (w/o IO): 11ms
	Processing time (w/o IO): 11ms
	Processing time (w/o IO): 11ms
	Processing time (w/o IO): 12ms
	  Time (mean ± σ):     861.3 ms ±  30.3 ms    [User: 974.6 ms, System: 95.0 ms]
	  Range (min … max):   780.3 ms … 882.7 ms    10 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 9ms
	Processing time (w/o IO): 9ms
	Processing time (w/o IO): 9ms
	Processing time (w/o IO): 10ms
	Processing time (w/o IO): 9ms
	Processing time (w/o IO): 9ms
	Processing time (w/o IO): 9ms
	Processing time (w/o IO): 9ms
	Processing time (w/o IO): 9ms
	Processing time (w/o IO): 9ms
	Processing time (w/o IO): 9ms
	Processing time (w/o IO): 10ms
	Processing time (w/o IO): 9ms
	  Time (mean ± σ):     698.8 ms ±   3.4 ms    [User: 810.3 ms, System: 99.5 ms]
	  Range (min … max):   693.8 ms … 705.2 ms    10 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 32.2155ms
	Processing time (w/o IO): 32.0059ms
	Processing time (w/o IO): 32.1332ms
	Processing time (w/o IO): 32.2944ms
	Processing time (w/o IO): 32.2173ms
	Processing time (w/o IO): 32.0882ms
	Processing time (w/o IO): 32.3533ms
	Processing time (w/o IO): 32.1708ms
	Processing time (w/o IO): 32.3314ms
	Processing time (w/o IO): 32.0127ms
	Processing time (w/o IO): 32.1252ms
	Processing time (w/o IO): 31.9783ms
	Processing time (w/o IO): 32.0846ms
	  Time (mean ± σ):     749.3 ms ±   2.3 ms    [User: 723.4 ms, System: 85.9 ms]
	  Range (min … max):   744.9 ms … 753.9 ms    10 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 27.4761ms
	Processing time (w/o IO): 27.397ms
	Processing time (w/o IO): 27.2515ms
	Processing time (w/o IO): 27.052ms
	Processing time (w/o IO): 27.3203ms
	Processing time (w/o IO): 27.3699ms
	Processing time (w/o IO): 26.8774ms
	Processing time (w/o IO): 27.5314ms
	Processing time (w/o IO): 28.0459ms
	Processing time (w/o IO): 27.0114ms
	Processing time (w/o IO): 28.4179ms
	Processing time (w/o IO): 28.1789ms
	Processing time (w/o IO): 27.3779ms
	  Time (mean ± σ):     218.6 ms ±   6.6 ms    [User: 179.8 ms, System: 35.4 ms]
	  Range (min … max):   208.8 ms … 229.6 ms    10 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 26.6518ms
	Processing time (w/o IO): 26.0802ms
	Processing time (w/o IO): 26.5436ms
	Processing time (w/o IO): 26.554ms
	Processing time (w/o IO): 26.3221ms
	Processing time (w/o IO): 26.0939ms
	Processing time (w/o IO): 26.4637ms
	Processing time (w/o IO): 26.3553ms
	Processing time (w/o IO): 26.1037ms
	Processing time (w/o IO): 26.3053ms
	Processing time (w/o IO): 26.3844ms
	Processing time (w/o IO): 26.2016ms
	Processing time (w/o IO): 26.1249ms
	  Time (mean ± σ):     103.6 ms ±   1.2 ms    [User: 109.1 ms, System: 19.8 ms]
	  Range (min … max):   101.4 ms … 105.5 ms    10 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 8.2579ms
	Processing time (w/o IO): 7.3075ms
	Processing time (w/o IO): 7.4169ms
	Processing time (w/o IO): 7.1731ms
	Processing time (w/o IO): 7.257ms
	Processing time (w/o IO): 7.3487ms
	Processing time (w/o IO): 7.3999ms
	Processing time (w/o IO): 8.4085ms
	Processing time (w/o IO): 7.5592ms
	Processing time (w/o IO): 7.6829ms
	Processing time (w/o IO): 6.9369ms
	Processing time (w/o IO): 7.2841ms
	Processing time (w/o IO): 7.6553ms
	  Time (mean ± σ):     198.2 ms ±  16.8 ms    [User: 221.1 ms, System: 38.0 ms]
	  Range (min … max):   178.8 ms … 227.6 ms    10 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 6.1676ms
	Processing time (w/o IO): 6.5979ms
	Processing time (w/o IO): 6.5226ms
	Processing time (w/o IO): 6.6323ms
	Processing time (w/o IO): 6.2936ms
	Processing time (w/o IO): 6.352ms
	Processing time (w/o IO): 6.5366ms
	Processing time (w/o IO): 6.2763ms
	Processing time (w/o IO): 6.4484ms
	Processing time (w/o IO): 6.2166ms
	Processing time (w/o IO): 6.4468ms
	Processing time (w/o IO): 6.3307ms
	Processing time (w/o IO): 6.24ms
	  Time (mean ± σ):      65.9 ms ±   1.9 ms    [User: 137.0 ms, System: 27.7 ms]
	  Range (min … max):    63.7 ms …  69.7 ms    10 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	89.05291557312	ms
	Processing time (w/o IO):	88.238954544067	ms
	Processing time (w/o IO):	106.33420944214	ms
	Processing time (w/o IO):	108.25395584106	ms
	Processing time (w/o IO):	113.33703994751	ms
	Processing time (w/o IO):	113.36088180542	ms
	Processing time (w/o IO):	115.00000953674	ms
	Processing time (w/o IO):	114.89796638489	ms
	Processing time (w/o IO):	88.434934616089	ms
	Processing time (w/o IO):	87.996959686279	ms
	Processing time (w/o IO):	90.293169021606	ms
	Processing time (w/o IO):	114.9001121521	ms
	Processing time (w/o IO):	89.025974273682	ms
	  Time (mean ± σ):     344.1 ms ±  13.6 ms    [User: 325.3 ms, System: 18.7 ms]
	  Range (min … max):   326.6 ms … 361.4 ms    10 runs
	 
LuaJIT (JIT OFF):

	Benchmark 1: luajit -joff only_lua.lua
	Processing time (w/o IO):	669.64817047119	ms
	Processing time (w/o IO):	671.6890335083	ms
	Processing time (w/o IO):	671.44393920898	ms
	Processing time (w/o IO):	671.16904258728	ms
	Processing time (w/o IO):	681.59103393555	ms
	Processing time (w/o IO):	668.08605194092	ms
	Processing time (w/o IO):	668.95198822021	ms
	Processing time (w/o IO):	670.97592353821	ms
	Processing time (w/o IO):	670.57514190674	ms
	Processing time (w/o IO):	669.8911190033	ms
	Processing time (w/o IO):	663.27214241028	ms
	Processing time (w/o IO):	667.81902313232	ms
	Processing time (w/o IO):	668.82705688477	ms
	  Time (mean ± σ):     988.3 ms ±   8.0 ms    [User: 969.1 ms, System: 18.4 ms]
	  Range (min … max):   978.0 ms … 1001.5 ms    10 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	1089.4401073456	ms
	Processing time (w/o IO):	1087.4900817871	ms
	Processing time (w/o IO):	1133.0540180206	ms
	Processing time (w/o IO):	1086.8589878082	ms
	Processing time (w/o IO):	1106.7728996277	ms
	Processing time (w/o IO):	1091.4940834045	ms
	Processing time (w/o IO):	1083.5559368134	ms
	Processing time (w/o IO):	1093.3392047882	ms
	Processing time (w/o IO):	1094.9010848999	ms
	Processing time (w/o IO):	1093.2111740112	ms
	Processing time (w/o IO):	1092.90599823	ms
	Processing time (w/o IO):	1092.7829742432	ms
	Processing time (w/o IO):	1090.4622077942	ms
	  Time (mean ± σ):      1.525 s ±  0.009 s    [User: 1.511 s, System: 0.013 s]
	  Range (min … max):    1.512 s …  1.538 s    10 runs
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 137ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 138ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 144ms
	Processing time (w/o IO): 142ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 144ms
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 140ms
	  Time (mean ± σ):     246.4 ms ±  57.9 ms    [User: 203.3 ms, System: 25.0 ms]
	  Range (min … max):   222.5 ms … 410.9 ms    10 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 0.877335 s
	Processing time (w/o IO): 0.884995 s
	Processing time (w/o IO): 0.878808 s
	Processing time (w/o IO): 0.890356 s
	Processing time (w/o IO): 0.884499 s
	Processing time (w/o IO): 0.882773 s
	Processing time (w/o IO): 0.884490 s
	Processing time (w/o IO): 0.890220 s
	Processing time (w/o IO): 0.887235 s
	Processing time (w/o IO): 0.883647 s
	Processing time (w/o IO): 0.890071 s
	Processing time (w/o IO): 0.880911 s
	Processing time (w/o IO): 0.889260 s
	  Time (mean ± σ):      1.241 s ±  0.007 s    [User: 1.181 s, System: 0.092 s]
	  Range (min … max):    1.230 s …  1.252 s    10 runs
	 
Ruby:

	Benchmark 1: ruby related.rb
	Processing time (w/o IO): 3017ms
	Processing time (w/o IO): 3061ms
	Processing time (w/o IO): 3051ms
	Processing time (w/o IO): 3008ms
	Processing time (w/o IO): 3010ms
	Processing time (w/o IO): 2998ms
	Processing time (w/o IO): 3002ms
	Processing time (w/o IO): 3138ms
	Processing time (w/o IO): 3044ms
	Processing time (w/o IO): 3024ms
	Processing time (w/o IO): 3049ms
	Processing time (w/o IO): 3002ms
	Processing time (w/o IO): 2995ms
	  Time (mean ± σ):      3.145 s ±  0.043 s    [User: 3.120 s, System: 0.025 s]
	  Range (min … max):    3.112 s …  3.256 s    10 runs
	 
daScript (interpreted):

	Benchmark 1: das related.das
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 429.892125ms
	Processing time (w/o IO): 430.305329ms
	Processing time (w/o IO): 426.599794ms
	  Time (mean ± σ):     572.3 ms ±   2.0 ms    [User: 574.5 ms, System: 34.0 ms]
	  Range (min … max):   571.0 ms … 573.7 ms    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 84.707313ms
	Processing time (w/o IO): 85.865022ms
	Processing time (w/o IO): 84.989615ms
	  Time (mean ± σ):     229.1 ms ±   1.9 ms    [User: 796.0 ms, System: 40.2 ms]
	  Range (min … max):   227.8 ms … 230.5 ms    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 340.711165ms
	Processing time (w/o IO): 339.875059ms
	Processing time (w/o IO): 340.765266ms
	  Time (mean ± σ):     403.4 ms ±   0.6 ms    [User: 373.7 ms, System: 29.6 ms]
	  Range (min … max):   403.0 ms … 403.8 ms    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 106.259093ms
	Processing time (w/o IO): 87.848339ms
	Processing time (w/o IO): 88.03054ms
	  Time (mean ± σ):     151.1 ms ±   0.4 ms    [User: 366.8 ms, System: 40.6 ms]
	  Range (min … max):   150.8 ms … 151.3 ms    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 442.867ms
	Processing time (w/o IO): 445.283ms
	Processing time (w/o IO): 444.561ms
	  Time (mean ± σ):     754.1 ms ±   0.9 ms    [User: 740.7 ms, System: 19.4 ms]
	  Range (min … max):   753.5 ms … 754.7 ms    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 73.876ms
	Processing time (w/o IO): 73.17ms
	Processing time (w/o IO): 72.081ms
	  Time (mean ± σ):     380.2 ms ±   0.7 ms    [User: 738.4 ms, System: 33.4 ms]
	  Range (min … max):   379.7 ms … 380.7 ms    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 318 ms
	Processing time (w/o IO): 320 ms
	Processing time (w/o IO): 322 ms
	  Time (mean ± σ):      1.126 s ±  0.002 s    [User: 1.007 s, System: 0.117 s]
	  Range (min … max):    1.124 s …  1.127 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 89 ms
	Processing time (w/o IO): 88 ms
	Processing time (w/o IO): 90 ms
	  Time (mean ± σ):     978.2 ms ±   0.3 ms    [User: 1109.0 ms, System: 119.3 ms]
	  Range (min … max):   978.0 ms … 978.5 ms    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 23.511s
	Processing time (w/o IO): 23.663s
	  Time (abs ≡):        23.833 s               [User: 23.784 s, System: 0.043 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
	Processing time (w/o IO): 5.823s
	Processing time (w/o IO): 5.425s
	Processing time (w/o IO): 4.868s
	  Time (mean ± σ):      5.578 s ±  0.402 s    [User: 5.180 s, System: 1.836 s]
	  Range (min … max):    5.294 s …  5.862 s    2 runs
	 
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 819.603564ms
	Processing time (w/o IO): 815.823322ms
	Processing time (w/o IO): 814.993413ms
	  Time (mean ± σ):      1.024 s ±  0.002 s    [User: 0.991 s, System: 0.034 s]
	  Range (min … max):    1.023 s …  1.026 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 337ms
	Processing time (w/o IO): 338ms
	Processing time (w/o IO): 337ms
	  Time (mean ± σ):     530.1 ms ±   0.8 ms    [User: 502.7 ms, System: 27.3 ms]
	  Range (min … max):   529.5 ms … 530.7 ms    2 runs
	 
Julia:

	Benchmark 1: julia --startup-file=no --project=Related -e "using Related; main()"
	Processing time (w/o IO): 481.840003ms
	Processing time (w/o IO): 482.72017ms
	Processing time (w/o IO): 482.31366599999996ms
	  Time (mean ± σ):      1.603 s ±  0.009 s    [User: 1.576 s, System: 0.337 s]
	  Range (min … max):    1.596 s …  1.609 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 54 milliseconds
	Processing time (w/o IO): 54 milliseconds
	Processing time (w/o IO): 54 milliseconds
	  Time (mean ± σ):      1.168 s ±  0.004 s    [User: 1.078 s, System: 0.401 s]
	  Range (min … max):    1.165 s …  1.171 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --startup-file=no --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 92.164204ms
	Processing time (w/o IO): 89.30647599999999ms
	Processing time (w/o IO): 91.98970200000001ms
	  Time (mean ± σ):      1.211 s ±  0.005 s    [User: 1.753 s, System: 0.358 s]
	  Range (min … max):    1.207 s …  1.214 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  678.395134ms
	Processing time (w/o IO):  681.422365ms
	Processing time (w/o IO):  682.417174ms
	  Time (mean ± σ):      1.480 s ±  0.004 s    [User: 1.445 s, System: 0.033 s]
	  Range (min … max):    1.477 s …  1.483 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 740.313ms
	Processing time (w/o IO): 742.572ms
	Processing time (w/o IO): 739.072ms
	  Time (mean ± σ):      8.773 s ±  0.045 s    [User: 8.645 s, System: 0.125 s]
	  Range (min … max):    8.742 s …  8.805 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 2046ms
	Processing time (w/o IO): 2066ms
	Processing time (w/o IO): 2139ms
	  Time (mean ± σ):      2.755 s ±  0.052 s    [User: 2.922 s, System: 0.147 s]
	  Range (min … max):    2.718 s …  2.792 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 2005ms
	Processing time (w/o IO): 2008ms
	Processing time (w/o IO): 2003ms
	  Time (mean ± σ):      2.490 s ±  0.009 s    [User: 2.434 s, System: 0.073 s]
	  Range (min … max):    2.484 s …  2.497 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 714.9540185928345ms
	Processing time (w/o IO): 716.6750431060791ms
	Processing time (w/o IO): 713.5419845581055ms
	  Time (mean ± σ):      2.084 s ±  0.007 s    [User: 1.919 s, System: 0.133 s]
	  Range (min … max):    2.080 s …  2.089 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 202.933312ms
	Processing time (w/o IO): 204.117524ms
	Processing time (w/o IO): 203.125114ms
	  Time (mean ± σ):      1.600 s ±  0.004 s    [User: 2.766 s, System: 0.156 s]
	  Range (min … max):    1.597 s …  1.603 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 1929ms
	Processing time (w/o IO): 1935ms
	Processing time (w/o IO): 1935ms
	  Time (mean ± σ):      2.243 s ±  0.002 s    [User: 2.231 s, System: 0.106 s]
	  Range (min … max):    2.242 s …  2.245 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 1512ms
	Processing time (w/o IO): 1520ms
	Processing time (w/o IO): 1750ms
	  Time (mean ± σ):      1.792 s ±  0.164 s    [User: 1.803 s, System: 0.069 s]
	  Range (min … max):    1.677 s …  1.908 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 2285ms
	Processing time (w/o IO): 2284ms
	Processing time (w/o IO): 2481ms
	  Time (mean ± σ):      2.761 s ±  0.030 s    [User: 2.533 s, System: 0.058 s]
	  Range (min … max):    2.740 s …  2.782 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 744 ms
	Processing time (w/o IO): 745 ms
	Processing time (w/o IO): 743 ms
	  Time (mean ± σ):      1.599 s ±  0.011 s    [User: 1.540 s, System: 0.049 s]
	  Range (min … max):    1.591 s …  1.607 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 322 ms
	Processing time (w/o IO): 323 ms
	Processing time (w/o IO): 323 ms
	  Time (mean ± σ):     421.5 ms ±   2.6 ms    [User: 2031.5 ms, System: 33.3 ms]
	  Range (min … max):   419.7 ms … 423.3 ms    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 318.193ms
	Processing time (w/o IO): 317.392ms
	Processing time (w/o IO): 311.566ms
	  Time (mean ± σ):     429.9 ms ±   1.5 ms    [User: 400.3 ms, System: 29.6 ms]
	  Range (min … max):   428.9 ms … 431.0 ms    2 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 87.988ms
	Processing time (w/o IO): 88.944ms
	Processing time (w/o IO): 88.26000000000001ms
	  Time (mean ± σ):     195.9 ms ±   1.6 ms    [User: 750.0 ms, System: 31.2 ms]
	  Range (min … max):   194.8 ms … 197.0 ms    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 614.6806ms
	Processing time (w/o IO): 554.2946ms
	Processing time (w/o IO): 554.3324ms
	  Time (mean ± σ):      3.272 s ±  0.001 s    [User: 3.639 s, System: 0.237 s]
	  Range (min … max):    3.271 s …  3.273 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 140ms
	Processing time (w/o IO): 145ms
	Processing time (w/o IO): 143ms
	  Time (mean ± σ):      2.496 s ±  0.085 s    [User: 4.804 s, System: 0.197 s]
	  Range (min … max):    2.436 s …  2.556 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 141ms
	Processing time (w/o IO): 141ms
	  Time (mean ± σ):      2.886 s ±  0.005 s    [User: 4.812 s, System: 0.267 s]
	  Range (min … max):    2.883 s …  2.889 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 457.6369ms
	Processing time (w/o IO): 459.269ms
	Processing time (w/o IO): 459.3133ms
	  Time (mean ± σ):      3.603 s ±  0.005 s    [User: 3.621 s, System: 0.243 s]
	  Range (min … max):    3.599 s …  3.606 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 374.0613ms
	Processing time (w/o IO): 368.6488ms
	Processing time (w/o IO): 373.6958ms
	  Time (mean ± σ):      1.079 s ±  0.008 s    [User: 1.025 s, System: 0.087 s]
	  Range (min … max):    1.073 s …  1.085 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 370.2735ms
	Processing time (w/o IO): 371.9188ms
	Processing time (w/o IO): 372.3191ms
	  Time (mean ± σ):     910.1 ms ±   3.3 ms    [User: 878.2 ms, System: 77.5 ms]
	  Range (min … max):   907.7 ms … 912.4 ms    2 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 68.6738ms
	Processing time (w/o IO): 66.3544ms
	Processing time (w/o IO): 67.9628ms
	  Time (mean ± σ):     468.7 ms ±   3.4 ms    [User: 1214.2 ms, System: 67.9 ms]
	  Range (min … max):   466.3 ms … 471.1 ms    2 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 73.6969ms
	Processing time (w/o IO): 72.5412ms
	Processing time (w/o IO): 72.1804ms
	  Time (mean ± σ):     306.1 ms ±   0.4 ms    [User: 1172.9 ms, System: 75.0 ms]
	  Range (min … max):   305.8 ms … 306.4 ms    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	1462.4011516571	ms
	Processing time (w/o IO):	1421.0379123688	ms
	Processing time (w/o IO):	1524.5349407196	ms
	  Time (mean ± σ):      2.742 s ±  0.094 s    [User: 2.659 s, System: 0.080 s]
	  Range (min … max):    2.675 s …  2.808 s    2 runs
	 
LuaJIT (JIT OFF):

	Benchmark 1: luajit -joff only_lua.lua
	Processing time (w/o IO):	10272.644996643	ms
	Processing time (w/o IO):	10240.817070007	ms
	Processing time (w/o IO):	10295.533180237	ms
	  Time (mean ± σ):     11.827 s ±  0.049 s    [User: 11.755 s, System: 0.067 s]
	  Range (min … max):   11.792 s … 11.862 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	16729.2740345	ms
	Processing time (w/o IO):	16739.352941513	ms
	  Time (abs ≡):        18.564 s               [User: 18.501 s, System: 0.059 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 2697ms
	Processing time (w/o IO): 2676ms
	Processing time (w/o IO): 2698ms
	  Time (mean ± σ):      3.113 s ±  0.013 s    [User: 3.007 s, System: 0.103 s]
	  Range (min … max):    3.104 s …  3.123 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 14.713680 s
	Processing time (w/o IO): 14.950325 s
	Processing time (w/o IO): 14.971661 s
	  Time (mean ± σ):     15.994 s ±  0.001 s    [User: 15.767 s, System: 0.280 s]
	  Range (min … max):   15.993 s … 15.995 s    2 runs
	 
Ruby:

	Benchmark 1: ruby related.rb
	Processing time (w/o IO): 50244ms
	Processing time (w/o IO): 47499ms
	Processing time (w/o IO): 47714ms
	  Time (mean ± σ):     47.915 s ±  0.156 s    [User: 47.844 s, System: 0.065 s]
	  Range (min … max):   47.805 s … 48.026 s    2 runs
	 
daScript (interpreted):

	Benchmark 1: das related.das
Go:

	Benchmark 1: ./related
	Processing time (w/o IO): 3.791280561s
	Processing time (w/o IO): 3.78723235s
	Processing time (w/o IO): 3.788397223s
	  Time (mean ± σ):      4.273 s ±  0.001 s    [User: 4.330 s, System: 0.108 s]
	  Range (min … max):    4.273 s …  4.274 s    2 runs
	 
Go Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 727.714682ms
	Processing time (w/o IO): 728.218052ms
	Processing time (w/o IO): 726.592624ms
	  Time (mean ± σ):      1.233 s ±  0.011 s    [User: 6.198 s, System: 0.120 s]
	  Range (min … max):    1.225 s …  1.241 s    2 runs
	 
Rust:

	Benchmark 1: ./target/release/rust
	Processing time (w/o IO): 3.024789753s
	Processing time (w/o IO): 3.029368994s
	Processing time (w/o IO): 3.029651543s
	  Time (mean ± σ):      3.253 s ±  0.006 s    [User: 3.154 s, System: 0.087 s]
	  Range (min … max):    3.248 s …  3.257 s    2 runs
	 
Rust Concurrent:

	Benchmark 1: ./target/release/rust_rayon
	Processing time (w/o IO): 778.101546ms
	Processing time (w/o IO): 778.826413ms
	Processing time (w/o IO): 763.099626ms
	  Time (mean ± σ):     993.7 ms ±  20.9 ms    [User: 3180.6 ms, System: 91.2 ms]
	  Range (min … max):   978.9 ms … 1008.5 ms    2 runs
	 
D:

	Benchmark 1: ./related
	Processing time (w/o IO): 3872.35ms
	Processing time (w/o IO): 3863.57ms
	Processing time (w/o IO): 3861.64ms
	  Time (mean ± σ):      4.843 s ±  0.004 s    [User: 4.752 s, System: 0.101 s]
	  Range (min … max):    4.840 s …  4.846 s    2 runs
	 
D Concurrent:

	Benchmark 1: ./related_concurrent
	Processing time (w/o IO): 538.356ms
	Processing time (w/o IO): 537.642ms
	Processing time (w/o IO): 539.227ms
	  Time (mean ± σ):      1.484 s ±  0.021 s    [User: 4.695 s, System: 0.101 s]
	  Range (min … max):    1.469 s …  1.499 s    2 runs
	 
C++:

	Benchmark 1: ./main
	Processing time (w/o IO): 2774 ms
	Processing time (w/o IO): 2784 ms
	Processing time (w/o IO): 2779 ms
	  Time (mean ± σ):      5.394 s ±  0.186 s    [User: 4.997 s, System: 0.272 s]
	  Range (min … max):    5.262 s …  5.526 s    2 runs
	 
C++ Concurrent:

	Benchmark 1: ./main_con
	Processing time (w/o IO): 739 ms
	Processing time (w/o IO): 741 ms
	Processing time (w/o IO): 743 ms
	  Time (mean ± σ):      3.381 s ±  0.047 s    [User: 5.184 s, System: 0.345 s]
	  Range (min … max):    3.348 s …  3.414 s    2 runs
	 
Python:

	Benchmark 1: python3 ./related.py
	Processing time (w/o IO): 214.697s
	Processing time (w/o IO): 214.136s
	  Time (abs ≡):        214.613 s               [User: 214.432 s, System: 0.155 s]
	 
Numpy:

	Benchmark 1: python3 ./related_np.py
Crystal:

	Benchmark 1: ./crystal
	Processing time (w/o IO): 7120.959984ms
	Processing time (w/o IO): 7112.103322ms
	Processing time (w/o IO): 7126.137915ms
	  Time (mean ± σ):      7.829 s ±  0.010 s    [User: 7.720 s, System: 0.099 s]
	  Range (min … max):    7.822 s …  7.837 s    2 runs
	 
Zig:

	Benchmark 1: ./main
	Processing time (w/o IO): 2990ms
	Processing time (w/o IO): 2981ms
	Processing time (w/o IO): 2992ms
	  Time (mean ± σ):      3.580 s ±  0.012 s    [User: 3.504 s, System: 0.069 s]
	  Range (min … max):    3.571 s …  3.588 s    2 runs
	 
Julia:

	Benchmark 1: julia --startup-file=no --project=Related -e "using Related; main()"
	Processing time (w/o IO): 4217.508355ms
	Processing time (w/o IO): 4219.048509ms
	Processing time (w/o IO): 4223.123906ms
	  Time (mean ± σ):      5.688 s ±  0.043 s    [User: 5.565 s, System: 0.430 s]
	  Range (min … max):    5.657 s …  5.718 s    2 runs
	 
Julia HO:

	Benchmark 1: julia --project=RelatedHO -e "using RelatedHO; main()"
	Processing time (w/o IO): 144 milliseconds
	Processing time (w/o IO): 147 milliseconds
	Processing time (w/o IO): 144 milliseconds
	  Time (mean ± σ):      1.634 s ±  0.002 s    [User: 1.503 s, System: 0.439 s]
	  Range (min … max):    1.633 s …  1.636 s    2 runs
	 
Julia Concurrent:

	Benchmark 1: julia --startup-file=no --threads=auto --project=RelatedCon -e "using RelatedCon; main()"
	Processing time (w/o IO): 903.56129ms
	Processing time (w/o IO): 743.906551ms
	Processing time (w/o IO): 747.369692ms
	  Time (mean ± σ):      2.206 s ±  0.009 s    [User: 7.170 s, System: 0.429 s]
	  Range (min … max):    2.200 s …  2.212 s    2 runs
	 
Odin:

	Benchmark 1: ./related
	Processing time (w/o IO):  5.958049219s
	Processing time (w/o IO):  5.941202499s
	Processing time (w/o IO):  5.942053965s
	  Time (mean ± σ):      8.349 s ±  0.006 s    [User: 8.266 s, System: 0.072 s]
	  Range (min … max):    8.344 s …  8.353 s    2 runs
	 
Vlang:

	Benchmark 1: ./related
	Processing time (w/o IO): 6.584s
	Processing time (w/o IO): 6.581s
	Processing time (w/o IO): 6.583s
	  Time (mean ± σ):     75.840 s ±  1.463 s    [User: 75.451 s, System: 0.377 s]
	  Range (min … max):   74.806 s … 76.875 s    2 runs
	 
Dart VM:

	Benchmark 1: dart related.dart
	Processing time (w/o IO): 19626ms
	Processing time (w/o IO): 19625ms
	Processing time (w/o IO): 19610ms
	  Time (mean ± σ):     21.076 s ±  0.004 s    [User: 21.274 s, System: 0.220 s]
	  Range (min … max):   21.073 s … 21.079 s    2 runs
	 
Dart AOT:

	Benchmark 1: ./related
	Processing time (w/o IO): 17792ms
	Processing time (w/o IO): 17848ms
	Processing time (w/o IO): 17788ms
	  Time (mean ± σ):     19.293 s ±  0.037 s    [User: 19.275 s, System: 0.139 s]
	  Range (min … max):   19.267 s … 19.319 s    2 runs
	 
Swift:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 6178.060054779053ms
	Processing time (w/o IO): 6173.075079917908ms
	Processing time (w/o IO): 6190.369009971619ms
	  Time (mean ± σ):     10.373 s ±  0.037 s    [User: 9.872 s, System: 0.361 s]
	  Range (min … max):   10.347 s … 10.399 s    2 runs
	 
Swift Concurrent:

	Benchmark 1: ./.build/release/related
	Processing time (w/o IO): 1748.181251ms
	Processing time (w/o IO): 1726.405916ms
	Processing time (w/o IO): 1733.018389ms
	  Time (mean ± σ):      5.973 s ±  0.036 s    [User: 17.275 s, System: 0.403 s]
	  Range (min … max):    5.947 s …  5.999 s    2 runs
	 
JS (Node):

	Benchmark 1: node node.js
	Processing time (w/o IO): 21803ms
	Processing time (w/o IO): 17510ms
	Processing time (w/o IO): 17548ms
	  Time (mean ± σ):     18.225 s ±  0.020 s    [User: 18.164 s, System: 0.178 s]
	  Range (min … max):   18.211 s … 18.239 s    2 runs
	 
JS (Bun):

	Benchmark 1: bun bun.js
	Processing time (w/o IO): 13227ms
	Processing time (w/o IO): 13157ms
	Processing time (w/o IO): 12907ms
	  Time (mean ± σ):     13.490 s ±  0.181 s    [User: 13.477 s, System: 0.164 s]
	  Range (min … max):   13.361 s … 13.618 s    2 runs
	 
JS (Deno):

	Benchmark 1: deno run --allow-read --allow-write deno.js
	Processing time (w/o IO): 21971ms
	Processing time (w/o IO): 21957ms
	Processing time (w/o IO): 20182ms
	  Time (mean ± σ):     21.524 s ±  1.265 s    [User: 21.568 s, System: 0.159 s]
	  Range (min … max):   20.630 s … 22.419 s    2 runs
	 
Java (JIT):

	Benchmark 1: java -XX:+UseSerialGC -jar ./target/main.jar
Java (GraalVM):

	Benchmark 1: ./target/related
	Processing time (w/o IO): 5533 ms
	Processing time (w/o IO): 5544 ms
	Processing time (w/o IO): 5539 ms
	  Time (mean ± σ):     11.546 s ±  0.011 s    [User: 11.445 s, System: 0.091 s]
	  Range (min … max):   11.538 s … 11.554 s    2 runs
	 
Java (GraalVM) Concurrent:

	Benchmark 1: ./target/related
	Processing time (w/o IO): 2753 ms
	Processing time (w/o IO): 2752 ms
	Processing time (w/o IO): 2763 ms
	  Time (mean ± σ):      3.103 s ±  0.010 s    [User: 16.846 s, System: 0.125 s]
	  Range (min … max):    3.096 s …  3.110 s    2 runs
	 
Nim:

	Benchmark 1: ./related
	Processing time (w/o IO): 2871.556ms
	Processing time (w/o IO): 2838.41ms
	Processing time (w/o IO): 2837.825ms
	  Time (mean ± σ):      3.225 s ±  0.015 s    [User: 3.147 s, System: 0.069 s]
	  Range (min … max):    3.215 s …  3.236 s    2 runs
	 
Nim Concurrent:

	Benchmark 1: ./build/related_con
	Processing time (w/o IO): 745.735ms
	Processing time (w/o IO): 758.981ms
	Processing time (w/o IO): 742.326ms
	  Time (mean ± σ):      1.113 s ±  0.015 s    [User: 5.790 s, System: 0.083 s]
	  Range (min … max):    1.102 s …  1.124 s    2 runs
	 
F# (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp
	Processing time (w/o IO): 6426.9712ms
	Processing time (w/o IO): 6426.2432ms
	Processing time (w/o IO): 6428.7645ms
	  Time (mean ± σ):     17.861 s ±  0.053 s    [User: 17.871 s, System: 0.704 s]
	  Range (min … max):   17.823 s … 17.899 s    2 runs
	 
F# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/fsharp_con
	Processing time (w/o IO): 1213ms
	Processing time (w/o IO): 1210ms
	Processing time (w/o IO): 1262ms
	  Time (mean ± σ):      7.400 s ±  0.027 s    [User: 24.507 s, System: 0.615 s]
	  Range (min … max):    7.380 s …  7.419 s    2 runs
	 
F# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp_con
	Processing time (w/o IO): 1235ms
	Processing time (w/o IO): 1235ms
	Processing time (w/o IO): 1238ms
	  Time (mean ± σ):     10.522 s ±  0.013 s    [User: 28.870 s, System: 0.725 s]
	  Range (min … max):   10.512 s … 10.531 s    2 runs
	 
F# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/fsharp
	Processing time (w/o IO): 4016.3932ms
	Processing time (w/o IO): 4009.8618ms
	Processing time (w/o IO): 4017.4979ms
	  Time (mean ± σ):     16.164 s ±  0.003 s    [User: 17.517 s, System: 0.740 s]
	  Range (min … max):   16.162 s … 16.167 s    2 runs
	 
C# (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 3242.8699ms
	Processing time (w/o IO): 3247.5105ms
	Processing time (w/o IO): 3254.9784ms
	  Time (mean ± σ):      7.343 s ±  0.007 s    [User: 7.319 s, System: 0.161 s]
	  Range (min … max):    7.338 s …  7.348 s    2 runs
	 
C# (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 3237.4129ms
	Processing time (w/o IO): 3237.6803ms
	Processing time (w/o IO): 3239.8714ms
	  Time (mean ± σ):      6.957 s ±  0.003 s    [User: 6.909 s, System: 0.139 s]
	  Range (min … max):    6.955 s …  6.958 s    2 runs
	 
C# Concurrent (JIT):

	Benchmark 1: ./bin/release/net8.0/jit/related
	Processing time (w/o IO): 525.1077ms
	Processing time (w/o IO): 524.4695ms
	Processing time (w/o IO): 523.2362ms
	  Time (mean ± σ):      1.893 s ±  0.016 s    [User: 8.636 s, System: 0.145 s]
	  Range (min … max):    1.882 s …  1.904 s    2 runs
	 
C# Concurrent (AOT):

	Benchmark 1: ./bin/release/net8.0/aot/related
	Processing time (w/o IO): 579.3818ms
	Processing time (w/o IO): 577.7935ms
	Processing time (w/o IO): 578.5215ms
	  Time (mean ± σ):      1.627 s ±  0.004 s    [User: 9.231 s, System: 0.150 s]
	  Range (min … max):    1.624 s …  1.630 s    2 runs
	 
LuaJIT:

	Benchmark 1: luajit only_lua.lua
	Processing time (w/o IO):	12126.542806625	ms
	Processing time (w/o IO):	11993.499040604	ms
	Processing time (w/o IO):	9736.7298603058	ms
	  Time (mean ± σ):     14.981 s ±  1.536 s    [User: 14.797 s, System: 0.173 s]
	  Range (min … max):   13.894 s … 16.067 s    2 runs
	 
LuaJIT (JIT OFF):

	Benchmark 1: luajit -joff only_lua.lua
	Processing time (w/o IO):	90855.901956558	ms
	Processing time (w/o IO):	90776.958942413	ms
	Processing time (w/o IO):	90685.693025589	ms
	  Time (mean ± σ):     95.680 s ±  0.021 s    [User: 95.490 s, System: 0.175 s]
	  Range (min … max):   95.665 s … 95.694 s    2 runs
	 
Lua:

	Benchmark 1: lua only_lua.lua
	Processing time (w/o IO):	149352.80394554	ms
	Processing time (w/o IO):	149588.69099617	ms
	  Time (abs ≡):        155.672 s               [User: 155.484 s, System: 0.167 s]
	 
ocaml:

	Benchmark 1: ./_build/default/bin/main.exe
	Processing time (w/o IO): 30499ms
	Processing time (w/o IO): 29927ms
	Processing time (w/o IO): 29971ms
	  Time (mean ± σ):     31.363 s ±  0.012 s    [User: 30.665 s, System: 0.686 s]
	  Range (min … max):   31.354 s … 31.371 s    2 runs
	 
Erlang:

	Benchmark 1: _build/default/bin/related_erl
	Processing time (w/o IO): 133.511496 s
	Processing time (w/o IO): 129.841413 s
	Processing time (w/o IO): 129.888665 s
	  Time (mean ± σ):     132.663 s ±  0.020 s    [User: 132.014 s, System: 0.695 s]
	  Range (min … max):   132.648 s … 132.677 s    2 runs
	 
Ruby:

	Benchmark 1: ruby related.rb
	Processing time (w/o IO): 426010ms
	Processing time (w/o IO): 423229ms
	Processing time (w/o IO): 427198ms
	  Time (mean ± σ):     426.009 s ±  2.829 s    [User: 425.821 s, System: 0.153 s]
	  Range (min … max):   424.008 s … 428.009 s    2 runs
	 
daScript (interpreted):

	Benchmark 1: das related.das
