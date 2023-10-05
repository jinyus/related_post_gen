package main

import (
	"fmt"
	"log"
	"os"
	"time"

	"github.com/goccy/go-json"
)

type Post struct {
	ID    string   `json:"_id"`
	Title string   `json:"title"`
	Tags  []string `json:"tags"`
}

type RelatedPosts struct {
	ID      string   `json:"_id"`
	Tags    []string `json:"tags"`
	Related []*Post  `json:"related"`
}

func main() {
	file, err := os.Open("../posts.json")
	if err != nil {
		log.Panicln(err)
	}

	var posts []Post
	err = json.NewDecoder(file).Decode(&posts)
	if err != nil {
		log.Panicln(err)
	}

	start := time.Now()

	// assumes that there are less than 100 tags
	tagMap := make(map[string][]int, 100)

	for i, post := range posts {
		for _, tag := range post.Tags {
			tagMap[tag] = append(tagMap[tag], i)
		}
	}

	allRelatedPosts := make([]RelatedPosts, 0, len(posts))
	taggedPostCount := make([]int, len(posts))

	for i := range posts {
		// optimized to a memset
		for j := range taggedPostCount {
			taggedPostCount[j] = 0
		}

		for _, tag := range posts[i].Tags {
			for _, otherPostIdx := range tagMap[tag] {
				taggedPostCount[otherPostIdx]++
			}
		}

		taggedPostCount[i] = 0 // Don't count self

		topN := 5
		top5 := [10]int{} // flattened list of (count, id)
		minTags := 0

		for j, count := range taggedPostCount {
			if count > minTags {

				upperBound := (topN - 2) * 2

				for upperBound >= 0 && count > top5[upperBound] {
					top5[upperBound+2] = top5[upperBound]
					top5[upperBound+3] = top5[upperBound+1]
					upperBound -= 2
				}

				insertPos := upperBound + 2
				top5[insertPos] = count
				top5[insertPos+1] = j

				minTags = top5[topN*2-2]
			}
		}

		topPosts := make([]*Post, 0, 5)

		// Convert indexes back to Post pointers
		for i := 1; i < 10; i += 2 {
			topPosts = append(topPosts, &posts[top5[i]])
		}

		allRelatedPosts = append(allRelatedPosts, RelatedPosts{
			ID:      posts[i].ID,
			Tags:    posts[i].Tags,
			Related: topPosts,
		})
	}

	end := time.Now()

	fmt.Println("Processing time (w/o IO):", end.Sub(start))

	file, err = os.Create("../related_posts_go.json")
	if err != nil {
		log.Panicln(err)
	}

	err = json.NewEncoder(file).Encode(allRelatedPosts)
	if err != nil {
		log.Panicln(err)
	}
}
