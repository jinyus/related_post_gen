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
	"bufio"
	"fmt"
	"log"
	"os"
	"runtime"
	"sync"
	"time"

	"github.com/bytedance/sonic"
)

// Constants and Configurable Variables
const (
	InputJSONFilePath    = "../posts.json"
	OutputJSONFilePath   = "../related_posts_go_con.json"
	InitialTagMapSize    = 0
	InitialPostsSliceCap = 0
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

// Global Variables
var concurrency = isize(runtime.NumCPU())
var a *arena.Arena
var writeChannel = make(chan *RelatedPosts)
var wg = &sync.WaitGroup{}
var readWriter *bufio.ReadWriter

// Entry Point
func main() {
	// Initialize
	initializeResources()

	// Add a dedicated goroutine for writing to JSON
	go handleWriteChannel()

	// Read data and preprocess
	file, _ := os.Open(InputJSONFilePath)
	reader := bufio.NewReader(file)
	posts := arena.MakeSlice[Post](a, 0, InitialPostsSliceCap)
	sonic.ConfigFastest.NewDecoder(reader).Decode(&posts)

	// Compute related posts and measure time
	processTime := time.Now()
	computeAllRelatedPosts(posts)
	fmt.Println("Processing time (w/o IO)", time.Since(processTime))

	// Release memory
	a.Free()
}

func handleWriteChannel() {
	// write starting bracket
	readWriter.WriteString("[\n")
	for res := range writeChannel {
		jsonStr, err := sonic.MarshalString(res)
		if err != nil {
			log.Panicln(err)
		}
		// write to file
		readWriter.WriteString(jsonStr + ",\n")
		readWriter.Flush()
	}
	// write ending bracket
	readWriter.WriteString("\n]")
	readWriter.Flush()
	close(writeChannel)
}

// Function Definitions
func initializeResources() *sync.WaitGroup {
	a = arena.NewArena() // Create a new arena
	// Initialize concurrency
	wg.Add(int(concurrency))
	// Initialize output file writer
	file, err := os.Create(OutputJSONFilePath)
	if err != nil {
		log.Panicln(err)
	}
	readWriter = bufio.NewReadWriter(bufio.NewReader(file), bufio.NewWriter(file))
	return wg
}

func computeAllRelatedPosts(posts []Post) {
	// Create tag map
	tagMap := make(map[string][]isize, InitialTagMapSize)
	for i, post := range posts {
		for _, tag := range post.Tags {
			tagMap[tag] = append(tagMap[tag], isize(i))
		}
	}

	// Launch workers
	for w := isize(0); w < concurrency; w++ {
		taggedPostCount := arena.MakeSlice[isize](a, len(posts), len(posts))
		go worker(w, posts, tagMap, taggedPostCount)
	}

	// Wait for workers to finish
	wg.Wait()
}

func worker(workerID isize, posts []Post, tagMap map[string][]isize, taggedPostCount []isize) {
	// Compute related posts for each post
	for i := workerID; i < isize(len(posts)); i += concurrency {
		writeChannel <- computeRelatedPost(i, posts, tagMap, taggedPostCount) // Send data to write channel
	}
	wg.Done()
}

func computeRelatedPost(i isize, posts []Post, tagMap map[string][]isize, taggedPostCount []isize) *RelatedPosts {
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

	return &RelatedPosts{
		ID:      posts[i].ID,
		Tags:    posts[i].Tags,
		Related: topPosts,
	}
}
