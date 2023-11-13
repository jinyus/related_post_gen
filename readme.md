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
| _Julia HO_[^1] | 9.38 ms | 65.33 ms | 179.33 ms | 254.05 ms |
| C++ | 22.92 ms | 326.00 ms | 2.80 s | 3.15 s |
| Nim | 22.20 ms | 319.43 ms | 2.85 s | 3.20 s |
| Go | 22.91 ms | 324.49 ms | 2.87 s | 3.21 s |
| Zig | 23.00 ms | 340.33 ms | 3.00 s | 3.37 s |
| Rust | 23.56 ms | 342.54 ms | 3.05 s | 3.41 s |
| F# (AOT) | 27.10 ms | 375.89 ms | 3.25 s | 3.66 s |
| C# (AOT) | 26.88 ms | 377.29 ms | 3.28 s | 3.68 s |
| C# (JIT) | 28.23 ms | 380.03 ms | 3.28 s | 3.69 s |
| D | 33.78 ms | 446.47 ms | 3.87 s | 4.35 s |
| Julia | 31.46 ms | 505.64 ms | 4.24 s | 4.78 s |
| F# (JIT) | 86.17 ms | 699.14 ms | 5.05 s | 5.84 s |
| Java (GraalVM) | 50.46 ms | 856.33 ms | 5.57 s | 6.48 s |
| Odin | 48.05 ms | 690.94 ms | 6.05 s | 6.79 s |
| Swift | 51.87 ms | 726.56 ms | 6.23 s | 7.01 s |
| Vlang | 49.73 ms | 746.05 ms | 6.62 s | 7.42 s |
| Crystal | 54.50 ms | 822.99 ms | 7.17 s | 8.05 s |
| LuaJIT | 114.97 ms | 1.30 s | 11.56 s | 12.98 s |
| JS (Bun) | 128.15 ms | 1.51 s | 13.47 s | 15.10 s |
| Dart AOT | 130.77 ms | 2.01 s | 17.88 s | 20.03 s |
| JS (Node) | 186.23 ms | 1.98 s | 19.24 s | 21.41 s |
| Dart VM | 167.85 ms | 2.26 s | 19.10 s | 21.53 s |
| JS (Deno) | 180.15 ms | 2.31 s | 21.33 s | 23.82 s |
| Lobster (C++) | 187.38 ms | 2.89 s | 25.83 s | 28.91 s |
| Scala Native | 305.46 ms | 3.85 s | 31.87 s | 36.03 s |
| ocaml | 148.69 ms | 2.98 s | 38.40 s | 41.53 s |
| LuaJIT (JIT OFF) | 678.79 ms | 10.32 s | 91.42 s | 102.42 s |
| Erlang | 889.76 ms | 14.55 s | 136.09 s | 151.53 s |
| Lua | 1.10 s | 16.82 s | 150.32 s | 168.24 s |
| Lobster (JIT) | 1.37 s | 21.36 s | 190.64 s | 213.37 s |
| Python | 1.48 s | 23.47 s | 214.20 s | 239.16 s |
| Numpy | 390.86 ms | 6.50 s | OOM | N/A |
| Java (JIT) | 55.31 ms | OOM | OOM | N/A |

### Multicore Results

| Language       | Time (5k posts) | 20k posts        | 60k posts        | Total     |
| -------------- | --------------- | ---------------- | ---------------- | --------- |
| D Concurrent | 13.65 ms | 130.93 ms | 1.01 s | 1.16 s |
| C# Concurrent (JIT) | 14.29 ms | 128.94 ms | 1.03 s | 1.17 s |
| C# Concurrent (AOT) | 11.18 ms | 140.79 ms | 1.15 s | 1.30 s |
| C++ Concurrent | 13.00 ms | 166.67 ms | 1.41 s | 1.59 s |
| Go Concurrent | 12.33 ms | 166.35 ms | 1.43 s | 1.61 s |
| Nim Concurrent | 13.11 ms | 173.10 ms | 1.48 s | 1.67 s |
| Julia Concurrent | 13.56 ms | 178.56 ms | 1.48 s | 1.67 s |
| Rust Concurrent | 12.51 ms | 178.02 ms | 1.53 s | 1.72 s |
| F# Concurrent (AOT) | 15.92 ms | 232.33 ms | 2.03 s | 2.28 s |
| F# Concurrent (JIT) | 20.38 ms | 280.67 ms | 2.50 s | 2.81 s |
| Swift Concurrent | 32.54 ms | 398.59 ms | 3.43 s | 3.86 s |
| Java (GraalVM) Concurrent | 51.31 ms | 608.33 ms | 4.14 s | 4.80 s |

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