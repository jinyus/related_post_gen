package main

import (
	"fmt"
	"log"
	"os"
	"time"

	"github.com/emirpasic/gods/trees/binaryheap"
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

type PostWithSharedTags struct {
	Post       int
	SharedTags int
}

func main() {

	f, err := os.Open("../posts.json")
	if err != nil {
		log.Panicln(err)
	}

	var posts []Post
	err = json.NewDecoder(f).Decode(&posts)

	if err != nil {
		log.Panicln(err)
	}

	start := time.Now()

	tagMap := make(map[string][]int, 100)

	for i, post := range posts {
		for _, tag := range post.Tags {
			tagMap[tag] = append(tagMap[tag], i)
		}
	}

	allRelatedPosts := make([]RelatedPosts, 0, len(posts))

	taggedPostCount := make([]int, len(posts))

	for i, post := range posts {
		// luckily this is optimized to a memset
		for i := range taggedPostCount {
			taggedPostCount[i] = 0
		}

		for _, tag := range post.Tags {
			for _, otherPostIdx := range tagMap[tag] {
				if otherPostIdx != i {
					taggedPostCount[otherPostIdx]++
				}
			}
		}

		t5 := binaryheap.NewWith(PostComparator)

		for v, count := range taggedPostCount {
			if t5.Size() < 5 {
				t5.Push(PostWithSharedTags{Post: v, SharedTags: count})
			} else {
				if t, _ := t5.Peek(); t.(PostWithSharedTags).SharedTags < count {
					t5.Pop()
					t5.Push(PostWithSharedTags{Post: v, SharedTags: count})
				}

			}
		}

		num := min(5, t5.Size())
		topPosts := make([]*Post, num)

		for i := 0; i < num; i++ {
			if t, _ := t5.Pop(); t != nil {
				topPosts[i] = &posts[t.(PostWithSharedTags).Post]
			}
		}

		allRelatedPosts = append(allRelatedPosts, RelatedPosts{
			ID:      post.ID,
			Tags:    post.Tags,
			Related: topPosts,
		})
	}

	end := time.Now()

	fmt.Println("Processing time (w/o IO)", end.Sub(start))

	file, err := os.Create("../related_posts_go.json")

	if err != nil {
		log.Panicln(err)
	}

	err = json.NewEncoder(file).Encode(allRelatedPosts)

	if err != nil {
		log.Panicln(err)
	}

}

func PostComparator(a, b interface{}) int {
	aAsserted := a.(PostWithSharedTags)
	bAsserted := b.(PostWithSharedTags)

	if aAsserted.SharedTags > bAsserted.SharedTags {
		return 1

	} else if aAsserted.SharedTags < bAsserted.SharedTags {
		return -1

	} else {
		return 0
	}

}
