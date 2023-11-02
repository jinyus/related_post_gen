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
| _Julia HO_[^1] | 7.92 ms | 54.67 ms | 141.67 ms | 204.26 ms |
| D | 24.86 ms | $\textsf{\color{lightgreen}314.37 ms}$ | $\textsf{\color{lightgreen}2.71 s}$ | 3.05 s |
| C++ | 22.38 ms | 319.00 ms | 2.79 s | 3.13 s |
| Nim | $\textsf{\color{lightgreen}22.10 ms}$ | 317.04 ms | 2.85 s | 3.19 s |
| Go | 22.81 ms | 322.74 ms | 2.86 s | 3.21 s |
| Zig | 23.00 ms | 339.00 ms | 3.02 s | 3.38 s |
| Rust | 23.54 ms | 340.40 ms | 3.04 s | 3.40 s |
| Julia | 24.00 ms | 366.00 ms | 3.17 s | 3.56 s |
| C# (AOT) | 26.36 ms | 370.09 ms | 3.26 s | 3.65 s |
| C# (JIT) | 27.33 ms | 374.81 ms | 3.26 s | 3.66 s |
| F# (AOT) | 27.46 ms | 389.67 ms | 3.42 s | 3.83 s |
| F# (JIT) | 91.54 ms | 529.33 ms | 4.05 s | 4.67 s |
| Odin | 48.20 ms | 574.48 ms | 5.97 s | 6.59 s |
| Swift | 50.72 ms | 715.76 ms | 6.19 s | 6.96 s |
| Vlang | 48.78 ms | 740.95 ms | 6.60 s | 7.39 s |
| Java (GraalVM) | 42.15 ms | 853.33 ms | 7.51 s | 8.41 s |
| Crystal | 60.39 ms | 909.36 ms | 7.98 s | 8.95 s |
| LuaJIT | 104.74 ms | 1.47 s | 11.49 s | 13.06 s |
| JS (Bun) | 121.69 ms | 1.53 s | 13.88 s | 15.53 s |
| JS (Deno) | 164.00 ms | 1.81 s | 17.85 s | 19.82 s |
| Dart AOT | 130.23 ms | 2.00 s | 17.86 s | 19.99 s |
| Dart VM | 169.54 ms | 2.24 s | 19.67 s | 22.08 s |
| JS (Node) | 129.54 ms | 2.52 s | 23.52 s | 26.17 s |
| ocaml | 138.31 ms | 2.62 s | 35.41 s | 38.17 s |
| Erlang | 887.01 ms | 15.17 s | 139.17 s | 155.22 s |
| Lua | 1.09 s | 16.73 s | 149.87 s | 167.70 s |
| Python | 1.47 s | 23.55 s | 214.85 s | 239.86 s |
| Ruby | 3.03 s | 47.67 s | 427.14 s | 477.84 s |
| Numpy | 353.32 ms | 6.76 s | OOM | N/A |
| daScript | OOM | OOM | OOM | N/A |
| Java (JIT) | 52.77 ms | OOM | OOM | N/A |

### Multicore Results

| Language       | Time (5k posts) | 20k posts        | 60k posts        | Total     |
| -------------- | --------------- | ---------------- | ---------------- | --------- |
| D Concurrent | 12.92 ms | 122.77 ms | $\textsf{\color{lightgreen}971.01 ms}$ | 1.11 s |
| C# Concurrent (JIT) | 13.95 ms | $\textsf{\color{lightgreen}122.41 ms}$ | 1.01 s | 1.15 s |
| C# Concurrent (AOT) | $\textsf{\color{lightgreen}10.84 ms}$ | 135.68 ms | 1.14 s | 1.29 s |
| C++ Concurrent | 13.08 ms | 163.00 ms | 1.41 s | 1.59 s |
| Go Concurrent | 11.88 ms | 163.84 ms | 1.42 s | 1.59 s |
| Nim Concurrent | 13.05 ms | 172.19 ms | 1.48 s | 1.66 s |
| Rust Concurrent | 12.39 ms | 174.52 ms | 1.52 s | 1.71 s |
| Julia Concurrent | 16.54 ms | 217.00 ms | 1.87 s | 2.11 s |
| F# Concurrent (AOT) | 15.46 ms | 230.67 ms | 2.04 s | 2.29 s |
| F# Concurrent (JIT) | 20.38 ms | 277.67 ms | 2.48 s | 2.78 s |
| Swift Concurrent | 31.16 ms | 393.59 ms | 3.44 s | 3.87 s |
| Java (GraalVM) Concurrent | 49.46 ms | 473.33 ms | 5.42 s | 5.94 s |

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
