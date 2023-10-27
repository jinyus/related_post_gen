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
| _Julia HO_[^1] | 8.15 ms | 58.67 ms | 143.33 ms | 210.15 ms |
| D | 24.89 ms | $\textsf{\color{lightgreen}315.19 ms}$ | $\textsf{\color{lightgreen}2.70 s}$ | 3.04 s |
| C++ | 25.15 ms | 337.67 ms | 2.92 s | 3.29 s |
| Zig | $\textsf{\color{lightgreen}23.00 ms}$ | 337.00 ms | 3.02 s | 3.38 s |
| Rust | 23.44 ms | 343.26 ms | 3.04 s | 3.41 s |
| Nim | 24.96 ms | 348.68 ms | 3.07 s | 3.44 s |
| C# (AOT) | 26.76 ms | 371.90 ms | 3.24 s | 3.64 s |
| C# (JIT) | 27.27 ms | 374.40 ms | 3.26 s | 3.66 s |
| Go | 24.59 ms | 371.63 ms | 3.27 s | 3.67 s |
| F# (AOT) | 27.15 ms | 390.33 ms | 3.41 s | 3.83 s |
| F# (JIT) | 91.54 ms | 527.67 ms | 4.04 s | 4.66 s |
| Julia | 37.15 ms | 481.67 ms | 4.22 s | 4.74 s |
| Odin | 47.43 ms | 690.62 ms | 6.09 s | 6.82 s |
| Swift | 50.78 ms | 713.55 ms | 6.21 s | 6.97 s |
| Vlang | 48.79 ms | 740.91 ms | 6.59 s | 7.38 s |
| Java (GraalVM) | 56.38 ms | 638.67 ms | 7.51 s | 8.21 s |
| Crystal | 60.31 ms | 909.20 ms | 8.00 s | 8.96 s |
| LuaJIT | 108.22 ms | 1.44 s | 12.14 s | 13.69 s |
| JS (Bun) | 118.46 ms | 1.65 s | 13.16 s | 14.93 s |
| JS (Deno) | 155.54 ms | 1.88 s | 15.88 s | 17.92 s |
| Dart AOT | 130.00 ms | 2.01 s | 17.84 s | 19.98 s |
| Dart VM | 169.62 ms | 2.12 s | 19.68 s | 21.96 s |
| JS (Node) | 129.31 ms | 2.57 s | 20.04 s | 22.74 s |
| ocaml | 150.08 ms | 2.70 s | 33.66 s | 36.51 s |
| Erlang | 887.40 ms | 14.74 s | 132.22 s | 147.85 s |
| Lua | 1.10 s | 16.84 s | 149.95 s | 167.89 s |
| Python | 1.47 s | 23.52 s | 212.98 s | 237.97 s |
| Numpy | 352.42 ms | 6.84 s | OOM | N/A |
| Java (JIT) | 53.46 ms | OOM | OOM | N/A |
| Ruby | OOM | OOM | OOM | N/A |

### Multicore Results

| Language       | Time (5k posts) | 20k posts        | 60k posts        | Total     |
| -------------- | --------------- | ---------------- | ---------------- | --------- |
| D Concurrent | 12.95 ms | 123.49 ms | $\textsf{\color{lightgreen}976.91 ms}$ | 1.11 s |
| C# Concurrent (JIT) | 13.87 ms | $\textsf{\color{lightgreen}122.30 ms}$ | 1.01 s | 1.15 s |
| C# Concurrent (AOT) | $\textsf{\color{lightgreen}11.27 ms}$ | 136.49 ms | 1.13 s | 1.28 s |
| C++ Concurrent | 13.08 ms | 164.33 ms | 1.41 s | 1.58 s |
| Go Concurrent | 12.25 ms | 163.46 ms | 1.42 s | 1.60 s |
| Rust Concurrent | 12.20 ms | 173.95 ms | 1.52 s | 1.71 s |
| Julia Concurrent | 17.08 ms | 226.00 ms | 1.94 s | 2.18 s |
| Nim Concurrent | 16.67 ms | 222.25 ms | 1.99 s | 2.23 s |
| F# Concurrent (AOT) | 15.31 ms | 231.00 ms | 2.03 s | 2.27 s |
| F# Concurrent (JIT) | 20.38 ms | 276.00 ms | 2.44 s | 2.74 s |
| Swift Concurrent | 31.74 ms | 392.84 ms | 3.47 s | 3.90 s |
| Java (GraalVM) Concurrent | 38.77 ms | 463.33 ms | 5.32 s | 5.83 s |

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
