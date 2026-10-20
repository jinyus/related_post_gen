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

See [setup.md](setup.md) for complete guide.

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

### Single Core Results ([raw data](https://github.com/jinyus/related_post_gen/blob/main/results))

##### VM Specs ( Scaleway EM-A215R-HDD-6c12t-16GB-RAM-Ubuntu 26.04 )

| Language         | Time (5k posts)                       | 20k posts                              | 60k posts                           | Total     |
| ---------------- | ------------------------------------- | -------------------------------------- | ----------------------------------- | --------- |
| D (v2) | 14.55 ms | $\textsf{\color{lightgreen}149.95 ms}$ | $\textsf{\color{lightgreen}1.14 s}$ | 1.31 s |
| Rust | 13.38 ms | 179.28 ms | 1.52 s | 1.71 s |
| Zig | 15.00 ms | 199.33 ms | 1.71 s | 1.93 s |
| C++ | 18.60 ms | 197.67 ms | 1.73 s | 1.94 s |
| c3 | $\textsf{\color{lightgreen}13.20 ms}$ | 158.67 ms | 1.88 s | 2.05 s |
| Neat | 19.01 ms | 254.22 ms | 2.15 s | 2.42 s |
| Go | 20.18 ms | 302.11 ms | 2.32 s | 2.64 s |
| D | 23.22 ms | 332.08 ms | 2.34 s | 2.69 s |
| C# (JIT) | 23.23 ms | 302.29 ms | 2.37 s | 2.70 s |
| Vlang | 19.12 ms | 291.43 ms | 2.46 s | 2.77 s |
| Julia | 20.47 ms | 287.17 ms | 2.59 s | 2.90 s |
| Odin | 20.24 ms | 335.66 ms | 2.56 s | 2.91 s |
| C# (AOT) | 22.11 ms | 328.90 ms | 2.60 s | 2.95 s |
| Nim | 20.84 ms | 310.18 ms | 2.67 s | 3.00 s |
| Java (JIT) | 24.50 ms | 323.00 ms | 3.04 s | 3.39 s |
| F# (AOT) | 26.72 ms | 381.57 ms | 3.30 s | 3.71 s |
| Haskell | 33.47 ms | 441.17 ms | 3.30 s | 3.77 s |
| Swift | 31.79 ms | 402.34 ms | 3.45 s | 3.88 s |
| Common Lisp (SBCL) | 40.00 ms | 510.00 ms | 4.47 s | 5.03 s |
| Crystal | 35.79 ms | 549.90 ms | 4.59 s | 5.17 s |
| F# (JIT) | 33.61 ms | 537.37 ms | 4.60 s | 5.18 s |
| Java (GraalVM) | 30.20 ms | 523.67 ms | 5.36 s | 5.91 s |
| Ada | 44.19 ms | 642.61 ms | 5.39 s | 6.08 s |
| Numba | 64.37 ms | 799.30 ms | 6.47 s | 7.34 s |
| Dart VM | 71.80 ms | 900.33 ms | 6.85 s | 7.82 s |
| Dart AOT | 56.60 ms | 816.67 ms | 7.15 s | 8.02 s |
| JS (Bun) | 65.80 ms | 855.00 ms | 7.15 s | 8.07 s |
| LuaJIT | 67.71 ms | 861.42 ms | 7.57 s | 8.49 s |
| Pypy | 67.34 ms | 813.00 ms | 8.02 s | 8.90 s |
| JS (Deno) | 100.80 ms | 1.26 s | 10.11 s | 11.47 s |
| Ocaml | 71.70 ms | 1.09 s | 10.67 s | 11.84 s |
| JS (Node) | 108.20 ms | 1.25 s | 10.99 s | 12.34 s |
| Clojure | 178.40 ms | 1.48 s | 10.99 s | 12.65 s |
| Racket | 121.68 ms | 1.69 s | 14.61 s | 16.43 s |
| Typed Racket | 119.69 ms | 1.82 s | 14.91 s | 16.85 s |
| Lobster (JIT) | 146.94 ms | 2.22 s | 19.71 s | 22.08 s |
| Scala Native | 272.50 ms | 3.24 s | 26.99 s | 30.51 s |
| LuaJIT (JIT OFF) | 511.56 ms | 7.50 s | 66.71 s | 74.72 s |
| PHP | 679.90 ms | 10.42 s | 93.06 s | 104.16 s |
| Erlang | 695.23 ms | 10.47 s | 97.64 s | 108.81 s |
| Lua | 958.44 ms | 14.13 s | 123.89 s | 138.98 s |
| Python | 1.29 s | 20.31 s | 180.12 s | 201.72 s |
| Ruby | 1.58 s | 24.25 s | 216.44 s | 242.27 s |

