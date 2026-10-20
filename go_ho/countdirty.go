package main

// Count with a dirty list + top-k insertion (the fallback of the Rust HO
// entry): only posts touched by the current post's tags get counted, scanned
// for the top 5 and reset again, so the cost scales with the number of
// candidates instead of all posts.

func countDirtyRelated(posts []Post) []RelatedPosts {
	tagMap := buildTagMap(posts)

	postsLen := len(posts)
	counts := make([]uint32, postsLen)
	dirty := make([]uint32, 0, postsLen)
	out := make([]RelatedPosts, postsLen)

	for i := range posts {
		for _, tag := range posts[i].Tags {
			for _, j := range tagMap[tag] {
				if counts[j] == 0 {
					dirty = append(dirty, j)
				}
				counts[j]++
			}
		}
		counts[i] = 0 // don't count self

		var top [topN]topEntry
		min := uint32(0)
		for _, j := range dirty {
			if c := counts[j]; c > min {
				topInsert(&top, c, j)
				min = top[topN-1].count
			}
		}

		// reset only the counts we touched
		for _, j := range dirty {
			counts[j] = 0
		}
		dirty = dirty[:0]

		out[i] = RelatedPosts{
			ID:      posts[i].ID,
			Tags:    &posts[i].Tags,
			Related: topPosts(posts, top),
		}
	}
	return out
}
