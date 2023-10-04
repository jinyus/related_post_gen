use std::borrow::Cow;
use std::{collections::BinaryHeap, time::Instant};

use rayon::prelude::*;
use rustc_data_structures::fx::FxHashMap;
use serde::{Deserialize, Serialize};
use serde_json::from_str;

use mimalloc::MiMalloc;
#[global_allocator]
static GLOBAL: MiMalloc = MiMalloc;

#[derive(Serialize, Deserialize)]
struct Post<'a> {
    #[serde(borrow)]
    _id: Cow<'a, str>,
    #[serde(borrow)]
    title: Cow<'a, str>,
    #[serde(borrow)]
    tags: Vec<Cow<'a, str>>,
}

const NUM_TOP_ITEMS: usize = 5;

#[derive(Serialize)]
struct RelatedPosts<'a> {
    _id: &'a str,
    tags: &'a Vec<Cow<'a, str>>,
    related: Vec<&'a Post<'a>>,
}

#[derive(Eq)]
struct PostCount {
    post: usize,
    count: usize,
}

impl std::cmp::PartialEq for PostCount {
    fn eq(&self, other: &Self) -> bool {
        self.count == other.count
    }
}

impl std::cmp::PartialOrd for PostCount {
    fn partial_cmp(&self, other: &Self) -> Option<std::cmp::Ordering> {
        Some(self.cmp(other))
    }
}

impl std::cmp::Ord for PostCount {
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
    let num_cpus = num_cpus::get_physical(); // does IO to get num_cpus

    let start = Instant::now();

    let mut known_tag_idx: FxHashMap<&str, usize> = FxHashMap::default();
    // Indexed by TagIdx
    let mut post_idx_for_tag: Vec<Vec<usize>> = Vec::new();
    // Indexed by PostIdx, contains TagIdx values for each post
    let mut post_tag_idxs: Vec<Vec<usize>> = vec![Vec::new(); posts.len()];

    for (i, post) in posts.iter().enumerate() {
        for tag in &post.tags {
            let next_tag_idx = known_tag_idx.len();
            let tag_idx = *known_tag_idx.entry(tag).or_insert_with(|| {
                post_idx_for_tag.push(Vec::new());
                next_tag_idx
            });
            post_idx_for_tag[tag_idx].push(i);
            post_tag_idxs[i].push(tag_idx);
        }
    }

    let pool = rayon::ThreadPoolBuilder::new()
        .num_threads(num_cpus)
        .build()
        .unwrap();

    pool.install(|| {
        let related_posts: Vec<RelatedPosts<'_>> = posts
            .par_iter()
            .enumerate()
            .map(|(idx, post)| {
                // faster than allocating outside the loop
                let mut tagged_post_count = vec![0; posts.len()];

                for &tag in &post_tag_idxs[idx] {
                    for &other_post_idx in &post_idx_for_tag[tag] {
                        tagged_post_count[other_post_idx] += 1;
                    }
                }

                tagged_post_count[idx] = 0; // don't recommend the same post

                let top = least_n(
                    NUM_TOP_ITEMS,
                    tagged_post_count
                        .into_iter()
                        .enumerate()
                        .map(|(post, count)| PostCount { post, count }),
                );
                let related = top.map(|it| &posts[it.post]).collect();

                RelatedPosts {
                    _id: &post._id,
                    tags: &post.tags,
                    related,
                }
            })
            .collect();

        let end = Instant::now();

        print!(
            "Processing time (w/o IO): {:?}\n",
            end.duration_since(start)
        );

        let json_str = serde_json::to_string(&related_posts).unwrap();
        std::fs::write("../related_posts_rust_rayon.json", json_str).unwrap();
    });
}
