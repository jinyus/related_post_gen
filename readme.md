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
| _Julia HO_[^1] | 8.08 ms | 54.00 ms | 145.00 ms | 207.08 ms |
| C++ | 22.85 ms | 320.00 ms | 2.78 s | 3.12 s |
| Nim | 22.16 ms | 315.72 ms | 2.85 s | 3.19 s |
| Zig | 23.00 ms | 337.33 ms | 2.99 s | 3.35 s |
| Rust | 23.62 ms | 340.45 ms | 3.03 s | 3.39 s |
| C# (AOT) | 26.32 ms | 371.50 ms | 3.24 s | 3.64 s |
| C# (JIT) | 27.49 ms | 372.14 ms | 3.25 s | 3.65 s |
| Go | 29.77 ms | 428.93 ms | 3.79 s | 4.25 s |
| D | 32.80 ms | 444.24 ms | 3.87 s | 4.34 s |
| F# (AOT) | 32.15 ms | 458.74 ms | 4.01 s | 4.51 s |
| Julia | 31.12 ms | 482.29 ms | 4.22 s | 4.73 s |
| Java (GraalVM) | 56.92 ms | 744.00 ms | 5.54 s | 6.34 s |
| Odin | 48.20 ms | 680.74 ms | 5.95 s | 6.68 s |
| Swift | 51.27 ms | 715.06 ms | 6.18 s | 6.95 s |
| F# (JIT) | 85.23 ms | 574.44 ms | 6.43 s | 7.09 s |
| Vlang | 48.76 ms | 740.65 ms | 6.58 s | 7.37 s |
| Crystal | 54.03 ms | 816.81 ms | 7.12 s | 7.99 s |
| LuaJIT | 101.47 ms | 1.47 s | 11.29 s | 12.86 s |
| JS (Bun) | 112.54 ms | 1.59 s | 13.10 s | 14.80 s |
| Dart AOT | 130.00 ms | 2.01 s | 17.81 s | 19.94 s |
| JS (Node) | 166.31 ms | 1.93 s | 18.95 s | 21.05 s |
| Dart VM | 147.46 ms | 2.08 s | 19.62 s | 21.85 s |
| JS (Deno) | 171.31 ms | 2.35 s | 21.37 s | 23.89 s |
| ocaml | 140.38 ms | 2.69 s | 30.13 s | 32.96 s |
| LuaJIT (JIT OFF) | 670.30 ms | 10.27 s | 90.77 s | 101.71 s |
| Erlang | 884.97 ms | 14.88 s | 131.08 s | 146.84 s |
| Lua | 1.10 s | 16.73 s | 149.47 s | 167.30 s |
| Python | 1.47 s | 23.59 s | 214.42 s | 239.47 s |
| Ruby | 3.03 s | 48.49 s | 425.48 s | 477.00 s |
| Numpy | 353.90 ms | 5.37 s | OOM | N/A |
| Java (JIT) | 52.38 ms | OOM | OOM | N/A |
| daScript (interpreted) | OOM | OOM | OOM | N/A |

### Multicore Results

| Language       | Time (5k posts) | 20k posts        | 60k posts        | Total     |
| -------------- | --------------- | ---------------- | ---------------- | --------- |
| C# Concurrent (JIT) | 7.51 ms | 67.66 ms | 524.27 ms | 599.45 ms |
| D Concurrent | 9.92 ms | 73.04 ms | 538.41 ms | 621.37 ms |
| C# Concurrent (AOT) | 6.39 ms | 72.81 ms | 578.57 ms | 657.76 ms |
| Go Concurrent | 7.72 ms | 85.19 ms | 727.51 ms | 820.41 ms |
| C++ Concurrent | 8.38 ms | 89.00 ms | 741.00 ms | 838.38 ms |
| Nim Concurrent | 8.34 ms | 88.40 ms | 749.01 ms | 845.76 ms |
| Rust Concurrent | 6.79 ms | 94.05 ms | 773.34 ms | 874.17 ms |
| Julia Concurrent | 8.72 ms | 91.15 ms | 798.28 ms | 898.15 ms |
| F# Concurrent (JIT) | 11.00 ms | 142.67 ms | 1.23 s | 1.38 s |
| F# Concurrent (AOT) | 9.15 ms | 141.00 ms | 1.24 s | 1.39 s |
| Swift Concurrent | 18.55 ms | 203.39 ms | 1.74 s | 1.96 s |
| Java (GraalVM) Concurrent | 18.46 ms | 322.67 ms | 2.76 s | 3.10 s |

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