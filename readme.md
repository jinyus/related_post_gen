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

| Language           | Time (5k posts)                      | 20k posts                              | 60k posts                              | Total     |
| ------------------ | ------------------------------------ | -------------------------------------- | -------------------------------------- | --------- |
| _Julia HO_[^1] | 5.80 ms | 31.67 ms | 86.33 ms | 123.80 ms |
| D (v2) | 11.46 ms | $\textsf{\color{lightgreen}118.74 ms}$ | $\textsf{\color{lightgreen}943.36 ms}$ | 1.07 s |
| Rust | $\textsf{\color{lightgreen}9.62 ms}$ | 122.62 ms | 1.04 s | 1.18 s |
| D | 18.61 ms | 239.68 ms | 2.04 s | 2.30 s |
| Go | 16.98 ms | 239.58 ms | 2.11 s | 2.36 s |
| Java (JIT) | 19.60 ms | 249.33 ms | 2.13 s | 2.40 s |
| Neat | 19.21 ms | 260.15 ms | 2.14 s | 2.42 s |
| C++ | 18.20 ms | 263.00 ms | 2.26 s | 2.54 s |
| Nim | 17.04 ms | 255.82 ms | 2.27 s | 2.55 s |
| C# (AOT) | 18.53 ms | 266.42 ms | 2.32 s | 2.60 s |
| C# (JIT) | 19.13 ms | 264.97 ms | 2.34 s | 2.62 s |
| Julia | 21.01 ms | 312.98 ms | 2.65 s | 2.98 s |
| Zig | 20.00 ms | 305.33 ms | 2.71 s | 3.03 s |
| Vlang | 22.57 ms | 320.61 ms | 2.73 s | 3.08 s |
| F# (AOT) | 24.55 ms | 362.66 ms | 3.21 s | 3.59 s |
| Odin | 27.98 ms | 391.66 ms | 3.50 s | 3.92 s |
| F# (JIT) | 25.43 ms | 406.78 ms | 3.55 s | 3.98 s |
| Java (GraalVM) | 28.00 ms | 405.67 ms | 3.70 s | 4.13 s |
| Swift | 34.19 ms | 481.74 ms | 4.24 s | 4.75 s |
| Crystal | 38.99 ms | 576.70 ms | 5.08 s | 5.69 s |
| JS (Bun) | 66.70 ms | 768.67 ms | 6.61 s | 7.45 s |
| LuaJIT | 61.65 ms | 795.21 ms | 6.65 s | 7.50 s |
| Pypy | 72.80 ms | 817.83 ms | 6.95 s | 7.84 s |
| Common Lisp (SBCL) | 120.00 ms | 975.00 ms | 8.08 s | 9.18 s |
| Clojure | 96.90 ms | 1.08 s | 8.89 s | 10.06 s |
| JS (Node) | 85.00 ms | 1.07 s | 9.33 s | 10.48 s |
| JS (Deno) | 96.20 ms | 1.20 s | 13.04 s | 14.33 s |
| Dart AOT | 94.20 ms | 1.46 s | 13.10 s | 14.66 s |
| Ocaml | 96.00 ms | 1.48 s | 13.15 s | 14.72 s |
| Dart VM | 76.60 ms | 1.40 s | 13.53 s | 15.01 s |
| Racket | 113.07 ms | 1.64 s | 13.64 s | 15.40 s |
| Typed Racket | 113.61 ms | 1.65 s | 13.84 s | 15.61 s |
| Lobster (C++) | 131.12 ms | 2.04 s | 18.35 s | 20.52 s |
| Scala Native | 245.80 ms | 3.00 s | 24.86 s | 28.11 s |
| LuaJIT (JIT OFF) | 475.15 ms | 7.51 s | 70.89 s | 78.88 s |
| Erlang | 648.32 ms | 10.28 s | 93.11 s | 104.04 s |
| Lua | 822.39 ms | 11.89 s | 106.24 s | 118.96 s |
| Python | 1.01 s | 15.79 s | 149.27 s | 166.07 s |
| Lobster (JIT) | 1.30 s | 21.01 s | 189.65 s | 211.96 s |
| Ruby | 2.29 s | 35.18 s | 316.54 s | 354.00 s |
| Inko[^2] | 6.29 s | 98.05 s | 875.39 s | 979.73 s |
| Numpy | 216.51 ms | 3.27 s | OOM | N/A |

### Multicore Results

| Language       | Time (5k posts) | 20k posts        | 60k posts        | Total     |
| -------------- | --------------- | ---------------- | ---------------- | --------- |
| D Concurrent (v2) | 5.81 ms | $\textsf{\color{lightgreen}44.68 ms}$ | $\textsf{\color{lightgreen}262.69 ms}$ | 313.19 ms |
| C# Concurrent (JIT) | 7.55 ms | 45.08 ms | 369.55 ms | 422.17 ms |
| C# Concurrent (AOT) | $\textsf{\color{lightgreen}4.33 ms}$ | 51.95 ms | 389.07 ms | 445.35 ms |
| D Concurrent | 7.09 ms | 61.79 ms | 452.55 ms | 521.43 ms |
| C++ Concurrent | 5.10 ms | 68.67 ms | 558.33 ms | 632.10 ms |
| Rust Concurrent | 5.27 ms | 67.41 ms | 566.25 ms | 638.94 ms |
| Nim Concurrent | 5.32 ms | 68.15 ms | 568.41 ms | 641.88 ms |
| Go Concurrent | 5.82 ms | 77.11 ms | 637.31 ms | 720.24 ms |
| Julia Concurrent | 6.03 ms | 89.56 ms | 665.41 ms | 761.00 ms |
| F# Concurrent | 8.50 ms | 99.67 ms | 875.67 ms | 983.83 ms |
| Swift Concurrent | 10.69 ms | 119.00 ms | 986.94 ms | 1.12 s |
| F# Concurrent (AOT) | 8.50 ms | 128.33 ms | 1.13 s | 1.27 s |
| Java Concurrent (JIT) | 58.00 ms | 183.33 ms | 1.15 s | 1.39 s |
| Numba Concurrent | 19.67 ms | 173.20 ms | 1.28 s | 1.47 s |
| Java (GraalVM) Concurrent | 12.00 ms | 182.33 ms | 1.50 s | 1.69 s |

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