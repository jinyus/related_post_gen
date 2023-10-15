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
| D | 24.87 ms | 315.47 ms | 2.70 s | 3.04 s |
| Rust | 23.46 ms | 340.77 ms | 3.03 s | 3.40 s |
| Go | 24.30 ms | 371.45 ms | 3.27 s | 3.66 s |
| Zig | 28.77 ms | 427.00 ms | 3.82 s | 4.27 s |
| Julia | 30.31 ms | 480.00 ms | 4.23 s | 4.74 s |
| C++ | 35.77 ms | 519.67 ms | 4.57 s | 5.12 s |
| Nim | 30.39 ms | 522.37 ms | 4.60 s | 5.16 s |
| F# (AOT) | 40.08 ms | 604.00 ms | 5.18 s | 5.83 s |
| C# (AOT) | 42.79 ms | 618.07 ms | 5.40 s | 6.06 s |
| F# (JIT) | 45.00 ms | 623.33 ms | 5.50 s | 6.17 s |
| Odin | 47.66 ms | 686.63 ms | 6.01 s | 6.74 s |
| Swift | 51.16 ms | 713.27 ms | 6.19 s | 6.96 s |
| Java (JIT) | 54.31 ms | 767.33 ms | 6.44 s | 7.26 s |
| Vlang | 51.61 ms | 756.92 ms | 6.65 s | 7.46 s |
| C# (JIT) | 58.25 ms | 772.53 ms | 6.77 s | 7.60 s |
| Java (GraalVM) | 56.69 ms | 633.00 ms | 7.51 s | 8.20 s |
| Crystal | 65.12 ms | 975.09 ms | 8.65 s | 9.69 s |
| LuaJIT | 106.26 ms | 1.19 s | 11.29 s | 12.58 s |
| JS (Bun) | 120.38 ms | 1.53 s | 14.67 s | 16.32 s |
| JS (Deno) | 163.92 ms | 1.81 s | 16.24 s | 18.21 s |
| JS (Node) | 133.77 ms | 2.62 s | 17.17 s | 19.92 s |
| Dart VM | 134.69 ms | 2.47 s | 20.96 s | 23.56 s |
| Dart AOT | 186.69 ms | 2.89 s | 25.75 s | 28.82 s |
| ocaml | 142.15 ms | 3.00 s | 35.47 s | 38.61 s |
| Lua | 1.09 s | 16.79 s | 150.31 s | 168.20 s |
| Python | 1.47 s | 23.68 s | 215.46 s | 240.60 s |
| Numpy | 350.72 ms | 6.20 s | 1.7976931348623156e+305 s | 1.7976931348623156e+305 s |

### Multicore Results

| Language       | Time (5k posts) | 20k posts        | 60k posts        | Total     |
| -------------- | --------------- | ---------------- | ---------------- | --------- |
| D Concurrent | 16.68 ms | 172.72 ms | 1.40 s | 1.59 s |
| Go Concurrent | 13.50 ms | 166.75 ms | 1.42 s | 1.60 s |
| Rust Concurrent | 15.29 ms | 181.43 ms | 1.57 s | 1.77 s |
| C++ Concurrent | 16.46 ms | 204.33 ms | 1.75 s | 1.97 s |
| Julia Concurrent | 17.23 ms | 224.00 ms | 1.94 s | 2.18 s |
| F# Concurrent (AOT) | 16.23 ms | 243.00 ms | 2.04 s | 2.30 s |
| F# Concurrent (JIT) | 22.46 ms | 287.00 ms | 2.49 s | 2.80 s |
| Swift Concurrent | 31.62 ms | 394.38 ms | 3.44 s | 3.86 s |
| Java (GraalVM) Concurrent | 39.31 ms | 467.67 ms | 4.12 s | 4.63 s |

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