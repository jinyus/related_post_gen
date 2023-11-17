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
-   Represent tags as strings
-   Be production ready
-   Use less than 8GB of memory
</details>

### Updated Results from github workflow ([raw data](https://github.com/jinyus/related_post_gen/blob/main/raw_results.md))

##### VM Specs ( Azure F4s v2 - 4vCPU-8GB-Ubuntu 22.04 )

| Language         | Time (5k posts)                       | 20k posts                              | 60k posts                           | Total     |
| ---------------- | ------------------------------------- | -------------------------------------- | ----------------------------------- | --------- |
| _Julia HO_[^1]   | 7.92 ms                               | 56.00 ms                               | 141.33 ms                           | 205.26 ms |
| D (v2)           | $\textsf{\color{lightgreen}21.48 ms}$ | $\textsf{\color{lightgreen}259.44 ms}$ | $\textsf{\color{lightgreen}2.13 s}$ | 2.41 s    |
| Go               | 21.92 ms                              | 309.41 ms                              | 2.72 s                              | 3.05 s    |
| C++              | 22.92 ms                              | 319.00 ms                              | 2.78 s                              | 3.12 s    |
| D                | 25.45 ms                              | 325.21 ms                              | 2.79 s                              | 3.14 s    |
| Nim              | 22.06 ms                              | 318.34 ms                              | 2.84 s                              | 3.18 s    |
| Zig              | 23.00 ms                              | 339.33 ms                              | 2.99 s                              | 3.35 s    |
| Rust             | 23.60 ms                              | 341.14 ms                              | 3.05 s                              | 3.41 s    |
| Julia            | 24.17 ms                              | 365.98 ms                              | 3.17 s                              | 3.56 s    |
| F# (AOT)         | 27.16 ms                              | 372.71 ms                              | 3.23 s                              | 3.63 s    |
| C# (AOT)         | 26.59 ms                              | 371.25 ms                              | 3.26 s                              | 3.65 s    |
| C# (JIT)         | 27.33 ms                              | 375.13 ms                              | 3.26 s                              | 3.66 s    |
| F# (JIT)         | 44.15 ms                              | 647.20 ms                              | 5.69 s                              | 6.38 s    |
| Odin             | 47.67 ms                              | 574.53 ms                              | 5.97 s                              | 6.59 s    |
| Swift            | 51.39 ms                              | 716.78 ms                              | 6.21 s                              | 6.98 s    |
| Java (JIT)       | 53.62 ms                              | 762.00 ms                              | 6.50 s                              | 7.31 s    |
| Vlang            | 48.82 ms                              | 743.93 ms                              | 6.60 s                              | 7.39 s    |
| Crystal          | 53.79 ms                              | 814.34 ms                              | 7.16 s                              | 8.03 s    |
| Java (GraalVM)   | 56.69 ms                              | 635.00 ms                              | 7.52 s                              | 8.21 s    |
| LuaJIT           | 102.86 ms                             | 1.50 s                                 | 12.43 s                             | 14.03 s   |
| JS (Bun)         | 122.46 ms                             | 1.57 s                                 | 13.79 s                             | 15.49 s   |
| Dart AOT         | 129.92 ms                             | 2.01 s                                 | 17.86 s                             | 20.00 s   |
| Dart VM          | 165.77 ms                             | 2.23 s                                 | 19.17 s                             | 21.57 s   |
| JS (Node)        | 165.54 ms                             | 1.97 s                                 | 19.80 s                             | 21.94 s   |
| JS (Deno)        | 177.54 ms                             | 2.35 s                                 | 21.43 s                             | 23.96 s   |
| Lobster (C++)    | 187.83 ms                             | 2.88 s                                 | 25.94 s                             | 29.00 s   |
| Scala Native     | 252.08 ms                             | 3.51 s                                 | 30.28 s                             | 34.04 s   |
| ocaml            | 138.54 ms                             | 2.97 s                                 | 34.43 s                             | 37.54 s   |
| Racket           | 233.25 ms                             | 3.87 s                                 | 33.99 s                             | 38.09 s   |
| LuaJIT (JIT OFF) | 673.35 ms                             | 10.27 s                                | 91.14 s                             | 102.08 s  |
| Erlang           | 886.18 ms                             | 15.07 s                                | 130.96 s                            | 146.92 s  |
| Lua              | 1.09 s                                | 16.76 s                                | 152.72 s                            | 170.57 s  |
| Lobster (JIT)    | 1.36 s                                | 21.24 s                                | 188.87 s                            | 211.48 s  |
| Python           | 1.47 s                                | 23.70 s                                | 215.09 s                            | 240.25 s  |
| Inko[^2]         | 9.92 s                                | 154.79 s                               | 1389.37 s                           | 1554.08 s |
| Numpy            | 350.22 ms                             | 6.46 s                                 | OOM                                 | N/A       |

### Multicore Results

| Language                  | Time (5k posts)                       | 20k posts                              | 60k posts                              | Total  |
| ------------------------- | ------------------------------------- | -------------------------------------- | -------------------------------------- | ------ |
| D Concurrent              | 11.87 ms                              | $\textsf{\color{lightgreen}114.27 ms}$ | $\textsf{\color{lightgreen}885.56 ms}$ | 1.01 s |
| C# Concurrent (JIT)       | 13.88 ms                              | 124.29 ms                              | 1.02 s                                 | 1.15 s |
| C# Concurrent (AOT)       | $\textsf{\color{lightgreen}10.83 ms}$ | 136.39 ms                              | 1.14 s                                 | 1.29 s |
| C++ Concurrent            | 13.46 ms                              | 166.00 ms                              | 1.41 s                                 | 1.59 s |
| Go Concurrent             | 12.04 ms                              | 165.52 ms                              | 1.43 s                                 | 1.61 s |
| Julia Concurrent          | 13.81 ms                              | 174.84 ms                              | 1.48 s                                 | 1.67 s |
| Nim Concurrent            | 12.64 ms                              | 179.67 ms                              | 1.48 s                                 | 1.68 s |
| Rust Concurrent           | 12.47 ms                              | 174.48 ms                              | 1.52 s                                 | 1.71 s |
| F# Concurrent (JIT)       | 20.00 ms                              | 288.33 ms                              | 2.40 s                                 | 2.71 s |
| F# Concurrent (AOT)       | 18.23 ms                              | 283.67 ms                              | 2.47 s                                 | 2.77 s |
| Swift Concurrent          | 31.65 ms                              | 395.49 ms                              | 3.45 s                                 | 3.88 s |
| Java (GraalVM) Concurrent | 39.85 ms                              | 617.67 ms                              | 5.50 s                                 | 6.15 s |

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
[^2]: Inko is currently in beta and optimizations haven't been applied. [more](https://github.com/jinyus/related_post_gen/pull/440#issuecomment-1816583612)
