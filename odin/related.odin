package main

import "core:encoding/json"
import "core:fmt"
import "core:os"
import "core:time"
// import "core:slice"

topN :: 5

Post :: struct {
	id:    string `json:"_id"`,
	title: string,
	tags:  []string,
}

RelatedPosts :: struct {
	id:      string `json:"_id"`,
	tags:    []string,

	// marshal/unmarshal doesn't work with pointers
	related: [topN]Post,
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

	tag_map := make(map[string][dynamic]int)

	for post, i in posts {
		for tag in post.tags {
			_, ok := tag_map[tag]

			if !ok {
				tag_map[tag] = make([dynamic]int)
			}

			append_elem(&tag_map[tag], i)
		}
	}


	post_count := len(posts)
	all_related_posts := make([]RelatedPosts, post_count)

	tagged_post_count := make([]int, post_count)

	for post, i in posts {

		for item, j in tagged_post_count {
			tagged_post_count[j] = 0
		}

		for tag in post.tags {
			for item in tag_map[tag] {
				tagged_post_count[item] += 1
			}
		}

		tagged_post_count[i] = 0 // don't count self

		top5 := [topN * 2]int{}
		min_tags := 0

		for count, pIdx in tagged_post_count {
			if count > min_tags {

				upperBound := (topN - 2) * 2

				for upperBound >= 0 && count > top5[upperBound] {
					top5[upperBound+2] = top5[upperBound]
					top5[upperBound+3] = top5[upperBound+1]
					upperBound -= 2
				}

				insertPos := upperBound + 2
				top5[insertPos] = count
				top5[insertPos+1] = pIdx

				min_tags = top5[topN*2-2]
		}
		}

		top_posts := [topN]Post{}

		for i := 1; i < 10; i += 2 {
			top_posts[i/2] = posts[top5[i]]
		}


		all_related_posts[i] = RelatedPosts{post.id, post.tags, top_posts}
	}

	fmt.println("Processing time (w/o IO): ", time.since(start))

	jsonStr, err3 := json.marshal(all_related_posts)

	if err3 != nil {
		fmt.println("Error marshaling json: ", err3)
		return
	}

	ok = os.write_entire_file("../related_posts_odin.json", jsonStr)
	if !ok {
		fmt.println("failed to write related_posts.json")
		return
	}
}
