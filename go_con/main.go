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

const (
	topN                 = 5
	InitialTagMapSize    = 100
	InitialPostsSliceCap = 0

	INPUT_FILE  = "../posts.json"
	OUTPUT_FILE = "../related_posts_go_con.json"
)

type isize uint16

type Post struct {
	ID    string    `json:"_id"`
	Title string    `json:"title"`
	Tags  *[]string `json:"tags"`
}

type PostWithSharedTags struct {
	Post       isize
	SharedTags isize
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

func buildTagMap(posts []Post) map[string][]isize {
	tagMap := make(map[string][]isize, InitialTagMapSize)
	for i, post := range posts {
		for _, tag := range *post.Tags {
			tagMap[tag] = append(tagMap[tag], isize(i))
		}
	}
	return tagMap
}

func main() {
	file, err := os.Open(INPUT_FILE)
	if err != nil {
		log.Panicln(err)
	}
	defer file.Close()

	posts := make([]Post, 0, InitialPostsSliceCap)
	err = json.NewDecoder(file).Decode(&posts)
	if err != nil {
		log.Panicln(err)
	}

	postslen := isize(len(posts))

	start := time.Now()
	tagMap := buildTagMap(posts)
	resultsChan := make(chan Result, postslen)

	// create wait group to wait for all workers to finish
	wg := sync.WaitGroup{}
	wg.Add(int(concurrency))
	var w isize
	for ; w < concurrency; w++ {
		// allocate taggedPostCount for each worker once, zero out for each task
		taggedPostCount := make([]isize, postslen)
		go func(workerID isize) {
			for thisPostIdx := workerID; thisPostIdx < postslen; thisPostIdx += concurrency {
				// provide taggedPostCount and binary heap for each task
				resultsChan <- Result{
					Index:       thisPostIdx,
					RelatedPost: computeRelatedPost(isize(thisPostIdx), posts, tagMap, taggedPostCount),
				}
			}
			wg.Done()
		}(w)
	}
	wg.Wait()
	close(resultsChan)

	// collect results from channel
	allRelatedPosts := make([]RelatedPosts, len(posts))
	for r := range resultsChan {
		allRelatedPosts[r.Index] = r.RelatedPost
	}

	fmt.Println("Processing time (w/o IO):", time.Since(start))

	file, err = os.Create(OUTPUT_FILE)
	if err != nil {
		log.Panicln(err)
	}

	err = json.NewEncoder(file).Encode(allRelatedPosts)
	if err != nil {
		log.Panicln(err)
	}
}

func computeRelatedPost(thisPostIdx isize, posts []Post, tagMap map[string][]isize, taggedPostCount []isize) RelatedPosts {
	// Zero out tagged post count
	for j := range taggedPostCount {
		taggedPostCount[j] = 0
	}

	// Count the number of tags shared between posts
	for _, tag := range *posts[thisPostIdx].Tags {
		for _, otherPostIdx := range tagMap[tag] {
			taggedPostCount[otherPostIdx]++
		}
	}

	top5 := [topN]PostWithSharedTags{}
	taggedPostCount[thisPostIdx] = 0 // Don't count self
	for j, count := range taggedPostCount {
		if count > top5[0].SharedTags {
			top5[0] = PostWithSharedTags{Post: isize(j), SharedTags: count}
			for k := 0; k < topN-1; k++ {
				if top5[k].SharedTags > top5[k+1].SharedTags {
					top5[k], top5[k+1] = top5[k+1], top5[k]
				}
			}
		}
	}

	// Convert indexes back to Post pointers
	topPosts := [topN]*Post{}
	for idx, t := range top5 {
		topPosts[idx] = &posts[t.Post]
	}

	return RelatedPosts{
		ID:      posts[thisPostIdx].ID,
		Tags:    posts[thisPostIdx].Tags,
		Related: topPosts,
	}
}
