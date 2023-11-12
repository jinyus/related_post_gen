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
-   Use a stable release of the compiler/runtime
-   Represent tags as strings
-   Be production ready
-   Use less than 8GB of memory
</details>

### Updated Results from github workflow ([raw data](https://github.com/jinyus/related_post_gen/blob/main/raw_results.md))

##### VM Specs ( Azure F4s v2 - 4vCPU-8GB-Ubuntu 22.04 )

| Language       | Time (5k posts)                       | 20k posts                              | 60k posts                           | Total     |
| -------------- | ------------------------------------- | -------------------------------------- | ----------------------------------- | --------- |
| _Julia HO_[^1] | 9.38 ms | 66.33 ms | 171.00 ms | 246.72 ms |
| C++ | 24.08 ms | 325.33 ms | $\textsf{\color{lightgreen}2.81 s}$ | 3.16 s |
| Nim | $\textsf{\color{lightgreen}22.21 ms}$ | $\textsf{\color{lightgreen}318.86 ms}$ | 2.85 s | 3.19 s |
| Zig | 23.00 ms | 338.33 ms | 3.02 s | 3.38 s |
| Rust | 23.73 ms | 342.19 ms | 3.06 s | 3.42 s |
| F# (AOT) | 27.20 ms | 378.79 ms | 3.26 s | 3.67 s |
| C# (AOT) | 27.12 ms | 375.86 ms | 3.27 s | 3.67 s |
| C# (JIT) | 27.75 ms | 375.88 ms | 3.29 s | 3.69 s |
| Go | 29.66 ms | 430.48 ms | 3.81 s | 4.27 s |
| D | 33.25 ms | 446.37 ms | 3.88 s | 4.36 s |
| Julia | 31.65 ms | 505.56 ms | 4.23 s | 4.77 s |
| Odin | 41.95 ms | 578.79 ms | 6.02 s | 6.64 s |
| Swift | 52.78 ms | 739.05 ms | 6.21 s | 7.00 s |
| F# (JIT) | 85.83 ms | 619.80 ms | 6.46 s | 7.16 s |
| Vlang | 49.82 ms | 747.02 ms | 6.63 s | 7.42 s |
| Crystal | 54.79 ms | 823.26 ms | 7.17 s | 8.05 s |
| Java (GraalVM) | 43.15 ms | 857.00 ms | 7.53 s | 8.43 s |
| LuaJIT | 120.60 ms | 1.56 s | 11.58 s | 13.26 s |
| JS (Bun) | 127.00 ms | 1.43 s | 14.31 s | 15.87 s |
| JS (Node) | 182.00 ms | 2.00 s | 17.54 s | 19.73 s |
| Dart AOT | 131.38 ms | 2.02 s | 17.89 s | 20.04 s |
| Dart VM | 171.77 ms | 2.27 s | 19.69 s | 22.12 s |
| JS (Deno) | 178.38 ms | 2.30 s | 21.35 s | 23.83 s |
| Lobster (C++) | 187.02 ms | 2.89 s | 28.04 s | 31.12 s |
| ocaml | 147.08 ms | 3.70 s | 38.16 s | 42.00 s |
| LuaJIT (JIT OFF) | 681.41 ms | 10.31 s | 91.48 s | 102.47 s |
| Erlang | 892.41 ms | 15.00 s | 134.83 s | 150.73 s |
| Lua | 1.10 s | 16.80 s | 150.11 s | 168.01 s |
| Lobster (JIT) | 1.39 s | 21.29 s | 189.96 s | 212.65 s |
| Python | 1.47 s | 23.44 s | 214.01 s | 238.93 s |
| Numpy | 408.13 ms | 6.56 s | OOM | N/A |
| Java (JIT) | 55.08 ms | OOM | OOM | N/A |

### Multicore Results

| Language       | Time (5k posts) | 20k posts        | 60k posts        | Total     |
| -------------- | --------------- | ---------------- | ---------------- | --------- |
| D Concurrent | 13.74 ms | 130.71 ms | $\textsf{\color{lightgreen}1.02 s}$ | 1.16 s |
| C# Concurrent (JIT) | 14.65 ms | $\textsf{\color{lightgreen}129.66 ms}$ | 1.03 s | 1.18 s |
| C# Concurrent (AOT) | 12.32 ms | 149.06 ms | 1.22 s | 1.38 s |
| C++ Concurrent | 14.85 ms | 168.00 ms | 1.41 s | 1.60 s |
| Go Concurrent | $\textsf{\color{lightgreen}12.26 ms}$ | 165.92 ms | 1.44 s | 1.62 s |
| Nim Concurrent | 13.23 ms | 173.53 ms | 1.48 s | 1.67 s |
| Julia Concurrent | 14.25 ms | 177.28 ms | 1.49 s | 1.68 s |
| Rust Concurrent | 12.50 ms | 177.99 ms | 1.53 s | 1.73 s |
| F# Concurrent (AOT) | 16.08 ms | 233.00 ms | 2.04 s | 2.29 s |
| F# Concurrent (JIT) | 20.38 ms | 284.67 ms | 2.47 s | 2.78 s |
| Swift Concurrent | 32.49 ms | 400.08 ms | 3.48 s | 3.91 s |
| Java (GraalVM) Concurrent | 50.69 ms | 602.33 ms | 5.34 s | 5.99 s |

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
