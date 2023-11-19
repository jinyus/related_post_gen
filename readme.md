### Problem:

Given a list of posts, compute the top 5 related posts for each post based on the number of shared tags.

<details>
<summary> Steps </summary>

-   Read the posts JSON file.
-   Iterate over the posts and populate a map containing: `tag -> List<int>`, with the int representing the post index of each post with that tag.
-   Iterate over the posts and for each post:
    -   Create a map: `PostIndex -> int` to track the number of shared tags
    -   For each tag, Iterate over the posts that have that tag
    -   For each post, increment the shared tag count in the map.
-   Sort the related posts by the number of shared tags.
-   Write the top 5 related posts for each post to a new JSON file.
</details>

### Run Benchmark

```
./run.sh go | rust | python | all

# windows (powershell)
./run.ps1 go | rust | python | all

or
pwsh ./run.ps1 go | rust | python | all

# Docker (check the dockerfile for available variables)
docker build -t databench .
docker run -e TEST_NAME=all -it --rm databench
```

<details>
<summary> Rules </summary>

<h3>No:</h3>

-   FFI (including assembly inlining)
-   Unsafe code blocks
-   Custom benchmarking
-   Disabling runtime checks (bounds etc)
-   Specific hardware targeting
-   SIMD for single threaded solutions
-   Hardcoding number of posts
-   Lazy evaluation (Unless results are computed at runtime and timed)
-   Computation Caching

<h3>Must:</h3>

-   Support up to 100,000 posts
-   Support UTF8 strings
-   Parse json at runtime
-   Support up to 100 tags
-   Represent tags as strings
-   Be production ready
-   Use less than 8GB of memory
</details>

### Updated Results from github workflow ([raw data](https://github.com/jinyus/related_post_gen/blob/main/raw_results.md))

##### VM Specs ( Azure F4s v2 - 4vCPU-8GB-Ubuntu 22.04 )

| Language         | Time (5k posts)                       | 20k posts                              | 60k posts                           | Total     |
| ---------------- | ------------------------------------- | -------------------------------------- | ----------------------------------- | --------- |
| _Julia HO_[^1] | 9.30 ms | 65.00 ms | 169.33 ms | 243.63 ms |
| D (v2) | 21.96 ms | $\textsf{\color{lightgreen}259.01 ms}$ | $\textsf{\color{lightgreen}2.14 s}$ | 2.42 s |
| Go | $\textsf{\color{lightgreen}21.83 ms}$ | 315.59 ms | 2.74 s | 3.08 s |
| C++ | 23.00 ms | 327.33 ms | 2.80 s | 3.15 s |
| D | 25.69 ms | 327.47 ms | 2.81 s | 3.16 s |
| Rust | 22.07 ms | 316.11 ms | 2.84 s | 3.17 s |
| Nim | 22.27 ms | 317.85 ms | 2.86 s | 3.20 s |
| Zig | 23.00 ms | 338.67 ms | 3.02 s | 3.39 s |
| Vlang | 24.74 ms | 362.28 ms | 3.16 s | 3.54 s |
| Julia | 24.31 ms | 391.39 ms | 3.21 s | 3.62 s |
| C# (AOT) | 27.19 ms | 378.48 ms | 3.28 s | 3.69 s |
| C# (JIT) | 27.73 ms | 379.95 ms | 3.30 s | 3.70 s |
| Odin | 44.93 ms | 533.66 ms | 5.79 s | 6.37 s |
| Swift | 52.34 ms | 725.63 ms | 6.23 s | 7.01 s |
| Java (GraalVM) | 56.00 ms | 631.67 ms | 6.56 s | 7.25 s |
| Java (JIT) | 55.90 ms | 764.33 ms | 6.66 s | 7.48 s |
| Crystal | 54.47 ms | 824.10 ms | 7.18 s | 8.06 s |
| LuaJIT | 112.91 ms | 1.55 s | 12.22 s | 13.88 s |
| JS (Bun) | 126.00 ms | 1.50 s | 12.62 s | 14.25 s |
| JS (Node) | 179.50 ms | 1.98 s | 17.59 s | 19.75 s |
| Dart AOT | 130.80 ms | 2.01 s | 17.89 s | 20.03 s |
| Dart VM | 172.90 ms | 2.16 s | 18.57 s | 20.90 s |
| JS (Deno) | 179.80 ms | 2.30 s | 21.44 s | 23.91 s |
| Lobster (C++) | 185.27 ms | 2.86 s | 26.59 s | 29.63 s |
| Scala Native | 298.50 ms | 3.54 s | 30.09 s | 33.93 s |
| Typed Racket | 244.32 ms | 4.10 s | 33.32 s | 37.66 s |
| Racket | 242.81 ms | 3.96 s | 35.50 s | 39.70 s |
| Ocaml | 148.40 ms | 3.03 s | 38.01 s | 41.19 s |
| LuaJIT (JIT OFF) | 679.91 ms | 10.30 s | 91.36 s | 102.34 s |
| Erlang | 892.97 ms | 15.00 s | 141.13 s | 157.03 s |
| Lua | 1.11 s | 16.79 s | 150.47 s | 168.37 s |
| Lobster (JIT) | 1.36 s | 21.19 s | 186.26 s | 208.81 s |
| Python | 1.47 s | 23.53 s | 215.46 s | 240.46 s |
| Inko[^2] | 10.08 s | 156.59 s | 1398.50 s | 1565.18 s |
| Numpy | 382.97 ms | 6.29 s | OOM | N/A |

