package main

import (
	"arena"
	"fmt"
	"log"
	"os"
	"runtime"
	"sync"
	"time"

	"github.com/goccy/go-json"
)

// custom type alias - for easier experiments with int size
// using smaller than int64 integer size but still big enough for 4 billion posts
var concurrency = isize(runtime.NumCPU())
var a *arena.Arena

type isize uint32

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
	defer file.Close()

	a = arena.NewArena() // Create a new arena

	var posts []Post
	posts = arena.MakeSlice[Post](a, 0, 10000)

	err = json.NewDecoder(file).Decode(&posts)
	if err != nil {
		log.Panicln(err)
	}

	start := time.Now()

	postsLength := len(posts)
	postsLengthISize := isize(postsLength)

	tagMap := make(map[string][]isize, 100)
	for i, post := range posts {
		for _, tag := range post.Tags {
			tagMap[tag] = append(tagMap[tag], isize(i))
		}
	}

	resultsChan := make(chan Result, postsLengthISize)

	// create wait group to wait for all workers to finish
	wg := sync.WaitGroup{}
	wg.Add(int(concurrency))
	var w isize
	for ; w < isize(concurrency); w++ {
		// allocate taggedPostCount for each worker once, zero out for each task
		taggedPostCount := arena.MakeSlice[isize](a, postsLength, postsLength)
		go func(workerID isize) {
			for i := workerID; i < postsLengthISize; i += concurrency {
				// provide taggedPostCount and binary heap for each task
				resultsChan <- Result{
					Index:       i,
					RelatedPost: computeRelatedPost(i, posts, tagMap, taggedPostCount),
				}
			}
			wg.Done()
		}(w)
	}
	wg.Wait()
	close(resultsChan)

	allRelatedPosts := arena.MakeSlice[RelatedPosts](a, postsLength, postsLength)
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
	a.Free()
}

func computeRelatedPost(i isize, posts []Post, tagMap map[string][]isize, taggedPostCount []isize) RelatedPosts {
	// Zero out tagged post count
	for j := range taggedPostCount {
		taggedPostCount[j] = 0
	}

	// Count the number of tags shared between posts
	for _, tag := range posts[i].Tags {
		for _, otherPostIdx := range tagMap[tag] {
			if otherPostIdx != i { // Exclude the post itself
				taggedPostCount[otherPostIdx]++
			}
		}
	}

	top5 := [5]PostWithSharedTags{}
	minTags := isize(0) // Updated initialization

	for j, count := range taggedPostCount {
		if count > minTags {
			// Find the position to insert
			pos := 4
			for pos >= 0 && top5[pos].SharedTags < count {
				pos--
			}
			pos++

			// Shift and insert
			if pos < 4 {
				copy(top5[pos+1:], top5[pos:4])
			}
			if pos <= 4 {
				top5[pos] = PostWithSharedTags{Post: isize(j), SharedTags: count}
				minTags = top5[4].SharedTags
			}
		}
	}

	// Convert indexes back to Post pointers
	topPosts := make([]*Post, 0, 5)
	for _, t := range top5 {
		if t.SharedTags > 0 {
			topPosts = append(topPosts, &posts[t.Post])
		}
	}

	return RelatedPosts{
		ID:      posts[i].ID,
		Tags:    posts[i].Tags,
		Related: topPosts,
	}
}
