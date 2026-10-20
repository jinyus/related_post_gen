package main

import (
	"encoding/json"
	"fmt"
	"os"
	"runtime"
	"time"
)

const topN = 5
const InitialTagMapSize = 100
const InitialPostsSliceCap = 0

type Post struct {
	ID    string   `json:"_id"`
	Title string   `json:"title"`
	Tags  []string `json:"tags"`
}

type RelatedPosts struct {
	ID      string      `json:"_id"`
	Tags    *[]string   `json:"tags"`
	Related [topN]*Post `json:"related"`
}

func main() {
	posts := getPosts()

	if err := checkPowersetSupported(posts); err != nil {
		fmt.Println("Go HO:", err)
		os.Exit(1)
	}

	runtime.GC()

	start := time.Now()
	relatedPosts := powersetRelated(posts)
	took := time.Since(start)

	fmt.Println("Processing time (w/o IO):", fmtDuration(took))

	writeResults(relatedPosts)
}

// Formats a duration so it always parses as "<number>ms" or "<number>s",
// which is what the results extractor expects.
func fmtDuration(d time.Duration) string {
	if d >= time.Millisecond && d < time.Minute {
		return d.String()
	}
	return fmt.Sprintf("%.3fms", d.Seconds()*1000)
}

func getPosts() []Post {
	file, _ := os.Open("../posts.json")
	var posts = make([]Post, 0, InitialPostsSliceCap)
	err := json.NewDecoder(file).Decode(&posts)
	if err != nil {
		fmt.Println(err)
	}

	return posts
}

func writeResults(allRelatedPosts []RelatedPosts) {
	file, _ := os.Create("../related_posts_go_ho.json")
	_ = json.NewEncoder(file).Encode(allRelatedPosts)
}
