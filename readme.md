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
| _Julia HO_[^1] | 8.38 ms | 60.67 ms | 139.00 ms | 208.05 ms |
| D | 24.76 ms | 318.20 ms | $\textsf{\color{lightgreen}2.71 s}$ | 3.05 s |
| Nim | $\textsf{\color{lightgreen}22.10 ms}$ | $\textsf{\color{lightgreen}317.88 ms}$ | 2.85 s | 3.19 s |
| C++ | 24.92 ms | 339.00 ms | 2.92 s | 3.29 s |
| Zig | 23.00 ms | 341.00 ms | 2.99 s | 3.35 s |
| Rust | 23.49 ms | 342.67 ms | 3.04 s | 3.40 s |
| C# (AOT) | 26.82 ms | 373.99 ms | 3.25 s | 3.65 s |
| C# (JIT) | 27.43 ms | 376.27 ms | 3.26 s | 3.66 s |
| Go | 24.71 ms | 370.26 ms | 3.27 s | 3.67 s |
| F# (AOT) | 27.23 ms | 392.00 ms | 3.42 s | 3.84 s |
| Julia | 27.85 ms | 442.00 ms | 3.88 s | 4.35 s |
| F# (JIT) | 91.46 ms | 529.33 ms | 4.04 s | 4.67 s |
| Odin | 47.60 ms | 689.37 ms | 6.00 s | 6.74 s |
| Swift | 52.41 ms | 720.03 ms | 6.22 s | 6.99 s |
| Vlang | 49.28 ms | 743.64 ms | 6.60 s | 7.39 s |
| Java (GraalVM) | 57.00 ms | 633.67 ms | 7.51 s | 8.20 s |
| Crystal | 60.42 ms | 909.37 ms | 8.01 s | 8.98 s |
| LuaJIT | 107.23 ms | 1.39 s | 12.10 s | 13.59 s |
| JS (Bun) | 118.62 ms | 1.58 s | 12.40 s | 14.10 s |
| JS (Deno) | 187.31 ms | 2.03 s | 17.20 s | 19.42 s |
| Dart AOT | 130.46 ms | 2.01 s | 17.85 s | 19.99 s |
| JS (Node) | 133.15 ms | 2.58 s | 17.54 s | 20.25 s |
| Dart VM | 167.92 ms | 2.29 s | 19.68 s | 22.14 s |
| ocaml | 143.00 ms | 2.94 s | 33.43 s | 36.51 s |
| Erlang | 892.96 ms | 14.34 s | 138.47 s | 153.70 s |
| Lua | 1.09 s | 16.74 s | 149.92 s | 167.76 s |
| Python | 1.47 s | 23.41 s | 213.24 s | 238.11 s |
| Ruby | 3.03 s | 47.86 s | 434.79 s | 485.68 s |
| Numpy | 355.39 ms | 7.22 s | OOM | N/A |
| Java (JIT) | 54.15 ms | OOM | OOM | N/A |

### Multicore Results

| Language       | Time (5k posts) | 20k posts        | 60k posts        | Total     |
| -------------- | --------------- | ---------------- | ---------------- | --------- |
| D Concurrent | 12.97 ms | 124.08 ms | 971.96 ms | 1.11 s |
| C# Concurrent (JIT) | 14.03 ms | 125.32 ms | 1.02 s | 1.15 s |
| C# Concurrent (AOT) | 11.02 ms | 136.93 ms | 1.14 s | 1.29 s |
| C++ Concurrent | 13.62 ms | 164.33 ms | 1.40 s | 1.58 s |
| Go Concurrent | 12.19 ms | 164.52 ms | 1.43 s | 1.61 s |
| Nim Concurrent | 12.76 ms | 171.92 ms | 1.48 s | 1.66 s |
| Rust Concurrent | 12.33 ms | 172.32 ms | 1.52 s | 1.70 s |
| Julia Concurrent | 14.31 ms | 188.33 ms | 1.63 s | 1.83 s |
| F# Concurrent (AOT) | 18.38 ms | 280.33 ms | 2.46 s | 2.76 s |
| F# Concurrent (JIT) | 20.54 ms | 284.67 ms | 2.46 s | 2.77 s |
| Swift Concurrent | 31.87 ms | 394.87 ms | 3.48 s | 3.91 s |
| Java (GraalVM) Concurrent | 49.31 ms | 602.67 ms | 5.34 s | 5.99 s |

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
