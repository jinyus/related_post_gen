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
    Processing time (w/o IO) 8.138984ms
    Processing time (w/o IO) 7.199389ms
    Processing time (w/o IO) 6.864214ms
    Processing time (w/o IO) 7.275378ms
    Processing time (w/o IO) 7.411712ms
    Processing time (w/o IO) 9.978153ms
    Processing time (w/o IO) 9.259611ms
    Processing time (w/o IO) 9.085912ms
    Processing time (w/o IO) 11.104087ms
    Processing time (w/o IO) 11.531385ms
    Processing time (w/o IO) 7.610065ms
    Processing time (w/o IO) 8.73139ms
    Processing time (w/o IO) 10.155972ms
    Time (mean ± σ):      33.6 ms ±   2.5 ms    [User: 118.9 ms, System: 21.4 ms]
    Range (min … max):    29.9 ms …  36.9 ms    10 runs

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
    Processing time (w/o IO): 44.66993ms
    Processing time (w/o IO): 45.962796ms
    Processing time (w/o IO): 53.485252ms
    Processing time (w/o IO): 50.532493ms
    Processing time (w/o IO): 52.428944ms
    Processing time (w/o IO): 58.231513ms
    Processing time (w/o IO): 48.994757ms
    Processing time (w/o IO): 48.623889ms
    Processing time (w/o IO): 54.294663ms
    Processing time (w/o IO): 51.416846ms
    Time (mean ± σ):      96.0 ms ±   7.1 ms    [User: 83.3 ms, System: 11.7 ms]
    Range (min … max):    87.7 ms … 107.3 ms    10 runs
