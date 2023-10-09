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
NB: The benchmark runs on the free tier of github workflow.

-   CPU: 2 vCPUs
-   RAM: 7GB
-   OS: Ubuntu 22.04

[Source](https://docs.github.com/en/actions/using-github-hosted-runners/about-github-hosted-runners/about-github-hosted-runners#supported-runners-and-hardware-resources)

</details>

| Language       | Time (5k posts)                       | 15k posts                              | 30k posts                              | Total   |
| -------------- | ------------------------------------- | -------------------------------------- | -------------------------------------- | ------- |
| Go | 25.81 ms | 221.01 ms | 854.45 ms | 1.10 s |
| Rust | 30.84 ms | 266.11 ms | 1.08 s | 1.37 s |
| F# | 50.00 ms | 329.00 ms | 1.26 s | 1.63 s |
| Java (GraalVM) | 36.08 ms | 290.00 ms | 1.36 s | 1.69 s |
| Julia | 40.31 ms | 337.67 ms | 1.32 s | 1.70 s |
| Zig | 38.00 ms | 323.33 ms | 1.35 s | 1.71 s |
| Odin | 54.51 ms | 371.36 ms | 1.73 s | 2.16 s |
| Vlang | 59.39 ms | 501.77 ms | 1.92 s | 2.48 s |
| Swift | 65.68 ms | 526.35 ms | 2.03 s | 2.63 s |
| Nim | 39.00 ms | 402.00 ms | 2.26 s | 2.70 s |
| Crystal | 68.72 ms | 596.54 ms | 2.37 s | 3.04 s |
| C# | 79.66 ms | 689.76 ms | 2.64 s | 3.41 s |
| Dart VM | 103.00 ms | 891.00 ms | 2.82 s | 3.81 s |
| LuaJIT | 119.93 ms | 964.05 ms | 3.69 s | 4.77 s |
| Dart AOT | 141.15 ms | 1.22 s | 4.86 s | 6.23 s |
| JS (Node) | 191.15 ms | 1.48 s | 5.79 s | 7.46 s |
| JS (Deno) | 217.77 ms | 1.76 s | 5.71 s | 7.68 s |
| ocaml | 203.08 ms | 1.90 s | 7.32 s | 9.43 s |
| Numpy | 369.95 ms | 2.97 s | 12.69 s | 16.04 s |
| JS (Bun) | 722.69 ms | 6.33 s | 28.06 s | 35.11 s |
| Python | 1.69 s | 15.25 s | 61.63 s | 78.57 s |
| Lua | 2.37 s | 20.61 s | 81.71 s | 104.69 s |

### Multicore Results

| Language       | Time (5k posts) | 15k posts        | 30k posts        | Total     |
| -------------- | --------------- | ---------------- | ---------------- | --------- |
| Rust Concurrent | 15.85 ms | 131.41 ms | 539.12 ms | 686.38 ms |
| Go Concurrent | 18.84 ms | 155.58 ms | 609.41 ms | 783.83 ms |
| F# Concurrent | 42.77 ms | 272.00 ms | 872.67 ms | 1.19 s |
| Swift Concurrent | 43.25 ms | 291.76 ms | 1.09 s | 1.42 s |
| Java (GraalVM) Concurrent | 88.08 ms | 586.33 ms | 3.01 s | 3.69 s |

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