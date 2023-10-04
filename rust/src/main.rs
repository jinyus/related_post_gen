use std::{collections::BinaryHeap, time::Instant};
use std::borrow::Cow;

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

    let mut post_tags_map: FxHashMap<&Cow<'_,str>, Vec<u32>> = FxHashMap::default();

    for (post_idx, post) in posts.iter().enumerate() {
        for tag in post.tags.iter() {
            post_tags_map.entry(tag).or_default().push(post_idx as u32);
        }
    }

    let related_posts: Vec<RelatedPosts<'_>> = posts
        .iter()
        .enumerate()
        .map(|(post_idx, post)| {
            // faster than allocating outside the loop
            let mut tagged_post_count = vec![0u32; posts.len()];
            // tagged_post_count.fill(0u32);
            // tagged_post_count.clear();
            // tagged_post_count.extend(std::iter::repeat(0).take(0));

            for tag in post.tags.iter() {
                if let Some(tag_posts) = post_tags_map.get(tag) {
                    for other_post_idx in tag_posts.iter() {
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
                    .map(|(post, &count)| PostCount { post: post as u32, count }),
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
    std::fs::write("../related_posts_rust.json", json_str).unwrap();
}
