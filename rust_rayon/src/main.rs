use std::{collections::BinaryHeap, time::Instant, cell::RefCell};

use rayon::prelude::*;
use rustc_data_structures::fx::FxHashMap;
use serde::{Deserialize, Serialize};
use serde_json::from_str;
use smallstr::SmallString;

use mimalloc::MiMalloc;
#[global_allocator]
static GLOBAL: MiMalloc = MiMalloc;

type SString = SmallString<[u8; 16]>;

#[derive(Serialize, Deserialize)]
struct Post {
    _id: SString,
    title: String,
    // #[serde(skip_serializing)]
    tags: Vec<SString>,
}

const NUM_TOP_ITEMS: usize = 5;

#[derive(Serialize)]
struct RelatedPosts<'a> {
    _id: &'a SString,
    tags: &'a Vec<SString>,
    related: Vec<&'a Post>,
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

    let start = Instant::now();

    let mut post_tags_map: FxHashMap<&str, Vec<usize>> = FxHashMap::default();

    for (i, post) in posts.iter().enumerate() {
        for tag in &post.tags {
            post_tags_map.entry(tag).or_default().push(i);
        }
    }

    let related_posts: Vec<RelatedPosts<'_>> = posts
        .par_iter()
        .enumerate()
        .map(|(idx, post)| {
            thread_local! {
                static POST_COUNT: RefCell<Vec<usize>> = RefCell::new(Vec::with_capacity(10_000));
            }

            let ret = POST_COUNT.with(|tpc| {
                let mut tagged_post_count = tpc.borrow_mut();

                if tagged_post_count.is_empty() {
                    tagged_post_count.resize(posts.len(), 0);
                } else {
                    tagged_post_count.fill(0);
                }

                for tag in &post.tags {
                    if let Some(tag_posts) = post_tags_map.get(tag.as_str()) {
                        for &other_post_idx in tag_posts {
                            tagged_post_count[other_post_idx] += 1;
                        }
                    }
                }

                tagged_post_count[idx] = 0; // don't recommend the same post

                let top = least_n(
                    NUM_TOP_ITEMS,
                    tagged_post_count
                        .iter()
                        .enumerate()
                        .map(|(post, &count)| PostCount { post, count }),
                );
                let related = top.map(|it| &posts[it.post]).collect();

                RelatedPosts {
                    _id: &post._id,
                    tags: &post.tags,
                    related,
                }
            });
            ret
        })
        .collect();

    let end = Instant::now();

    print!(
        "Processing time (w/o IO): {:?}\n",
        end.duration_since(start)
    );

    let json_str = serde_json::to_string(&related_posts).unwrap();
    std::fs::write("../related_posts_rust_rayon.json", json_str).unwrap();
}
