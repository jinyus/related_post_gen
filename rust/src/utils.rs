use rustc_data_structures::fx::FxHasher as Hasher;
use std::collections::HashMap;
use std::hash::BuildHasherDefault;

use crate::{
    least::IteratorExt,
    types::{Post, PostCount},
};

type HashBuilder = BuildHasherDefault<Hasher>;

pub fn get_post_tags_map<'a>(posts: &'a [Post]) -> HashMap<&'a str, Vec<u32>, HashBuilder> {
    let hasher = HashBuilder::default();
    let mut post_tags_map: HashMap<&str, Vec<u32>, HashBuilder> =
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

pub fn fill_post_count(
    post_count: &mut [u8],
    post: &Post,
    tag_map: &HashMap<&str, Vec<u32>, HashBuilder>,
) {
    post.tags
        .iter()
        .filter_map(|tag| tag_map.get(tag))
        .flat_map(|it| it.into_iter())
        .for_each(|&idx| post_count[idx as usize] += 1);
}

pub fn get_related<'a>(n: usize, post_count: &[u8], posts: &'a [Post]) -> Vec<&'a Post<'a>> {
    post_count
        .iter()
        .enumerate()
        .map(|(idx, &count)| PostCount {
            post: idx as u32,
            count,
        })
        .least_n(n)
        .map(|it| &posts[it.post as usize])
        .collect()
}
