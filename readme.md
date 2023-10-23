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
| Julia HO | 8.00 ms | 51.67 ms | 134.33 ms | 194.00 ms |
| D | 24.90 ms | 314.84 ms | 2.70 s | 3.04 s |
| C++ | 24.85 ms | 339.00 ms | 2.92 s | 3.28 s |
| Rust | 23.48 ms | 342.17 ms | 3.04 s | 3.40 s |
| Nim | 24.96 ms | 349.57 ms | 3.06 s | 3.44 s |
| C# (AOT) | 26.58 ms | 369.90 ms | 3.25 s | 3.65 s |
| C# (JIT) | 27.07 ms | 374.41 ms | 3.26 s | 3.67 s |
| Go | 24.38 ms | 370.41 ms | 3.27 s | 3.67 s |
| F# (AOT) | 27.15 ms | 397.00 ms | 3.41 s | 3.83 s |
| Zig | 28.62 ms | 426.00 ms | 3.79 s | 4.24 s |
| F# (JIT) | 91.54 ms | 528.67 ms | 4.04 s | 4.66 s |
| Julia | 30.15 ms | 477.67 ms | 4.21 s | 4.72 s |
| Odin | 48.07 ms | 573.66 ms | 6.10 s | 6.72 s |
| Swift | 50.66 ms | 713.48 ms | 6.17 s | 6.93 s |
| Java (GraalVM) | 42.46 ms | 634.33 ms | 6.55 s | 7.22 s |
| Vlang | 48.80 ms | 740.52 ms | 6.59 s | 7.38 s |
| Crystal | 60.35 ms | 907.21 ms | 7.99 s | 8.96 s |
| LuaJIT | 106.85 ms | 1.50 s | 12.94 s | 14.55 s |
| JS (Bun) | 119.31 ms | 1.51 s | 13.15 s | 14.79 s |
| JS (Deno) | 173.08 ms | 1.81 s | 16.54 s | 18.52 s |
| JS (Node) | 132.38 ms | 2.63 s | 17.21 s | 19.97 s |
| Dart AOT | 129.85 ms | 2.00 s | 17.86 s | 19.99 s |
| Dart VM | 170.00 ms | 2.09 s | 19.70 s | 21.95 s |
| ocaml | 139.92 ms | 2.65 s | 34.17 s | 36.96 s |
| Erlang | 885.68 ms | 14.45 s | 131.12 s | 146.46 s |
| Lua | 1.09 s | 16.75 s | 149.97 s | 167.81 s |
| Python | 1.46 s | 23.55 s | 217.83 s | 242.85 s |
| Numpy | 351.82 ms | 6.83 s | 1.7976931348623156e+305 s | 1.7976931348623156e+305 s |
| Java (JIT) | 53.77 ms | 1.7976931348623156e+305 s | 1.7976931348623156e+305 s | Infinity s |

### Multicore Results

| Language       | Time (5k posts) | 20k posts        | 60k posts        | Total     |
| -------------- | --------------- | ---------------- | ---------------- | --------- |
| D Concurrent | 13.13 ms | 123.03 ms | 970.49 ms | 1.11 s |
| C# Concurrent (JIT) | 13.76 ms | 122.50 ms | 1.01 s | 1.15 s |
| C# Concurrent (AOT) | 10.84 ms | 135.60 ms | 1.13 s | 1.28 s |
| Go Concurrent | 12.00 ms | 163.91 ms | 1.43 s | 1.60 s |
| Rust Concurrent | 12.22 ms | 176.34 ms | 1.52 s | 1.71 s |
| C++ Concurrent | 18.08 ms | 220.00 ms | 1.88 s | 2.12 s |
| Julia Concurrent | 16.85 ms | 222.67 ms | 1.94 s | 2.18 s |
| Nim Concurrent | 18.66 ms | 242.38 ms | 2.14 s | 2.40 s |
| F# Concurrent (JIT) | 20.23 ms | 278.67 ms | 2.43 s | 2.73 s |
| F# Concurrent (AOT) | 18.46 ms | 278.00 ms | 2.46 s | 2.76 s |
| Swift Concurrent | 31.22 ms | 394.18 ms | 3.42 s | 3.85 s |
| Java (GraalVM) Concurrent | 48.08 ms | 600.00 ms | 5.32 s | 5.97 s |

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