use std::cell::RefCell;
use std::hint;
use std::time::Instant;

use rayon::prelude::*;

mod least;
mod types;
mod utils;

use types::{Post, RelatedPosts};

#[global_allocator]
static GLOBAL: mimalloc::MiMalloc = mimalloc::MiMalloc;

pub const NUM_TOP_ITEMS: usize = 5;

fn main() {
    // setup the runtime
    let num_cpus = num_cpus::get_physical(); // does IO to get num_cpus
    rayon::ThreadPoolBuilder::new()
        .num_threads(num_cpus)
        .build_global()
        .unwrap();

    // setup the input
    let json_str = std::fs::read_to_string("../posts.json").unwrap();
    let posts: Vec<Post> = serde_json::from_str(&json_str).unwrap();

    // time the algorithm
    let start = hint::black_box(Instant::now());
    let related_posts = get_related(&posts);
    let end = hint::black_box(Instant::now());

    println!("Processing time (w/o IO): {:?}", end.duration_since(start));

    let json_str = serde_json::to_string(&related_posts).unwrap();
    std::fs::write("../related_posts_rust_con.json", json_str).unwrap();
}

fn get_related<'a>(posts: &'a [Post]) -> Vec<RelatedPosts<'a>> {
    thread_local! {
        static POST_COUNT: RefCell<Vec<u8>> = panic!("!");
    }
    rayon::broadcast(|_| {
        POST_COUNT.set(vec![0; posts.len()]);
    });

    let post_tags_map = utils::get_post_tags_map(posts);

    posts
        .par_iter()
        .enumerate()
        .map(|(idx, post)| {
            POST_COUNT.with_borrow_mut(|tagged_post_count| {
                for tag in &post.tags {
                    if let Some(tag_posts) = post_tags_map.get(tag) {
                        for &other_post_idx in tag_posts {
                            tagged_post_count[other_post_idx as usize] += 1;
                        }
                    }
                }
                tagged_post_count[idx] = 0;

                let rp = RelatedPosts {
                    id: post.id,
                    tags: &post.tags,
                    related: utils::get_related(tagged_post_count, posts),
                };
                tagged_post_count.fill(0);
                rp
            })
        })
        .collect()
}
