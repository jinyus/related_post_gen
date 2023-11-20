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
| _Julia HO_[^1] | 5.50 ms | 34.00 ms | 94.00 ms | 133.50 ms |
| D (v2) | $\textsf{\color{lightgreen}14.13 ms}$ | $\textsf{\color{lightgreen}167.40 ms}$ | $\textsf{\color{lightgreen}1.36 s}$ | 1.54 s |
| D | 18.78 ms | 238.77 ms | 2.04 s | 2.29 s |
| Rust | 16.42 ms | 240.25 ms | 2.05 s | 2.31 s |
| Java (JIT) | 19.70 ms | 246.67 ms | 2.14 s | 2.40 s |
| Nim | 17.14 ms | 254.77 ms | 2.27 s | 2.54 s |
| C++ | 18.10 ms | 271.33 ms | 2.26 s | 2.55 s |
| C# (AOT) | 18.26 ms | 265.69 ms | 2.34 s | 2.62 s |
| C# (JIT) | 19.06 ms | 268.27 ms | 2.33 s | 2.62 s |
| Go | 19.10 ms | 282.11 ms | 2.48 s | 2.78 s |
| Julia | 21.00 ms | 314.99 ms | 2.64 s | 2.98 s |
| Zig | 20.00 ms | 306.00 ms | 2.72 s | 3.04 s |
| Vlang | 22.30 ms | 319.36 ms | 2.73 s | 3.07 s |
| Odin | 34.58 ms | 394.38 ms | 3.46 s | 3.89 s |
| Java (GraalVM) | 27.40 ms | 512.33 ms | 3.61 s | 4.15 s |
| Swift | 35.87 ms | 489.83 ms | 4.24 s | 4.76 s |
| Crystal | 32.69 ms | 501.30 ms | 4.31 s | 4.84 s |
| JS (Bun) | 67.20 ms | 773.00 ms | 6.58 s | 7.42 s |
| LuaJIT | 64.71 ms | 805.27 ms | 6.71 s | 7.58 s |
| JS (Deno) | 99.40 ms | 1.20 s | 12.90 s | 14.19 s |
| JS (Node) | 98.80 ms | 976.67 ms | 13.53 s | 14.60 s |
| Dart VM | 78.90 ms | 1.34 s | 13.19 s | 14.61 s |
| Dart AOT | 94.90 ms | 1.47 s | 13.08 s | 14.64 s |
| Racket | 116.74 ms | 1.75 s | 14.29 s | 16.16 s |
| Typed Racket | 117.80 ms | 1.70 s | 14.59 s | 16.41 s |
| Scala Native | 174.40 ms | 2.05 s | 16.83 s | 19.05 s |
| Lobster (C++) | 129.75 ms | 1.94 s | 18.22 s | 20.29 s |
| Ocaml | 100.00 ms | 2.13 s | 22.17 s | 24.40 s |
| LuaJIT (JIT OFF) | 509.62 ms | 7.46 s | 71.52 s | 79.49 s |
| Erlang | 657.44 ms | 10.38 s | 98.77 s | 109.81 s |
| Lua | 781.52 ms | 12.02 s | 107.77 s | 120.56 s |
| Python | 994.02 ms | 15.65 s | 144.65 s | 161.30 s |
| Lobster (JIT) | 1.33 s | 21.07 s | 188.09 s | 210.49 s |
| Inko[^2] | 6.29 s | 98.05 s | 875.39 s | 979.73 s |
| Numpy | 244.22 ms | 3.30 s | OOM | N/A |

### Multicore Results

| Language       | Time (5k posts) | 20k posts        | 60k posts        | Total     |
| -------------- | --------------- | ---------------- | ---------------- | --------- |
| D Concurrent | 5.80 ms | $\textsf{\color{lightgreen}46.68 ms}$ | $\textsf{\color{lightgreen}327.63 ms}$ | 380.11 ms |
| C# Concurrent (JIT) | 7.77 ms | 48.66 ms | 388.92 ms | 445.35 ms |
| C# Concurrent (AOT) | 4.79 ms | 58.26 ms | 470.70 ms | 533.74 ms |
| Rust Concurrent | $\textsf{\color{lightgreen}4.71 ms}$ | 60.90 ms | 491.75 ms | 557.36 ms |
| Go Concurrent | 5.09 ms | 65.43 ms | 538.66 ms | 609.19 ms |
| C++ Concurrent | 5.00 ms | 65.33 ms | 553.00 ms | 623.33 ms |
| Nim Concurrent | 5.24 ms | 67.76 ms | 568.13 ms | 641.13 ms |
| Julia Concurrent | 5.73 ms | 90.08 ms | 653.98 ms | 749.79 ms |
| F# Concurrent | 8.50 ms | 101.00 ms | 843.33 ms | 952.83 ms |
| Swift Concurrent | 10.79 ms | 120.52 ms | 993.95 ms | 1.13 s |
| F# Concurrent (AOT) | 9.40 ms | 127.67 ms | 1.13 s | 1.26 s |
| Java (GraalVM) Concurrent | 12.00 ms | 242.67 ms | 1.50 s | 1.75 s |

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