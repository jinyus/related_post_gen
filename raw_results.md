Device: Github Actions

Go:

    Benchmark 1: ./related
    Processing time (w/o IO) 31.269854ms
    Processing time (w/o IO) 31.05045ms
    Processing time (w/o IO) 32.21367ms
    Processing time (w/o IO) 30.934048ms
    Processing time (w/o IO) 30.865746ms
    Processing time (w/o IO) 30.679643ms
    Processing time (w/o IO) 30.954748ms
    Processing time (w/o IO) 30.425139ms
    Processing time (w/o IO) 30.519641ms
    Processing time (w/o IO) 31.218552ms
    Processing time (w/o IO) 30.572241ms
    Processing time (w/o IO) 30.790345ms
    Processing time (w/o IO) 31.118851ms
    Time (mean ± σ):      62.2 ms ±   1.3 ms    [User: 56.8 ms, System: 12.1 ms]
    Range (min … max):    60.1 ms …  64.9 ms    10 runs

Go Concurrent:

    Benchmark 1: ./related_concurrent
    Processing time (w/o IO) 15.917882ms
    Processing time (w/o IO) 15.938083ms
    Processing time (w/o IO) 16.016784ms
    Processing time (w/o IO) 16.32589ms
    Processing time (w/o IO) 15.872682ms
    Processing time (w/o IO) 15.981984ms
    Processing time (w/o IO) 16.224388ms
    Processing time (w/o IO) 15.994884ms
    Processing time (w/o IO) 16.100686ms
    Processing time (w/o IO) 16.279289ms
    Processing time (w/o IO) 17.369308ms
    Processing time (w/o IO) 16.274189ms
    Processing time (w/o IO) 17.616913ms
    Time (mean ± σ):      50.1 ms ±   1.9 ms    [User: 55.8 ms, System: 13.2 ms]
    Range (min … max):    48.0 ms …  52.9 ms    10 runs

Rust:

    Benchmark 1: ./target/release/rust
    Processing time (w/o IO): 33.391886ms
    Processing time (w/o IO): 33.099981ms
    Processing time (w/o IO): 33.145482ms
    Processing time (w/o IO): 33.125682ms
    Processing time (w/o IO): 33.194583ms
    Processing time (w/o IO): 33.207783ms
    Processing time (w/o IO): 33.108281ms
    Processing time (w/o IO): 33.173583ms
    Processing time (w/o IO): 33.116182ms
    Processing time (w/o IO): 33.098581ms
    Processing time (w/o IO): 33.139482ms
    Processing time (w/o IO): 33.108681ms
    Processing time (w/o IO): 33.113081ms
    Time (mean ± σ):      52.0 ms ±   0.3 ms    [User: 44.3 ms, System: 7.6 ms]
    Range (min … max):    51.5 ms …  52.5 ms    10 runs

Rust Rayon:

    Benchmark 1: ./target/release/rust_rayon
    Processing time (w/o IO): 21.259874ms
    Processing time (w/o IO): 21.254074ms
    Processing time (w/o IO): 21.141171ms
    Processing time (w/o IO): 21.192772ms
    Processing time (w/o IO): 21.331174ms
    Processing time (w/o IO): 21.381975ms
    Processing time (w/o IO): 21.389875ms
    Processing time (w/o IO): 22.293091ms
    Processing time (w/o IO): 21.509678ms
    Processing time (w/o IO): 21.537278ms
    Processing time (w/o IO): 21.686881ms
    Processing time (w/o IO): 21.495078ms
    Processing time (w/o IO): 21.376775ms
    Time (mean ± σ):      40.1 ms ±   0.5 ms    [User: 48.7 ms, System: 11.3 ms]
    Range (min … max):    39.6 ms …  41.2 ms    10 runs

Python:

    Benchmark 1: python3 ./related.py
    Processing time (w/o IO): 0:00:02.733182
    Processing time (w/o IO): 0:00:02.722080
    Processing time (w/o IO): 0:00:02.720514
    Processing time (w/o IO): 0:00:02.717429
    Processing time (w/o IO): 0:00:02.724948
    Time (mean ± σ):      3.016 s ±  0.006 s    [User: 3.002 s, System: 0.013 s]
    Range (min … max):    3.011 s …  3.025 s    5 runs

