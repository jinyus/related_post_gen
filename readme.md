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
| _Julia HO_[^1] | 9.23 ms | 60.00 ms | 174.00 ms | 243.23 ms |
| C++ | 22.54 ms | 322.33 ms | 2.80 s | 3.14 s |
| Nim | 22.16 ms | 319.82 ms | 2.85 s | 3.19 s |
| Go | 22.82 ms | 324.04 ms | 2.86 s | 3.21 s |
| Zig | 23.00 ms | 340.33 ms | 3.00 s | 3.36 s |
| Rust | 23.30 ms | 342.27 ms | 3.04 s | 3.41 s |
| Julia | 24.14 ms | 388.67 ms | 3.18 s | 3.59 s |
| C# (AOT) | 26.74 ms | 372.55 ms | 3.27 s | 3.67 s |
| C# (JIT) | 27.59 ms | 375.10 ms | 3.28 s | 3.68 s |
| D | 33.37 ms | 444.08 ms | 3.87 s | 4.34 s |
| F# (AOT) | 32.45 ms | 461.62 ms | 4.06 s | 4.55 s |
| F# (JIT) | 85.60 ms | 558.64 ms | 4.86 s | 5.51 s |
| Odin | 47.99 ms | 579.49 ms | 5.06 s | 5.69 s |
| Java (GraalVM) | 52.38 ms | 855.00 ms | 5.57 s | 6.48 s |
| Swift | 51.47 ms | 717.61 ms | 6.24 s | 7.01 s |
| Vlang | 49.45 ms | 744.14 ms | 6.62 s | 7.41 s |
| Crystal | 53.83 ms | 820.78 ms | 7.16 s | 8.03 s |
| LuaJIT | 104.24 ms | 1.35 s | 11.08 s | 12.53 s |
| JS (Bun) | 123.46 ms | 1.55 s | 13.01 s | 14.68 s |
| Dart AOT | 130.38 ms | 2.01 s | 17.89 s | 20.03 s |
| JS (Node) | 195.00 ms | 1.97 s | 19.81 s | 21.98 s |
| Dart VM | 171.00 ms | 2.20 s | 19.69 s | 22.06 s |
| JS (Deno) | 180.31 ms | 2.36 s | 20.25 s | 22.79 s |
| Lobster (C++) | 185.89 ms | 2.88 s | 25.83 s | 28.89 s |
| ocaml | 144.69 ms | 2.71 s | 35.59 s | 38.45 s |
| LuaJIT (JIT OFF) | 677.81 ms | 10.27 s | 91.37 s | 102.32 s |
| Erlang | 888.31 ms | 14.75 s | 133.13 s | 148.77 s |
| Lua | 1.10 s | 16.76 s | 150.18 s | 168.04 s |
| Lobster (JIT) | 1.37 s | 21.29 s | 189.96 s | 212.62 s |
| Python | 1.47 s | 23.55 s | 214.69 s | 239.71 s |
| Numpy | 381.74 ms | 8.00 s | OOM | N/A |
| Java (JIT) | 54.85 ms | OOM | OOM | N/A |

### Multicore Results

| Language       | Time (5k posts) | 20k posts        | 60k posts        | Total     |
| -------------- | --------------- | ---------------- | ---------------- | --------- |
| D Concurrent | 13.68 ms | 127.71 ms | 1.01 s | 1.15 s |
| C# Concurrent (JIT) | 14.24 ms | 126.45 ms | 1.03 s | 1.17 s |
| C# Concurrent (AOT) | 11.11 ms | 137.56 ms | 1.14 s | 1.29 s |
| C++ Concurrent | 14.23 ms | 166.00 ms | 1.41 s | 1.59 s |
| Go Concurrent | 12.42 ms | 165.04 ms | 1.44 s | 1.61 s |
| Julia Concurrent | 13.78 ms | 172.58 ms | 1.48 s | 1.67 s |
| Nim Concurrent | 12.98 ms | 173.22 ms | 1.53 s | 1.72 s |
| Rust Concurrent | 13.12 ms | 185.26 ms | 1.53 s | 1.72 s |
| F# Concurrent (AOT) | 15.69 ms | 232.33 ms | 2.03 s | 2.28 s |
| F# Concurrent (JIT) | 20.23 ms | 279.00 ms | 2.46 s | 2.76 s |
| Swift Concurrent | 31.71 ms | 395.69 ms | 3.46 s | 3.88 s |
| Java (GraalVM) Concurrent | 39.38 ms | 470.33 ms | 5.35 s | 5.86 s |

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