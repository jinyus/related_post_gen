package main

import (
	"arena"
	"fmt"
	"log"
	"os"
	"time"

	"github.com/goccy/go-json"
)

const topN = 5

type isize uint32

var a *arena.Arena
var InitialTagMapSize = 100
var InitialPostsSliceCap = 10000

type Post struct {
	ID    string   `json:"_id"`
	Title string   `json:"title"`
	Tags  []string `json:"tags"`
}

type RelatedPosts struct {
	ID      string      `json:"_id"`
	Tags    []string    `json:"tags"`
	Related [topN]*Post `json:"related"`
}

type PostWithSharedTags struct {
	Post       isize
	SharedTags isize
}

func main() {
	file, err := os.Open("../posts.json")
	if err != nil {
		log.Panicln(err)
	}
	a = arena.NewArena()
	var posts = arena.MakeSlice[Post](a, 0, InitialPostsSliceCap)
	err = json.NewDecoder(file).Decode(&posts)
	if err != nil {
		log.Panicln(err)
	}

	postsLen := len(posts)

	start := time.Now()

	// assumes that there are less than 100 tags
	tagMap := make(map[string][]isize, InitialTagMapSize)

	for i, post := range posts {
		for _, tag := range post.Tags {
			tagMap[tag] = append(tagMap[tag], isize(i))
		}
	}

	allRelatedPosts := arena.MakeSlice[RelatedPosts](a, postsLen, postsLen)
	taggedPostCount := arena.MakeSlice[isize](a, postsLen, postsLen)

	for i := range posts {
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

				top5[pos] = PostWithSharedTags{Post: isize(j), SharedTags: count}
				minTags = top5[4].SharedTags
			}
		}
		// Convert indexes back to Post pointers
		topPosts := [topN]*Post{}
		for idx, t := range top5 {
			topPosts[idx] = &posts[t.Post]
		}

		allRelatedPosts[i] = RelatedPosts{
			ID:      posts[i].ID,
			Tags:    posts[i].Tags,
			Related: topPosts,
		}
	}

	fmt.Println("Processing time (w/o IO):", time.Since(start))

	file, err = os.Create("../related_posts_go.json")
	if err != nil {
		log.Panicln(err)
	}

	err = json.NewEncoder(file).Encode(allRelatedPosts)
	if err != nil {
		log.Panicln(err)
	}
}
