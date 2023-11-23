use indexmap::IndexMap;
use serde::{Deserialize, Serialize};
use std::time::Instant;

#[derive(Serialize, Deserialize)]
#[repr(align(64))]
struct Post<'a> {
    #[serde(rename = "_id")]
    id: &'a str,
    title: &'a str,
    tags: Vec<&'a str>,
}

const NUM_TOP_ITEMS: usize = 5;

#[derive(Serialize)]
#[repr(align(64))]
struct RelatedPosts<'a> {
    #[serde(rename = "_id")]
    id: &'a str,
    tags: &'a [&'a str],
    related: [&'a Post<'a>; NUM_TOP_ITEMS],
}

fn main() {
    let json_str = std::fs::read_to_string("../posts.json").unwrap();
    let posts: Vec<Post> = serde_json::from_str(&json_str).unwrap();

    let start = Instant::now();

    let mut posts_by_tag = IndexMap::<&str, Vec<u32>>::default();
    let mut tags_by_post = vec![Vec::<usize>::default(); posts.len()];

    for (post_idx, post) in posts.iter().enumerate() {
        for tag in &post.tags {
            let tag_entry = posts_by_tag.entry(tag);
            let tag_index = tag_entry.index();
            tag_entry.or_default().push(post_idx as u32);
            tags_by_post[post_idx].push(tag_index);
        }
    }

    let mut tagged_post_count = vec![0u8; posts.len()];
    assert_eq!(0, tagged_post_count.as_ptr() as usize % 2); // keep this

    let related_posts: Vec<RelatedPosts<'_>> = tags_by_post
        .iter()
        .enumerate()
        .map(|(post_idx, tag_indices)| {
            for &tag_index in tag_indices {
                for other_post_idx in posts_by_tag.get_index(tag_index).unwrap().1 {
                    tagged_post_count[*other_post_idx as usize] += 1;
                }
            }
            tagged_post_count[post_idx] = 0; // don't recommend the same post

            let mut top5 = [(0u8, 0u32); NUM_TOP_ITEMS];
            let mut min_tags = 0u8;

            for (j, &count) in tagged_post_count.iter().enumerate() {
                if count > min_tags {
                    let pos = top5
                        .iter()
                        .rev()
                        .position(|t| t.0 > count)
                        .map_or(0, |p| NUM_TOP_ITEMS - p);

                    top5.copy_within(pos..NUM_TOP_ITEMS - 1, pos + 1);
                    top5[pos] = (count, j as u32);

                    min_tags = top5[NUM_TOP_ITEMS - 1].0;
                }
            }

            tagged_post_count.fill(0);

            let post = &posts[post_idx];
            // Convert indexes back to Post pointers
            let related = top5.map(|(_, index)| &posts[index as usize]);
            RelatedPosts {
                id: post.id,
                tags: &post.tags,
                related,
            }
        })
        .collect();

    let dur = start.elapsed();
    println!("Processing time (w/o IO): {dur:?}");

    // I have no explanation for why, but doing this before the print improves performance pretty
    // significantly (15%) when using slices in the hashmap key and RelatedPosts
    let json_str = serde_json::to_string(&related_posts).unwrap();

    std::fs::write("../related_posts_rust.json", json_str).unwrap();
}
