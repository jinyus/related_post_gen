use std::borrow::Cow;
use std::cell::RefCell;
use std::{collections::BinaryHeap, time::Instant};

use rayon::prelude::*;
use rustc_data_structures::fx::FxHashMap;
use serde::{Deserialize, Serialize};
use serde_json::from_str;

use mimalloc::MiMalloc;
#[global_allocator]
static GLOBAL: MiMalloc = MiMalloc;

type SString = smallstr::SmallString<[u8; 16]>;
// play around for the best size for your machine
#[allow(non_camel_case_types)]
type int_t = u32;

#[derive(Serialize, Deserialize)]
struct Post<'a> {
    _id: SString,
    #[serde(borrow)]
    title: Cow<'a, str>,
    // #[serde(skip_serializing)]
    tags: Vec<SString>,
}

const NUM_TOP_ITEMS: usize = 5;

#[derive(Serialize)]
struct RelatedPosts<'a> {
    _id: &'a str,
    tags: &'a [SString],
    related: Vec<&'a Post<'a>>,
}

#[derive(Eq)]
struct PostCount {
    post: int_t,
    count: int_t,
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
    let num_cpus = num_cpus::get_physical(); // does IO to get num_cpus

    let start = Instant::now();

    let mut post_tags_map: FxHashMap<&str, Vec<int_t>> = FxHashMap::default();

    for (i, post) in posts.iter().enumerate() {
        for tag in &post.tags {
            post_tags_map.entry(tag).or_default().push(i as int_t);
        }
    }

    rayon::ThreadPoolBuilder::new()
        .num_threads(num_cpus)
        .build_global()
        .unwrap();

    let related_posts: Vec<RelatedPosts<'_>> = posts
        .par_iter()
        .enumerate()
        .map(|(idx, post)| {
            thread_local! {
                static POST_COUNT: RefCell<Vec<int_t>> = panic!("!");
            }
            POST_COUNT.set(vec![0; posts.len()]);
            POST_COUNT.with_borrow_mut(|tagged_post_count| {
                let tagged_post_count = tagged_post_count.as_mut_slice();
                for tag in &post.tags {
                    if let Some(tag_posts) = post_tags_map.get::<str>(tag.as_ref()) {
                        for &other_post_idx in tag_posts {
                            tagged_post_count[other_post_idx as usize] += 1;
                        }
                    }
                }

                tagged_post_count[idx] = 0; // don't recommend the same post

                let top = least_n(
                    NUM_TOP_ITEMS,
                    tagged_post_count
                        .iter()
                        .enumerate()
                        .map(|(post, &count)| PostCount {
                            post: post as int_t,
                            count,
                        }),
                );
                let related = top.map(|it| &posts[it.post as usize]).collect();

                let rp = RelatedPosts {
                    _id: &post._id,
                    tags: &post.tags,
                    related,
                };
                tagged_post_count.fill(0);
                rp
            })
        })
        .collect();

    let end = Instant::now();

    print!(
        "Processing time (w/o IO): {:?}\n",
        end.duration_since(start)
    );

    let json_str = serde_json::to_string(&related_posts).unwrap();
    std::fs::write("../related_posts_rust_con.json", json_str).unwrap();
}
