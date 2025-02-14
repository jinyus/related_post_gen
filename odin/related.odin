package main

import "core:encoding/json"
import "core:fmt"
import "core:os"
import "core:slice"
import "core:time"

Post :: struct {
	id:    string `json:"_id"`,
	title: string,
	tags:  []Tag,
}
Posts :: []Post

PostIdx :: uint
PostIdxList :: [dynamic]PostIdx
Tag :: string
Tag2PostIdxList :: map[Tag]PostIdxList

TopPosts :: struct {
	id:      ^string `json:"_id"`,
	tags:    ^[]Tag,
	related: []^Post,
}
Score :: struct {
	s:   u8,
	pos: u32,
}

is_top :: #force_inline proc(m: u8, score: []u8) -> u8 {
	x: u8
	for s in score {
		// TODO is there a compiler builtin for bool_to_int?
		x |= (s > m) ? 1 : 0
	}
	return x
}

get_top :: #force_inline proc(b: u32, score: []u8, min: ^u8, t5: []Score) {
	i := b
	score_idx: uint
	for score_idx < cast(uint)len(score) {
		s := score[score_idx]
		if s > min^ {
			u := 3
			for (u >= 0 && s > t5[u].s) {
				t5[u + 1] = t5[u]
				u -= 1
			}
			t5[u + 1] = Score {
				s   = s,
				pos = i,
			}
			min^ = t5[4].s
		}
		i += 1
		score_idx += 1
	}
}

top5 :: #force_inline proc(related: []^Post, score: []u8, ps: []Post) {
	s := Score {
		s   = 0,
		pos = 0,
	}
	t5: [5]Score = {s, s, s, s, s}
	min_tags: u8

	b: uint
	cache_line: uint = 64
	for b < len(score) {
		e := min(b + cache_line, cast(uint)len(score))
		chunk := score[b:e]
		if is_top(min_tags, chunk) > 0 {
			get_top(u32(b), chunk, &min_tags, t5[0:])
		}
		b += cache_line
	}
	for t, i in t5 {
		related[i] = &ps[t.pos]
	}
}

main :: proc() {
	file, ok := os.read_entire_file_from_filename("../posts.json")

	if !ok {
		fmt.println("failed to read posts.json")
		return
	}

	posts: []Post

	err := json.unmarshal(file, &posts)
	if err != nil {
		fmt.println(err)
		return
	}

	start := time.now()

	tag2postidxs: Tag2PostIdxList
	for post, post_idx in posts {
		for tag in post.tags {
			// TODO hashmap doesn't have the API
			// that would remove extra hash comparisons
			if !(tag in tag2postidxs) {
				tag2postidxs[tag] = {}
			}
			post_idxs := &tag2postidxs[tag]
			append(post_idxs, uint(post_idx))
		}
	}

	op := make([]TopPosts, len(posts))
	rl := make([]^Post, len(posts) * 5)

	tagged_post_count := make([]u8, len(posts))

	for post_idx := 0; post_idx < len(posts); post_idx += 1 {
		// reset tagged_post_count
		slice.zero(tagged_post_count)

		for tag in posts[post_idx].tags {
			for tagged_post_idx in tag2postidxs[tag] {
				tagged_post_count[tagged_post_idx] += 1
			}
		}

		tagged_post_count[post_idx] = 0 // Don't count self

		related := rl[post_idx * 5:post_idx * 5 + 5]
		top5(related, tagged_post_count, posts)
		op[post_idx] = {
			id      = &posts[post_idx].id,
			tags    = &posts[post_idx].tags,
			related = related,
		}
	}

	fmt.println("Processing time (w/o IO): ", time.since(start))

	out_str := transmute([]u8)write_json(op)

	ok = os.write_entire_file("../related_posts_odin.json", out_str)
	if !ok {
		fmt.println("failed to write related_posts.json")
		return
	}
}
