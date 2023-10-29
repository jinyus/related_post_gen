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
| _Julia HO_[^1] | 8.15 ms | 56.00 ms | 140.33 ms | 204.49 ms |
| D | 25.02 ms | 313.93 ms | 2.71 s | 3.05 s |
| Julia | 28.31 ms | 337.00 ms | 2.92 s | 3.28 s |
| C++ | 25.00 ms | 337.33 ms | 2.93 s | 3.29 s |
| Zig | 23.00 ms | 337.00 ms | 3.01 s | 3.37 s |
| Rust | 23.47 ms | 340.55 ms | 3.04 s | 3.40 s |
| Nim | 25.02 ms | 349.03 ms | 3.07 s | 3.44 s |
| C# (AOT) | 26.78 ms | 376.13 ms | 3.25 s | 3.65 s |
| C# (JIT) | 27.29 ms | 373.67 ms | 3.26 s | 3.66 s |
| Go | 24.48 ms | 371.43 ms | 3.28 s | 3.67 s |
| F# (AOT) | 27.23 ms | 391.33 ms | 3.41 s | 3.83 s |
| F# (JIT) | 91.54 ms | 529.33 ms | 4.04 s | 4.66 s |
| Odin | 48.33 ms | 688.27 ms | 5.07 s | 5.80 s |
| Swift | 51.61 ms | 717.29 ms | 6.22 s | 6.99 s |
| Vlang | 48.94 ms | 741.30 ms | 6.59 s | 7.38 s |
| Java (GraalVM) | 56.54 ms | 852.33 ms | 7.52 s | 8.42 s |
| Crystal | 60.86 ms | 906.94 ms | 7.97 s | 8.94 s |
| LuaJIT | 100.58 ms | 1.26 s | 11.35 s | 12.71 s |
| JS (Bun) | 121.69 ms | 1.49 s | 13.05 s | 14.66 s |
| JS (Deno) | 166.46 ms | 1.88 s | 17.22 s | 19.27 s |
| Dart AOT | 129.92 ms | 2.00 s | 17.85 s | 19.98 s |
| Dart VM | 169.23 ms | 2.23 s | 19.67 s | 22.07 s |
| JS (Node) | 133.77 ms | 2.25 s | 20.86 s | 23.24 s |
| ocaml | 142.69 ms | 2.78 s | 33.91 s | 36.83 s |
| Erlang | 886.60 ms | 14.65 s | 133.26 s | 148.80 s |
| Lua | 1.09 s | 16.73 s | 150.32 s | 168.14 s |
| Python | 1.46 s | 23.55 s | 213.12 s | 238.14 s |
| Ruby | 3.04 s | 47.60 s | 428.60 s | 479.24 s |
| Numpy | 353.18 ms | 6.88 s | OOM | N/A |
| Java (JIT) | 54.46 ms | OOM | OOM | N/A |

### Multicore Results

| Language       | Time (5k posts) | 20k posts        | 60k posts        | Total     |
| -------------- | --------------- | ---------------- | ---------------- | --------- |
| D Concurrent | 13.41 ms | 122.61 ms | 973.45 ms | 1.11 s |
| C# Concurrent (JIT) | 14.26 ms | 123.78 ms | 1.01 s | 1.15 s |
| C# Concurrent (AOT) | 11.12 ms | 137.30 ms | 1.13 s | 1.28 s |
| C++ Concurrent | 13.46 ms | 165.00 ms | 1.40 s | 1.58 s |
| Go Concurrent | 12.17 ms | 167.67 ms | 1.43 s | 1.61 s |
| Nim Concurrent | 12.55 ms | 171.83 ms | 1.48 s | 1.66 s |
| Rust Concurrent | 12.35 ms | 174.84 ms | 1.52 s | 1.71 s |
| Julia Concurrent | 16.54 ms | 223.00 ms | 1.94 s | 2.18 s |
| F# Concurrent (AOT) | 18.08 ms | 280.00 ms | 2.46 s | 2.76 s |
| F# Concurrent (JIT) | 20.00 ms | 279.33 ms | 2.47 s | 2.77 s |
| Swift Concurrent | 31.46 ms | 393.24 ms | 3.47 s | 3.89 s |
| Java (GraalVM) Concurrent | 38.85 ms | 463.00 ms | 5.33 s | 5.83 s |

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