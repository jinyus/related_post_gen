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

| Language       | Time (5k posts) | 15k posts        | 30k posts        | Total   |
| -------------- | --------------- | ---------------- | ---------------- | ------- |
| Go             | 30.94 ms        | `256.98 ms`      | `998.54 ms`      | 1.29 s  |
| Java (GraalVM) | 36.00 ms        | 298.67 ms        | 1.16 s           | 1.50 s  |
| Julia          | 32.77 ms        | 302.67 ms        | 1.18 s           | 1.52 s  |
| Rust           | 36.10 ms        | 307.96 ms        | 1.27 s           | 1.62 s  |
| Zig            | `29.00 ms`      | 331.33 ms        | 1.30 s           | 1.66 s  |
| F#             | 56.08 ms        | 364.00 ms        | 1.39 s           | 1.81 s  |
| Vlang          | 45.92 ms        | 379.67 ms        | 1.45 s           | 1.88 s  |
| Swift          | 49.01 ms        | 419.11 ms        | 1.63 s           | 2.10 s  |
| C#             | 56.10 ms        | 478.25 ms        | 1.82 s           | 2.36 s  |
| Odin           | 44.97 ms        | 418.74 ms        | 1.99 s           | 2.45 s  |
| Nim            | 32.08 ms        | 394.00 ms        | 2.09 s           | 2.52 s  |
| Crystal        | 58.43 ms        | 512.20 ms        | 2.02 s           | 2.59 s  |
| Dart VM        | 79.00 ms        | 811.67 ms        | 2.74 s           | 3.63 s  |
| LuaJIT         | 102.37 ms       | 784.57 ms        | 2.91 s           | 3.80 s  |
| Dart AOT       | 116.08 ms       | 1.01 s           | 3.97 s           | 5.10 s  |
| JS (Deno)      | 168.77 ms       | 1.40 s           | 4.40 s           | 5.96 s  |
| JS (Node)      | 154.15 ms       | 1.27 s           | 4.70 s           | 6.13 s  |
| ocaml          | 173.92 ms       | 1.53 s           | 6.09 s           | 7.80 s  |
| Numpy          | 366.95 ms       | 3.22 s           | 13.35 s          | 16.93 s |
| JS (Bun)       | 589.62 ms       | 5.15 s           | 24.00 s          | 29.73 s |
| Python         | 1.69 s          | 15.02 s          | 60.37 s          | 77.08 s |
| Lua            | 1.94 s          | 17.10 s          | 69.53 s          | 88.57 s |
| Java (JIT)     | 234.00 ms       | OutOfMemoryError | OutOfMemoryError | N/A     |

### Multicore Results

| Language         | Time (5k posts) | 15k posts | 30k posts | Total     |
| ---------------- | --------------- | --------- | --------- | --------- |
| Rust Concurrent  | 15.69 ms        | 144.11 ms | 551.81 ms | 711.61 ms |
| Go Concurrent    | 21.94 ms        | 180.48 ms | 694.76 ms | 897.19 ms |
| Swift Concurrent | 30.20 ms        | 228.19 ms | 848.64 ms | 1.11 s    |
| F# Concurrent    | 39.62 ms        | 236.67 ms | 925.33 ms | 1.20 s    |

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
