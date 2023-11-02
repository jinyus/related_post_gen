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
| _Julia HO_[^1] | 8.15 ms | 54.00 ms | 138.00 ms | 200.15 ms |
| D | 24.73 ms | 315.66 ms | 2.70 s | 3.04 s |
| Nim | 22.15 ms | 317.63 ms | 2.84 s | 3.18 s |
| Go | 22.69 ms | 322.86 ms | 2.86 s | 3.21 s |
| Zig | 23.00 ms | 337.00 ms | 2.99 s | 3.35 s |
| Rust | 23.53 ms | 340.58 ms | 3.03 s | 3.40 s |
| C# (AOT) | 26.34 ms | 373.28 ms | 3.26 s | 3.65 s |
| C# (JIT) | 27.52 ms | 376.84 ms | 3.26 s | 3.67 s |
| F# (AOT) | 27.38 ms | 392.00 ms | 3.42 s | 3.84 s |
| F# (JIT) | 91.46 ms | 532.33 ms | 4.04 s | 4.67 s |
| Julia | 31.00 ms | 501.33 ms | 4.24 s | 4.77 s |
| C++ | 37.38 ms | 558.00 ms | 4.91 s | 5.51 s |
| Odin | 41.30 ms | 686.43 ms | 6.08 s | 6.81 s |
| Swift | 51.83 ms | 720.85 ms | 6.21 s | 6.98 s |
| Vlang | 48.80 ms | 740.79 ms | 6.59 s | 7.38 s |
| Java (GraalVM) | 50.15 ms | 852.00 ms | 7.51 s | 8.41 s |
| Crystal | 60.59 ms | 910.87 ms | 7.99 s | 8.97 s |
| LuaJIT | 103.38 ms | 1.38 s | 12.02 s | 13.50 s |
| JS (Bun) | 122.54 ms | 1.53 s | 13.92 s | 15.57 s |
| JS (Deno) | 159.69 ms | 1.81 s | 17.22 s | 19.19 s |
| Dart AOT | 129.77 ms | 2.01 s | 17.85 s | 19.99 s |
| Dart VM | 167.85 ms | 2.18 s | 19.04 s | 21.39 s |
| JS (Node) | 128.62 ms | 2.00 s | 20.45 s | 22.57 s |
| ocaml | 143.62 ms | 2.87 s | 32.67 s | 35.68 s |
| Erlang | 887.89 ms | 14.46 s | 133.21 s | 148.56 s |
| Lua | 1.10 s | 16.79 s | 150.00 s | 167.89 s |
| Python | 1.47 s | 23.42 s | 215.15 s | 240.04 s |
| Ruby | 3.05 s | 48.22 s | 428.52 s | 479.78 s |
| Numpy | 352.21 ms | 6.71 s | OOM | N/A |
| daScript | OOM | OOM | OOM | N/A |
| Java (JIT) | 53.69 ms | OOM | OOM | N/A |

### Multicore Results

| Language       | Time (5k posts) | 20k posts        | 60k posts        | Total     |
| -------------- | --------------- | ---------------- | ---------------- | --------- |
| D Concurrent | 13.08 ms | 123.09 ms | 980.64 ms | 1.12 s |
| C# Concurrent (JIT) | 14.20 ms | 124.10 ms | 1.01 s | 1.15 s |
| C# Concurrent (AOT) | 11.25 ms | 143.44 ms | 1.19 s | 1.35 s |
| C++ Concurrent | 13.31 ms | 165.00 ms | 1.40 s | 1.58 s |
| Go Concurrent | 11.99 ms | 164.42 ms | 1.42 s | 1.60 s |
| Nim Concurrent | 12.74 ms | 172.35 ms | 1.48 s | 1.66 s |
| Rust Concurrent | 12.48 ms | 175.35 ms | 1.52 s | 1.70 s |
| Julia Concurrent | 18.00 ms | 223.67 ms | 1.91 s | 2.15 s |
| F# Concurrent (AOT) | 15.08 ms | 231.00 ms | 2.03 s | 2.27 s |
| F# Concurrent (JIT) | 20.77 ms | 277.33 ms | 2.47 s | 2.77 s |
| Swift Concurrent | 32.14 ms | 393.59 ms | 3.45 s | 3.87 s |
| Java (GraalVM) Concurrent | 48.62 ms | 596.33 ms | 4.12 s | 4.76 s |

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