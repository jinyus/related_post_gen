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

```bash
./run.sh go | rust | python | all

# windows (powershell)
./run.ps1 go | rust | python | all
# OR
pwsh ./run.ps1 go | rust | python | all

# Docker (check the dockerfile for available variables)
docker build -t databench .
# OR
docker pull ghcr.io/jinyus/databench:latest
# THEN
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

##### VM Specs ( AWS c7a.xlarge-4vCPU-8GB-RAM-Ubuntu 22.04 )

| Language           | Time (5k posts)                       | 20k posts                              | 60k posts                              | Total     |
| ------------------ | ------------------------------------- | -------------------------------------- | -------------------------------------- | --------- |
| _Julia HO_[^1] | 5.80 ms | 20.00 ms | 89.33 ms | 115.13 ms |
| D (v2) | $\textsf{\color{lightgreen}11.73 ms}$ | $\textsf{\color{lightgreen}123.60 ms}$ | $\textsf{\color{lightgreen}972.19 ms}$ | 1.11 s |
| C++ | 13.80 ms | 170.67 ms | 1.45 s | 1.63 s |
| Rust | 14.18 ms | 193.88 ms | 1.68 s | 1.89 s |
| Zig | 14.00 ms | 195.67 ms | 1.68 s | 1.89 s |
| D | 18.44 ms | 245.60 ms | 2.09 s | 2.35 s |
| Go | 16.87 ms | 248.89 ms | 2.15 s | 2.42 s |
| Neat | 19.21 ms | 260.15 ms | 2.14 s | 2.42 s |
| Java (JIT) | 25.60 ms | 260.33 ms | 2.20 s | 2.48 s |
| C# (AOT) | 18.81 ms | 267.93 ms | 2.35 s | 2.63 s |
| C# (JIT) | 19.10 ms | 270.89 ms | 2.34 s | 2.63 s |
| Nim | 19.39 ms | 291.69 ms | 2.52 s | 2.84 s |
| F# (AOT) | 24.78 ms | 366.04 ms | 3.23 s | 3.62 s |
| Julia | 27.37 ms | 407.72 ms | 3.62 s | 4.05 s |
| Java (GraalVM) | 28.10 ms | 416.00 ms | 3.63 s | 4.07 s |
| Vlang | 28.81 ms | 429.55 ms | 3.74 s | 4.20 s |
| F# (JIT) | 26.25 ms | 410.77 ms | 3.92 s | 4.36 s |
| Swift | 34.58 ms | 496.38 ms | 4.17 s | 4.70 s |
| Haskell | 36.30 ms | 508.33 ms | 4.42 s | 4.96 s |
| Odin | 34.53 ms | 510.76 ms | 4.47 s | 5.02 s |
| Crystal | 39.44 ms | 582.76 ms | 5.13 s | 5.75 s |
| JS (Bun) | 64.60 ms | 763.33 ms | 6.32 s | 7.15 s |
| LuaJIT | 63.53 ms | 824.24 ms | 6.72 s | 7.61 s |
| Pypy | 61.62 ms | 748.57 ms | 6.83 s | 7.64 s |
| Dart VM | 50.30 ms | 969.67 ms | 7.51 s | 8.53 s |
| Common Lisp (SBCL) | 130.00 ms | 995.00 ms | 8.37 s | 9.49 s |
| Dart AOT | 66.20 ms | 1.02 s | 8.97 s | 10.05 s |
| JS (Deno) | 92.30 ms | 1.08 s | 10.19 s | 11.36 s |
| Ocaml | 77.40 ms | 1.22 s | 10.14 s | 11.43 s |
| JS (Node) | 104.30 ms | 1.32 s | 12.39 s | 13.81 s |
| Racket | 114.77 ms | 1.77 s | 14.12 s | 16.01 s |
| Typed Racket | 117.18 ms | 1.73 s | 14.18 s | 16.02 s |
| Lobster (C++) | 123.76 ms | 1.91 s | 16.66 s | 18.69 s |
| Scala Native | 254.40 ms | 3.14 s | 25.70 s | 29.10 s |
| Inko[^2] | 435.70 ms | 6.67 s | 58.94 s | 66.05 s |
| LuaJIT (JIT OFF) | 538.14 ms | 8.47 s | 66.93 s | 75.94 s |
| Erlang | 643.30 ms | 10.46 s | 94.95 s | 106.06 s |
| Lua | 827.92 ms | 12.78 s | 113.92 s | 127.53 s |
| Python | 1.20 s | 18.93 s | 169.05 s | 189.18 s |
| Lobster (JIT) | 1.35 s | 20.78 s | 195.33 s | 217.46 s |
| Ruby | 1.50 s | 22.91 s | 213.64 s | 238.05 s |
| Numpy | 216.51 ms | OOM | 3.27 s | Infinity s |

### Multicore Results

| Language       | Time (5k posts) | 20k posts        | 60k posts        | Total     |
| -------------- | --------------- | ---------------- | ---------------- | --------- |
| D Concurrent (v2) | 5.83 ms | $\textsf{\color{lightgreen}44.35 ms}$ | $\textsf{\color{lightgreen}265.80 ms}$ | 315.98 ms |
| C# Concurrent (JIT) | 6.56 ms | 47.71 ms | 378.32 ms | 432.59 ms |
| C++ Concurrent | 5.00 ms | 48.33 ms | 390.00 ms | 443.33 ms |
| C# Concurrent (AOT) | 4.97 ms | 56.80 ms | 458.21 ms | 519.98 ms |
| D Concurrent | 7.41 ms | 63.79 ms | 465.82 ms | 537.03 ms |
| Nim Concurrent | $\textsf{\color{lightgreen}4.64 ms}$ | 59.38 ms | 497.93 ms | 561.95 ms |
| Rust Concurrent | 5.05 ms | 67.47 ms | 541.40 ms | 613.93 ms |
| Go Concurrent | 5.84 ms | 77.61 ms | 642.69 ms | 726.14 ms |
| Julia Concurrent | 5.89 ms | 77.39 ms | 660.25 ms | 743.54 ms |
| F# Concurrent | 7.50 ms | 104.33 ms | 904.33 ms | 1.02 s |
| Swift Concurrent | 10.86 ms | 125.49 ms | 1.01 s | 1.15 s |
| F# Concurrent (AOT) | 8.50 ms | 128.33 ms | 1.14 s | 1.28 s |
| Java Concurrent (JIT) | 66.60 ms | 186.67 ms | 1.16 s | 1.41 s |
| Zig Concurrent | 14.96 ms | 190.59 ms | 1.59 s | 1.79 s |
| Java (GraalVM) Concurrent | 12.40 ms | 252.67 ms | 1.84 s | 2.11 s |

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