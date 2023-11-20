use rayon::prelude::*;
use rustc_data_structures::fx::FxHashMap;
use serde::{Deserialize, Serialize};
use std::time::Instant;

#[global_allocator]
static GLOBAL: mimalloc::MiMalloc = mimalloc::MiMalloc;

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
    rayon::ThreadPoolBuilder::new().build_global().unwrap();

    let json_str = std::fs::read_to_string("../posts.json").unwrap();
    let posts: Vec<Post> = serde_json::from_str(&json_str).unwrap();

    let start = Instant::now();

    let mut post_tags_map: FxHashMap<&str, Vec<u32>> = Default::default();
    posts.iter().enumerate().for_each(|(post_idx, post)| {
        for tag in &post.tags {
            post_tags_map.entry(tag).or_default().push(post_idx as u32);
        }
    });

    let related_posts: Vec<RelatedPosts<'_>> = posts
        .par_iter()
        .enumerate()
        .map_with(
            vec![0u8; posts.len()],
            |tagged_post_count, (post_idx, post)| {
                for tag in &post.tags {
                    if let Some(tag_posts) = post_tags_map.get(tag) {
                        for other_post_idx in tag_posts {
                            tagged_post_count[*other_post_idx as usize] += 1;
                        }
                    }
                }
                tagged_post_count[post_idx] = 0; // don't recommend the same post

                let mut top_k = [(0u8, 0u32); NUM_TOP_ITEMS];
                let mut min_tags = 0;
                for (j, &count) in tagged_post_count.iter().enumerate() {
                    if count > min_tags {
                        let pos = top_k
                            .iter()
                            .rev()
                            .position(|t| t.0 > count)
                            .map_or(0, |p| NUM_TOP_ITEMS - p);

                        top_k.copy_within(pos..NUM_TOP_ITEMS - 1, pos + 1);
                        top_k[pos] = (count, j as u32);

                        min_tags = top_k[NUM_TOP_ITEMS - 1].0;
                    }
                }

                tagged_post_count.fill(0);

                // Convert indexes back to Post pointers
                let related = top_k.map(|(_, j)| &posts[j as usize]);
                RelatedPosts {
                    id: post.id,
                    tags: &post.tags,
                    related,
                }
            },
        )
        .collect();

    let dur = start.elapsed();
    println!("Processing time (w/o IO): {dur:?}");

    let json_str = serde_json::to_string(&related_posts).unwrap();
    std::fs::write("../related_posts_rust_con.json", json_str).unwrap();
}
