package main

import "core:encoding/json"
import "core:fmt"
import "core:os"
import "core:time"
// import "core:slice"

Post :: struct {
	ID:    string `json:"_id"`,
	Title: string `json:"title"`,
	Tags:  []string `json:"tags"`,
}

RelatedPosts :: struct {
	ID:      string `json:"_id"`,
	Tags:    []string `json:"tags"`,
	Related: [5]Post `json:"related"`,
}

PostWithSharedTags :: struct {
	Post:       int,
	SharedTags: int,
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

	tagMap := make(map[string][dynamic]int)

	for post, i in posts {
		for tag in post.Tags {
			_, ok := tagMap[tag]

			if !ok {
				tagMap[tag] = make([dynamic]int)
			}

			append_elem(&tagMap[tag], i)
		}
	}


	postCount := len(posts)
	allRelatedPosts := make([]RelatedPosts, postCount)

	taggedPostCount := make([]int, postCount)

	for post, i in posts {

		for item, j in taggedPostCount {
			taggedPostCount[j] = 0
		}

		for tag in post.Tags {
			for item in tagMap[tag] {
				if item != i {
					taggedPostCount[item] += 1
				}
			}
		}

		top5 := [5]PostWithSharedTags{}
		minTags := 0

		for count, pIdx in taggedPostCount {
			if count > minTags {

				pos := 4

				for pos >= 0 && top5[pos].SharedTags < count {
					pos -= 1
				}

				pos += 1

				if pos < 4 {
					copy(top5[pos + 1:], top5[pos:4])
				}

				if pos < 5 {
					top5[pos] = PostWithSharedTags{pIdx, count}
					minTags = top5[4].SharedTags
				}
			}
		}

		topPosts := [5]Post{}

		for val, i in top5 {
			topPosts[i] = posts[val.Post]
		}


		allRelatedPosts[i] = RelatedPosts{post.ID, post.Tags, topPosts}
	}

	fmt.println("Processing time (w/o IO): ", time.since(start))

	jsonStr, err3 := json.marshal(allRelatedPosts)

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
