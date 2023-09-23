package main

import (
	"encoding/json"
	"log"
	"os"
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

type PostWithSharedTags struct {
	Post       int
	SharedTags int
}

func main() {

	f, err := os.Open("../posts.json")

	if err != nil {
		log.Fatalln(err)
	}

	var posts []Post

	err = json.NewDecoder(f).Decode(&posts)

	if err != nil {
		log.Fatalln(err)
	}

	tagMap := make(map[string][]int)

	for i := range posts {
		for _, tag := range posts[i].Tags {
			tagMap[tag] = append(tagMap[tag], i)
		}
	}

	allRelatedPosts := make([]RelatedPosts, len(posts))

	relatedPosts := make(map[int]int, len(posts))

	h := PostHeap{}

	for i, post := range posts {

		for _, tag := range post.Tags {
			for _, relatedPost := range tagMap[tag] {
				if relatedPost != i {
					relatedPosts[relatedPost]++
				}
			}
		}

		for v, count := range relatedPosts {
			h.Push(PostWithSharedTags{Post: v, SharedTags: count})
		}

		topPosts := make([]*Post, 5)

		for i := 0; i < 5; i++ {
			topPosts[i] = &posts[h[i].Post]
		}

		allRelatedPosts[i] = RelatedPosts{
			ID:      post.ID,
			Tags:    post.Tags,
			Related: topPosts,
		}

		clear(relatedPosts)
		clear(h)
	}

	file, err := os.Create("../related_posts_go.json")

	if err != nil {
		log.Fatalln(err)
	}

	err = json.NewEncoder(file).Encode(allRelatedPosts)

	if err != nil {
		log.Fatalln(err)
	}
}

func PostComparator(a, b PostWithSharedTags) bool {

	if a.SharedTags > b.SharedTags {
		return true

	} else if a.SharedTags < b.SharedTags {
		return false

	} else {
		return false
	}

}
