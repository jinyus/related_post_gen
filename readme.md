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
| Go             | 24.25 ms                              | $\textsf{\color{lightgreen}372.99 ms}$ | $\textsf{\color{lightgreen}3.28 s}$ | 3.68 s   |
| Rust           | $\textsf{\color{lightgreen}23.81 ms}$ | 386.69 ms                              | 3.45 s                              | 3.86 s   |
| Zig            | 29.08 ms                              | 432.00 ms                              | 3.85 s                              | 4.32 s   |
| D              | 32.70 ms                              | 448.78 ms                              | 3.90 s                              | 4.39 s   |
| Java (GraalVM) | 33.31 ms                              | 495.00 ms                              | 4.22 s                              | 4.75 s   |
| Crystal        | 38.54 ms                              | 553.17 ms                              | 4.87 s                              | 5.47 s   |
| Julia          | 36.92 ms                              | 574.67 ms                              | 5.05 s                              | 5.66 s   |
| Odin           | 48.24 ms                              | 689.91 ms                              | 5.06 s                              | 5.80 s   |
| F# (AOT)       | 39.46 ms                              | 606.33 ms                              | 5.19 s                              | 5.83 s   |
| F#             | 44.92 ms                              | 624.00 ms                              | 5.50 s                              | 6.17 s   |
| Swift          | 50.92 ms                              | 712.97 ms                              | 6.21 s                              | 6.98 s   |
| Java (JIT)     | 54.69 ms                              | 757.33 ms                              | 6.46 s                              | 7.27 s   |
| Vlang          | 51.55 ms                              | 758.32 ms                              | 6.67 s                              | 7.48 s   |
| Nim            | 31.62 ms                              | 781.00 ms                              | 7.27 s                              | 8.08 s   |
| C# (JIT)       | 49.79 ms                              | 894.12 ms                              | 7.85 s                              | 8.79 s   |
| C# (AOT)       | 82.79 ms                              | 1.26 s                                 | 11.21 s                             | 12.56 s  |
| LuaJIT         | 103.94 ms                             | 1.35 s                                 | 11.30 s                             | 12.76 s  |
| JS (Deno)      | 192.92 ms                             | 2.27 s                                 | 19.92 s                             | 22.38 s  |
| Dart VM        | 134.92 ms                             | 2.42 s                                 | 21.06 s                             | 23.62 s  |
| JS (Node)      | 180.38 ms                             | 2.43 s                                 | 24.48 s                             | 27.09 s  |
| Dart AOT       | 185.69 ms                             | 2.89 s                                 | 25.85 s                             | 28.93 s  |
| ocaml          | 148.46 ms                             | 2.69 s                                 | 33.16 s                             | 36.00 s  |
| JS (Bun)       | 775.77 ms                             | 11.92 s                                | 107.60 s                            | 120.29 s |
| Lua            | 1.10 s                                | 16.78 s                                | 150.31 s                            | 168.19 s |
| Python         | 1.47 s                                | 23.45 s                                | 215.48 s                            | 240.39 s |
| Numpy          | 348.98 ms                             | 5.90 s                                 | OutofMemory                         | N/A      |

### Multicore Results

| Language                  | Time (5k posts) | 20k posts | 60k posts | Total  |
| ------------------------- | --------------- | --------- | --------- | ------ |
| Go Concurrent             | 13.36 ms        | 168.20 ms | 1.42 s    | 1.60 s |
| D Concurrent              | 18.02 ms        | 205.94 ms | 1.65 s    | 1.87 s |
| Julia Concurrent          | 18.15 ms        | 251.33 ms | 2.13 s    | 2.40 s |
| Rust Concurrent           | 20.39 ms        | 308.32 ms | 2.73 s    | 3.06 s |
| F# Concurrent             | 42.77 ms        | 410.00 ms | 3.35 s    | 3.80 s |
| Swift Concurrent          | 31.39 ms        | 393.27 ms | 3.47 s    | 3.89 s |
| Java (GraalVM) Concurrent | 48.85 ms        | 593.33 ms | 4.24 s    | 4.88 s |

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
