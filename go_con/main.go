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
	"bytes"
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

// Global Variables
var concurrency = isize(runtime.NumCPU())
var a *arena.Arena
var wg = &sync.WaitGroup{}
var readWriter *bufio.ReadWriter
var outputJSONFile *os.File
var buf = bytes.NewBuffer(make([]byte, 0, 1024*1024*10)) // 10MB
var workerResults = make([]*bytes.Buffer, concurrency)

// Entry Point
func main() {
	// Initialize
	// measure initialization time
	initTime := time.Now()
	initializeResources()
	defer outputJSONFile.Close()
	fmt.Println("Initialization time", time.Since(initTime))

	// measure preprocessing time
	preprocessTime := time.Now()
	// Read data and preprocess
	file, _ := os.Open(InputJSONFilePath)
	reader := bufio.NewReader(file)
	posts := arena.MakeSlice[Post](a, 0, InitialPostsSliceCap)

	// check cpu architecture
	if runtime.GOARCH == "arm64" {
		// use fastest decoder for arm64
		err := json.NewDecoder(file).Decode(&posts)
		if err != nil {
			log.Panicln(err)
		}
	} else {
		// use fastest decoder for amd64
		sonic.ConfigFastest.NewDecoder(reader).Decode(&posts)
	}
	fmt.Println("Preprocessing time", time.Since(preprocessTime))

	// Compute related posts and measure time
	processTime := time.Now()
	computeAllRelatedPosts(posts)
	fmt.Println("Processing time (w/o IO)", time.Since(processTime))

	// measure write time
	writeTime := time.Now()
	// write result to file
	readWriter.WriteString("[\n")
	// write all worker results to file
	for _, workerResult := range workerResults {
		if workerResult == nil {
			continue
		}
		buf.Write(workerResult.Bytes())
	}
	// Remove the second last character (should be ',')
	readWriter.Write(buf.Bytes()[:len(buf.Bytes())-2])
	readWriter.WriteString("\n]\n")
	readWriter.Flush()
	fmt.Println("Write time", time.Since(writeTime))

	// Release memory
	a.Free()
}

// Function Definitions
func initializeResources() {
	a = arena.NewArena() // Create a new arena
	// Initialize concurrency
	wg.Add(int(concurrency))
	// Initialize output file writer
	outputJSONFile, err := os.Create(OutputJSONFilePath)
	if err != nil {
		log.Panicln(err)
	}
	readWriter = bufio.NewReadWriter(bufio.NewReader(outputJSONFile), bufio.NewWriter(outputJSONFile))
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
		go worker(w, posts, tagMap)
	}

	// Wait for workers to finish
	wg.Wait()
}

func worker(workerID isize, posts []Post, tagMap map[string][]isize) {
	// measure work time
	workTime := time.Now()
	taggedPostCount := arena.MakeSlice[isize](a, len(posts), len(posts))
	// Compute related posts for each post
	workerBuf := bytes.NewBuffer(make([]byte, 0, 1024*1024*10)) // 10MB
	for i := workerID; i < isize(len(posts)); i += concurrency {
		computeRelatedPost(i, posts, tagMap, taggedPostCount, workerBuf) // Send data to write channel
	}
	workerResults = append(workerResults, workerBuf)
	wg.Done()
	// print work time for each worker
	fmt.Println("Worker", workerID, "time", time.Since(workTime))
}

func computeRelatedPost(i isize, posts []Post, tagMap map[string][]isize, taggedPostCount []isize, workerBuf *bytes.Buffer) {
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

	relPost := &RelatedPosts{
		ID:      posts[i].ID,
		Tags:    posts[i].Tags,
		Related: topPosts,
	}

	var jsonStr string
	if runtime.GOARCH == "arm64" {
		jsonStrBytes, _ := json.Marshal(relPost)
		jsonStr = string(jsonStrBytes)
	} else {
		jsonStr, _ = sonic.MarshalString(relPost)
	}

	workerBuf.WriteString(jsonStr + ",\n")
}
