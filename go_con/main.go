package main

import (
	"encoding/json"
	"fmt"
	"log"
	"os"
	"runtime"
	"sync"
	"time"
)

// custom type alias - for easier experiments with int size
// using smaller than int64 integer size but still big enough for 4 billion posts
var concurrency = isize(runtime.NumCPU())

const topN = 5
const InitialTagMapSize = 100
const InitialPostsSliceCap = 0

type isize uint32

type Post struct {
	ID    string   `json:"_id"`
	Title string   `json:"title"`
	Tags  []string `json:"tags"`
}

type PostWithSharedTags struct {
	Post       isize
	SharedTags byte
}

type RelatedPosts struct {
	ID      string      `json:"_id"`
	Tags    *[]string   `json:"tags"`
	Related [topN]*Post `json:"related"`
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

	posts := make([]Post, 0, InitialPostsSliceCap)
	err = json.NewDecoder(file).Decode(&posts)
	if err != nil {
		log.Panicln(err)
	}

	runtime.GC()

	start := time.Now()

	postsLength := len(posts)
	postsLengthISize := isize(postsLength)

	tagMap := make(map[string][]isize, InitialTagMapSize)
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
		taggedPostCount := make([]byte, postsLengthISize)
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

	allRelatedPosts := make([]RelatedPosts, postsLength)
	for r := range resultsChan {
		allRelatedPosts[r.Index] = r.RelatedPost
	}

	end := time.Now()

	fmt.Println("Processing time (w/o IO):", end.Sub(start))

	file, err = os.Create("../related_posts_go_con.json")
	if err != nil {
		log.Panicln(err)
	}

	err = json.NewEncoder(file).Encode(allRelatedPosts)
	if err != nil {
		log.Panicln(err)
	}
}

func computeRelatedPost(i isize, posts []Post, tagMap map[string][]isize, taggedPostCount []byte) RelatedPosts {
	// Zero out tagged post count
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

	top5 := [topN]PostWithSharedTags{}
	minTags := byte(0) // Updated initialization

	for j, count := range taggedPostCount {
		if count > minTags {
			// Find the position to insert
			pos := 3
			for pos >= 0 && top5[pos].SharedTags < count {
				pos--
			}
			pos++

			// Shift and insert
			if pos < 4 {
				copy(top5[pos+1:], top5[pos:4])
			}

			top5[pos] = PostWithSharedTags{Post: isize(j), SharedTags: count}
			minTags = top5[4].SharedTags
		}
	}

	// Convert indexes back to Post pointers
	topPosts := [topN]*Post{}
	for idx, t := range top5 {
		topPosts[idx] = &posts[t.Post]
	}

	return RelatedPosts{
		ID:      posts[i].ID,
		Tags:    &posts[i].Tags,
		Related: topPosts,
	}
}
