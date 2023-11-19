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
| _Julia HO_[^1]   | 9.30 ms                               | 65.00 ms                               | 169.33 ms                           | 243.63 ms |
| D (v2)           | 21.96 ms                              | $\textsf{\color{lightgreen}259.01 ms}$ | $\textsf{\color{lightgreen}2.14 s}$ | 2.42 s    |
| Go               | $\textsf{\color{lightgreen}21.83 ms}$ | 315.59 ms                              | 2.74 s                              | 3.08 s    |
| C++              | 23.00 ms                              | 327.33 ms                              | 2.80 s                              | 3.15 s    |
| D                | 25.69 ms                              | 327.47 ms                              | 2.81 s                              | 3.16 s    |
| Rust             | 22.07 ms                              | 316.11 ms                              | 2.84 s                              | 3.17 s    |
| Nim              | 22.27 ms                              | 317.85 ms                              | 2.86 s                              | 3.20 s    |
| Zig              | 23.00 ms                              | 338.67 ms                              | 3.02 s                              | 3.39 s    |
| Vlang            | 24.74 ms                              | 362.28 ms                              | 3.16 s                              | 3.54 s    |
| Julia            | 24.31 ms                              | 391.39 ms                              | 3.21 s                              | 3.62 s    |
| F# (AOT)         | 27.09 ms                              | 375.71 ms                              | 3.25 s                              | 3.65 s    |
| C# (AOT)         | 27.19 ms                              | 378.48 ms                              | 3.28 s                              | 3.69 s    |
| C# (JIT)         | 27.73 ms                              | 379.95 ms                              | 3.30 s                              | 3.70 s    |
| Odin             | 44.93 ms                              | 533.66 ms                              | 5.79 s                              | 6.37 s    |
| F# (JIT)         | 44.59 ms                              | 652.38 ms                              | 5.71 s                              | 6.41 s    |
| Swift            | 52.34 ms                              | 725.63 ms                              | 6.23 s                              | 7.01 s    |
| Java (GraalVM)   | 56.00 ms                              | 631.67 ms                              | 6.56 s                              | 7.25 s    |
| Java (JIT)       | 55.90 ms                              | 764.33 ms                              | 6.66 s                              | 7.48 s    |
| Crystal          | 54.47 ms                              | 824.10 ms                              | 7.18 s                              | 8.06 s    |
| LuaJIT           | 112.91 ms                             | 1.55 s                                 | 12.22 s                             | 13.88 s   |
| JS (Bun)         | 126.00 ms                             | 1.50 s                                 | 12.62 s                             | 14.25 s   |
| JS (Node)        | 179.50 ms                             | 1.98 s                                 | 17.59 s                             | 19.75 s   |
| Dart AOT         | 130.80 ms                             | 2.01 s                                 | 17.89 s                             | 20.03 s   |
| Dart VM          | 172.90 ms                             | 2.16 s                                 | 18.57 s                             | 20.90 s   |
| JS (Deno)        | 179.80 ms                             | 2.30 s                                 | 21.44 s                             | 23.91 s   |
| Lobster (C++)    | 185.27 ms                             | 2.86 s                                 | 26.59 s                             | 29.63 s   |
| Scala Native     | 298.50 ms                             | 3.54 s                                 | 30.09 s                             | 33.93 s   |
| Typed Racket     | 244.32 ms                             | 4.10 s                                 | 33.32 s                             | 37.66 s   |
| Racket           | 242.81 ms                             | 3.96 s                                 | 35.50 s                             | 39.70 s   |
| Ocaml            | 148.40 ms                             | 3.03 s                                 | 38.01 s                             | 41.19 s   |
| LuaJIT (JIT OFF) | 679.91 ms                             | 10.30 s                                | 91.36 s                             | 102.34 s  |
| Erlang           | 892.97 ms                             | 15.00 s                                | 141.13 s                            | 157.03 s  |
| Lua              | 1.11 s                                | 16.79 s                                | 150.47 s                            | 168.37 s  |
| Lobster (JIT)    | 1.36 s                                | 21.19 s                                | 186.26 s                            | 208.81 s  |
| Python           | 1.47 s                                | 23.53 s                                | 215.46 s                            | 240.46 s  |
| Inko[^2]         | 10.08 s                               | 156.59 s                               | 1398.50 s                           | 1565.18 s |
| Numpy            | 382.97 ms                             | 6.29 s                                 | OOM                                 | N/A       |

### Multicore Results

| Language                  | Time (5k posts)                       | 20k posts                              | 60k posts                              | Total  |
| ------------------------- | ------------------------------------- | -------------------------------------- | -------------------------------------- | ------ |
| D Concurrent              | 12.65 ms                              | $\textsf{\color{lightgreen}119.09 ms}$ | $\textsf{\color{lightgreen}890.29 ms}$ | 1.02 s |
| C# Concurrent (JIT)       | 13.25 ms                              | 130.13 ms                              | 1.03 s                                 | 1.18 s |
| C# Concurrent (AOT)       | 11.71 ms                              | 145.17 ms                              | 1.22 s                                 | 1.37 s |
| Go Concurrent             | $\textsf{\color{lightgreen}11.26 ms}$ | 150.40 ms                              | 1.28 s                                 | 1.44 s |
| C++ Concurrent            | 13.30 ms                              | 167.67 ms                              | 1.41 s                                 | 1.59 s |
| Nim Concurrent            | 12.32 ms                              | 172.13 ms                              | 1.48 s                                 | 1.66 s |
| Rust Concurrent           | 18.34 ms                              | 194.04 ms                              | 1.53 s                                 | 1.75 s |
| F# Concurrent (AOT)       | 16.10 ms                              | 233.67 ms                              | 2.04 s                                 | 2.29 s |
| F# Concurrent             | 20.50 ms                              | 287.33 ms                              | 2.44 s                                 | 2.75 s |
| Julia Concurrent          | 23.71 ms                              | 386.26 ms                              | 3.17 s                                 | 3.58 s |
| Swift Concurrent          | 33.06 ms                              | 397.78 ms                              | 3.44 s                                 | 3.87 s |
| Java (GraalVM) Concurrent | 50.70 ms                              | 608.33 ms                              | 4.03 s                                 | 4.68 s |

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
