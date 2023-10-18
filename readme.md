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

| Language       | Time (5k posts) | 20k posts | 60k posts | Total     |
| -------------- | --------------- | --------- | --------- | --------- |
| _Julia HO_[^1] | 8.23 ms         | 56.67 ms  | 142.67 ms | 207.56 ms |
| D              | 25.03 ms        | $\textsf{\color{lightgreen}315.91 ms}$ | $\textsf{\color{lightgreen}2.71 s}$    | 3.06 s    |
| Rust           | $\textsf{\color{lightgreen}23.52 ms}$        | 340.13 ms | 3.04 s    | 3.40 s    |
| C# (AOT)       | 26.75 ms        | 370.46 ms | 3.25 s    | 3.65 s    |
| C# (JIT)       | 27.25 ms        | 372.85 ms | 3.26 s    | 3.66 s    |
| Go             | 24.38 ms        | 379.99 ms | 3.28 s    | 3.68 s    |
| F# (AOT)       | 30.00 ms        | 428.67 ms | 3.70 s    | 4.16 s    |
| Zig            | 28.85 ms        | 429.00 ms | 3.82 s    | 4.28 s    |
| Nim            | 30.07 ms        | 433.04 ms | 3.83 s    | 4.29 s    |
| Julia          | 30.08 ms        | 480.00 ms | 4.22 s    | 4.73 s    |
| C++            | 36.08 ms        | 520.33 ms | 4.57 s    | 5.13 s    |
| F# (JIT)       | 81.08 ms        | 613.00 ms | 5.10 s    | 5.80 s    |
| Odin           | 41.16 ms        | 686.58 ms | 6.01 s    | 6.74 s    |
| Swift          | 51.27 ms        | 711.98 ms | 6.21 s    | 6.98 s    |
| Vlang          | 49.09 ms        | 741.38 ms | 6.60 s    | 7.39 s    |
| Java (GraalVM) | 56.85 ms        | 851.00 ms | 7.52 s    | 8.42 s    |
| Crystal        | 60.51 ms        | 909.96 ms | 8.03 s    | 9.00 s    |
| LuaJIT         | 105.43 ms       | 1.35 s    | 12.86 s   | 14.32 s   |
| JS (Bun)       | 122.62 ms       | 1.38 s    | 13.89 s   | 15.39 s   |
| JS (Deno)      | 161.15 ms       | 1.96 s    | 17.26 s   | 19.38 s   |
| JS (Node)      | 142.85 ms       | 2.04 s    | 18.63 s   | 20.82 s   |
| Dart VM        | 137.92 ms       | 2.42 s    | 21.09 s   | 23.64 s   |
| Dart AOT       | 185.23 ms       | 2.89 s    | 25.80 s   | 28.87 s   |
| ocaml          | 141.54 ms       | 2.63 s    | 34.40 s   | 37.18 s   |
| Lua            | 1.09 s          | 16.72 s   | 149.96 s  | 167.77 s  |
| Python         | 1.47 s          | 23.55 s   | 215.84 s  | 240.87 s  |
| Erlang         | 1.52 s          | 24.53 s   | 222.91 s  | 248.96 s  |
| Numpy          | 350.72 ms       | 7.19 s    | OOM       | N/A       |
| Java (JIT)     | 54.69 ms        | OOM       | OOM       | N/A       |

### Multicore Results

| Language                  | Time (5k posts) | 20k posts | 60k posts | Total  |
| ------------------------- | --------------- | --------- | --------- | ------ |
| C# Concurrent (JIT)       | 23.42 ms        | $\textsf{\color{lightgreen}157.58 ms}$ | $\textsf{\color{lightgreen}1.28 s}$    | 1.46 s |
| D Concurrent              | 17.20 ms        | 172.17 ms | 1.40 s    | 1.59 s |
| C# Concurrent (AOT)       | 16.77 ms        | 168.20 ms | 1.42 s    | 1.60 s |
| Go Concurrent             | 13.15 ms        | 167.54 ms | 1.42 s    | 1.60 s |
| Rust Concurrent           | $\textsf{\color{lightgreen}12.23 ms}$        | 174.35 ms | 1.52 s    | 1.71 s |
| C++ Concurrent            | 16.85 ms        | 205.00 ms | 1.75 s    | 1.98 s |
| Julia Concurrent          | 17.38 ms        | 222.00 ms | 1.95 s    | 2.18 s |
| F# Concurrent (AOT)       | 18.54 ms        | 278.00 ms | 2.46 s    | 2.76 s |
| F# Concurrent (JIT)       | 20.38 ms        | 276.33 ms | 2.46 s    | 2.76 s |
| Swift Concurrent          | 32.42 ms        | 393.06 ms | 3.49 s    | 3.91 s |
| Java (GraalVM) Concurrent | 38.85 ms        | 613.67 ms | 4.12 s    | 4.77 s |

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
