package main

import (
	"encoding/json"
	"log"
	"os"
	"sort"
)

type Post struct {
	ID    string   `json:"_id"`
	Title string   `json:"title"`
	Tags  []string `json:"tags"`
}

type RelatedPosts struct {
	ID      string   `json:"_id"`
	Tags    []string `json:"tags"`
	Related []*Post  `json:"related"`
}

type PostWithSharedTags struct {
	Post       *Post
	SharedTags int
}

func main() {

	f, err := os.Open("../posts.json")

	if err != nil {
		log.Fatalln(err)
	}

	var posts []Post

	err = json.NewDecoder(f).Decode(&posts)

	if err != nil {
		log.Fatalln(err)
	}

	tagMap := make(map[string][]*Post)

	// Create tags map for each post for better intersection performance
	for i := range posts {
		for _, tag := range posts[i].Tags {
			tagMap[tag] = append(tagMap[tag], &posts[i])
		}
	}

	allRelatedPosts := make([]RelatedPosts, len(posts))

	for i, post := range posts {

		relatedPosts := make(map[*Post]int)

		for _, tag := range post.Tags {
			for _, relatedPost := range tagMap[tag] {
				if relatedPost.ID != post.ID {
					relatedPosts[relatedPost]++
				}
			}
		}

		relatedPostsSlice := make([]PostWithSharedTags, 0, len(relatedPosts))

		for v, count := range relatedPosts {
			relatedPostsSlice = append(relatedPostsSlice, PostWithSharedTags{Post: v, SharedTags: count})
		}

		// // Sort the related posts by the number of shared tags.
		sort.Slice(relatedPostsSlice, func(i, j int) bool {
			return relatedPostsSlice[i].SharedTags > relatedPostsSlice[j].SharedTags
		})

		num := min(5, len(relatedPostsSlice))
		topPosts := make([]*Post, num)

		for i := 0; i < num; i++ {
			topPosts[i] = relatedPostsSlice[i].Post
		}

		allRelatedPosts[i] = RelatedPosts{
			ID:      post.ID,
			Tags:    post.Tags,
			Related: topPosts,
		}

	}

	file, err := os.Create("../related_posts_go.json")

	if err != nil {
		log.Fatalln(err)
	}

	err = json.NewEncoder(file).Encode(allRelatedPosts)

	if err != nil {
		log.Fatalln(err)
	}
}
