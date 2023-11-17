package main

import (
	"encoding/json"
	"fmt"
	"os"
	"runtime"
	"time"
)

const topN = 5
const InitialTagMapSize = 100
const InitialPostsSliceCap = 0

type isize uint32

type Post struct {
	ID    string   `json:"_id"`
	Title string   `json:"title"`
	Tags  []string `json:"tags"`
}

type RelatedPosts struct {
	ID      string      `json:"_id"`
	Tags    *[]string   `json:"tags"`
	Related [topN]*Post `json:"related"`
}

type PostWithSharedTags struct {
	Post       isize
	SharedTags byte
}

func main() {
	file, _ := os.Open("../posts.json")
	var posts = make([]Post, 0, InitialPostsSliceCap)
	err := json.NewDecoder(file).Decode(&posts)
	if err != nil {
		fmt.Println(err)
	}

	runtime.GC()

	start := time.Now()

	postsLen := len(posts)
	// assumes that there are less than 100 tags
	tagMap := make(map[string][]isize, InitialTagMapSize)

	for i, post := range posts {
		for _, tag := range post.Tags {
			tagMap[tag] = append(tagMap[tag], isize(i))
		}
	}

	allRelatedPosts := make([]RelatedPosts, postsLen)
	taggedPostCount := make([]byte, postsLen)

	for i := range posts {
		for j := range taggedPostCount {
			taggedPostCount[j] = 0
		}

		// Count the number of tags shared between posts
		for _, tag := range posts[i].Tags {
			for _, otherPostIdx := range tagMap[tag] {
				taggedPostCount[otherPostIdx]++
			}
		}
		taggedPostCount[i] = 0 // Don't count self
		top5 := [topN * 2]int{}
		minTags := byte(0)

		for j, count := range taggedPostCount {
			if count > minTags {
				upperBound := (topN - 2) * 2

				countInt := int(count)
				for upperBound >= 0 && countInt > top5[upperBound] {
					top5[upperBound+2] = top5[upperBound]
					top5[upperBound+3] = top5[upperBound+1]
					upperBound -= 2
				}

				insertPos := upperBound + 2
				top5[insertPos] = countInt
				top5[insertPos+1] = j

				minTags = byte(top5[topN*2-2])
			}
		}

		// Convert indexes back to Post pointers
		topPosts := [topN]*Post{}

		for j := 0; j < topN; j += 1 {
			index := top5[j*2+1]
			topPosts[j] = &posts[index]
		}

		allRelatedPosts[i] = RelatedPosts{
			ID:      posts[i].ID,
			Tags:    &posts[i].Tags,
			Related: topPosts,
		}
	}

	fmt.Println("Processing time (w/o IO):", time.Since(start))
	file, _ = os.Create("../related_posts_go.json")
	_ = json.NewEncoder(file).Encode(allRelatedPosts)
}
