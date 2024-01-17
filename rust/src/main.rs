use aligned_vec::avec;
use hashbrown::HashMap;
use serde::{Deserialize, Serialize};
use std::{hint, time::Instant};

const NUM_TOP_ITEMS: usize = 5;

#[derive(Serialize, Deserialize)]
#[repr(align(64))]
struct Post<'a> {
    #[serde(rename = "_id")]
    id: &'a str,
    title: &'a str,
    tags: Vec<&'a str>,
}

#[derive(Serialize)]
#[repr(align(64))]
struct RelatedPosts<'a> {
    #[serde(rename = "_id")]
    id: &'a str,
    tags: &'a [&'a str],
    related: [&'a Post<'a>; NUM_TOP_ITEMS],
}

fn main() {
    let json_str = std::fs::read_to_string("../posts.json").unwrap();
    let posts: Vec<Post> = serde_json::from_str(&json_str).unwrap();

    let start = Instant::now();

    let mut post_tags_map = HashMap::<&str, Vec<u32>>::with_capacity(128);
    for (post_idx, post) in posts.iter().enumerate() {
        for tag in &post.tags {
            post_tags_map
                .entry(tag)
                .or_insert_with(|| Vec::with_capacity(1024))
                .push(post_idx as u32);
        }
    }

    const CHUNK_SIZE: usize = 64;
    let mut tagged_post_count = avec![0u8; posts.len().next_multiple_of(CHUNK_SIZE)];
    let related_posts: Vec<_> = posts
        .iter()
        .enumerate()
        .map(|(post_idx, post)| {
            for tag in &post.tags {
                for other_post_idx in &post_tags_map[tag] {
                    tagged_post_count[*other_post_idx as usize] += 1;
                }
            }
            tagged_post_count[post_idx] = 0; // don't recommend the same post

            let mut topk = [(0u8, 0u32); NUM_TOP_ITEMS];
            let mut min_tags = 0u8;
            for (c, chunk) in tagged_post_count.chunks(CHUNK_SIZE).enumerate() {
                let mut process_chunk = false;
                for &count in chunk {
                    process_chunk |= count > min_tags;
                }
                if process_chunk {
                    for (j, &count) in chunk.iter().enumerate() {
                        if count > min_tags {
                            let pos = topk
                                .iter()
                                .rev()
                                .position(|t| t.0 > count)
                                .map_or(0, |p| NUM_TOP_ITEMS - p);

                            topk.copy_within(pos..NUM_TOP_ITEMS - 1, pos + 1);
                            topk[pos] = (count, (c * CHUNK_SIZE + j) as u32);

                            min_tags = topk[NUM_TOP_ITEMS - 1].0;
                        }
                    }
                }
            }

            tagged_post_count.fill(0);

            RelatedPosts {
                id: post.id,
                tags: &post.tags,
                related: topk.map(|(_, index)| &posts[index as usize]),
            }
        })
        .collect();

    // Tell compiler to not delay now() until print is eval'ed.
    let end = hint::black_box(Instant::now());

    println!("Processing time (w/o IO): {:?}", end.duration_since(start));

    // I have no explanation for why, but doing this before the print improves performance pretty
    // significantly (15%) when using slices in the hashmap key and RelatedPosts
    let json_str = serde_json::to_string(&related_posts).unwrap();

    std::fs::write("../related_posts_rust.json", json_str).unwrap();
}
