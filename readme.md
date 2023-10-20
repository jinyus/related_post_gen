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
| _Julia HO_[^1]| 8.00 ms | 52.33 ms | 142.00 ms | 202.33 ms |
| D | 24.95 ms | $\textsf{\color{lightgreen}316.59 ms}$ | $\textsf{\color{lightgreen}2.70 s}$ | 3.04 s |
| Rust | $\textsf{\color{lightgreen}23.48 ms}$ | 340.42 ms | 3.03 s | 3.40 s |
| C# (AOT) | 26.42 ms | 370.59 ms | 3.25 s | 3.64 s |
| C# (JIT) | 27.14 ms | 373.85 ms | 3.26 s | 3.66 s |
| Go | 24.38 ms | 373.79 ms | 3.27 s | 3.67 s |
| F# (AOT) | 27.38 ms | 390.67 ms | 3.42 s | 3.83 s |
| Zig | 28.69 ms | 429.33 ms | 3.79 s | 4.25 s |
| Nim | 30.41 ms | 434.66 ms | 3.82 s | 4.28 s |
| F# (JIT) | 91.38 ms | 527.67 ms | 4.04 s | 4.66 s |
| Julia | 30.08 ms | 479.00 ms | 4.24 s | 4.74 s |
| C++ | 36.00 ms | 519.00 ms | 4.57 s | 5.12 s |
| Odin | 41.19 ms | 575.24 ms | 6.09 s | 6.70 s |
| Swift | 51.08 ms | 713.17 ms | 6.20 s | 6.96 s |
| Vlang | 48.90 ms | 742.24 ms | 6.59 s | 7.38 s |
| Java (GraalVM) | 56.31 ms | 744.00 ms | 7.51 s | 8.31 s |
| Crystal | 60.52 ms | 910.44 ms | 7.96 s | 8.93 s |
| LuaJIT | 100.76 ms | 1.49 s | 12.24 s | 13.83 s |
| JS (Bun) | 117.46 ms | 1.53 s | 13.92 s | 15.56 s |
| JS (Deno) | 182.00 ms | 1.81 s | 17.19 s | 19.18 s |
| Dart AOT | 129.92 ms | 2.24 s | 17.86 s | 20.23 s |
| Dart VM | 171.08 ms | 2.24 s | 19.65 s | 22.06 s |
| JS (Node) | 127.77 ms | 2.53 s | 20.39 s | 23.05 s |
| ocaml | 138.00 ms | 2.63 s | 34.41 s | 37.18 s |
| Lua | 1.09 s | 16.76 s | 149.75 s | 167.60 s |
| Python | 1.47 s | 23.50 s | 214.35 s | 239.32 s |
| Erlang | 1.52 s | 24.39 s | 229.07 s | 254.98 s |
| Numpy | 353.03 ms | 6.66 s | OOM | N/A |
| Java (JIT) | 54.08 ms | OOM | OOM | N/A |

### Multicore Results

| Language       | Time (5k posts) | 20k posts        | 60k posts        | Total     |
| -------------- | --------------- | ---------------- | ---------------- | --------- |
| D Concurrent | 13.09 ms | $\textsf{\color{lightgreen}122.86 ms}$ | $\textsf{\color{lightgreen}969.66 ms}$ | 1.11 s |
| C# Concurrent (JIT) | 23.23 ms | 161.49 ms | 1.29 s | 1.47 s |
| C# Concurrent (AOT) | 16.67 ms | 169.15 ms | 1.41 s | 1.59 s |
| Go Concurrent | $\textsf{\color{lightgreen}11.97 ms}$ | 163.40 ms | 1.42 s | 1.60 s |
| Rust Concurrent | 12.19 ms | 173.90 ms | 1.52 s | 1.70 s |
| C++ Concurrent | 16.69 ms | 205.00 ms | 1.75 s | 1.97 s |
| Julia Concurrent | 17.15 ms | 222.33 ms | 1.94 s | 2.18 s |
| F# Concurrent (AOT) | 15.69 ms | 231.00 ms | 2.03 s | 2.27 s |
| F# Concurrent (JIT) | 20.23 ms | 278.67 ms | 2.46 s | 2.75 s |
| Swift Concurrent | 31.49 ms | 393.77 ms | 3.44 s | 3.87 s |
| Java (GraalVM) Concurrent | 38.54 ms | 594.00 ms | 5.30 s | 5.93 s |

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
