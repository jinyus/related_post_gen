### Problem:

Given a list of posts, compute the top 5 related posts for each post based on the number of shared tags.

## Steps:

-   Read the posts JSON file.
-   Iterate over the posts and populate a map containing: `tag -> List<int>`, with the int representing the post index of each post with that tag.
-   Iterate over the posts and for each post:
    -   Create a map: `PostIndex -> int` to track the number of shared tags
    -   For each tag, Iterate over the posts that have that tag
    -   For each post, increment the shared tag count in the map.
-   Sort the related posts by the number of shared tags.
-   Write the top 5 related posts for each post to a new JSON file.

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

<h3>Must:</h3>

-   Support up to 100,000 posts
-   Parse json at runtime
-   Not hardcode number of posts
-   Support up to 100 tags
-   Use a stable release of the compiler/runtime
-   Represent tags as strings
</details>

### Updated Results from github workflow ([raw data](https://github.com/jinyus/related_post_gen/blob/main/raw_results.md))

<details>
<summary> VM Specs </summary>
NB: The benchmark runs on the Digital Ocean Droplet (CPU-Optimized).

-   CPU: 4 vCPUs
-   RAM: 8GB
-   OS: Ubuntu 22.04

[Source](https://docs.github.com/en/actions/using-github-hosted-runners/about-github-hosted-runners/about-github-hosted-runners#supported-runners-and-hardware-resources)

</details>

| Language       | Time (5k posts)                       | 15k posts                              | 30k posts                           | Total    |
| -------------- | ------------------------------------- | -------------------------------------- | ----------------------------------- | -------- |
| Rust           | 56.35 ms                              | $\textsf{\color{lightgreen}486.12 ms}$ | $\textsf{\color{lightgreen}1.93 s}$ | 2.47 s   |
| Go             | $\textsf{\color{lightgreen}55.90 ms}$ | 498.00 ms                              | 2.00 s                              | 2.55 s   |
| Julia          | 67.69 ms                              | 588.00 ms                              | 2.31 s                              | 2.97 s   |
| Zig            | 65.46 ms                              | 571.67 ms                              | 2.35 s                              | 2.99 s   |
| Java (GraalVM) | 63.38 ms                              | 582.00 ms                              | 2.35 s                              | 3.00 s   |
| Vlang          | 74.61 ms                              | 635.76 ms                              | 2.49 s                              | 3.20 s   |
| F#             | 77.69 ms                              | 686.67 ms                              | 2.44 s                              | 3.21 s   |
| Swift          | 83.67 ms                              | 671.85 ms                              | 2.61 s                              | 3.37 s   |
| C#             | 79.20 ms                              | 686.91 ms                              | 2.69 s                              | 3.46 s   |
| Java (JIT)     | 168.77 ms                             | 839.00 ms                              | 3.10 s                              | 4.11 s   |
| Crystal        | 96.72 ms                              | 828.52 ms                              | 3.28 s                              | 4.20 s   |
| Odin           | 101.07 ms                             | 855.85 ms                              | 3.39 s                              | 4.35 s   |
| Nim            | 71.46 ms                              | 616.00 ms                              | 4.67 s                              | 5.35 s   |
| LuaJIT         | 146.95 ms                             | 1.17 s                                 | 4.39 s                              | 5.71 s   |
| Dart VM        | 188.46 ms                             | 1.62 s                                 | 6.54 s                              | 8.35 s   |
| JS (Deno)      | 276.15 ms                             | 2.26 s                                 | 7.79 s                              | 10.33 s  |
| JS (Node)      | 271.92 ms                             | 2.18 s                                 | 8.67 s                              | 11.12 s  |
| Dart AOT       | 311.15 ms                             | 2.81 s                                 | 11.80 s                             | 14.92 s  |
| ocaml          | 310.85 ms                             | 2.77 s                                 | 12.05 s                             | 15.12 s  |
| Numpy          | 554.34 ms                             | 4.33 s                                 | 18.21 s                             | 23.09 s  |
| JS (Bun)       | 719.23 ms                             | 8.83 s                                 | 40.35 s                             | 49.90 s  |
| Lua            | 1.76 s                                | 17.14 s                                | 68.95 s                             | 87.85 s  |
| Python         | 3.43 s                                | 34.07 s                                | 142.47 s                            | 179.98 s |

### Multicore Results

| Language                  | Time (5k posts) | 15k posts | 30k posts | Total     |
| ------------------------- | --------------- | --------- | --------- | --------- |
| Go Concurrent             | 24.79 ms        | 182.07 ms | 706.41 ms | 913.27 ms |
| Rust Concurrent           | 22.24 ms        | 186.02 ms | 743.80 ms | 952.06 ms |
| Swift Concurrent          | 32.00 ms        | 224.61 ms | 821.21 ms | 1.08 s    |
| F# Concurrent             | 48.69 ms        | 279.67 ms | 969.33 ms | 1.30 s    |
| Java (GraalVM) Concurrent | 43.00 ms        | 410.00 ms | 1.34 s    | 1.80 s    |

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
| Dart VM    | 125ms           | 530ms         | Ported frog golang code                                                                                                                                                                                                                                                                         |
| Dart bin   | 274ms           | 360ms         | Compiled executable                                                                                                                                                                                                                                                                             |
| ⠀          | ⠀               | ⠀             | ⠀                                                                                                                                                                                                                                                                                               |
| Vlang      | 339ms           | 560ms         | Ported from golang code                                                                                                                                                                                                                                                                         |
| ⠀          | ⠀               | ⠀             | ⠀                                                                                                                                                                                                                                                                                               |
| Zig        | 80ms            | 110ms         | Provided by [akhildevelops](https://github.com/jinyus/related_post_gen/pull/30)                                                                                                                                                                                                                 |

</details>
