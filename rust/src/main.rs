use serde::{Deserialize, Serialize};
use serde_json::from_str;
// use std::collections::HashMap;
use rustc_data_structures::fx::FxHashMap;

#[derive(Debug, Serialize, Deserialize, Clone, Eq, PartialEq, Hash)]
struct Post {
    _id: String,
    title: String,
    // #[serde(skip_serializing)]
    tags: Vec<String>,
}

#[derive(Debug, Serialize)]
struct RelatedPosts<'a> {
    _id: &'a String,
    tags: &'a Vec<String>,
    related: Vec<&'a Post>,
}

fn main() {
    let json_str = std::fs::read_to_string("../posts.json").unwrap();
    let posts: Vec<Post> = from_str(&json_str).unwrap();

    let mut post_tags_map: FxHashMap<&String, Vec<&Post>> = FxHashMap::default();

    for post in &posts {
        for tag in &post.tags {
            post_tags_map.entry(tag).or_default().push(post);
        }
    }

    let mut related_posts: Vec<RelatedPosts> = Vec::with_capacity(posts.len());

    let mut related_posts_map: FxHashMap<&Post, i8> = FxHashMap::default();
    // related_posts_map.reserve(posts.len());
    let mut related_posts_for_post: Vec<(&Post, i8)> = Vec::with_capacity(posts.len());

    for post in posts.iter() {
        for tag in &post.tags {
            if let Some(tag_posts) = post_tags_map.get(tag) {
                for other_post in tag_posts {
                    if post._id != other_post._id {
                        *related_posts_map.entry(other_post).or_default() += 1;
                    }
                }
            }
        }

        // let mut related_posts_for_post: Vec<_> = related_posts_map.drain().collect();
        related_posts_for_post.clear();
        related_posts_for_post.extend(related_posts_map.drain());

        // related_videos_for_video.sort_unstable_by_key(|&(_, count)| -count);
        related_posts_for_post.sort_unstable_by(|post_a, post_b| post_b.1.cmp(&post_a.1));

        related_posts_for_post.truncate(5);

        related_posts.push(RelatedPosts {
            _id: &post._id,
            tags: &post.tags,
            related: related_posts_for_post
                .drain(0..)
                .map(|(post, _)| post)
                .collect(),
        });
    }

    let json_str = serde_json::to_string(&related_posts).unwrap();
    std::fs::write("../related_posts_rust.json", json_str).unwrap();
}