### Multicore Results

| Language       | Time (5k posts) | 20k posts        | 60k posts        | Total     |
| -------------- | --------------- | ---------------- | ---------------- | --------- |
| D Concurrent | 12.65 ms | $\textsf{\color{lightgreen}119.09 ms}$ | $\textsf{\color{lightgreen}890.29 ms}$ | 1.02 s |
| C# Concurrent (JIT) | 13.25 ms | 130.13 ms | 1.03 s | 1.18 s |
| C# Concurrent (AOT) | 11.71 ms | 145.17 ms | 1.22 s | 1.37 s |
| Go Concurrent | $\textsf{\color{lightgreen}11.26 ms}$ | 150.40 ms | 1.28 s | 1.44 s |
| C++ Concurrent | 13.30 ms | 167.67 ms | 1.41 s | 1.59 s |
| Nim Concurrent | 12.32 ms | 172.13 ms | 1.48 s | 1.66 s |
| Rust Concurrent | 18.34 ms | 194.04 ms | 1.53 s | 1.75 s |
| F# Concurrent (AOT) | 16.10 ms | 233.67 ms | 2.04 s | 2.29 s |
| F# Concurrent | 20.50 ms | 287.33 ms | 2.44 s | 2.75 s |
| Julia Concurrent | 23.71 ms | 386.26 ms | 3.17 s | 3.58 s |
| Swift Concurrent | 33.06 ms | 397.78 ms | 3.44 s | 3.87 s |
| Java (GraalVM) Concurrent | 50.70 ms | 608.33 ms | 4.03 s | 4.68 s |

### Memory Usage Results

