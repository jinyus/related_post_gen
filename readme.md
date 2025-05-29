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

```bash
./run.sh go | rust | python | all

# windows (powershell)
./run.ps1 go | rust | python | all
# OR
pwsh ./run.ps1 go | rust | python | all

# Docker (check the dockerfiles/base.Dockerfile for available variables)
./gen_dockerfile.sh -b go | rust | python | all
# THEN

./docker_run.sh go | rust | python | all
# OR use the image directly
docker run -e TEST_NAME=go -it --rm go_databench
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

### Updated Results from github workflow ([raw data](https://github.com/jinyus/related_post_gen/blob/main/results))

##### VM Specs ( AWS c7a.xlarge-4vCPU-8GB-RAM-Ubuntu 22.04 )

| Language         | Time (5k posts)                       | 20k posts                              | 60k posts                           | Total     |
| ---------------- | ------------------------------------- | -------------------------------------- | ----------------------------------- | --------- |
| _Julia HO_[^1] | 6.80 ms | 23.00 ms | 99.33 ms | 129.13 ms |
| _D HO_[^1] | 11.21 ms | 42.84 ms | 122.06 ms | 176.11 ms |
| D (v2) | 13.97 ms | $\textsf{\color{lightgreen}146.70 ms}$ | $\textsf{\color{lightgreen}1.14 s}$ | 1.30 s |
| Rust | $\textsf{\color{lightgreen}11.54 ms}$ | 149.96 ms | 1.30 s | 1.46 s |
| c3 | 13.00 ms | 164.67 ms | 1.33 s | 1.51 s |
| C++ | 16.10 ms | 202.67 ms | 1.72 s | 1.94 s |
| Zig | 17.00 ms | 233.67 ms | 1.99 s | 2.24 s |
| Odin | 18.74 ms | 248.22 ms | 2.12 s | 2.39 s |
| Go | 19.96 ms | 284.42 ms | 2.49 s | 2.79 s |
| Neat | 22.52 ms | 301.30 ms | 2.54 s | 2.87 s |
| Java (JIT) | 24.60 ms | 299.00 ms | 2.62 s | 2.94 s |
| C# (JIT) | 22.53 ms | 314.86 ms | 2.76 s | 3.10 s |
| C# (AOT) | 21.48 ms | 318.20 ms | 2.79 s | 3.12 s |
| Haskell | 26.65 ms | 347.84 ms | 2.81 s | 3.19 s |
| Nim | 22.34 ms | 337.00 ms | 2.95 s | 3.31 s |
| F# (JIT) | 25.02 ms | 354.38 ms | 3.02 s | 3.40 s |
| Julia | 23.66 ms | 350.96 ms | 3.10 s | 3.47 s |
| Vlang | 26.39 ms | 372.67 ms | 3.24 s | 3.64 s |
| D | 29.92 ms | 413.98 ms | 3.60 s | 4.05 s |
| Swift | 36.61 ms | 482.22 ms | 4.19 s | 4.71 s |
| F# (AOT) | 37.92 ms | 570.90 ms | 5.07 s | 5.68 s |
| Java (GraalVM) | 33.30 ms | 504.00 ms | 5.47 s | 6.01 s |
| Crystal | 45.64 ms | 690.35 ms | 6.03 s | 6.77 s |
| Numba | 66.15 ms | 827.15 ms | 6.94 s | 7.83 s |
| Pypy | 72.62 ms | 858.90 ms | 7.38 s | 8.31 s |
| LuaJIT | 73.52 ms | 930.36 ms | 7.84 s | 8.84 s |
| JS (Bun) | 80.80 ms | 975.00 ms | 8.49 s | 9.55 s |
| Dart AOT | 69.80 ms | 1.07 s | 9.43 s | 10.57 s |
| Dart VM | 61.50 ms | 989.67 ms | 9.94 s | 10.99 s |
| JS (Deno) | 96.40 ms | 1.17 s | 10.61 s | 11.88 s |
| JS (Node) | 99.00 ms | 1.12 s | 11.03 s | 12.25 s |
| Clojure | 111.90 ms | 1.31 s | 10.97 s | 12.39 s |
| Common Lisp (SBCL) | 154.00 ms | 1.34 s | 11.20 s | 12.69 s |
| Ocaml | 99.40 ms | 1.46 s | 13.05 s | 14.61 s |
| Typed Racket | 136.36 ms | 1.96 s | 16.31 s | 18.41 s |
| Racket | 135.03 ms | 2.04 s | 16.69 s | 18.87 s |
| Scala Native | 287.70 ms | 3.51 s | 30.07 s | 33.87 s |
| LuaJIT (JIT OFF) | 630.13 ms | 8.72 s | 83.86 s | 93.21 s |
| Erlang | 758.95 ms | 12.50 s | 107.46 s | 120.72 s |
| Lua | 976.54 ms | 15.09 s | 136.84 s | 152.90 s |
| Python | 1.51 s | 24.84 s | 215.18 s | 241.53 s |
| Lobster (JIT) | 1.63 s | 25.43 s | 227.06 s | 254.13 s |
| Ruby | 1.78 s | 28.77 s | 254.93 s | 285.48 s |

### Multicore Results

| Language       | Time (5k posts) | 20k posts        | 60k posts        | Total     |
| -------------- | --------------- | ---------------- | ---------------- | --------- |
| D Concurrent (v2) | 7.21 ms | $\textsf{\color{lightgreen}54.85 ms}$ | $\textsf{\color{lightgreen}326.77 ms}$ | 388.83 ms |
| C# Concurrent (JIT) | 6.56 ms | 55.32 ms | 450.54 ms | 512.42 ms |
| C++ Concurrent | $\textsf{\color{lightgreen}5.00 ms}$ | 58.00 ms | 477.00 ms | 540.00 ms |
| C# Concurrent (AOT) | 5.27 ms | 60.57 ms | 487.37 ms | 553.22 ms |
| D Concurrent | 8.84 ms | 76.34 ms | 560.38 ms | 645.56 ms |
| Rust Concurrent | 5.43 ms | 69.22 ms | 602.36 ms | 677.00 ms |
| Nim Concurrent | 6.17 ms | 90.26 ms | 657.74 ms | 754.17 ms |
| Go Concurrent | 6.89 ms | 92.48 ms | 771.56 ms | 870.92 ms |
| F# Concurrent (AOT) | 8.40 ms | 114.00 ms | 1.00 s | 1.13 s |
| F# Concurrent | 8.80 ms | 122.33 ms | 1.08 s | 1.21 s |
| Swift Concurrent | 13.24 ms | 148.23 ms | 1.20 s | 1.37 s |
| Julia Concurrent | 11.02 ms | 159.49 ms | 1.40 s | 1.57 s |
| Java Concurrent (JIT) | 73.40 ms | 221.67 ms | 1.41 s | 1.70 s |
| Numba Concurrent | 25.82 ms | 223.30 ms | 1.62 s | 1.87 s |
| Zig Concurrent | 17.50 ms | 222.24 ms | 1.86 s | 2.10 s |
| Java (GraalVM) Concurrent | 20.00 ms | 294.67 ms | 1.81 s | 2.12 s |

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