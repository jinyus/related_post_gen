// Using std::collections::object to serialize json would require
// converting into objects; instead, I just directly wrote the json.
// It's ugly copy-paste one-time-use code.
module related::json;

import std::collections;
import std::encoding::json;
import std::io;

// Json string is parsed into an Object, all parsed artifacts (objects and strings) are allocated
// to alloc parameter.
//
// `Post` will reference strings allocated by json::parse_string. However, the `List`s used to
// build the `Post[]` are allocated temporarily, then the slice copied to `alloc`. Optimizer is
// happier with this than having an array_view into a `List`.
fn Post[]? parse_posts(Allocator alloc, String input) {
	@pool() {
		List{Post} posts;
		posts.init(tmem);
		// Allocs objects and strings
		Object* posts_arr = json::parse_string(alloc, input)!;
		foreach (i, post_obj : posts_arr.array) {
			@pool() {
				List{String} tags;
				tags.init(tmem);
				foreach (tag_obj : post_obj.get("tags")!.array) {
					tags.push(tag_obj.s);
				}
				posts.push((Post){
					._id = post_obj.get_string("_id")!,
					.title = post_obj.get_string("title")!,
					.tags = tags.to_array(alloc),
				});
			};
		}
		return posts.to_array(alloc);
	};
}

fn String Post.to_json(post) {
	DString out;
	out.append("{");

	// _id
	out.append("\"_id\":\"");
	out.append(post._id);
	out.append("\",");

	// title
	out.append("\"title\":\"");
	out.append(post.title);
	out.append("\",");

	// tags
	out.append("\"tags\":[");
	foreach(idx, tag : post.tags) {
		if (idx > 0) {
			out.append(",");
		}
		out.append("\"");
		out.append(tag);
		out.append("\"");
	}
	out.append("]");
	out.append("}");
	return out.str_view();
}

fn String TopPosts.to_json(topposts) {
	DString out;
	out.append("{");

	// _id
	out.append("\"_id\":\"");
	out.append(*topposts._id);
	out.append("\",");

	// tags
	out.append("\"tags\":[");
	foreach(idx, tag : topposts.tags) {
		if (idx > 0) {
			out.append(",");
		}
		out.append("\"");
		out.append(tag);
		out.append("\"");
	}
	out.append("],");

	// related
	out.append("\"related\":[");
	foreach(idx, related_post : topposts.related) {
		if (idx > 0) {
			out.append(",");
		}
		out.append(related_post.to_json());
	}
	out.append("]");

	// finish
	out.append("}");
	return out.str_view();
}

fn String TopPosts[].to_json(topposts_list) {
	DString out;
	out.append("[\n");
	foreach(idx, topposts : topposts_list) {
		if (idx > 0) {
			out.append(",\n");
		}
		out.append(topposts.to_json());
	}
	out.append("\n]");
	return out.str_view();
}