### Multicore Results

| Language       | Time (5k posts) | 20k posts        | 60k posts        | Total     |
| -------------- | --------------- | ---------------- | ---------------- | --------- | 
| D Concurrent (v2) | 7.89 ms | 42.24 ms | $\textsf{\color{lightgreen}219.35 ms}$ | 269.48 ms |
| D Concurrent | 6.80 ms | 46.44 ms | 265.78 ms | 319.01 ms |
| C# Concurrent (AOT) | 5.49 ms | $\textsf{\color{lightgreen}36.27 ms}$ | 304.39 ms | 346.16 ms |
| Rust Concurrent | $\textsf{\color{lightgreen}3.75 ms}$ | 41.64 ms | 325.22 ms | 370.60 ms |
| C# Concurrent (JIT) | 6.16 ms | 43.55 ms | 337.90 ms | 387.62 ms |
| F# Concurrent | 6.10 ms | 55.00 ms | 428.67 ms | 489.77 ms |
| Go Concurrent | 4.94 ms | 61.87 ms | 518.10 ms | 584.91 ms |
| Zig Concurrent | 6.19 ms | 68.64 ms | 550.06 ms | 624.89 ms |
| F# Concurrent (AOT) | 4.30 ms | 63.00 ms | 560.00 ms | 627.30 ms |
| Julia Concurrent | 5.65 ms | 71.93 ms | 589.19 ms | 666.77 ms |
| C++ Concurrent | 5.60 ms | 52.67 ms | 634.67 ms | 692.93 ms |
| Swift Concurrent | 10.79 ms | 89.94 ms | 696.57 ms | 797.31 ms |
| Nim Concurrent | 7.57 ms | 90.85 ms | 708.16 ms | 806.58 ms |
| Java (GraalVM) Concurrent | 9.10 ms | 100.33 ms | 828.00 ms | 937.43 ms |
| Java Concurrent (JIT) | 91.20 ms | 189.00 ms | 950.00 ms | 1.23 s |
| Numba Concurrent | 25.10 ms | 193.15 ms | 1.14 s | 1.36 s |

### Highly Optimised Results

| Language       | Time (5k posts) | 20k posts        | 60k posts        | Total     |
| -------------- | --------------- | ---------------- | ---------------- | --------- | 
| _Rust HO_[^1] | $\textsf{\color{lightgreen}4.72 ms}$ | $\textsf{\color{lightgreen}15.46 ms}$ | $\textsf{\color{lightgreen}39.51 ms}$ | 59.68 ms |
| _Go HO_[^1] | 5.53 ms | 19.18 ms | 47.62 ms | 72.33 ms |
| _Julia HO_[^1] | 5.20 ms | 39.33 ms | 83.67 ms | 128.20 ms |
| _D HO_[^1] | 11.95 ms | 44.09 ms | 120.19 ms | 176.23 ms |

> **Disclaimer:** These results are not directly comparable to the other implementations. The HO entries hardcode the top-5 output (`NUM_TOP_ITEMS`/`TopN`/`SVector{5}`) and exploit constraints of the benchmark dataset that don't generalize:
> - **Rust HO** uses 8-bit tag IDs, so it fails with more than 256 unique tags, and posts with more than 8 tags fall back to the standard, unoptimized algorithm.
> - **D HO** requires posts to have at most 8 tags (it aborts otherwise) and uses lookup tables limited to 256 entries.
> - **Julia HO** always returns exactly 5 related posts via a specialized data structure.
> - **Go HO** requires posts to have at most 8 tags and the dataset to have at most 256 unique tags (it exits with an error otherwise), and always returns exactly 5 related posts.
>
> They only produce these speeds for this specific dataset/shape of input; an arbitrary number of tags would break them or require changes.

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