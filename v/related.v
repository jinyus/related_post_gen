import json
import os
import time

struct Post {
	id    string   [json: '_id']
	title string   [json: 'title']
	tags  []string [json: 'tags']
}

struct PostWithSharedTags {
	post        int
	shared_tags int
}

struct RelatedPosts {
	id      string   [json: '_id']
	tags    []string
	related []Post
}

fn main() {
	json_str := os.read_file('../posts.json') or {
		eprintln('Failed to read file ${err}')
		return
	}
	posts := json.decode([]Post, json_str) or {
		eprintln('Failed to parse json ${err}')
		return
	}

	start := time.now()

	mut tag_map := map[string][]int{}
	for i, post in posts {
		for tag in post.tags {
			tag_map[tag] << i
		}
	}

	mut all_related_posts := []RelatedPosts{cap: posts.len}
	mut tagged_post_count := []int{len: posts.len}

	for i, post in posts {
		for j in 0 .. tagged_post_count.len {
			tagged_post_count[j] = 0
		}

		for tag in post.tags {
			for post_index in tag_map[tag] {
				tagged_post_count[post_index] += 1
			}
		}

		tagged_post_count[i] = 0

		mut top5 := []PostWithSharedTags{len: 5, cap: 6}
		mut min_tags := 0

		// custom priority queue
		for idx, count in tagged_post_count {
			if count > min_tags {
				mut pos := 4

				for pos >= 0 && top5[pos].shared_tags < count {
					pos -= 1
				}

				pos += 1

				if pos < 5 {
					top5.insert(pos, PostWithSharedTags{ post: idx, shared_tags: count })

					if top5.len > 5 {
						top5.pop()
					}

					min_tags = top5[4].shared_tags
				}
			}
		}

		mut top_posts := []Post{cap: 5}

		for p in top5 {
			top_posts << posts[p.post]
		}

		all_related_posts << RelatedPosts{
			id: post.id
			tags: post.tags
			related: top_posts
		}
	}

	end := time.now()

	println('Processing time (w/o IO): ${end - start}')

	json_str_out := json.encode(all_related_posts)

	os.write_file('../related_posts_v.json', json_str_out) or {
		eprintln('Failed to write file ${err}')
		return
	}
}