| Language | 5k posts | 20k posts | 60k posts | Total |
| -------- | -------- | --------- | --------- | ----- |
| Zig | 4.03 MB | 10.88 MB | 30.27 MB | 45.18 MB |
| Java (GraalVM) Concurrent | 21.50 MB | 34.51 MB | 69.25 MB | 125.26 MB |
| Java (GraalVM) | 20.44 MB | 38.16 MB | 84.38 MB | 142.97 MB |
| Odin | 13.00 MB | 44.11 MB | 101.70 MB | 158.81 MB |
| Rust | 16.49 MB | 39.35 MB | 110.80 MB | 166.65 MB |
| D | 15.22 MB | 34.61 MB | 119.31 MB | 169.15 MB |
| Rust Concurrent | 20.53 MB | 41.05 MB | 118.55 MB | 180.13 MB |
| D Concurrent | 17.86 MB | 48.55 MB | 122.33 MB | 188.73 MB |
| D (v2) | 15.05 MB | 44.19 MB | 140.04 MB | 199.29 MB |
| Nim | 16.92 MB | 54.25 MB | 147.07 MB | 218.25 MB |
| Go | 15.36 MB | 45.83 MB | 162.86 MB | 224.05 MB |
| Go Concurrent | 15.95 MB | 46.39 MB | 163.55 MB | 225.89 MB |
| Python | 23.82 MB | 57.05 MB | 146.66 MB | 227.53 MB |
| Nim Concurrent | 13.02 MB | 54.07 MB | 178.25 MB | 245.34 MB |
| Crystal | 17.03 MB | 53.15 MB | 184.83 MB | 255.00 MB |
| Java (JIT) | 74.47 MB | 107.80 MB | 132.05 MB | 314.31 MB |
| Lua | 21.44 MB | 75.19 MB | 235.53 MB | 332.16 MB |
| Lobster (C++) | 28.09 MB | 80.84 MB | 250.86 MB | 359.79 MB |
| Lobster (JIT) | 26.00 MB | 82.38 MB | 252.50 MB | 360.88 MB |
| JS (Node) | 74.31 MB | 118.15 MB | 221.73 MB | 414.18 MB |
| Dart AOT | 40.43 MB | 117.50 MB | 258.33 MB | 416.26 MB |
| C# (AOT) | 37.81 MB | 102.43 MB | 280.79 MB | 421.03 MB |
| C# Concurrent (AOT) | 37.77 MB | 101.85 MB | 285.70 MB | 425.32 MB |
| LuaJIT (JIT OFF) | 27.71 MB | 104.23 MB | 294.89 MB | 426.83 MB |
| LuaJIT | 28.02 MB | 103.87 MB | 303.15 MB | 435.04 MB |
| Erlang | 84.87 MB | 121.89 MB | 251.17 MB | 457.94 MB |
| JS (Deno) | 76.28 MB | 127.01 MB | 256.91 MB | 460.20 MB |
| Ocaml | 41.98 MB | 108.60 MB | 315.47 MB | 466.05 MB |
| C# (JIT) | 64.46 MB | 132.33 MB | 335.39 MB | 532.18 MB |
| C# Concurrent (JIT) | 66.42 MB | 134.45 MB | 338.34 MB | 539.21 MB |
| Racket | 100.53 MB | 146.38 MB | 327.07 MB | 573.98 MB |
| JS (Bun) | 105.87 MB | 161.51 MB | 307.85 MB | 575.23 MB |
| C++ | 47.07 MB | 175.49 MB | 454.66 MB | 677.21 MB |
| Dart VM | 146.01 MB | 201.69 MB | 337.21 MB | 684.92 MB |
| Typed Racket | 140.55 MB | 200.84 MB | 363.59 MB | 704.99 MB |
| Vlang | 45.68 MB | 168.95 MB | 502.99 MB | 717.61 MB |
| C++ Concurrent | 53.27 MB | 197.29 MB | 522.14 MB | 772.70 MB |
| Swift | 76.42 MB | 245.75 MB | 701.57 MB | 1023.74 MB |
| Swift Concurrent | 77.95 MB | 248.82 MB | 707.38 MB | 1034.15 MB |
| Julia | 340.26 MB | 394.74 MB | 443.89 MB | 1178.89 MB |
| Julia Concurrent | 340.34 MB | 393.34 MB | 446.80 MB | 1180.49 MB |
| _Julia HO_[^1] | 341.59 MB | 395.27 MB | 443.79 MB | 1180.65 MB |
| Inko[^2] | 76.42 MB | 288.38 MB | 850.69 MB | 1215.49 MB |
| F# Concurrent (AOT) | 149.19 MB | 511.41 MB | 1018.35 MB | 1678.95 MB |
| F# Concurrent | 173.44 MB | 490.84 MB | 1034.36 MB | 1698.64 MB |
| Numpy | 194.21 MB | 2118.52 MB | OOM | N/A |
| Scala Native | 299.26 MB | 1276.21 MB | 4050.95 MB | 5626.42 MB |

<details>
<summary> Old Results with details (on my machine) </summary>

