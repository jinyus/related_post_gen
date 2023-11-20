use std::{hint, time::Instant};

use bumpalo::collections::Vec as BVec;
use bumpalo::Bump;
use rustc_data_structures::fx::FxHashMap;
use serde::{Deserialize, Serialize};
use serde_json::from_str;

#[global_allocator]
static GLOBAL: mimalloc::MiMalloc = mimalloc::MiMalloc;

#[derive(Serialize, Deserialize)]
#[repr(align(64))]
struct Post<'a> {
    #[serde(rename = "_id")]
    id: &'a str,
    title: &'a str,
    tags: Vec<&'a str>,
}

const NUM_TOP_ITEMS: usize = 5;

#[derive(Serialize)]
struct RelatedPosts<'a> {
    #[serde(rename = "_id")]
    id: &'a str,
    tags: &'a [&'a str],
    related: Vec<&'a Post<'a>>,
}

fn main() {
    let json_str = std::fs::read_to_string("../posts.json").unwrap();
    let posts: Vec<Post> = from_str(&json_str).unwrap();

    let start = Instant::now();

    let cap = (posts.len() * std::mem::size_of::<u8>()).next_power_of_two();
    let arena = Bump::with_capacity(cap);

    let mut post_tags_map: FxHashMap<&str, Vec<u32>> = FxHashMap::default();

    for (post_idx, post) in posts.iter().enumerate() {
        for tag in &post.tags {
            post_tags_map.entry(tag).or_default().push(post_idx as u32);
        }
    }

    let related_posts: Vec<RelatedPosts<'_>> = posts
        .iter()
        .enumerate()
        .map(|(post_idx, post)| {
            let mut tagged_post_count: BVec<u8> = BVec::with_capacity_in(posts.len(), &arena);
            tagged_post_count.resize(posts.len(), 0);

            for tag in &post.tags {
                if let Some(tag_posts) = post_tags_map.get(tag) {
                    for other_post_idx in tag_posts {
                        tagged_post_count[*other_post_idx as usize] += 1;
                    }
                }
            }

            tagged_post_count[post_idx] = 0; // don't recommend the same post

            let mut top5 = [(0, 0); NUM_TOP_ITEMS];
            let mut min_tags = 0;

            for (j, &count) in tagged_post_count.iter().enumerate() {
                let count = count as usize;
                if count > min_tags {
                    let pos = top5
                        .iter()
                        .rev()
                        .position(|t| t.0 > count)
                        .map_or(0, |p| NUM_TOP_ITEMS - p);

                    top5.copy_within(pos..NUM_TOP_ITEMS - 1, pos + 1);
                    top5[pos] = (count, j);

                    min_tags = top5[NUM_TOP_ITEMS - 1].0;
                }
            }

            // Convert indexes back to Post pointers
            let related = top5.into_iter().map(|(_, index)| &posts[index]).collect();

            RelatedPosts {
                id: post.id,
                tags: &post.tags,
                related,
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
