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
| _Julia HO_[^1] | 8.00 ms | 54.67 ms | 136.67 ms | 199.33 ms |
| D | 25.02 ms | $\textsf{\color{lightgreen}314.94 ms}$ | $\textsf{\color{lightgreen}2.70 s}$ | 3.04 s |
| C++ | 25.00 ms | 339.00 ms | 2.93 s | 3.30 s |
| Rust | $\textsf{\color{lightgreen}23.45 ms}$ | 340.69 ms | 3.03 s | 3.40 s |
| Nim | 25.04 ms | 349.82 ms | 3.08 s | 3.45 s |
| C# (AOT) | 26.54 ms | 371.56 ms | 3.24 s | 3.64 s |
| Go | 24.38 ms | 372.82 ms | 3.28 s | 3.67 s |
| C# (JIT) | 27.62 ms | 373.84 ms | 3.27 s | 3.68 s |
| F# (AOT) | 27.38 ms | 390.67 ms | 3.41 s | 3.83 s |
| Zig | 28.46 ms | 429.67 ms | 3.82 s | 4.28 s |
| F# (JIT) | 91.46 ms | 527.67 ms | 4.04 s | 4.66 s |
| Julia | 30.38 ms | 480.67 ms | 4.24 s | 4.75 s |
| Odin | 48.32 ms | 573.21 ms | 6.02 s | 6.64 s |
| Swift | 51.27 ms | 713.37 ms | 6.20 s | 6.97 s |
| Java (GraalVM) | 43.00 ms | 743.67 ms | 6.54 s | 7.33 s |
| Vlang | 48.91 ms | 740.39 ms | 6.60 s | 7.39 s |
| Crystal | 61.01 ms | 904.44 ms | 7.99 s | 8.95 s |
| LuaJIT | 103.23 ms | 1.50 s | 12.31 s | 13.91 s |
| JS (Bun) | 118.92 ms | 1.61 s | 13.39 s | 15.12 s |
| JS (Deno) | 155.38 ms | 1.81 s | 17.22 s | 19.18 s |
| Dart AOT | 129.85 ms | 2.00 s | 17.87 s | 20.01 s |
| Dart VM | 166.77 ms | 2.26 s | 19.68 s | 22.10 s |
| JS (Node) | 143.00 ms | 2.37 s | 20.81 s | 23.32 s |
| ocaml | 145.54 ms | 2.65 s | 32.11 s | 34.90 s |
| Lua | 1.09 s | 16.74 s | 150.27 s | 168.10 s |
| Erlang | 1.17 s | 19.03 s | 172.55 s | 192.75 s |
| Python | 1.47 s | 23.59 s | 214.13 s | 239.18 s |
| Numpy | 352.46 ms | 7.04 s | OOM | N/A |
| Java (JIT) | 55.08 ms | OOM | OOM | N/A |

### Multicore Results

| Language       | Time (5k posts) | 20k posts        | 60k posts        | Total     |
| -------------- | --------------- | ---------------- | ---------------- | --------- |
| D Concurrent | 13.05 ms | 122.89 ms | $\textsf{\color{lightgreen}974.20 ms}$ | 1.11 s |
| C# Concurrent (JIT) | 14.46 ms | $\textsf{\color{lightgreen}122.74 ms}$ | 1.01 s | 1.15 s |
| C# Concurrent (AOT) | $\textsf{\color{lightgreen}10.75 ms}$ | 136.40 ms | 1.13 s | 1.28 s |
| Go Concurrent | 12.25 ms | 165.09 ms | 1.42 s | 1.60 s |
| Rust Concurrent | 12.18 ms | 176.22 ms | 1.52 s | 1.71 s |
| C++ Concurrent | 17.00 ms | 219.67 ms | 1.89 s | 2.12 s |
| Julia Concurrent | 17.46 ms | 222.00 ms | 1.94 s | 2.18 s |
| F# Concurrent (AOT) | 18.31 ms | 278.67 ms | 2.46 s | 2.76 s |
| F# Concurrent (JIT) | 20.46 ms | 283.00 ms | 2.50 s | 2.80 s |
| Swift Concurrent | 31.63 ms | 393.40 ms | 3.47 s | 3.90 s |
| Java (GraalVM) Concurrent | 49.62 ms | 460.00 ms | 5.36 s | 5.87 s |

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
