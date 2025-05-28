package main

import "core:strings"

// marshalling doesn't work with pointers
write_json :: proc(topposts_list: []TopPosts) -> string {
	out := strings.builder_make()
	strings.write_string(&out, "[\n")
	if len(topposts_list) > 0 {
		strings.write_string(&out, write_json_topposts(topposts_list[0]))
	}
	if len(topposts_list) > 1 {
		for topposts in (topposts_list[1:]) {
			strings.write_string(&out, ",\n")
			strings.write_string(&out, write_json_topposts(topposts))
		}
	}
	strings.write_string(&out, "\n]")
	return strings.to_string(out)
}

write_json_post :: proc(post: Post) -> string {
	out := strings.builder_make()
	strings.write_string(&out, "{")

	// _id
	strings.write_string(&out, "\"_id\":\"")
	strings.write_string(&out, post.id)
	strings.write_string(&out, "\",")

	// title
	strings.write_string(&out, "\"title\":\"")
	strings.write_string(&out, post.title)
	strings.write_string(&out, "\",")

	// tags
	strings.write_string(&out, "\"tags\":[")
	if len(post.tags) > 0 {
		strings.write_string(&out, "\"")
		strings.write_string(&out, post.tags[0])
		strings.write_string(&out, "\"")
	}
	if len(post.tags) > 1 {
		for tag in (post.tags[1:]) {
			strings.write_string(&out, ",")
			strings.write_string(&out, "\"")
			strings.write_string(&out, tag)
			strings.write_string(&out, "\"")
		}
	}

	strings.write_string(&out, "]")
	strings.write_string(&out, "}")
	return strings.to_string(out)
}

write_json_topposts :: proc(topposts: TopPosts) -> string {
	out := strings.builder_make()
	strings.write_string(&out, "{")

	// _id
	strings.write_string(&out, "\"_id\":\"")
	strings.write_string(&out, topposts.id^)
	strings.write_string(&out, "\",")

	// tags
	strings.write_string(&out, "\"tags\":[")
	if len(topposts.tags) > 0 {
		strings.write_string(&out, "\"")
		strings.write_string(&out, topposts.tags[0])
		strings.write_string(&out, "\"")
	}
	if len(topposts.tags) > 1 {
		for tag in (topposts.tags^)[1:] {
			strings.write_string(&out, ",")
			strings.write_string(&out, "\"")
			strings.write_string(&out, tag)
			strings.write_string(&out, "\"")
		}
	}
	strings.write_string(&out, "],")

	// related
	strings.write_string(&out, "\"related\":[")
	if len(topposts.related) > 0 {
		strings.write_string(&out, write_json_post(topposts.related[0]^))
	}
	if len(topposts.related) > 1 {
		for related_post in topposts.related[1:] {
			strings.write_string(&out, ",")
			strings.write_string(&out, write_json_post(related_post^))
		}
	}
	strings.write_string(&out, "]")

	// finish
	strings.write_string(&out, "}")
	return strings.to_string(out)
}
