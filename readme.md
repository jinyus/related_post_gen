Generate related posts based on tags. Sort by the number of shared tags.

## Steps:

-   Read the posts JSON file.
-   Iterate over the posts and populate a map containing: `tag -> List<Post>` that has that tag
-   Iterate over the posts and for each post:
    -   Create a map: `Post -> int` to track the number of shared tags
    -   For each tag, Iterate over the posts that have that tag
    -   For each post, increment the shared tag count in the map.
-   Sort the related posts by the number of shared tags.
-   Write the top 5 related posts for each post to a new JSON file.

### Run Benchmark

```rust
./run.sh go | rust | python | all
```

### Results (on my machine)

| Language     | Time (avg) |
| ------------ | ---------- |
| Go           | 0.08s      |
| Rust         | 0.04s      |
| Rust (Rayon) | 0.02s      |
| Python       | 7.81s      |

#### Special thanks these reddits users for optimizing the Rust code

[RB5009](https://www.reddit.com/r/rust/comments/16plgok/comment/k1s5ea0/?utm_source=share&utm_medium=web2x&context=3) <br>
[darth_chewbacca](https://www.reddit.com/r/rust/comments/16plgok/comment/k1s1214/?utm_source=share&utm_medium=web2x&context=3)<br>
[Darksonn](https://www.reddit.com/r/rust/comments/16plgok/comment/k1rzwdx/?utm_source=share&utm_medium=web2x&context=3)<br>
[vdrmn](https://www.reddit.com/r/rust/comments/16plgok/comment/k1rzo7g/?utm_source=share&utm_medium=web2x&context=3)<br>
[phazer99](https://www.reddit.com/r/rust/comments/16plgok/comment/k1rtr4x/?utm_source=share&utm_medium=web2x&context=3)<br>

### Notes

| Language   | Time (avg) | Details                                                                                                                                                                                                                                                                                         |
| ---------- | ---------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Rust       | 4.5s       | Initial                                                                                                                                                                                                                                                                                         |
| Rust v2    | 2.60s      | Replace std HashMap with fxHashMap by [phazer99](https://www.reddit.com/r/rust/comments/16plgok/comment/k1rtr4x/?utm_source=share&utm_medium=web2x&context=3)                                                                                                                                   |
| Rust v3    | 1.28s      | Preallocate and reuse map and unstable sort by [vdrmn](https://www.reddit.com/r/rust/comments/16plgok/comment/k1rzo7g/?utm_source=share&utm_medium=web2x&context=3) and [Darksonn](https://www.reddit.com/r/rust/comments/16plgok/comment/k1rzwdx/?utm_source=share&utm_medium=web2x&context=3) |
| Rust v4    | 0.13s      | Use Post index as key instead of Pointer and Binary Heap by [RB5009](https://www.reddit.com/r/rust/comments/16plgok/comment/k1s5ea0/?utm_source=share&utm_medium=web2x&context=3)                                                                                                               |
| Rust v5    | 0.04s      | Rm hashing from loop and use vec[count] instead of map[index]count by RB5009                                                                                                                                                                                                                    |
| Rust Rayon | 0.02s      | Parallelize by [masmullin2000](https://github.com/jinyus/related_post_gen/pull/4)                                                                                                                                                                                                               |
| Go         | 1.5s       | Initial                                                                                                                                                                                                                                                                                         |
| Go v2      | 0.08s      | Add rust optimizations                                                                                                                                                                                                                                                                          |
| Python     | 7.81s      | Initial                                                                                                                                                                                                                                                                                         |
