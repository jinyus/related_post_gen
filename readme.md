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

| Language       | Time (5k posts)                       | 20k posts | 60k posts | Total    |
| -------------- | ------------------------------------- | --------- | --------- | -------- |
| Julia HO | 7.54 ms | 58.67 ms | 136.67 ms | 202.87 ms |
| D | 25.03 ms | 316.96 ms | 2.71 s | 3.06 s |
| Rust | 23.44 ms | 341.99 ms | 3.04 s | 3.40 s |
| Go | 24.40 ms | 372.79 ms | 3.30 s | 3.69 s |
| Zig | 28.77 ms | 430.67 ms | 3.79 s | 4.25 s |
| Nim | 30.54 ms | 435.48 ms | 3.84 s | 4.31 s |
| Julia | 30.38 ms | 481.67 ms | 4.25 s | 4.76 s |
| C++ | 35.92 ms | 520.67 ms | 4.58 s | 5.14 s |
| F# (AOT) | 36.23 ms | 532.67 ms | 4.70 s | 5.27 s |
| Odin | 47.68 ms | 575.95 ms | 5.09 s | 5.71 s |
| C# (AOT) | 42.12 ms | 613.40 ms | 5.39 s | 6.05 s |
| Java (GraalVM) | 43.08 ms | 611.67 ms | 5.49 s | 6.15 s |
| Swift | 51.48 ms | 717.86 ms | 6.22 s | 6.99 s |
| F# (JIT) | 48.92 ms | 744.67 ms | 6.58 s | 7.38 s |
| Vlang | 51.65 ms | 759.11 ms | 6.65 s | 7.46 s |
| C# (JIT) | 51.54 ms | 765.30 ms | 6.75 s | 7.57 s |
| Crystal | 65.16 ms | 976.41 ms | 8.67 s | 9.71 s |
| LuaJIT | 107.76 ms | 1.43 s | 12.86 s | 14.40 s |
| JS (Bun) | 125.77 ms | 1.61 s | 14.31 s | 16.05 s |
| JS (Deno) | 164.46 ms | 1.89 s | 17.24 s | 19.29 s |
| Dart VM | 141.85 ms | 2.28 s | 21.11 s | 23.54 s |
| JS (Node) | 138.85 ms | 2.32 s | 23.00 s | 25.46 s |
| Dart AOT | 185.92 ms | 2.90 s | 25.80 s | 28.88 s |
| ocaml | 150.69 ms | 2.71 s | 32.31 s | 35.17 s |
| Lua | 1.09 s | 16.80 s | 150.87 s | 168.76 s |
| Python | 1.46 s | 23.61 s | 214.63 s | 239.70 s |
| Erlang | 1.52 s | 24.55 s | 227.40 s | 253.48 s |
| Numpy | 457.74 ms | 7.34 s | 1.7976931348623156e+305 s | 1.7976931348623156e+305 s |
| Java (JIT) | 54.77 ms | 1.7976931348623156e+305 s | 1.7976931348623156e+305 s | Infinity s |

### Multicore Results

| Language       | Time (5k posts) | 20k posts        | 60k posts        | Total     |
| -------------- | --------------- | ---------------- | ---------------- | --------- |
| D Concurrent | 16.45 ms | 172.66 ms | 1.41 s | 1.59 s |
| Go Concurrent | 13.27 ms | 167.61 ms | 1.42 s | 1.60 s |
| Rust Concurrent | 14.55 ms | 190.46 ms | 1.58 s | 1.78 s |
| C++ Concurrent | 16.77 ms | 205.67 ms | 1.75 s | 1.98 s |
| Julia Concurrent | 17.46 ms | 222.33 ms | 1.95 s | 2.19 s |
| F# Concurrent (AOT) | 15.62 ms | 231.00 ms | 2.03 s | 2.28 s |
| F# Concurrent (JIT) | 20.62 ms | 284.33 ms | 2.44 s | 2.74 s |
| Swift Concurrent | 31.73 ms | 395.05 ms | 3.49 s | 3.92 s |
| Java (GraalVM) Concurrent | 48.77 ms | 598.67 ms | 5.34 s | 5.99 s |

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