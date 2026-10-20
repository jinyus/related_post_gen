package main

// Count-all + full-array top-5 scan (Julia HO style): build a
// tag -> post indices map, increment a flat count array for every candidate
// post, then scan the entire count array for the 5 highest counts.

func buildTagMap(posts []Post) map[string][]uint32 {
	tagMap := make(map[string][]uint32, InitialTagMapSize)
	for i := range posts {
		for _, tag := range posts[i].Tags {
			tagMap[tag] = append(tagMap[tag], uint32(i))
		}
	}
	return tagMap
}

type topEntry struct {
	count uint32
	idx   uint32
}

// Inserts (count, idx) into top while shifting smaller counts down.
// Strict comparison keeps the earlier (smaller) index ahead on ties.
func topInsert(top *[topN]topEntry, count, idx uint32) {
	x := topN - 1
	top[x] = topEntry{count, idx}
	for x > 0 && top[x-1].count < count {
		top[x], top[x-1] = top[x-1], top[x]
		x--
	}
}

func topPosts(posts []Post, top [topN]topEntry) [topN]*Post {
	var related [topN]*Post
	for j := 0; j < topN; j++ {
		related[j] = &posts[top[j].idx]
	}
	return related
}

func countScanRelated(posts []Post) []RelatedPosts {
	tagMap := buildTagMap(posts)

	postsLen := len(posts)
	counts := make([]uint32, postsLen)
	out := make([]RelatedPosts, postsLen)

	for i := range posts {
		for _, tag := range posts[i].Tags {
			for _, j := range tagMap[tag] {
				counts[j]++
			}
		}
		counts[i] = 0 // don't count self

		var top [topN]topEntry
		min := uint32(0)
		for j := uint32(0); j < uint32(postsLen); j++ {
			if c := counts[j]; c > min {
				topInsert(&top, c, j)
				min = top[topN-1].count
			}
		}

		// reset the full count array
		for j := range counts {
			counts[j] = 0
		}

		out[i] = RelatedPosts{
			ID:      posts[i].ID,
			Tags:    &posts[i].Tags,
			Related: topPosts(posts, top),
		}
	}
	return out
}
