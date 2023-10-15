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
-   Use general purpose datastructures (not tailored for this benchmark)
-   Use less than 8GB of memory
</details>

### Updated Results from github workflow ([raw data](https://github.com/jinyus/related_post_gen/blob/main/raw_results.md))

##### VM Specs ( Azure F4s v2 - 4vCPU-8GB-Ubuntu 22.04 )

| Language       | Time (5k posts)                       | 20k posts                              | 60k posts                           | Total    |
| -------------- | ------------------------------------- | -------------------------------------- | ----------------------------------- | -------- |
| D              | 24.76 ms                              | $\textsf{\color{lightgreen}314.14 ms}$ | $\textsf{\color{lightgreen}2.70 s}$ | 3.04 s   |
| C++            | 24.00 ms                              | 337.33 ms                              | 2.94 s                              | 3.30 s   |
| Rust           | $\textsf{\color{lightgreen}23.51 ms}$ | 341.02 ms                              | 3.04 s                              | 3.40 s   |
| Go             | 24.22 ms                              | 371.65 ms                              | 3.28 s                              | 3.67 s   |
| Nim            | 30.02 ms                              | 521.70 ms                              | 3.56 s                              | 4.11 s   |
| Zig            | 28.62 ms                              | 430.33 ms                              | 3.81 s                              | 4.27 s   |
| F# (AOT)       | 32.77 ms                              | 485.67 ms                              | 4.13 s                              | 4.65 s   |
| Julia          | 30.15 ms                              | 481.00 ms                              | 4.24 s                              | 4.75 s   |
| Odin           | 41.15 ms                              | 689.07 ms                              | 5.05 s                              | 5.78 s   |
| Java (GraalVM) | 41.00 ms                              | 495.33 ms                              | 5.28 s                              | 5.82 s   |
| C# (AOT)       | 42.70 ms                              | 615.80 ms                              | 5.39 s                              | 6.05 s   |
| F# (JIT)       | 45.15 ms                              | 623.67 ms                              | 5.49 s                              | 6.16 s   |
| Swift          | 50.68 ms                              | 712.61 ms                              | 6.16 s                              | 6.93 s   |
| Java (JIT)     | 54.77 ms                              | 757.00 ms                              | 6.44 s                              | 7.25 s   |
| Vlang          | 51.35 ms                              | 756.63 ms                              | 6.66 s                              | 7.46 s   |
| C# (JIT)       | 57.97 ms                              | 772.78 ms                              | 6.77 s                              | 7.60 s   |
| Crystal        | 64.96 ms                              | 974.49 ms                              | 8.64 s                              | 9.68 s   |
| LuaJIT         | 109.53 ms                             | 1.51 s                                 | 12.93 s                             | 14.55 s  |
| Dart VM        | 138.85 ms                             | 2.41 s                                 | 20.96 s                             | 23.51 s  |
| JS (Node)      | 182.00 ms                             | 2.44 s                                 | 22.50 s                             | 25.12 s  |
| Dart AOT       | 185.38 ms                             | 2.89 s                                 | 25.75 s                             | 28.83 s  |
| ocaml          | 140.00 ms                             | 2.76 s                                 | 32.71 s                             | 35.61 s  |
| JS (Deno)      | 192.31 ms                             | 2.26 s                                 | 41.13 s                             | 43.58 s  |
| JS (Bun)       | 763.15 ms                             | 11.82 s                                | 108.87 s                            | 121.45 s |
| Lua            | 1.09 s                                | 16.78 s                                | 150.00 s                            | 167.87 s |
| Python         | 1.47 s                                | 23.48 s                                | 214.99 s                            | 239.94 s |
| Numpy          | 349.48 ms                             | 6.67 s                                 | OOM                                 | N/A      |

### Multicore Results

| Language                  | Time (5k posts)                       | 20k posts                              | 60k posts                           | Total  |
| ------------------------- | ------------------------------------- | -------------------------------------- | ----------------------------------- | ------ |
| D Concurrent              | 15.10 ms                              | $\textsf{\color{lightgreen}145.10 ms}$ | $\textsf{\color{lightgreen}1.16 s}$ | 1.32 s |
| C++ Concurrent            | 13.85 ms                              | 163.67 ms                              | 1.38 s                              | 1.56 s |
| Go Concurrent             | $\textsf{\color{lightgreen}13.13 ms}$ | 166.03 ms                              | 1.42 s                              | 1.60 s |
| Rust Concurrent           | 14.39 ms                              | 186.87 ms                              | 1.58 s                              | 1.78 s |
| Julia Concurrent          | 16.85 ms                              | 222.67 ms                              | 1.94 s                              | 2.18 s |
| F# Concurrent (JIT)       | 22.31 ms                              | 288.33 ms                              | 2.46 s                              | 2.77 s |
| F# Concurrent (AOT)       | 19.00 ms                              | 290.00 ms                              | 2.47 s                              | 2.78 s |
| Swift Concurrent          | 31.32 ms                              | 393.54 ms                              | 3.50 s                              | 3.93 s |
| Java (GraalVM) Concurrent | 38.77 ms                              | 592.33 ms                              | 4.12 s                              | 4.75 s |

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
