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
| _Julia HO_[^1] | 8.08 ms | 52.67 ms | 135.00 ms | 195.74 ms |
| D | 24.86 ms | 315.19 ms | 2.70 s | 3.04 s |
| C++ | 22.46 ms | 318.33 ms | 2.78 s | 3.12 s |
| Nim | 22.16 ms | 316.07 ms | 2.84 s | 3.18 s |
| Go | 22.97 ms | 321.56 ms | 2.86 s | 3.21 s |
| Zig | 23.00 ms | 339.33 ms | 3.02 s | 3.38 s |
| Rust | 23.51 ms | 341.37 ms | 3.03 s | 3.40 s |
| F# (AOT) | 26.85 ms | 369.66 ms | 3.23 s | 3.62 s |
| C# (AOT) | 26.40 ms | 370.01 ms | 3.24 s | 3.64 s |
| C# (JIT) | 27.20 ms | 372.87 ms | 3.25 s | 3.65 s |
| Julia | 31.11 ms | 503.06 ms | 4.23 s | 4.76 s |
| F# (JIT) | 85.23 ms | 611.32 ms | 5.02 s | 5.71 s |
| Odin | 48.03 ms | 688.84 ms | 5.26 s | 6.00 s |
| Swift | 50.76 ms | 711.60 ms | 6.19 s | 6.96 s |
| Vlang | 48.92 ms | 741.11 ms | 6.59 s | 7.38 s |
| Java (GraalVM) | 50.00 ms | 851.00 ms | 6.55 s | 7.45 s |
| Crystal | 60.20 ms | 906.00 ms | 8.00 s | 8.97 s |
| LuaJIT | 100.28 ms | 1.47 s | 11.72 s | 13.29 s |
| JS (Bun) | 118.85 ms | 1.53 s | 12.68 s | 14.33 s |
| JS (Deno) | 179.38 ms | 2.03 s | 17.70 s | 19.90 s |
| Dart AOT | 130.23 ms | 2.00 s | 17.88 s | 20.01 s |
| JS (Node) | 132.62 ms | 2.53 s | 19.19 s | 21.85 s |
| Dart VM | 169.31 ms | 2.12 s | 19.65 s | 21.94 s |
| ocaml | 141.00 ms | 2.66 s | 32.09 s | 34.89 s |
| LuaJIT (JIT OFF) | 667.63 ms | 10.23 s | 91.30 s | 102.20 s |
| Erlang | 885.58 ms | 14.41 s | 133.52 s | 148.82 s |
| Lua | 1.09 s | 16.72 s | 149.75 s | 167.56 s |
| Python | 1.46 s | 23.48 s | 213.97 s | 238.91 s |
| Ruby | 3.04 s | 47.47 s | 436.56 s | 487.08 s |
| Numpy | 352.45 ms | 6.83 s | OOM | N/A |
| daScript (interpreted) | OOM | OOM | OOM | N/A |
| Java (JIT) | 52.92 ms | OOM | OOM | N/A |

### Multicore Results

| Language       | Time (5k posts) | 20k posts        | 60k posts        | Total     |
| -------------- | --------------- | ---------------- | ---------------- | --------- |
| D Concurrent | 12.80 ms | 123.19 ms | 970.11 ms | 1.11 s |
| C# Concurrent (JIT) | 13.37 ms | 122.70 ms | 1.02 s | 1.15 s |
| C# Concurrent (AOT) | 11.19 ms | 141.19 ms | 1.19 s | 1.34 s |
| C++ Concurrent | 13.38 ms | 164.00 ms | 1.40 s | 1.58 s |
| Go Concurrent | 12.17 ms | 164.00 ms | 1.42 s | 1.60 s |
| Julia Concurrent | 13.88 ms | 174.37 ms | 1.48 s | 1.66 s |
| Nim Concurrent | 12.93 ms | 173.82 ms | 1.48 s | 1.67 s |
| Rust Concurrent | 12.20 ms | 173.14 ms | 1.52 s | 1.70 s |
| F# Concurrent (AOT) | 15.08 ms | 231.67 ms | 2.03 s | 2.27 s |
| F# Concurrent (JIT) | 20.38 ms | 285.33 ms | 2.46 s | 2.77 s |
| Swift Concurrent | 31.77 ms | 393.84 ms | 3.48 s | 3.90 s |
| Java (GraalVM) Concurrent | 38.85 ms | 462.33 ms | 4.17 s | 4.67 s |

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