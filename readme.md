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
| D | 24.98 ms | $\textsf{\color{lightgreen}315.52 ms}$ | $\textsf{\color{lightgreen}2.70 s}$ | 3.04 s |
| C++ | 24.00 ms | 334.00 ms | 2.95 s | 3.31 s |
| Rust | $\textsf{\color{lightgreen}23.44 ms}$ | 340.98 ms | 3.04 s | 3.40 s |
| Go | 24.24 ms | 374.73 ms | 3.28 s | 3.68 s |
| Nim | 30.04 ms | 402.07 ms | 3.56 s | 4.00 s |
| Zig | 28.85 ms | 430.33 ms | 3.84 s | 4.30 s |
| Julia | 30.23 ms | 477.33 ms | 4.22 s | 4.73 s |
| Java (GraalVM) | 33.00 ms | 603.00 ms | 4.21 s | 4.84 s |
| F# (AOT) | 39.85 ms | 603.33 ms | 5.20 s | 5.84 s |
| C# (AOT) | 42.78 ms | 616.29 ms | 5.42 s | 6.08 s |
| F# | 45.31 ms | 625.00 ms | 5.49 s | 6.16 s |
| Odin | 41.19 ms | 691.07 ms | 6.10 s | 6.84 s |
| Swift | 50.61 ms | 710.79 ms | 6.18 s | 6.94 s |
| Java (JIT) | 53.38 ms | 775.00 ms | 6.46 s | 7.29 s |
| Vlang | 51.43 ms | 760.35 ms | 6.66 s | 7.47 s |
| C# (JIT) | 57.89 ms | 772.51 ms | 6.77 s | 7.60 s |
| Crystal | 65.01 ms | 976.88 ms | 8.64 s | 9.69 s |
| LuaJIT | 101.01 ms | 1.33 s | 10.71 s | 12.13 s |
| JS (Deno) | 192.00 ms | 2.26 s | 20.03 s | 22.48 s |
| Dart VM | 130.85 ms | 2.38 s | 21.09 s | 23.60 s |
| JS (Node) | 181.31 ms | 2.42 s | 21.46 s | 24.07 s |
| Dart AOT | 186.00 ms | 2.89 s | 25.80 s | 28.87 s |
| ocaml | 135.77 ms | 2.58 s | 32.71 s | 35.42 s |
| JS (Bun) | 619.92 ms | 11.73 s | 109.05 s | 121.40 s |
| Lua | 1.09 s | 16.77 s | 149.91 s | 167.77 s |
| Python | 1.46 s | 23.46 s | 215.71 s | 240.64 s |
| Numpy | 474.19 ms | 7.37 s | OOM | N/A |

### Multicore Results

| Language       | Time (5k posts) | 20k posts        | 60k posts        | Total     |
| -------------- | --------------- | ---------------- | ---------------- | --------- |
| D Concurrent | 15.04 ms | $\textsf{\color{lightgreen}145.67 ms}$ | $\textsf{\color{lightgreen}1.16 s}$ | 1.32 s |
| C++ Concurrent | 13.85 ms | 164.00 ms | 1.38 s | 1.56 s |
| Go Concurrent | $\textsf{\color{lightgreen}13.22 ms}$ | 166.44 ms | 1.42 s | 1.60 s |
| Rust Concurrent | 14.52 ms | 179.80 ms | 1.57 s | 1.77 s |
| Julia Concurrent | 17.00 ms | 225.00 ms | 1.94 s | 2.19 s |
| F# Concurrent | 43.00 ms | 426.33 ms | 3.35 s | 3.82 s |
| Swift Concurrent | 31.55 ms | 393.33 ms | 3.46 s | 3.89 s |
| Java (GraalVM) Concurrent | 38.92 ms | 602.33 ms | 5.31 s | 5.95 s |

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
