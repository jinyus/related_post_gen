package main

import (
	"fmt"
	"log"
	"os"
	"runtime"
	"sort"
	"time"

	"github.com/goccy/go-json"
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
		go func(workerID isize) {
			for i := workerID; i < postsLength; i += concurrency {
				// provide taggedPostCount and binary heap for each task
				resultsChan <- Result{
					Index:       isize(i),
					RelatedPost: computeRelatedPost(i, posts, tagMap, taggedPostCount),
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

func computeRelatedPost(i isize, posts []Post, tagMap map[string][]isize, taggedPostCount []isize) RelatedPosts {

	// Zero out tagged post count
	for i := range taggedPostCount {
		taggedPostCount[i] = 0
	}

	// Count the number of tags shared between posts
	for _, tag := range posts[i].Tags {
		for _, otherPostIdx := range tagMap[tag] {
			taggedPostCount[otherPostIdx]++
		}
	}
	taggedPostCount[i] = 0 // Exclude the post itself

	// Initialize top 5 posts
	top5 := make([]PostWithSharedTags, 0, 5)

	for j, count := range taggedPostCount {
		if len(top5) < 5 {
			top5 = append(top5, PostWithSharedTags{Post: isize(j), SharedTags: count})
			sort.Slice(top5, func(m, n int) bool {
				return top5[m].SharedTags > top5[n].SharedTags
			})
		} else {
			if count > top5[4].SharedTags {
				top5[4] = PostWithSharedTags{Post: isize(j), SharedTags: count}
				sort.Slice(top5, func(m, n int) bool {
					return top5[m].SharedTags > top5[n].SharedTags
				})
			}
		}
	}

	// Convert indexes back to Post pointers
	topPosts := make([]*Post, len(top5))
	for i, t := range top5 {
		topPosts[i] = &posts[t.Post]
	}

	return RelatedPosts{
		ID:      posts[i].ID,
		Tags:    posts[i].Tags,
		Related: topPosts,
	}
}
