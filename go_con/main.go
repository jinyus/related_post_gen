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
	"github.com/goccy/go-json"
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

type Result struct {
	Index       isize
	RelatedPost RelatedPosts
}

// Global Variables
var concurrency = isize(runtime.NumCPU())
var a *arena.Arena
var writeChannel = make(chan *RelatedPosts)
var wg = &sync.WaitGroup{}

// Entry Point
func main() {
	// Add a dedicated goroutine for writing to JSON
	go func() {
		file, err := os.Create(OutputJSONFilePath)
		if err != nil {
			log.Panicln(err)
		}
		defer file.Close()

		writer := bufio.NewWriter(file)
		var enc = sonic.ConfigDefault.NewEncoder(writer)

		// write starting bracket
		writer.WriteString("[\n")

		for res := range writeChannel {
			if err := enc.Encode(res); err != nil {
				log.Panicln(err)
			}
			// write comma next to each JSON object
			writer.WriteString(",\n")
			writer.Flush()
		}

		// write ending bracket
		writer.WriteString("]\n")
		writer.Flush()
	}()

	defer close(writeChannel)

	// Initialize
	initializeResources()

	// Read data and preprocess
	posts := loadPosts()

	// Compute related posts
	processTime := time.Now()
	computeAllRelatedPosts(posts)
	fmt.Println("Processing time (w/o IO)", time.Since(processTime))

	// Release memory
	a.Free()
}

// Function Definitions
func initializeResources() *sync.WaitGroup {
	a = arena.NewArena() // Create a new arena
	// Initialize concurrency
	wg.Add(int(concurrency))
	return wg
}

func loadPosts() []Post {
	file, err := openJSONFile(InputJSONFilePath)
	if err != nil {
		log.Panicln(err)
	}
	posts := decodeJSONFile(file)
	return posts
}

func createTagMap(posts []Post) map[string][]isize {
	tagMap := make(map[string][]isize, InitialTagMapSize)
	for i, post := range posts {
		for _, tag := range post.Tags {
			tagMap[tag] = append(tagMap[tag], isize(i))
		}
	}
	return tagMap
}

func computeAllRelatedPosts(posts []Post) {
	// Create tag map
	tagMap := createTagMap(posts)

	// Launch workers
	launchWorkers(posts, tagMap)
}

func launchWorkers(posts []Post, tagMap map[string][]isize) {
	for w := isize(0); w < concurrency; w++ {
		taggedPostCount := arena.MakeSlice[isize](a, len(posts), len(posts))
		go worker(w, posts, tagMap, taggedPostCount)
	}
	wg.Wait()
}

func worker(workerID isize, posts []Post, tagMap map[string][]isize, taggedPostCount []isize) {
	// Compute related posts for each post
	for i := workerID; i < isize(len(posts)); i += concurrency {
		writeChannel <- computeRelatedPost(i, posts, tagMap, taggedPostCount) // Send data to write channel
	}
	wg.Done()
}

// Function to open JSON File and return a buffered reader
func openJSONFile(filePath string) (*bufio.Reader, error) {
	file, err := os.Open(filePath)
	if err != nil {
		return nil, err
	}
	return bufio.NewReader(file), nil
}

// Function to decode JSON File using buffered reader
func decodeJSONFile(reader *bufio.Reader) []Post {
	posts := arena.MakeSlice[Post](a, 0, InitialPostsSliceCap)
	err := json.NewDecoder(reader).Decode(&posts)
	if err != nil {
		log.Panicln(err)
	}
	return posts
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
