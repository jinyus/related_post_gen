use std::{collections::BinaryHeap, time::Instant};
use std::borrow::Cow;

use rayon::prelude::*;
use rustc_data_structures::fx::FxHashMap;
use serde::{Deserialize, Serialize};
use serde_json::from_str;

#[derive(Serialize, Deserialize)]
struct Post<'a> {
    _id: Cow<'a,str>,
    title: Cow<'a,str>,
    // #[serde(skip_serializing)]
    tags: Vec<Cow<'a,str>>,
}

const NUM_TOP_ITEMS: usize = 5;

#[derive(Serialize)]
struct RelatedPosts<'a> {
    _id: &'a Cow<'a,str>,
    tags: &'a Vec<Cow<'a,str>>,
    related: Vec<&'a Post<'a>>,
}

#[derive(Eq)]
struct PostCount {
    post: u32,
    count: u32,
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
    let num_cpus = num_cpus::get_physical() ; // does IO to get num_cpus

    let start = Instant::now();

    let mut post_tags_map: FxHashMap<&str, Vec<u32>> = FxHashMap::default();

    for (i, post) in posts.iter().enumerate() {
        for tag in &post.tags {
            post_tags_map.entry(tag.as_ref()).or_default().push(i as u32);
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

                for tag in &post.tags {
                    if let Some(tag_posts) = post_tags_map.get(tag.as_ref()) {
                        for &other_post_idx in tag_posts {
                            tagged_post_count[other_post_idx as usize] += 1;
                        }
                    }
                }

                tagged_post_count[idx] = 0; // don't recommend the same post

                let top = least_n(
                    NUM_TOP_ITEMS,
                    tagged_post_count
                        .into_iter()
                        .enumerate()
                        .map(|(post, count)| PostCount { post:post as u32, count }),
                );
                let related = top.map(|it| &posts[it.post as usize]).collect();

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
        std::fs::write("../related_posts_rust_con.json", json_str).unwrap();
    });
}
