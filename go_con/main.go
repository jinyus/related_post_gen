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
const topN = 5

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
var posts []Post

// Entry Point
func main() {
	// Initialize
	initializeResources()
	defer outputJSONFile.Close()

	// Compute related posts and measure time
	processTime := time.Now()
	computeAllRelatedPosts(posts)
	fmt.Println("Processing time (w/o IO)", time.Since(processTime))

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

	// Read data and preprocess
	file, _ := os.Open(InputJSONFilePath)
	posts = arena.MakeSlice[Post](a, 0, InitialPostsSliceCap)
	err = json.NewDecoder(file).Decode(&posts)
	if err != nil {
		log.Panicln(err)
	}
}

func computeAllRelatedPosts(posts []Post) {
	// Create tag map
	tagMap := make(map[string][]isize, InitialTagMapSize)
	for i, post := range posts {
		for _, tag := range post.Tags {
			tagMap[tag] = append(tagMap[tag], isize(i))
		}
	}

	// Launch workers and give them buffers to write to
	for w := isize(0); w < concurrency; w++ {
		go worker(w, posts, tagMap)
	}
	// Wait for workers to finish
	wg.Wait()
}

func worker(workerID isize, posts []Post, tagMap map[string][]isize) {
	workerResults[workerID] = bytes.NewBuffer(make([]byte, 0, 1024*1024*10)) // 10MB
	taggedPostCount := arena.MakeSlice[isize](a, len(posts), len(posts))
	// Compute related posts for each post
	for i := workerID; i < isize(len(posts)); i += concurrency {
		computeRelatedPost(i, posts, tagMap, taggedPostCount, workerID)
	}
	wg.Done()
}

func computeRelatedPost(i isize, posts []Post, tagMap map[string][]isize, taggedPostCount []isize, workerID isize) {
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
	top5 := [topN]PostWithSharedTags{}
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
	topPosts := make([]*Post, 0, topN)
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

	jsonStrBytes, _ := json.Marshal(relPost)
	workerResults[workerID].WriteString(string(jsonStrBytes) + ",\n")
}
