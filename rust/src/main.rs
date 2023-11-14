use std::{collections::BinaryHeap, time::Instant};

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

#[derive(Eq)]
struct PostCount {
    post: u32,
    count: u8,
}

impl std::cmp::PartialEq for PostCount {
    #[inline]
    fn eq(&self, other: &Self) -> bool {
        self.count == other.count
    }
}

impl std::cmp::PartialOrd for PostCount {
    #[inline]
    fn partial_cmp(&self, other: &Self) -> Option<std::cmp::Ordering> {
        Some(self.cmp(other))
    }
}

impl std::cmp::Ord for PostCount {
    #[inline]
    fn cmp(&self, other: &Self) -> std::cmp::Ordering {
        // reverse order
        other.count.cmp(&self.count)
    }
}

fn least_n<T: Ord>(n: usize, mut from: impl Iterator<Item = T>) -> impl Iterator<Item = T> {
    let mut h = BinaryHeap::from_iter(from.by_ref().take(n));

    for it in from {
        // heap thinks the smallest is the greatest because of reverse order
        let mut greatest = h.peek_mut().unwrap();

        if it < *greatest {
            // heap rebalances after the smart pointer is dropped
            *greatest = it;
        }
    }
    h.into_iter()
}

fn main() {
    let json_str = std::fs::read_to_string("../posts.json").unwrap();
    let posts: Vec<Post> = from_str(&json_str).unwrap();

    let start = Instant::now();

    let mut post_tags_map: FxHashMap<&str, Vec<u32>> = FxHashMap::default();

    for (post_idx, post) in posts.iter().enumerate() {
        for tag in &post.tags {
            post_tags_map.entry(tag).or_default().push(post_idx as u32);
        }
    }

    let mut tagged_post_count = vec![0u8; posts.len()];
    let related_posts: Vec<RelatedPosts<'_>> = posts
        .iter()
        .enumerate()
        .map(|(post_idx, post)| {
            tagged_post_count.fill(0);

            for tag in &post.tags {
                if let Some(tag_posts) = post_tags_map.get(tag) {
                    for other_post_idx in tag_posts {
                        tagged_post_count[*other_post_idx as usize] += 1;
                    }
                }
            }

            tagged_post_count[post_idx] = 0; // don't recommend the same post

            let top = least_n(
                NUM_TOP_ITEMS,
                tagged_post_count
                    .iter()
                    .enumerate()
                    .map(|(post, &count)| PostCount {
                        post: post as u32,
                        count,
                    }),
            );
            let related = top.map(|it| &posts[it.post as usize]).collect();

            RelatedPosts {
                id: post.id,
                tags: &post.tags,
                related,
            }
        })
        .collect();

    let dur = start.elapsed();

    println!("Processing time (w/o IO): {dur:?}");

    // I have no explanation for why, but doing this before the print improves performance pretty
    // significantly (15%) when using slices in the hashmap key and RelatedPosts
    let json_str = serde_json::to_string(&related_posts).unwrap();

    std::fs::write("../related_posts_rust.json", json_str).unwrap();
}
