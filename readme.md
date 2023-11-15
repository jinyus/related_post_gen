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
| _Julia HO_[^1] | 8.23 ms | 54.33 ms | 154.67 ms | 217.23 ms |
| D (v2) | 21.60 ms | 260.08 ms | 2.17 s | 2.45 s |
| C++ | 22.46 ms | 320.00 ms | 2.78 s | 3.12 s |
| Nim | 22.18 ms | 322.90 ms | 2.84 s | 3.19 s |
| Go | 22.88 ms | 322.74 ms | 2.86 s | 3.21 s |
| Zig | 23.00 ms | 336.33 ms | 3.01 s | 3.37 s |
| Rust | 23.54 ms | 340.57 ms | 3.04 s | 3.41 s |
| Julia | 23.95 ms | 392.73 ms | 3.17 s | 3.58 s |
| F# (AOT) | 26.91 ms | 372.42 ms | 3.23 s | 3.63 s |
| C# (JIT) | 27.46 ms | 375.68 ms | 3.26 s | 3.66 s |
| C# (AOT) | 26.38 ms | 378.10 ms | 3.26 s | 3.67 s |
| D | 40.11 ms | 561.35 ms | 4.93 s | 5.53 s |
| F# (JIT) | 85.36 ms | 614.64 ms | 4.85 s | 5.55 s |
| Java (GraalVM) | 50.23 ms | 853.00 ms | 5.56 s | 6.46 s |
| Odin | 41.14 ms | 679.29 ms | 6.09 s | 6.81 s |
| Swift | 50.90 ms | 716.58 ms | 6.19 s | 6.95 s |
| Vlang | 48.72 ms | 741.84 ms | 6.60 s | 7.39 s |
| Crystal | 53.86 ms | 817.05 ms | 7.15 s | 8.02 s |
| LuaJIT | 106.34 ms | 1.16 s | 11.90 s | 13.17 s |
| JS (Bun) | 120.85 ms | 1.54 s | 13.16 s | 14.82 s |
| JS (Node) | 175.00 ms | 1.94 s | 17.68 s | 19.79 s |
| Dart AOT | 130.15 ms | 2.01 s | 17.89 s | 20.03 s |
| Dart VM | 168.92 ms | 2.31 s | 17.84 s | 20.32 s |
| JS (Deno) | 181.31 ms | 2.36 s | 21.40 s | 23.94 s |
| Lobster (C++) | 185.68 ms | 2.87 s | 25.77 s | 28.83 s |
| Scala Native | 252.00 ms | 3.56 s | 29.68 s | 33.50 s |
| ocaml | 142.85 ms | 2.79 s | 34.79 s | 37.72 s |
| Racket | 237.07 ms | 3.96 s | 34.84 s | 39.03 s |
| LuaJIT (JIT OFF) | 673.16 ms | 10.25 s | 91.20 s | 102.13 s |
| Erlang | 890.28 ms | 14.92 s | 133.93 s | 149.75 s |
| Lua | 1.10 s | 16.77 s | 150.19 s | 168.05 s |
| Lobster (JIT) | 1.36 s | 21.18 s | 188.94 s | 211.48 s |
| Python | 1.47 s | 23.61 s | 215.22 s | 240.29 s |
| Numpy | 353.78 ms | 6.83 s | OOM | N/A |
| Java (JIT) | 54.69 ms | OOM | OOM | N/A |

### Multicore Results

| Language       | Time (5k posts) | 20k posts        | 60k posts        | Total     |
| -------------- | --------------- | ---------------- | ---------------- | --------- |
| D Concurrent | 12.39 ms | 125.31 ms | 996.69 ms | 1.13 s |
| C# Concurrent (JIT) | 14.01 ms | 123.03 ms | 1.02 s | 1.15 s |
| C# Concurrent (AOT) | 11.12 ms | 136.49 ms | 1.14 s | 1.29 s |
| C++ Concurrent | 14.00 ms | 164.67 ms | 1.40 s | 1.58 s |
| Go Concurrent | 12.03 ms | 164.90 ms | 1.43 s | 1.60 s |
| Nim Concurrent | 12.79 ms | 172.29 ms | 1.48 s | 1.66 s |
| Julia Concurrent | 13.56 ms | 172.01 ms | 1.48 s | 1.66 s |
| Rust Concurrent | 12.28 ms | 175.33 ms | 1.52 s | 1.71 s |
| F# Concurrent (AOT) | 18.69 ms | 279.00 ms | 2.46 s | 2.76 s |
| F# Concurrent (JIT) | 20.54 ms | 286.00 ms | 2.46 s | 2.77 s |
| Swift Concurrent | 31.69 ms | 393.93 ms | 3.43 s | 3.85 s |
| Java (GraalVM) Concurrent | 50.62 ms | 478.67 ms | 4.12 s | 4.65 s |

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