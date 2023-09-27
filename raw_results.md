Device: Thinkpad p16s Gen 1 w/AMD Ryzen 7 PRO 6850U running Arch Linux

Todo:

-   Run on VM (Please submit a PR if you have the results from a VM)

Go:

    Benchmark 1: ./related
    Processing time (w/o IO) 20.934878ms
    Processing time (w/o IO) 20.837046ms
    Processing time (w/o IO) 20.304164ms
    Processing time (w/o IO) 21.205195ms
    Processing time (w/o IO) 20.925311ms
    Processing time (w/o IO) 20.543126ms
    Processing time (w/o IO) 20.817981ms
    Processing time (w/o IO) 22.603144ms
    Processing time (w/o IO) 20.690819ms
    Processing time (w/o IO) 20.758276ms
    Processing time (w/o IO) 20.957224ms
    Processing time (w/o IO) 21.43459ms
    Processing time (w/o IO) 20.680624ms
    Time (mean ± σ):      43.5 ms ±   1.4 ms    [User: 40.8 ms, System: 13.0 ms]
    Range (min … max):    41.0 ms …  45.7 ms    10 runs

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
    Processing time (w/o IO): 8.131963ms
    Processing time (w/o IO): 8.091036ms
    Processing time (w/o IO): 8.650181ms
    Processing time (w/o IO): 7.957012ms
    Processing time (w/o IO): 7.388579ms
    Processing time (w/o IO): 7.807204ms
    Processing time (w/o IO): 7.146582ms
    Processing time (w/o IO): 8.190769ms
    Processing time (w/o IO): 8.300209ms
    Processing time (w/o IO): 8.856909ms
    Processing time (w/o IO): 7.753077ms
    Processing time (w/o IO): 7.66899ms
    Processing time (w/o IO): 7.69483ms
    Time (mean ± σ):      23.1 ms ±   0.8 ms    [User: 69.2 ms, System: 27.1 ms]
    Range (min … max):    22.1 ms …  25.1 ms    10 runs

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
    Processing time (w/o IO):  102.817098ms
    Processing time (w/o IO):  108.400743ms
    Processing time (w/o IO):  103.016007ms
    Processing time (w/o IO):  106.131512ms
    Processing time (w/o IO):  102.349716ms
    Processing time (w/o IO):  102.549184ms
    Processing time (w/o IO):  106.453693ms
    Processing time (w/o IO):  103.57565ms
    Processing time (w/o IO):  102.969981ms
    Processing time (w/o IO):  106.170902ms
    Time (mean ± σ):     404.8 ms ±   5.4 ms    [User: 391.5 ms, System: 13.1 ms]
    Range (min … max):   400.4 ms … 418.3 ms    10 runs

vlang:

    Benchmark 1: ./related
    Processing time (w/o IO): 339.234ms
    Processing time (w/o IO): 332.728ms
    Processing time (w/o IO): 339.477ms
    Processing time (w/o IO): 339.862ms
    Processing time (w/o IO): 341.234ms
    Time (mean ± σ): 559.0 ms ± 5.3 ms [User: 701.2 ms, System: 84.5 ms]
    Range (min … max): 551.4 ms … 565.4 ms 5 runs
