use std::{
    cmp::Reverse,
    collections::BinaryHeap,
    time::{Duration, Instant},
};

use rustc_data_structures::fx::FxHashMap;
use serde::{Deserialize, Serialize};
use serde_json::from_str;

use mimalloc::MiMalloc;
#[global_allocator]
static GLOBAL: MiMalloc = MiMalloc;

#[derive(Serialize, Deserialize)]
struct Post {
    _id: String,
    title: String,
    // #[serde(skip_serializing)]
    tags: Vec<String>,
}

#[derive(Serialize)]
struct RelatedPosts<'a> {
    _id: &'a String,
    tags: &'a Vec<String>,
    related: Vec<&'a Post>,
}

fn process(posts: &[Post]) -> Vec<RelatedPosts<'_>> {
    let mut post_tags_map: FxHashMap<&String, Vec<usize>> = FxHashMap::default();

    for (i, post) in posts.iter().enumerate() {
        for tag in &post.tags {
            post_tags_map.entry(tag).or_default().push(i);
        }
    }

    posts
        .iter()
        .enumerate()
        .map(|(idx, post)| {
            // faster than allocating outside the loop
            let mut tagged_post_count = vec![0; posts.len()];

            for tag in &post.tags {
                if let Some(tag_posts) = post_tags_map.get(tag) {
                    for &other_post_idx in tag_posts {
                        if idx != other_post_idx {
                            tagged_post_count[other_post_idx] += 1;
                        }
                    }
                }
            }

            let mut top_five = BinaryHeap::new();
            tagged_post_count
                .into_iter()
                .enumerate()
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

            RelatedPosts {
                _id: &post._id,
                tags: &post.tags,
                related: top_five.into_iter().map(|(_, post)| &posts[post]).collect(),
            }
        })
        .collect()
}

fn main() {
    let json_str = std::fs::read_to_string("../posts.json").unwrap();
    let posts: Vec<Post> = from_str(&json_str).unwrap();

    let start = Instant::now();
    let args: Vec<_> = std::env::args().collect();
    match &args[..] {
        [_progname] => {}
        [_progname, secs] => {
            let target = start + Duration::from_secs(secs.parse().unwrap());
            let mut i = 0;
            let mut now;
            loop {
                process(&posts);
                i += 1;
                now = Instant::now();
                if now > target {
                    break;
                }
            }
            println!("{:?} per iteration", (now - start) / i);
            return;
        }
        _ => panic!("invalid arguments"),
    }

    let related_posts = process(&posts);
    let end = Instant::now();

    print!(
        "Processing time (w/o IO): {:?}\n",
        end.duration_since(start)
    );

    let json_str = serde_json::to_string(&related_posts).unwrap();
    std::fs::write("../related_posts_rust.json", json_str).unwrap();
}
