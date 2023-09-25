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

// custom type alias - for easier experiments with int size
// using smaller than int64 integer size but still big enough for 4 billion posts
type isize uint32

var concurrency = isize(runtime.NumCPU())

type Post struct {
	ID    string   `json:"_id"`
	Title string   `json:"title"`
	Tags  []string `json:"tags"`
}

type PostWithSharedTags struct {
	Post       isize
	SharedTags isize
}

type RelatedPosts struct {
	ID      string   `json:"_id"`
	Tags    []string `json:"tags"`
	Related []*Post  `json:"related"`
}

// Result struct to hold results from goroutines
type Result struct {
	Index       isize
	RelatedPost RelatedPosts
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

	postsLength := isize(len(posts))

	tagMap := make(map[string][]isize, 100)
	for i, post := range posts {
		for _, tag := range post.Tags {
			tagMap[tag] = append(tagMap[tag], isize(i))
		}
	}

	resultsChan := make(chan Result, postsLength)
	doneChan := make(chan bool, concurrency)

	var w isize
	for ; w < concurrency; w++ {
		// allocate taggedPostCount for each worker once, zero out for each task
		taggedPostCount := make([]isize, postsLength)
		t5 := binaryheap.NewWith[PostWithSharedTags](PostComparator)
		go func(workerID isize) {
			for i := workerID; i < postsLength; i += concurrency {
				// provide taggedPostCount and binary heap for each task
				resultsChan <- Result{
					Index:       isize(i),
					RelatedPost: computeRelatedPost(i, posts, tagMap, taggedPostCount, t5),
				}
			}

			doneChan <- true
		}(w)
	}

	var i isize
	for ; i < concurrency; i++ {
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

	file, err = os.Create("../related_posts_go_con.json")
	if err != nil {
		log.Panicln(err)
	}

	err = json.NewEncoder(file).Encode(allRelatedPosts)
	if err != nil {
		log.Panicln(err)
	}
}

func computeRelatedPost(i isize, posts []Post, tagMap map[string][]isize, taggedPostCount []isize, t5 *binaryheap.Heap[PostWithSharedTags]) RelatedPosts {

	// zero out tagged post count
	for i := range taggedPostCount {
		taggedPostCount[i] = 0
	}

	for _, tag := range posts[i].Tags {
		for _, otherPostIdx := range tagMap[tag] {
			taggedPostCount[otherPostIdx]++
		}
	}
	// zero out current post count - no need for branch in a for loop above
	taggedPostCount[i] = 0

	for v, count := range taggedPostCount {
		if t5.Size() < 5 {
			t5.Push(PostWithSharedTags{Post: isize(v), SharedTags: count})
		} else {
			if t, _ := t5.Peek(); t.SharedTags < count {
				t5.Pop()
				t5.Push(PostWithSharedTags{Post: isize(v), SharedTags: count})
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
