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

| Language       | Time (5k posts)                       | 20k posts | 60k posts | Total    |
| -------------- | ------------------------------------- | --------- | --------- | -------- |
| D | 24.77 ms | 314.11 ms | 2.70 s | 3.04 s |
| Rust | 23.50 ms | 340.67 ms | 3.04 s | 3.40 s |
| Go | 24.39 ms | 371.09 ms | 3.28 s | 3.67 s |
| Zig | 28.46 ms | 429.67 ms | 3.82 s | 4.28 s |
| Nim | 30.40 ms | 434.66 ms | 3.83 s | 4.29 s |
| Java (GraalVM) | 50.00 ms | 463.00 ms | 4.14 s | 4.65 s |
| Julia | 29.92 ms | 479.00 ms | 4.23 s | 4.74 s |
| C++ | 35.85 ms | 520.33 ms | 4.58 s | 5.14 s |
| F# (AOT) | 36.31 ms | 546.33 ms | 4.71 s | 5.29 s |
| Odin | 41.19 ms | 572.92 ms | 5.09 s | 5.71 s |
| C# (AOT) | 42.89 ms | 615.85 ms | 5.39 s | 6.05 s |
| Swift | 51.04 ms | 713.51 ms | 6.18 s | 6.95 s |
| F# (JIT) | 51.85 ms | 747.67 ms | 6.26 s | 7.06 s |
| Vlang | 51.29 ms | 756.22 ms | 6.65 s | 7.46 s |
| C# (JIT) | 57.93 ms | 774.12 ms | 6.76 s | 7.59 s |
| Crystal | 65.07 ms | 973.87 ms | 8.65 s | 9.69 s |
| LuaJIT | 104.69 ms | 1.38 s | 12.88 s | 14.36 s |
| JS (Bun) | 120.62 ms | 1.49 s | 12.80 s | 14.42 s |
| JS (Deno) | 174.46 ms | 1.81 s | 16.63 s | 18.61 s |
| JS (Node) | 133.31 ms | 2.43 s | 17.55 s | 20.11 s |
| Dart VM | 136.23 ms | 2.37 s | 20.98 s | 23.49 s |
| Dart AOT | 186.08 ms | 2.89 s | 25.80 s | 28.88 s |
| ocaml | 139.31 ms | 2.61 s | 32.77 s | 35.53 s |
| Lua | 1.09 s | 16.73 s | 149.89 s | 167.72 s |
| Python | 1.47 s | 23.59 s | 220.17 s | 245.23 s |
| Numpy | 348.35 ms | 6.92 s | 1.7976931348623156e+305 s | 1.7976931348623156e+305 s |
| Java (JIT) | 54.08 ms | 1.7976931348623156e+305 s | 1.7976931348623156e+305 s | Infinity s |

### Multicore Results

| Language       | Time (5k posts) | 20k posts        | 60k posts        | Total     |
| -------------- | --------------- | ---------------- | ---------------- | --------- |
| D Concurrent | 17.02 ms | 172.09 ms | 1.40 s | 1.59 s |
| Go Concurrent | 12.97 ms | 165.89 ms | 1.42 s | 1.60 s |
| Rust Concurrent | 14.58 ms | 181.13 ms | 1.57 s | 1.77 s |
| C++ Concurrent | 16.69 ms | 204.67 ms | 1.75 s | 1.97 s |
| Julia Concurrent | 16.77 ms | 221.67 ms | 1.94 s | 2.18 s |
| F# Concurrent (JIT) | 22.62 ms | 288.00 ms | 2.46 s | 2.78 s |
| F# Concurrent (AOT) | 19.00 ms | 290.00 ms | 2.47 s | 2.78 s |
| Swift Concurrent | 31.44 ms | 393.44 ms | 3.45 s | 3.88 s |
| Java (GraalVM) Concurrent | 38.92 ms | 464.33 ms | 4.12 s | 4.62 s |

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