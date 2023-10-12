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

| Language       | Time (5k posts) | 20k posts | 60k posts   | Total    |
| -------------- | --------------- | --------- | ----------- | -------- |
| Go             | 24.34 ms        | 377.35 ms | 3.28 s      | 3.68 s   |
| Rust           | 23.93 ms        | 388.52 ms | 3.44 s      | 3.85 s   |
| Zig            | 29.00 ms        | 430.00 ms | 3.84 s      | 4.30 s   |
| Java (GraalVM) | 37.00 ms        | 446.33 ms | 4.00 s      | 4.48 s   |
| D              | 30.91 ms        | 463.25 ms | 4.12 s      | 4.61 s   |
| Julia          | 33.92 ms        | 576.33 ms | 5.04 s      | 5.65 s   |
| F#             | 38.15 ms        | 499.67 ms | 5.43 s      | 5.97 s   |
| Odin           | 47.49 ms        | 574.10 ms | 6.11 s      | 6.74 s   |
| Swift          | 50.71 ms        | 709.51 ms | 6.16 s      | 6.92 s   |
| Vlang          | 51.36 ms        | 756.41 ms | 6.66 s      | 7.47 s   |
| Java (JIT)     | 104.31 ms       | 843.33 ms | 6.78 s      | 7.73 s   |
| Nim            | 31.15 ms        | 771.00 ms | 7.27 s      | 8.07 s   |
| Crystal        | 60.39 ms        | 933.30 ms | 8.24 s      | 9.23 s   |
| C#             | 64.96 ms        | 976.63 ms | 8.66 s      | 9.71 s   |
| LuaJIT         | 106.44 ms       | 1.50 s    | 12.41 s     | 14.02 s  |
| JS (Deno)      | 193.85 ms       | 2.26 s    | 20.13 s     | 22.58 s  |
| Dart VM        | 136.38 ms       | 2.43 s    | 21.19 s     | 23.75 s  |
| JS (Node)      | 179.00 ms       | 2.42 s    | 21.55 s     | 24.15 s  |
| Dart AOT       | 186.31 ms       | 2.88 s    | 25.76 s     | 28.83 s  |
| ocaml          | 136.54 ms       | 2.63 s    | 34.31 s     | 37.08 s  |
| Lua            | 1.10 s          | 16.90 s   | 150.18 s    | 168.18 s |
| Python         | 1.47 s          | 23.45 s   | 215.22 s    | 240.13 s |
| Numpy          | 356.97 ms       | 5.00 s    | OutofMemory | N/A      |

### Multicore Results

| Language                  | Time (5k posts) | 20k posts | 60k posts | Total  |
| ------------------------- | --------------- | --------- | --------- | ------ |
| Go Concurrent             | 13.36 ms        | 167.40 ms | 1.42 s    | 1.60 s |
| Julia Concurrent          | 18.15 ms        | 251.00 ms | 2.19 s    | 2.46 s |
| F# Concurrent             | 33.92 ms        | 324.67 ms | 2.33 s    | 2.69 s |
| Rust Concurrent           | 20.29 ms        | 304.27 ms | 2.73 s    | 3.05 s |
| Swift Concurrent          | 31.27 ms        | 391.87 ms | 3.42 s    | 3.84 s |
| Java (GraalVM) Concurrent | 39.08 ms        | 598.67 ms | 5.33 s    | 5.96 s |

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
