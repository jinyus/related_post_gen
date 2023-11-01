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
| _Julia HO_[^1] | 8.15 ms | 54.33 ms | 143.67 ms | 206.15 ms |
| D | 25.58 ms | $\textsf{\color{lightgreen}314.59 ms}$ | $\textsf{\color{lightgreen}2.70 s}$ | 3.04 s |
| C++ | 23.15 ms | 322.33 ms | 2.79 s | 3.13 s |
| Nim | $\textsf{\color{lightgreen}22.10 ms}$ | 318.06 ms | 2.84 s | 3.18 s |
| Go | 22.72 ms | 321.73 ms | 2.85 s | 3.20 s |
| Zig | 23.00 ms | 339.67 ms | 3.01 s | 3.38 s |
| Rust | 23.59 ms | 340.75 ms | 3.04 s | 3.40 s |
| C# (AOT) | 26.50 ms | 371.96 ms | 3.25 s | 3.65 s |
| C# (JIT) | 27.49 ms | 375.33 ms | 3.28 s | 3.68 s |
| F# (AOT) | 27.23 ms | 390.33 ms | 3.41 s | 3.83 s |
| Julia | 27.15 ms | 364.00 ms | 4.22 s | 4.61 s |
| F# (JIT) | 91.46 ms | 529.00 ms | 4.04 s | 4.66 s |
| Odin | 48.22 ms | 574.75 ms | 5.05 s | 5.67 s |
| Java (GraalVM) | 50.00 ms | 745.33 ms | 5.55 s | 6.34 s |
| Swift | 51.95 ms | 716.99 ms | 6.20 s | 6.97 s |
| Vlang | 49.01 ms | 742.33 ms | 6.59 s | 7.38 s |
| Crystal | 60.37 ms | 914.35 ms | 7.99 s | 8.97 s |
| LuaJIT | 99.83 ms | 1.17 s | 12.00 s | 13.27 s |
| JS (Bun) | 122.62 ms | 1.49 s | 13.14 s | 14.75 s |
| JS (Node) | 139.00 ms | 2.29 s | 15.77 s | 18.20 s |
| JS (Deno) | 165.15 ms | 1.88 s | 17.23 s | 19.28 s |
| Dart AOT | 129.77 ms | 2.01 s | 17.85 s | 19.99 s |
| Dart VM | 168.85 ms | 2.19 s | 19.65 s | 22.01 s |
| ocaml | 145.77 ms | 2.67 s | 36.42 s | 39.24 s |
| Erlang | 890.28 ms | 14.51 s | 135.63 s | 151.03 s |
| Lua | 1.10 s | 16.75 s | 149.87 s | 167.72 s |
| Python | 1.46 s | 23.96 s | 214.35 s | 239.77 s |
| Ruby | 3.04 s | 47.61 s | 427.81 s | 478.45 s |
| Numpy | 352.55 ms | 6.82 s | OOM | N/A |
| Java (JIT) | 54.62 ms | OOM | OOM | N/A |

### Multicore Results

| Language       | Time (5k posts) | 20k posts        | 60k posts        | Total     |
| -------------- | --------------- | ---------------- | ---------------- | --------- |
| D Concurrent | 12.99 ms | $\textsf{\color{lightgreen}123.37 ms}$ | $\textsf{\color{lightgreen}971.27 ms}$ | 1.11 s |
| C# Concurrent (JIT) | 14.20 ms | 124.37 ms | 1.01 s | 1.15 s |
| C# Concurrent (AOT) | $\textsf{\color{lightgreen}11.46 ms}$ | 142.05 ms | 1.19 s | 1.35 s |
| C++ Concurrent | 13.23 ms | 164.33 ms | 1.41 s | 1.58 s |
| Go Concurrent | 12.25 ms | 165.60 ms | 1.42 s | 1.60 s |
| Nim Concurrent | 12.82 ms | 171.48 ms | 1.48 s | 1.66 s |
| Rust Concurrent | 12.38 ms | 175.48 ms | 1.52 s | 1.71 s |
| Julia Concurrent | 13.92 ms | 188.33 ms | 1.75 s | 1.95 s |
| F# Concurrent (AOT) | 15.85 ms | 231.33 ms | 2.03 s | 2.27 s |
| F# Concurrent (JIT) | 20.08 ms | 280.00 ms | 2.46 s | 2.76 s |
| Swift Concurrent | 31.94 ms | 394.21 ms | 3.45 s | 3.88 s |
| Java (GraalVM) Concurrent | 48.77 ms | 462.67 ms | 4.12 s | 4.64 s |

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
