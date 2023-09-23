use std::collections::BinaryHeap;
use std::sync::Mutex;
use std::{cmp::Reverse, sync::Arc};

use rayon::prelude::*;
use rustc_data_structures::stable_map::FxHashMap;
use serde::{Deserialize, Serialize};
use serde_json::from_str;

#[derive(Debug, Serialize, Deserialize, Clone, Eq, PartialEq, Hash)]
struct Post {
    _id: String,
    title: String,
    // #[serde(skip_serializing)]
    tags: Vec<String>,
}

#[derive(Debug, Serialize)]
struct RelatedPosts<'a> {
    _id: &'a str,
    tags: &'a [String],
    related: Vec<&'a Post>,
}

fn main() {
    let json_str = std::fs::read_to_string("../posts.json").unwrap();
    let posts: Vec<Post> = from_str(&json_str).unwrap();

    let mut posts_by_tag = FxHashMap::default();
    posts
        .iter()
        .enumerate()
        .flat_map(|(idx, post)| std::iter::repeat(idx).zip(post.tags.iter().map(|x| x.as_str())))
        .for_each(|(idx, tag)| {
            posts_by_tag.entry(tag).or_insert(vec![]).push(idx);
        });

    let related_posts = Arc::new(Mutex::new(Vec::with_capacity(posts.len())));

    posts.par_iter().enumerate().for_each(|(idx, post)| {
        let mut tagged_post_count = vec![0; posts.len()];
        tagged_post_count.fill(0);

        post.tags
            .iter()
            .map(|tag| posts_by_tag.get(tag.as_str()))
            .flatten()
            .flat_map(|x| x.iter())
            .filter(|&&tagged_post| tagged_post != idx)
            .for_each(|&tagged_post| {
                tagged_post_count[tagged_post] += 1;
            });

        let mut top_five = BinaryHeap::new();
        tagged_post_count
            .iter()
            .copied()
            .enumerate()
            .filter(|&(_, count)| count > 0)
            .for_each(|(post, count)| {
                if top_five.len() < 5 {
                    top_five.push((Reverse(count), post));
                } else {
                    let (Reverse(cnt), _) = top_five.peek().unwrap();
                    if count > *cnt {
                        top_five.pop();
                        top_five.push((Reverse(count), post));
                    }
                }
            });

        related_posts.lock().unwrap().push(RelatedPosts {
            _id: &post._id,
            tags: &post.tags,
            related: top_five.into_iter().map(|(_, post)| &posts[post]).collect(),
        });
    });

    // Write the result to a JSON file.
    let rel = related_posts.lock().unwrap();
    let json_str = serde_json::to_string(rel.as_slice()).unwrap();
    std::fs::write("../related_posts_rust.json", json_str).unwrap();
}
