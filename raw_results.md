Device: Thinkpad p16s Gen 1 w/AMD Ryzen 7 PRO 6850U running Arch Linux

Todo:

-   Run on VM (Please submit a PR if you have the results from a VM)

Go:

    Benchmark 1: ./related
    Processing time (w/o IO) 33.270987ms
    Processing time (w/o IO) 32.847184ms
    Processing time (w/o IO) 34.3474ms
    Processing time (w/o IO) 33.041485ms
    Processing time (w/o IO) 33.434698ms
    Processing time (w/o IO) 32.572843ms
    Processing time (w/o IO) 33.980587ms
    Processing time (w/o IO) 35.250463ms
    Processing time (w/o IO) 34.353546ms
    Processing time (w/o IO) 34.508107ms
    Time (mean ± σ):      56.5 ms ±   2.1 ms    [User: 52.2 ms, System: 12.5 ms]
    Range (min … max):    54.0 ms …  60.7 ms    10 runs

Rust:

    Benchmark 1: ./target/release/rust
    Processing time (w/o IO): 37.812911ms
    Processing time (w/o IO): 39.407554ms
    Processing time (w/o IO): 37.176507ms
    Processing time (w/o IO): 38.462027ms
    Processing time (w/o IO): 37.247118ms
    Processing time (w/o IO): 38.253408ms
    Processing time (w/o IO): 37.980044ms
    Processing time (w/o IO): 37.536684ms
    Processing time (w/o IO): 37.132925ms
    Processing time (w/o IO): 37.819127ms
    Time (mean ± σ):      53.5 ms ±   1.0 ms    [User: 43.5 ms, System: 9.9 ms]
    Range (min … max):    52.3 ms …  55.0 ms    10 runs

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

Rust Max:

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
