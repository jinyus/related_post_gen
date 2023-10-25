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
| _Julia HO_[^1] | 8.15 ms | 52.33 ms | 144.33 ms | 204.82 ms |
| D | 24.76 ms | $\textsf{\color{lightgreen}313.86 ms}$ | $\textsf{\color{lightgreen}2.71 s}$ | 3.04 s |
| C++ | 25.00 ms | 339.33 ms | 2.92 s | 3.28 s |
| Rust | $\textsf{\color{lightgreen}23.51 ms}$ | 341.13 ms | 3.03 s | 3.40 s |
| Nim | 24.98 ms | 349.72 ms | 3.06 s | 3.43 s |
| C# (AOT) | 26.31 ms | 372.08 ms | 3.24 s | 3.64 s |
| C# (JIT) | 27.15 ms | 375.71 ms | 3.24 s | 3.65 s |
| Go | 24.47 ms | 373.02 ms | 3.27 s | 3.67 s |
| F# (AOT) | 27.23 ms | 391.33 ms | 3.40 s | 3.82 s |
| Zig | 28.38 ms | 430.33 ms | 3.79 s | 4.25 s |
| F# (JIT) | 91.69 ms | 529.67 ms | 4.04 s | 4.66 s |
| Julia | 30.38 ms | 481.33 ms | 4.23 s | 4.74 s |
| Odin | 41.22 ms | 576.57 ms | 6.00 s | 6.61 s |
| Swift | 50.75 ms | 716.25 ms | 6.15 s | 6.92 s |
| Vlang | 48.83 ms | 742.58 ms | 6.59 s | 7.38 s |
| Java (GraalVM) | 50.00 ms | 853.00 ms | 7.50 s | 8.41 s |
| Crystal | 60.25 ms | 914.20 ms | 7.98 s | 8.96 s |
| LuaJIT | 106.47 ms | 1.17 s | 11.30 s | 12.58 s |
| JS (Bun) | 117.08 ms | 1.46 s | 11.92 s | 13.49 s |
| JS (Deno) | 159.92 ms | 1.81 s | 17.84 s | 19.81 s |
| Dart AOT | 129.85 ms | 2.00 s | 17.83 s | 19.96 s |
| Dart VM | 168.38 ms | 2.18 s | 19.66 s | 22.01 s |
| JS (Node) | 129.08 ms | 2.56 s | 19.63 s | 22.33 s |
| ocaml | 142.08 ms | 2.67 s | 32.09 s | 34.91 s |
| Erlang | 887.12 ms | 14.34 s | 135.39 s | 150.62 s |
| Lua | 1.09 s | 16.74 s | 149.94 s | 167.78 s |
| Python | 1.46 s | 23.55 s | 213.87 s | 238.88 s |
| Numpy | 352.91 ms | 6.72 s | OOM | N/A |
| Java (JIT) | 54.92 ms | OOM | OOM | N/A |

### Multicore Results

| Language       | Time (5k posts) | 20k posts        | 60k posts        | Total     |
| -------------- | --------------- | ---------------- | ---------------- | --------- |
| D Concurrent | 13.22 ms | 123.67 ms | $\textsf{\color{lightgreen}969.91 ms}$ | 1.11 s |
| C# Concurrent (JIT) | 13.91 ms | $\textsf{\color{lightgreen}122.91 ms}$ | 1.01 s | 1.15 s |
| C# Concurrent (AOT) | $\textsf{\color{lightgreen}10.84 ms}$ | 136.05 ms | 1.13 s | 1.28 s |
| C++ Concurrent | 13.38 ms | 164.67 ms | 1.40 s | 1.58 s |
| Go Concurrent | 12.08 ms | 164.88 ms | 1.42 s | 1.60 s |
| Rust Concurrent | 12.19 ms | 176.73 ms | 1.51 s | 1.70 s |
| Julia Concurrent | 17.00 ms | 222.00 ms | 1.94 s | 2.18 s |
| Nim Concurrent | 16.35 ms | 224.77 ms | 2.01 s | 2.25 s |
| F# Concurrent (JIT) | 20.38 ms | 278.00 ms | 2.46 s | 2.76 s |
| F# Concurrent (AOT) | 18.00 ms | 279.00 ms | 2.46 s | 2.76 s |
| Swift Concurrent | 31.20 ms | 393.89 ms | 3.46 s | 3.88 s |
| Java (GraalVM) Concurrent | 38.85 ms | 468.33 ms | 4.19 s | 4.70 s |

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
