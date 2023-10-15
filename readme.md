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
-   Use general purpose datastructures (not tailored for this benchmark)
-   Use less than 8GB of memory
</details>

### Updated Results from github workflow ([raw data](https://github.com/jinyus/related_post_gen/blob/main/raw_results.md))

##### VM Specs ( Azure F4s v2 - 4vCPU-8GB-Ubuntu 22.04 )

| Language       | Time (5k posts)                       | 20k posts                              | 60k posts                           | Total    |
| -------------- | ------------------------------------- | -------------------------------------- | ----------------------------------- | -------- |
| Rust | 23.75 ms | 340.95 ms | 3.04 s | 3.40 s |
| Go | 24.38 ms | 371.23 ms | 3.27 s | 3.67 s |
| Zig | 28.31 ms | 432.67 ms | 3.82 s | 4.28 s |
| D | 32.95 ms | 443.41 ms | 3.83 s | 4.31 s |
| F# (AOT) | 32.23 ms | 485.00 ms | 4.13 s | 4.65 s |
| Julia | 30.15 ms | 477.33 ms | 4.22 s | 4.73 s |
| C++ | 35.85 ms | 519.67 ms | 4.58 s | 5.13 s |
| Nim | 30.30 ms | 521.77 ms | 4.61 s | 5.16 s |
| C# (AOT) | 42.67 ms | 614.48 ms | 5.40 s | 6.06 s |
| F# (JIT) | 44.54 ms | 622.33 ms | 5.50 s | 6.17 s |
| Odin | 47.47 ms | 575.74 ms | 6.05 s | 6.67 s |
| Swift | 50.82 ms | 719.66 ms | 6.19 s | 6.96 s |
| Java (JIT) | 53.62 ms | 768.00 ms | 6.44 s | 7.27 s |
| Vlang | 51.34 ms | 757.11 ms | 6.66 s | 7.47 s |
| C# (JIT) | 57.85 ms | 772.93 ms | 6.77 s | 7.60 s |
| Java (GraalVM) | 56.46 ms | 743.33 ms | 7.52 s | 8.32 s |
| Crystal | 65.19 ms | 975.42 ms | 8.65 s | 9.69 s |
| LuaJIT | 104.52 ms | 1.38 s | 12.83 s | 14.31 s |
| JS (Bun) | 122.62 ms | 1.41 s | 12.86 s | 14.40 s |
| JS (Deno) | 185.85 ms | 1.88 s | 18.41 s | 20.48 s |
| Dart VM | 132.46 ms | 2.30 s | 21.04 s | 23.47 s |
| JS (Node) | 139.08 ms | 2.22 s | 22.30 s | 24.66 s |
| Dart AOT | 185.46 ms | 2.89 s | 25.77 s | 28.84 s |
| ocaml | 146.69 ms | 2.66 s | 34.80 s | 37.61 s |
| Lua | 1.09 s | 16.75 s | 150.00 s | 167.84 s |
| Python | 1.47 s | 23.54 s | 213.16 s | 238.17 s |
| Numpy | 348.08 ms | 6.42 s | 1.7976931348623156e+305 s | 1.7976931348623156e+305 s |

### Multicore Results

| Language       | Time (5k posts) | 20k posts        | 60k posts        | Total     |
| -------------- | --------------- | ---------------- | ---------------- | --------- |
| Go Concurrent | 13.20 ms | 169.38 ms | 1.42 s | 1.60 s |
| Rust Concurrent | 15.21 ms | 182.00 ms | 1.58 s | 1.77 s |
| C++ Concurrent | 16.77 ms | 206.67 ms | 1.75 s | 1.97 s |
| Julia Concurrent | 17.00 ms | 223.00 ms | 1.94 s | 2.18 s |
| F# Concurrent (AOT) | 16.00 ms | 242.00 ms | 2.04 s | 2.29 s |
| D Concurrent | 21.53 ms | 240.46 ms | 2.05 s | 2.31 s |
| F# Concurrent (JIT) | 22.31 ms | 285.67 ms | 2.54 s | 2.85 s |
| Swift Concurrent | 31.56 ms | 392.97 ms | 3.43 s | 3.86 s |
| Java (GraalVM) Concurrent | 48.38 ms | 463.00 ms | 4.12 s | 4.63 s |

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