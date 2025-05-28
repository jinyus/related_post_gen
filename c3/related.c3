module related;

import std::collections;
import std::core::mem;
import std::io;
import std::time::clock;

struct Post {
	String _id;
	String title;
	Tag[] tags;
}
alias Posts = Post[];

alias PostIdx = uint;
alias PostIdxList = List{PostIdx};
alias Tag = String;
alias Tag2PostIdxList = HashMap{Tag, PostIdxList};

struct TopPosts {
	String* _id;
	Tag[]* tags;
	Post*[] related;
}
struct Score {
	char s;
	uint pos;
}

fn char is_top(char m, char[] score) @inline {
	char x;
	foreach (s : score) {
		// TODO is there a compiler builtin for bool_to_int?
		x |= (s > m) ? 1 : 0;
	}
	return x;
}

fn void get_top(uint b, char[] score, char* min, Score[] t5) @inline {
	uint i = b;
	int score_idx;
	while(score_idx < score.len) {
		char s = score[score_idx];
		if (s > *min) {
			ichar u = 3;
			while (u >= 0 && s > t5[u].s) {
				t5[u + 1] = t5[u];
				u -= 1;
			}
			t5[u + 1] = (Score){ .s = s, .pos = i };
			*min = t5[4].s;
		}
		i += 1;
		score_idx += 1;
	}
}

fn void top5(Post*[] related, char[] score, Post[] ps) @inline {
	Score s = { .s = 0, .pos = 0 };
	Score[5] t5 = { s, s, s, s, s };
	char min_tags;

	uint b;
	uint cache_line = 64;
	while (b < score.len) {
		uint e = min(b + cache_line, (uint)score.len);
		char[] chunk = score[b..e - 1];
		if (is_top(min_tags, chunk) > 0) {
			get_top(b, chunk, &min_tags, t5[0..]);
		}
		b += cache_line;
	}
	foreach (i, t : t5) {
		related[i] = &ps[t.pos];
	}
}

fn void main() {
	String input = (String)file::load(mem, "../posts.json")!!;
	Post[] posts = json::parse_posts(input)!!;

	Clock start = clock::now();

	Tag2PostIdxList tag2postidxs;
	foreach (post_idx, post : posts) {
		foreach (tag : post.tags) {
			// TODO hashmap doesn't have the API
			// that would remove extra hash comparisons
			if (!tag2postidxs.has_key(tag)) {
				tag2postidxs.set(tag, {});
			}
			tag2postidxs.get_ref(tag)!!.push((uint)post_idx);
		}
	}

	TopPosts[] op = mem::new_array(TopPosts, posts.len);
	Post*[] rl = mem::new_array(Post*, posts.len * 5);

	char[] tagged_post_count = mem::new_array(char, posts.len);

	for (int post_idx = 0; post_idx < posts.len; post_idx += 1) {
		// reset tagged_post_count
		mem::zero_volatile(tagged_post_count);

		foreach (tag : posts[post_idx].tags) {
			foreach (tagged_post_idx : tag2postidxs.get(tag)!!) {
				tagged_post_count[tagged_post_idx] += 1;
			}
		}

		tagged_post_count[post_idx] = 0; // Don't count self

		Post*[] related = rl[post_idx * 5 : 5];
		top5(related, tagged_post_count, posts);
		op[post_idx] = { ._id = &posts[post_idx]._id, .tags = &posts[post_idx].tags, .related = related };
	}
	NanoDuration end = start.to_now();
	io::printf("Processing time (w/o IO): %sms\n", end.to_ms());

	File op_file = file::open("../related_posts_c3.json", "wb")!!;
	io::fprint(&op_file, op.to_json())!!;
}
