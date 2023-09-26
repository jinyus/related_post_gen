// Program Overview
// This program computes the 5 most related posts for each post in a dataset.
// It uses Go's concurrency model to parallelize the computation.
// Steps:
// 1. Load a list of posts from a JSON file
// 2. Create a tag map to quickly find posts sharing the same tags
// 3. Use concurrent workers to compute related posts for each post
// 4. Output the related posts into a new JSON file
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

// Constants and Configurable Variables
const (
	InputJSONFilePath    = "../posts.json"
	OutputJSONFilePath   = "../related_posts_go_con.json"
	InitialTagMapSize    = 100
	InitialPostsSliceCap = 10000
)

// Type Definitions
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

type Result struct {
	Index       isize
	RelatedPost RelatedPosts
}

// Global Variables
var concurrency = isize(runtime.NumCPU())
var a *arena.Arena
var start time.Time

// Entry Point
func main() {
	// Initialize
	initializeResources()
	// Read data and preprocess
	posts, tagMap := loadDataAndPreprocess()

	// Compute related posts
	allRelatedPosts := computeAllRelatedPosts(posts, tagMap)

	// Write result
	writeResults(allRelatedPosts)

	// Release memory
	a.Free()
}

// Function Definitions
func initializeResources() {
	a = arena.NewArena() // Create a new arena
}

func loadDataAndPreprocess() ([]Post, map[string][]isize) {
	file, err := openJSONFile(InputJSONFilePath)
	if err != nil {
		log.Panicln(err)
	}
	defer file.Close()

	posts := decodeJSONFile(file)
	tagMap := createTagMap(posts)

	return posts, tagMap
}

func openJSONFile(filePath string) (*os.File, error) {
	return os.Open(filePath)
}

func decodeJSONFile(file *os.File) []Post {
	posts := arena.MakeSlice[Post](a, 0, InitialPostsSliceCap)
	err := json.NewDecoder(file).Decode(&posts)
	if err != nil {
		log.Panicln(err)
	}
	return posts
}

func createTagMap(posts []Post) map[string][]isize {
	start = time.Now()
	tagMap := make(map[string][]isize, InitialTagMapSize)
	for i, post := range posts {
		for _, tag := range post.Tags {
			tagMap[tag] = append(tagMap[tag], isize(i))
		}
	}
	return tagMap
}

func computeAllRelatedPosts(posts []Post, tagMap map[string][]isize) []RelatedPosts {
	// Initialize
	resultsChan, wg := initializeConcurrency(len(posts))

	// Launch workers
	launchWorkers(posts, tagMap, resultsChan, wg)

	// Wait for workers and close channel
	wg.Wait()
	close(resultsChan)

	// Gather results
	allRelatedPosts := gatherResults(len(posts), resultsChan)

	// Print processing time
	fmt.Println("Processing time (w/o IO)", time.Since(start))

	return allRelatedPosts
}

func initializeConcurrency(postsLength int) (chan Result, *sync.WaitGroup) {
	resultsChan := make(chan Result, isize(postsLength))
	wg := &sync.WaitGroup{}
	wg.Add(int(concurrency))
	return resultsChan, wg
}

func launchWorkers(posts []Post, tagMap map[string][]isize, resultsChan chan Result, wg *sync.WaitGroup) {
	for w := isize(0); w < concurrency; w++ {
		taggedPostCount := arena.MakeSlice[isize](a, len(posts), len(posts))
		go worker(w, posts, tagMap, taggedPostCount, resultsChan, wg)
	}
}

func worker(workerID isize, posts []Post, tagMap map[string][]isize, taggedPostCount []isize, resultsChan chan Result, wg *sync.WaitGroup) {
	for i := workerID; i < isize(len(posts)); i += concurrency {
		resultsChan <- Result{
			Index:       i,
			RelatedPost: computeRelatedPost(i, posts, tagMap, taggedPostCount),
		}
	}
	wg.Done()
}

func gatherResults(postsLength int, resultsChan chan Result) []RelatedPosts {
	allRelatedPosts := arena.MakeSlice[RelatedPosts](a, postsLength, postsLength)
	for r := range resultsChan {
		allRelatedPosts[r.Index] = r.RelatedPost
	}
	return allRelatedPosts
}

func writeResults(allRelatedPosts []RelatedPosts) {
	file, err := os.Create(OutputJSONFilePath)
	if err != nil {
		log.Panicln(err)
	}
	err = json.NewEncoder(file).Encode(allRelatedPosts)
	if err != nil {
		log.Panicln(err)
	}
}

func computeRelatedPost(i isize, posts []Post, tagMap map[string][]isize, taggedPostCount []isize) RelatedPosts {
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
