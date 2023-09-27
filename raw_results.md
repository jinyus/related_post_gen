Device: Thinkpad p16s Gen 1 w/AMD Ryzen 7 PRO 6850U running Arch Linux

Todo:

-   Run on VM (Please submit a PR if you have the results from a VM)

Go:

    Benchmark 1: ./related
    Processing time (w/o IO) 27.487946ms
    Processing time (w/o IO) 26.172395ms
    Processing time (w/o IO) 25.250405ms
    Processing time (w/o IO) 25.154513ms
    Processing time (w/o IO) 25.10723ms
    Processing time (w/o IO) 26.256557ms
    Processing time (w/o IO) 25.22659ms
    Processing time (w/o IO) 30.632673ms
    Processing time (w/o IO) 25.225752ms
    Processing time (w/o IO) 26.666182ms
    Processing time (w/o IO) 31.793454ms
    Processing time (w/o IO) 26.25502ms
    Processing time (w/o IO) 26.40609ms
    Time (mean ± σ):      50.7 ms ±   3.3 ms    [User: 45.6 ms, System: 13.4 ms]
    Range (min … max):    48.4 ms …  53.3 ms    10 runs

Rust:

    Benchmark 1: ./target/release/rust_max
    Processing time (w/o IO): 23.883277ms
    Processing time (w/o IO): 23.185584ms
    Processing time (w/o IO): 23.119578ms
    Processing time (w/o IO): 24.165036ms
    Processing time (w/o IO): 23.48229ms
    Processing time (w/o IO): 24.449101ms
    Processing time (w/o IO): 23.581751ms
    Processing time (w/o IO): 23.878877ms
    Processing time (w/o IO): 23.901787ms
    Processing time (w/o IO): 22.709303ms
    Processing time (w/o IO): 24.491706ms
    Processing time (w/o IO): 22.751906ms
    Processing time (w/o IO): 23.401616ms
    Time (mean ± σ):      38.4 ms ±   1.8 ms    [User: 30.9 ms, System: 7.2 ms]
    Range (min … max):    36.4 ms …  41.4 ms    10 runs

Go Concurrent:

    Benchmark 1: ./related_concurrent
    Processing time (w/o IO) 5.874728ms
    Processing time (w/o IO) 5.091445ms
    Processing time (w/o IO) 5.714579ms
    Processing time (w/o IO) 5.845463ms
    Processing time (w/o IO) 5.734274ms
    Processing time (w/o IO) 5.697398ms
    Processing time (w/o IO) 6.057296ms
    Processing time (w/o IO) 6.820045ms
    Processing time (w/o IO) 6.158707ms
    Processing time (w/o IO) 5.334357ms
    Processing time (w/o IO) 5.588374ms
    Processing time (w/o IO) 5.246285ms
    Processing time (w/o IO) 5.800555ms
    Time (mean ± σ):      29.0 ms ±   1.6 ms    [User: 53.4 ms, System: 20.8 ms]
    Range (min … max):    26.9 ms …  32.9 ms    10 runs

Rust Rayon:

    Benchmark 1: ./target/release/rust_rayon
    Processing time (w/o IO): 9.559824ms
    Processing time (w/o IO): 8.554372ms
    Processing time (w/o IO): 9.599494ms
    Processing time (w/o IO): 9.137207ms
    Processing time (w/o IO): 9.359376ms
    Processing time (w/o IO): 9.258732ms
    Processing time (w/o IO): 10.617308ms
    Processing time (w/o IO): 9.055352ms
    Processing time (w/o IO): 9.117372ms
    Processing time (w/o IO): 9.468889ms
    Time (mean ± σ):      24.2 ms ±   0.8 ms    [User: 89.3 ms, System: 33.7 ms]
    Range (min … max):    23.4 ms …  25.8 ms    10 runs

Python:

    Processing time (w/o IO): 0:00:01.355318
    Processing time (w/o IO): 0:00:01.349105
    Processing time (w/o IO): 0:00:01.335888
    Processing time (w/o IO): 0:00:01.371586
    Processing time (w/o IO): 0:00:01.316292
    Time (mean ± σ):      1.529 s ±  0.018 s    [User: 1.489 s, System: 0.031 s]
    Range (min … max):    1.502 s …  1.549 s    5 runs

Numpy:

    Benchmark 1: python3 ./related_np.py
    Processing time (w/o IO): 0.567s
    Processing time (w/o IO): 0.572s
    Processing time (w/o IO): 0.575s
    Processing time (w/o IO): 0.571s
    Processing time (w/o IO): 0.579s
    Time (mean ± σ): 877.5 ms ± 11.4 ms [User: 972.4 ms, System: 1236.1 ms]
    Range (min … max): 864.6 ms … 895.9 ms 5 runs

Crystal:

    Benchmark 1: ./crystal
    Processing time (w/o IO): 33.834024ms
    Processing time (w/o IO): 34.287231ms
    Processing time (w/o IO): 33.144332ms
    Processing time (w/o IO): 34.49557ms
    Processing time (w/o IO): 33.036775ms
    Processing time (w/o IO): 33.451218ms
    Processing time (w/o IO): 33.893041ms
    Processing time (w/o IO): 33.496616ms
    Processing time (w/o IO): 34.412248ms
    Processing time (w/o IO): 33.953733ms
    Time (mean ± σ):      72.3 ms ±   2.9 ms    [User: 62.4 ms, System: 9.0 ms]
    Range (min … max):    69.3 ms …  79.8 ms    10 runs

Odin:

    Benchmark 1: ./related
    Processing time (w/o IO):  109.823395ms
    Processing time (w/o IO):  111.083283ms
    Processing time (w/o IO):  108.994925ms
    Processing time (w/o IO):  110.026847ms
    Processing time (w/o IO):  108.80663ms
    Processing time (w/o IO):  112.385774ms
    Processing time (w/o IO):  109.242098ms
    Processing time (w/o IO):  111.419993ms
    Processing time (w/o IO):  110.349589ms
    Processing time (w/o IO):  110.501355ms
    Time (mean ± σ):     397.7 ms ±   4.6 ms    [User: 386.2 ms, System: 11.3 ms]
    Range (min … max):   393.7 ms … 406.3 ms    10 runs
