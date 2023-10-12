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

##### VM Specs ( Azure F4s v2 - 4vCPU-8GB-Ubuntu 22.04 )

| Language       | Time (5k posts)                       | 20k posts                              | 60k posts                           | Total                     |
| -------------- | ------------------------------------- | -------------------------------------- | ----------------------------------- | ------------------------- |
| Go             | 24.56 ms                              | $\textsf{\color{lightgreen}371.67 ms}$ | $\textsf{\color{lightgreen}3.29 s}$ | 3.69 s                    |
| Rust           | $\textsf{\color{lightgreen}23.91 ms}$ | 388.04 ms                              | 3.45 s                              | 3.86 s                    |
| Zig            | 29.00 ms                              | 429.33 ms                              | 3.84 s                              | 4.30 s                    |
| D              | 32.73 ms                              | 447.31 ms                              | 3.89 s                              | 4.37 s                    |
| Julia          | 33.23 ms                              | 574.67 ms                              | 4.34 s                              | 4.94 s                    |
| Java (GraalVM) | 36.85 ms                              | 541.67 ms                              | 4.77 s                              | 5.34 s                    |
| Crystal        | 38.33 ms                              | 552.14 ms                              | 4.86 s                              | 5.45 s                    |
| F# (AOT)       | 40.54 ms                              | 602.67 ms                              | 5.20 s                              | 5.84 s                    |
| F#             | 48.15 ms                              | 603.33 ms                              | 5.26 s                              | 5.91 s                    |
| Odin           | 48.22 ms                              | 678.08 ms                              | 6.01 s                              | 6.73 s                    |
| Swift          | 50.54 ms                              | 710.81 ms                              | 6.20 s                              | 6.97 s                    |
| Vlang          | 51.51 ms                              | 758.00 ms                              | 6.65 s                              | 7.46 s                    |
| Java (JIT)     | 108.77 ms                             | 838.33 ms                              | 6.72 s                              | 7.66 s                    |
| Nim            | 31.31 ms                              | 777.00 ms                              | 7.30 s                              | 8.11 s                    |
| C# (AOT)       | 55.44 ms                              | 819.37 ms                              | 7.25 s                              | 8.12 s                    |
| C# (JIT)       | 59.69 ms                              | 875.40 ms                              | 7.79 s                              | 8.73 s                    |
| LuaJIT         | 103.91 ms                             | 1.34 s                                 | 12.10 s                             | 13.54 s                   |
| Dart VM        | 131.69 ms                             | 2.46 s                                 | 21.10 s                             | 23.69 s                   |
| JS (Node)      | 181.15 ms                             | 2.43 s                                 | 21.68 s                             | 24.28 s                   |
| Dart AOT       | 185.62 ms                             | 2.89 s                                 | 25.80 s                             | 28.87 s                   |
| JS (Deno)      | 193.77 ms                             | 2.26 s                                 | 27.36 s                             | 29.82 s                   |
| ocaml          | 144.38 ms                             | 2.72 s                                 | 33.93 s                             | 36.80 s                   |
| JS (Bun)       | 618.69 ms                             | 12.07 s                                | 109.45 s                            | 122.13 s                  |
| Lua            | 1.09 s                                | 16.90 s                                | 150.25 s                            | 168.25 s                  |
| Python         | 1.46 s                                | 23.42 s                                | 215.19 s                            | 240.07 s                  |
| Numpy          | 360.05 ms                             | 6.25 s                                 | 1.7976931348623156e+305 s           | 1.7976931348623156e+305 s |

### Multicore Results

| Language                  | Time (5k posts) | 20k posts | 60k posts | Total  |
| ------------------------- | --------------- | --------- | --------- | ------ |
| Go Concurrent             | 14.18 ms        | 167.48 ms | 1.42 s    | 1.61 s |
| D Concurrent              | 18.42 ms        | 200.85 ms | 1.65 s    | 1.87 s |
| Julia Concurrent          | 18.08 ms        | 250.33 ms | 2.20 s    | 2.47 s |
| Rust Concurrent           | 20.50 ms        | 304.96 ms | 2.73 s    | 3.06 s |
| Swift Concurrent          | 31.27 ms        | 392.84 ms | 3.44 s    | 3.86 s |
| F# Concurrent             | 43.15 ms        | 417.67 ms | 3.44 s    | 3.90 s |
| Java (GraalVM) Concurrent | 38.92 ms        | 599.00 ms | 4.12 s    | 4.76 s |

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
