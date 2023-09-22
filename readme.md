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

| Language | Time (avg) |
| -------- | ---------- |
| Go       | 1.58s      |
| Rust     | 4.97s      |
| Python   | 10.14s     |
