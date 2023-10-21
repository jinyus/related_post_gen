use std::{hint, time::Instant};

use bumpalo::collections::Vec as BVec;
use bumpalo::Bump;

mod least;
mod types;
mod utils;

use types::{Post, RelatedPosts};

#[global_allocator]
static GLOBAL: mimalloc::MiMalloc = mimalloc::MiMalloc;

const NUM_TOP_ITEMS: usize = 5;

fn main() {
    let json_str = std::fs::read_to_string("../posts.json").unwrap();
    let posts: Vec<Post> = serde_json::from_str(&json_str).unwrap();

    let start = hint::black_box(Instant::now());
    let related_posts = get_related(&posts);
    let end = hint::black_box(Instant::now());

    println!("Processing time (w/o IO): {:?}", end.duration_since(start));

    let json_str = serde_json::to_string(&related_posts).unwrap();
    std::fs::write("../related_posts_rust.json", json_str).unwrap();
}

fn get_related<'a>(posts: &'a [Post]) -> Vec<RelatedPosts<'a>> {
    let cap = (posts.len() * std::mem::size_of::<u8>()).next_power_of_two();
    let arena = Bump::with_capacity(cap);

    let post_tags_map = utils::get_post_tags_map(&posts);

    posts
        .iter()
        .enumerate()
        .map(|(post_idx, post)| {
            let mut tagged_post_count: BVec<u8> = BVec::with_capacity_in(posts.len(), &arena);
            tagged_post_count.resize(posts.len(), 0);

            utils::fill_post_count(&mut tagged_post_count, post, &post_tags_map);
            tagged_post_count[post_idx] = 0; // don't recommend the same post

            RelatedPosts {
                id: post.id,
                tags: &post.tags,
                related: utils::get_related(NUM_TOP_ITEMS, &tagged_post_count, &posts),
            }
        })
        .collect()
}