Numpy:

    Benchmark 1: python3 ./related_np.py
    Processing time (w/o IO):  0.948s
    Processing time (w/o IO):  0.915s
    Processing time (w/o IO):  0.916s
    Processing time (w/o IO):  0.915s
    Processing time (w/o IO):  0.916s

    Time (mean ± σ):      1.318 s ±  0.025 s    [User: 1.279 s, System: 0.120 s]
    Range (min … max):    1.298 s …  1.351 s    5 runs

Crystal:

    Benchmark 1: ./crystal
    Processing time (w/o IO): 56.559184ms
    Processing time (w/o IO): 56.219878ms
    Processing time (w/o IO): 55.871473ms
    Processing time (w/o IO): 56.233179ms
    Processing time (w/o IO): 55.834671ms
    Processing time (w/o IO): 56.123813ms
    Processing time (w/o IO): 56.299418ms
    Processing time (w/o IO): 56.015908ms
    Processing time (w/o IO): 55.641495ms
    Processing time (w/o IO): 55.816402ms

    Time (mean ± σ):     112.1 ms ±   0.7 ms    [User: 100.4 ms, System: 11.6 ms]
    Range (min … max):   111.1 ms … 113.2 ms    10 runs

Zig:

    Benchmark 1: ./main
    Processing time (w/o IO): 176ms
    Processing time (w/o IO): 176ms
    Processing time (w/o IO): 176ms
    Processing time (w/o IO): 176ms
    Processing time (w/o IO): 176ms
    Processing time (w/o IO): 176ms
    Processing time (w/o IO): 176ms
    Processing time (w/o IO): 176ms
    Processing time (w/o IO): 176ms
    Processing time (w/o IO): 176ms
    Processing time (w/o IO): 176ms
    Processing time (w/o IO): 176ms
    Processing time (w/o IO): 176ms

    Time (mean ± σ):      2.205 s ±  0.008 s    [User: 0.719 s, System: 1.484 s]
    Range (min … max):    2.198 s …  2.228 s    10 runs

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

Julia v1:

    Benchmark 1: julia related.jl
    Without I/O: 1.327910 seconds (189.36 k allocations: 1.939 GiB, 4.78% gc time, 9.17% compilation time)
    Without I/O: 1.330912 seconds (189.36 k allocations: 1.939 GiB, 4.70% gc time, 8.99% compilation time)
    Without I/O: 1.321944 seconds (189.36 k allocations: 1.939 GiB, 4.72% gc time, 9.21% compilation time)
    Without I/O: 1.331772 seconds (189.36 k allocations: 1.939 GiB, 4.87% gc time, 9.01% compilation time)
    Without I/O: 1.326002 seconds (189.36 k allocations: 1.939 GiB, 4.86% gc time, 9.26% compilation time)
    Without I/O: 1.323635 seconds (189.36 k allocations: 1.939 GiB, 4.84% gc time, 8.96% compilation time)
    Time (mean ± σ): 4.470 s ± 0.014 s [User: 4.284 s, System: 0.184 s]
    Range (min … max): 4.453 s … 4.491 s 5 runs

Julia v2:

    Benchmark 1: julia related_v2.jl
    Without I/O: 0.607281 seconds (42.72 k allocations: 432.364 MiB, 7.26% gc time, 16.65% compilation time)
    Without I/O: 0.598858 seconds (42.72 k allocations: 432.364 MiB, 7.40% gc time, 17.20% compilation time)
    Without I/O: 0.600460 seconds (42.72 k allocations: 432.364 MiB, 7.37% gc time, 17.38% compilation time)
    Without I/O: 0.607699 seconds (42.72 k allocations: 432.364 MiB, 7.36% gc time, 17.03% compilation time)
    Without I/O: 0.617175 seconds (42.72 k allocations: 432.364 MiB, 7.38% gc time, 17.45% compilation time)
    Without I/O: 0.611579 seconds (42.72 k allocations: 432.364 MiB, 7.31% gc time, 17.15% compilation time)
    Time (mean ± σ):      5.112 s ±  0.035 s    [User: 4.895 s, System: 0.216 s]
    Range (min … max):    5.069 s …  5.153 s    5 runs

vlang:

    Benchmark 1: ./related
    Processing time (w/o IO): 541.002ms
    Processing time (w/o IO): 548.037ms
    Processing time (w/o IO): 541.625ms
    Processing time (w/o IO): 547.458ms
    Processing time (w/o IO): 536.242ms
    Time (mean ± σ):     953.1 ms ±  12.1 ms    [User: 972.4 ms, System: 42.4 ms]
    Range (min … max):   935.0 ms … 964.8 ms    5 runs
