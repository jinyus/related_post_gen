package main

import (
	"fmt"
	"log"
	"os"
	"runtime"
	"time"

	"github.com/goccy/go-json"
	"github.com/ugurcsen/gods-generic/trees/binaryheap"
)

var concurrency = runtime.NumCPU()

type Post struct {
	ID    string   `json:"_id"`
	Title string   `json:"title"`
	Tags  []string `json:"tags"`
}

type PostWithSharedTags struct {
	Post       int
	SharedTags int
}

type RelatedPosts struct {
	ID      string   `json:"_id"`
	Tags    []string `json:"tags"`
	Related []*Post  `json:"related"`
}

// Result struct to hold results from goroutines
type Result struct {
	Index       int
	RelatedPost RelatedPosts
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

	resultsChan := make(chan Result, len(posts))
	doneChan := make(chan bool, concurrency)

	for w := 0; w < concurrency; w++ {
		go func(workerID int) {
			defer func() { doneChan <- true }()
			for i := workerID; i < len(posts); i += concurrency {
				relatedPost := computeRelatedPost(i, posts, tagMap)
				resultsChan <- Result{Index: i, RelatedPost: relatedPost}
			}
		}(w)
	}

	for i := 0; i < concurrency; i++ {
		<-doneChan
	}
	close(resultsChan)
	close(doneChan)

	allRelatedPosts := make([]RelatedPosts, len(posts))
	for r := range resultsChan {
		allRelatedPosts[r.Index] = r.RelatedPost
	}

	end := time.Now()

	fmt.Println("Processing time (w/o IO)", end.Sub(start))

	file, err := os.Create("../related_posts_go_con.json")
	if err != nil {
		log.Panicln(err)
	}

	err = json.NewEncoder(file).Encode(allRelatedPosts)
	if err != nil {
		log.Panicln(err)
	}
}

func computeRelatedPost(i int, posts []Post, tagMap map[string][]int) RelatedPosts {
	taggedPostCount := make([]int, len(posts))
	t5 := binaryheap.NewWith[PostWithSharedTags](PostComparator)

	for _, tag := range posts[i].Tags {
		for _, otherPostIdx := range tagMap[tag] {
			if otherPostIdx != i {
				taggedPostCount[otherPostIdx]++
			}
		}
	}

	for v, count := range taggedPostCount {
		if t5.Size() < 5 {
			t5.Push(PostWithSharedTags{Post: v, SharedTags: count})
		} else {
			if t, _ := t5.Peek(); t.SharedTags < count {
				t5.Pop()
				t5.Push(PostWithSharedTags{Post: v, SharedTags: count})
			}
		}
	}

	num := min(5, t5.Size())
	topPosts := make([]*Post, num)

	for i := 0; i < num; i++ {
		if t, ok := t5.Pop(); ok {
			topPosts[i] = &posts[t.Post]
		}
	}

	return RelatedPosts{
		ID:      posts[i].ID,
		Tags:    posts[i].Tags,
		Related: topPosts,
	}
}

func PostComparator(a, b PostWithSharedTags) int {
	if a.SharedTags > b.SharedTags {
		return 1
	}
	if a.SharedTags < b.SharedTags {
		return -1
	}
	return 0
}
