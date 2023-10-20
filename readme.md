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

| Language       | Time (5k posts) | 20k posts | 60k posts | Total     |
| -------------- | --------------- | --------- | --------- | --------- |
| _Julia HO_[^1] | 8.23 ms | 56.67 ms | 149.33 ms | 214.23 ms |
| D | 25.18 ms | $\textsf{\color{lightgreen}318.29 ms}$ | $\textsf{\color{lightgreen}2.70 s}$ | 3.04 s |
| C++ | 25.00 ms | 338.33 ms | 2.92 s | 3.29 s |
| Rust | $\textsf{\color{lightgreen}23.66 ms}$ | 340.94 ms | 3.03 s | 3.40 s |
| Nim | 25.16 ms | 353.17 ms | 3.09 s | 3.47 s |
| C# (AOT) | 26.66 ms | 372.47 ms | 3.25 s | 3.64 s |
| C# (JIT) | 27.50 ms | 375.01 ms | 3.26 s | 3.66 s |
| Go | 24.35 ms | 372.13 ms | 3.28 s | 3.67 s |
| F# (AOT) | 27.23 ms | 391.33 ms | 3.42 s | 3.84 s |
| Zig | 28.77 ms | 429.67 ms | 3.82 s | 4.28 s |
| F# (JIT) | 91.38 ms | 528.67 ms | 4.06 s | 4.68 s |
| Julia | 30.00 ms | 479.67 ms | 4.23 s | 4.74 s |
| Odin | 47.48 ms | 576.45 ms | 6.17 s | 6.79 s |
| Swift | 51.55 ms | 716.81 ms | 6.22 s | 6.99 s |
| Vlang | 49.19 ms | 741.41 ms | 6.59 s | 7.38 s |
| Java (GraalVM) | 56.92 ms | 743.33 ms | 7.51 s | 8.31 s |
| Crystal | 60.61 ms | 920.50 ms | 8.00 s | 8.98 s |
| LuaJIT | 104.71 ms | 1.51 s | 12.30 s | 13.92 s |
| JS (Bun) | 120.54 ms | 1.39 s | 14.31 s | 15.82 s |
| Dart AOT | 129.92 ms | 2.01 s | 17.86 s | 19.99 s |
| JS (Deno) | 178.23 ms | 2.03 s | 18.37 s | 20.57 s |
| Dart VM | 171.69 ms | 2.23 s | 19.05 s | 21.45 s |
| JS (Node) | 129.15 ms | 2.53 s | 24.17 s | 26.83 s |
| ocaml | 147.23 ms | 2.79 s | 33.86 s | 36.81 s |
| Lua | 1.09 s | 16.75 s | 151.29 s | 169.14 s |
| Erlang | 1.18 s | 18.96 s | 181.31 s | 201.45 s |
| Python | 1.47 s | 23.45 s | 219.09 s | 244.01 s |
| Numpy | 353.22 ms | 7.41 s | OOM | N/A |
| Java (JIT) | 54.69 ms | OOM | OOM | N/A |

### Multicore Results

| Language       | Time (5k posts) | 20k posts        | 60k posts        | Total     |
| -------------- | --------------- | ---------------- | ---------------- | --------- |
| D Concurrent | 13.04 ms | 124.90 ms | $\textsf{\color{lightgreen}973.81 ms}$ | 1.11 s |
| C# Concurrent (JIT) | 14.14 ms | $\textsf{\color{lightgreen}124.53 ms}$ | 1.01 s | 1.15 s |
| C# Concurrent (AOT) | 11.00 ms | 136.30 ms | 1.15 s | 1.29 s |
| Go Concurrent | 12.39 ms | 166.14 ms | 1.43 s | 1.61 s |
| Rust Concurrent | $\textsf{\color{lightgreen}12.28 ms}$ | 174.02 ms | 1.52 s | 1.70 s |
| C++ Concurrent | 18.31 ms | 220.67 ms | 1.89 s | 2.13 s |
| Julia Concurrent | 16.92 ms | 222.00 ms | 1.96 s | 2.20 s |
| F# Concurrent (AOT) | 15.15 ms | 234.33 ms | 2.03 s | 2.28 s |
| F# Concurrent (JIT) | 20.08 ms | 282.33 ms | 2.51 s | 2.81 s |
| Swift Concurrent | 32.14 ms | 394.09 ms | 3.49 s | 3.92 s |
| Java (GraalVM) Concurrent | 39.46 ms | 464.00 ms | 4.12 s | 4.63 s |

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

[^1]: Uses specialized datastructures meant for demonstation purposes: [more](https://github.com/LilithHafner/Jokes/tree/main/SuperDataStructures.jl)
