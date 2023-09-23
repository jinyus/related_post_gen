package main

import (
	"encoding/json"
	"log"
	"os"

	"github.com/emirpasic/gods/trees/binaryheap"
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
	// relatedPostsSlice := make([]PostWithSharedTags, 0, len(posts))

	for i, post := range posts {

		for _, tag := range post.Tags {
			for _, relatedPost := range tagMap[tag] {
				if relatedPost != i {
					relatedPosts[relatedPost]++
				}
			}
		}

		t5 := binaryheap.NewWith(PostComparator)

		for v, count := range relatedPosts {
			if t5.Size() < 5 {
				t5.Push(PostWithSharedTags{Post: v, SharedTags: count})
			} else {
				if t, _ := t5.Peek(); t.(PostWithSharedTags).SharedTags < count {
					t5.Pop()
					t5.Push(PostWithSharedTags{Post: v, SharedTags: count})
				}

			}
		}

		// for v, count := range relatedPosts {
		// 	relatedPostsSlice = append(relatedPostsSlice, PostWithSharedTags{Post: v, SharedTags: count})
		// }

		// // // Sort the related posts by the number of shared tags.
		// sort.Slice(relatedPostsSlice, func(i, j int) bool {
		// 	return relatedPostsSlice[i].SharedTags > relatedPostsSlice[j].SharedTags
		// })

		num := min(5, t5.Size())
		topPosts := make([]*Post, num)

		for i := 0; i < num; i++ {
			if t, _ := t5.Pop(); t != nil {
				topPosts[i] = &posts[t.(PostWithSharedTags).Post]
			}
		}

		allRelatedPosts[i] = RelatedPosts{
			ID:      post.ID,
			Tags:    post.Tags,
			Related: topPosts,
		}

		clear(relatedPosts)
		// relatedPostsSlice = relatedPostsSlice[:0]

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
