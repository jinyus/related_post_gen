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
| Julia | 23.08 ms | 189.33 ms | 745.00 ms | 957.41 ms |
| Go | 24.55 ms | 213.58 ms | 825.39 ms | 1.06 s |
| Rust | 24.04 ms | 221.31 ms | 867.30 ms | 1.11 s |
| F# | 39.23 ms | 290.67 ms | 1.14 s | 1.47 s |
| Java (GraalVM) | 37.00 ms | 309.33 ms | 1.20 s | 1.55 s |
| Zig | 34.00 ms | 305.00 ms | 1.21 s | 1.55 s |
| Odin | 41.46 ms | 391.67 ms | 1.27 s | 1.71 s |
| C# | 45.33 ms | 370.25 ms | 1.45 s | 1.87 s |
| Swift | 54.14 ms | 409.25 ms | 1.58 s | 2.04 s |
| Vlang | 52.88 ms | 434.56 ms | 1.68 s | 2.17 s |
| Nim | 32.62 ms | 262.67 ms | 2.04 s | 2.33 s |
| Java (JIT) | 111.15 ms | 509.00 ms | 1.76 s | 2.38 s |
| Crystal | 63.31 ms | 527.32 ms | 2.07 s | 2.66 s |
| LuaJIT | 105.49 ms | 865.78 ms | 3.06 s | 4.04 s |
| Dart VM | 134.15 ms | 1.16 s | 5.34 s | 6.64 s |
| JS (Deno) | 194.54 ms | 1.56 s | 5.04 s | 6.79 s |
| JS (Node) | 182.54 ms | 1.39 s | 5.41 s | 6.98 s |
| Dart AOT | 186.54 ms | 1.62 s | 6.48 s | 8.29 s |
| ocaml | 149.08 ms | 1.40 s | 7.29 s | 8.84 s |
| Numpy | 361.37 ms | 2.71 s | 11.67 s | 14.74 s |
| JS (Bun) | 725.85 ms | 6.35 s | 24.62 s | 31.69 s |
| Lua | 1.09 s | 9.48 s | 37.49 s | 48.07 s |
| Python | 1.46 s | 13.12 s | 53.43 s | 68.01 s |

### Multicore Results

| Language       | Time (5k posts) | 15k posts        | 30k posts        | Total     |
| -------------- | --------------- | ---------------- | ---------------- | --------- |
| Go Concurrent | 16.71 ms | 126.81 ms | 488.01 ms | 631.53 ms |
| Julia Concurrent | 17.38 ms | 142.00 ms | 495.67 ms | 655.05 ms |
| Rust Concurrent | 20.56 ms | 175.09 ms | 686.19 ms | 881.84 ms |
| F# Concurrent | 35.77 ms | 189.33 ms | 697.67 ms | 922.77 ms |
| Swift Concurrent | 33.03 ms | 228.18 ms | 886.81 ms | 1.15 s |
| Java (GraalVM) Concurrent | 39.00 ms | 344.00 ms | 1.35 s | 1.73 s |

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