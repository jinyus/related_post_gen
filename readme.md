### Problem:

Given a list of posts, compute the top 5 related posts for each post based on the number of shared tags.

## Steps:

-   Read the posts JSON file.
-   Iterate over the posts and populate a map containing: `tag -> List<int>`, with the int representing the post index of each post with that tag.
-   Iterate over the posts and for each post:
    -   Create a map: `PostIndex -> int` to track the number of shared tags
    -   For each tag, Iterate over the posts that have that tag
    -   For each post, increment the shared tag count in the map.
-   Sort the related posts by the number of shared tags.
-   Write the top 5 related posts for each post to a new JSON file.

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
-   Parse json at runtime
-   Support up to 100 tags
-   Use a stable release of the compiler/runtime
-   Represent tags as strings
-   Be production ready
-   Use general purpose datastructures (not tailored for this benchmark)
</details>

### Updated Results from github workflow ([raw data](https://github.com/jinyus/related_post_gen/blob/main/raw_results.md))

##### VM Specs ( Azure F4s v2 - 4vCPU-8GB-Ubuntu 22.04 )

| Language       | Time (5k posts)                       | 20k posts                              | 60k posts                           | Total    |
| -------------- | ------------------------------------- | -------------------------------------- | ----------------------------------- | -------- |
| D | 24.86 ms | $\textsf{\color{lightgreen}315.19 ms}$ | $\textsf{\color{lightgreen}2.72 s}$ | 3.06 s |
| cpp | 24.00 ms | 333.33 ms | 2.94 s | 3.30 s |
| Zig | $\textsf{\color{lightgreen}23.00 ms}$ | 342.67 ms | 3.02 s | 3.38 s |
| Go | 24.13 ms | 370.94 ms | 3.28 s | 3.67 s |
| Julia | 24.46 ms | 391.33 ms | 3.44 s | 3.86 s |
| Rust | 24.02 ms | 388.88 ms | 3.45 s | 3.86 s |
| F# (AOT) | 39.46 ms | 487.33 ms | 5.18 s | 5.71 s |
| Odin | 48.10 ms | 677.69 ms | 5.09 s | 5.81 s |
| Java (GraalVM) | 41.00 ms | 496.67 ms | 5.29 s | 5.83 s |
| C# (AOT) | 42.69 ms | 616.74 ms | 5.41 s | 6.07 s |
| F# | 45.08 ms | 623.33 ms | 5.50 s | 6.17 s |
| Swift | 50.68 ms | 715.13 ms | 6.20 s | 6.97 s |
| Java (JIT) | 53.54 ms | 770.00 ms | 6.45 s | 7.27 s |
| Vlang | 51.30 ms | 757.25 ms | 6.67 s | 7.47 s |
| C# (JIT) | 57.94 ms | 773.65 ms | 6.77 s | 7.60 s |
| Crystal | 65.12 ms | 972.61 ms | 8.66 s | 9.69 s |
| LuaJIT | 101.07 ms | 1.29 s | 11.58 s | 12.97 s |
| Dart VM | 134.38 ms | 2.45 s | 21.05 s | 23.64 s |
| JS (Node) | 179.46 ms | 2.43 s | 24.54 s | 27.15 s |
| Dart AOT | 185.38 ms | 2.89 s | 25.79 s | 28.86 s |
| JS (Deno) | 192.77 ms | 2.27 s | 34.20 s | 36.66 s |
| ocaml | 139.46 ms | 2.61 s | 34.03 s | 36.78 s |
| JS (Bun) | 777.08 ms | 11.98 s | 107.67 s | 120.43 s |
| Lua | 1.09 s | 17.11 s | 152.70 s | 170.90 s |
| Python | 1.47 s | 23.59 s | 215.51 s | 240.57 s |
| Numpy | 348.40 ms | 6.13 s | OOM | N/A |

### Multicore Results

| Language       | Time (5k posts) | 20k posts        | 60k posts        | Total     |
| -------------- | --------------- | ---------------- | ---------------- | --------- |
| D Concurrent | 14.32 ms | $\textsf{\color{lightgreen}144.69 ms}$ | $\textsf{\color{lightgreen}1.16 s}$ | 1.32 s |
| Go Concurrent | $\textsf{\color{lightgreen}12.88 ms}$ | 166.94 ms | 1.42 s | 1.60 s |
| Julia Concurrent | 14.15 ms | 182.00 ms | 1.58 s | 1.78 s |
| Rust Concurrent | 20.41 ms | 304.89 ms | 2.72 s | 3.05 s |
| F# Concurrent | 42.85 ms | 410.67 ms | 3.35 s | 3.81 s |
| Swift Concurrent | 31.34 ms | 393.39 ms | 3.45 s | 3.87 s |
| Java (GraalVM) Concurrent | 39.23 ms | 469.33 ms | 5.30 s | 5.81 s |

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
