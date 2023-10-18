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
| Julia HO | 8.23 ms | 65.33 ms | 144.00 ms | 217.56 ms |
| D | 24.73 ms | 315.40 ms | 2.71 s | 3.05 s |
| Rust | 23.47 ms | 340.67 ms | 3.04 s | 3.40 s |
| C# (AOT) | 26.50 ms | 370.33 ms | 3.25 s | 3.65 s |
| C# (JIT) | 27.28 ms | 371.40 ms | 3.26 s | 3.66 s |
| Go | 24.25 ms | 374.70 ms | 3.28 s | 3.68 s |
| F# (AOT) | 27.31 ms | 390.33 ms | 3.42 s | 3.84 s |
| Zig | 28.62 ms | 430.33 ms | 3.82 s | 4.28 s |
| Nim | 30.39 ms | 433.69 ms | 3.83 s | 4.29 s |
| F# (JIT) | 92.69 ms | 528.67 ms | 4.05 s | 4.67 s |
| Julia | 30.08 ms | 479.00 ms | 4.22 s | 4.73 s |
| C++ | 36.00 ms | 518.67 ms | 4.58 s | 5.13 s |
| Odin | 47.66 ms | 577.08 ms | 6.07 s | 6.69 s |
| Swift | 51.18 ms | 715.34 ms | 6.19 s | 6.95 s |
| Vlang | 48.93 ms | 747.79 ms | 6.60 s | 7.39 s |
| Java (GraalVM) | 56.54 ms | 634.00 ms | 7.52 s | 8.21 s |
| Crystal | 60.83 ms | 910.83 ms | 8.02 s | 8.99 s |
| LuaJIT | 103.96 ms | 1.49 s | 12.82 s | 14.41 s |
| JS (Bun) | 122.69 ms | 1.49 s | 13.54 s | 15.15 s |
| JS (Node) | 128.62 ms | 2.25 s | 15.93 s | 18.30 s |
| JS (Deno) | 175.00 ms | 1.85 s | 17.23 s | 19.25 s |
| Dart AOT | 130.15 ms | 2.00 s | 17.87 s | 20.01 s |
| Dart VM | 164.38 ms | 2.19 s | 19.17 s | 21.53 s |
| ocaml | 145.00 ms | 2.65 s | 32.22 s | 35.01 s |
| Lua | 1.09 s | 16.88 s | 151.03 s | 169.01 s |
| Python | 1.47 s | 23.65 s | 215.20 s | 240.32 s |
| Erlang | 1.52 s | 24.43 s | 226.17 s | 252.12 s |
| Numpy | 352.74 ms | 6.97 s | 1.7976931348623156e+305 s | 1.7976931348623156e+305 s |
| Java (JIT) | 54.54 ms | 1.7976931348623156e+305 s | 1.7976931348623156e+305 s | Infinity s |

### Multicore Results

| Language       | Time (5k posts) | 20k posts        | 60k posts        | Total     |
| -------------- | --------------- | ---------------- | ---------------- | --------- |
| D Concurrent | 12.73 ms | 121.39 ms | 956.34 ms | 1.09 s |
| C# Concurrent (JIT) | 24.57 ms | 166.60 ms | 1.28 s | 1.47 s |
| C# Concurrent (AOT) | 17.70 ms | 166.43 ms | 1.41 s | 1.59 s |
| Go Concurrent | 13.31 ms | 166.98 ms | 1.42 s | 1.60 s |
| Rust Concurrent | 12.15 ms | 176.27 ms | 1.52 s | 1.71 s |
| C++ Concurrent | 16.54 ms | 205.67 ms | 1.76 s | 1.98 s |
| Julia Concurrent | 16.92 ms | 225.33 ms | 1.95 s | 2.19 s |
| F# Concurrent (AOT) | 18.46 ms | 278.00 ms | 2.46 s | 2.76 s |
| F# Concurrent (JIT) | 20.31 ms | 287.33 ms | 2.47 s | 2.77 s |
| Swift Concurrent | 31.64 ms | 394.62 ms | 3.43 s | 3.86 s |
| Java (GraalVM) Concurrent | 39.15 ms | 596.67 ms | 5.35 s | 5.99 s |

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