| Language   | Processing Time | Total (+ I/O) | Details                                                                                                                                                                                                                                                                                         |
| ---------- | --------------- | ------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Rust       | -               | 4.5s          | Initial                                                                                                                                                                                                                                                                                         |
| Rust v2    | -               | 2.60s         | Replace std HashMap with fxHashMap by [phazer99](https://www.reddit.com/r/rust/comments/16plgok/comment/k1rtr4x/?utm_source=share&utm_medium=web2x&context=3)                                                                                                                                   |
| Rust v3    | -               | 1.28s         | Preallocate and reuse map and unstable sort by [vdrmn](https://www.reddit.com/r/rust/comments/16plgok/comment/k1rzo7g/?utm_source=share&utm_medium=web2x&context=3) and [Darksonn](https://www.reddit.com/r/rust/comments/16plgok/comment/k1rzwdx/?utm_source=share&utm_medium=web2x&context=3) |
| Rust v4    | -               | 0.13s         | Use Post index as key instead of Pointer and Binary Heap by [RB5009](https://www.reddit.com/r/rust/comments/16plgok/comment/k1s5ea0/?utm_source=share&utm_medium=web2x&context=3)                                                                                                               |
| Rust v5    | 38ms            | 52ms          | Rm hashing from loop and use vec[count] instead of map[index]count by RB5009                                                                                                                                                                                                                    |
| Rust v6    | 23ms            | 36ms          | Optimized Binary Heap Ops by [scottlamb](https://github.com/jinyus/related_post_gen/pull/12)                                                                                                                                                                                                    |
| Rust Rayon | 9ms             | 22ms          | Parallelize by [masmullin2000](https://github.com/jinyus/related_post_gen/pull/4)                                                                                                                                                                                                               |
| Rust Rayon | 8ms             | 22ms          | Remove comparison out of hot loop                                                                                                                                                                                                                                                               |
| ⠀          | ⠀               | ⠀             | ⠀                                                                                                                                                                                                                                                                                               |
| Go         | -               | 1.5s          | Initial                                                                                                                                                                                                                                                                                         |
| Go v2      | -               | 80ms          | Add rust optimizations                                                                                                                                                                                                                                                                          |
| Go v3      | 56ms            | 70ms          | Use goccy/go-json                                                                                                                                                                                                                                                                               |
| Go v3      | 34ms            | 55ms          | Use generic binaryheap by [DrBlury](https://github.com/jinyus/related_post_gen/pull/7)                                                                                                                                                                                                          |
| Go v4      | 26ms            | 50ms          | Replace binary heap with custom priority queue                                                                                                                                                                                                                                                  |
| Go v5      | 20ms            | 43ms          | Remove comparison out of hot loop                                                                                                                                                                                                                                                               |
| Go Con     | 10ms            | 33ms          | Go concurrency by [tirprox](https://github.com/jinyus/related_post_gen/pull/17) and [DrBlury](https://github.com/jinyus/related_post_gen/pull/8)                                                                                                                                                |
| Go Con v2  | 5ms             | 29ms          | Use arena, use waitgroup, rm binheap by [DrBlury](https://github.com/jinyus/related_post_gen/pull/20)                                                                                                                                                                                           |
| ⠀          | ⠀               | ⠀             | ⠀                                                                                                                                                                                                                                                                                               |
| Python     | -               | 7.81s         | Initial                                                                                                                                                                                                                                                                                         |
| Python v2  | 1.35s           | 1.53s         | Add rust optimizations by [dave-andersen](https://github.com/jinyus/related_post_gen/pull/10)                                                                                                                                                                                                   |
| Numpy      | 0.57s           | 0.85s         | Numpy implementation by [Copper280z](https://github.com/jinyus/related_post_gen/pull/11)                                                                                                                                                                                                        |
| ⠀          | ⠀               | ⠀             | ⠀                                                                                                                                                                                                                                                                                               |
| Crystal    | 50ms            | 96ms          | Inital w/ previous optimizations                                                                                                                                                                                                                                                                |
| Crystal v2 | 33ms            | 72ms          | Replace binary heap with custom priority queue                                                                                                                                                                                                                                                  |
| ⠀          | ⠀               | ⠀             | ⠀                                                                                                                                                                                                                                                                                               |
| Odin       | 110ms           | 397ms         | Ported from golang code                                                                                                                                                                                                                                                                         |
| Odin v2    | 104ms           | 404ms         | Remove comparison out of hot loop                                                                                                                                                                                                                                                               |
| ⠀          | ⠀               | ⠀             | ⠀                                                                                                                                                                                                                                                                                               |
| Dart VM    | 125ms           | 530ms         | Ported from golang code                                                                                                                                                                                                                                                                         |
| Dart bin   | 274ms           | 360ms         | Compiled executable                                                                                                                                                                                                                                                                             |
| ⠀          | ⠀               | ⠀             | ⠀                                                                                                                                                                                                                                                                                               |
| Vlang      | 339ms           | 560ms         | Ported from golang code                                                                                                                                                                                                                                                                         |
| ⠀          | ⠀               | ⠀             | ⠀                                                                                                                                                                                                                                                                                               |
| Zig        | 80ms            | 110ms         | Provided by [akhildevelops](https://github.com/jinyus/related_post_gen/pull/30)                                                                                                                                                                                                                 |

</details>

[^1]: Uses specialized datastructures meant for demonstration purposes: [more](https://github.com/LilithHafner/Jokes/tree/main/SuperDataStructures.jl)
[^2]: Inko is currently in beta and optimizations haven't been applied. [more](https://github.com/jinyus/related_post_gen/pull/440#issuecomment-1816583612)