use rustc_data_structures::fx::FxHasher;
use std::collections::HashMap;
use std::hash::BuildHasherDefault;

use crate::{
    types::{Post},
};

type FxHashBuilder = BuildHasherDefault<FxHasher>;

pub fn get_post_tags_map<'a>(posts: &'a [Post]) -> HashMap<&'a str, Vec<u32>, FxHashBuilder> {
    let hasher = FxHashBuilder::default();
    let mut post_tags_map: HashMap<&str, Vec<u32>, FxHashBuilder> =
        HashMap::with_capacity_and_hasher(posts.len(), hasher);

    for (i, post) in posts.iter().enumerate() {
        for tag in &post.tags {
            post_tags_map
                .entry(tag)
                .or_insert_with(|| Vec::with_capacity(posts.len()))
                .push(i as u32);
        }
    }

    post_tags_map
}

#[allow(dead_code)]
// for some reason this makes things much slower
// than it inline, so not used
pub fn fill_post_count(
    post_count: &mut [u8],
    post: &Post,
    tag_map: &HashMap<&str, Vec<u32>, FxHashBuilder>,
) {
    for tag in &post.tags {
        if let Some(tag_posts) = tag_map.get(tag) {
            for &other_post_idx in tag_posts {
                post_count[other_post_idx as usize] += 1;
            }
        }
    }
}