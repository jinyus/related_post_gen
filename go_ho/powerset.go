package main

import "math/bits"

// Powerset approach (the core of the Rust/D HO entries).
//
// Every post's tags are mapped to integer IDs; for each tag-cardinality k
// (from the largest down to 1) posts are grouped by every k-element subset of
// their tags, and each group disseminates its members into per-post top-5
// trackers. A tracker's entries become "resolved" (locked) once every tracker
// holds 5 candidates, so low-cardinality passes stop early.
//
// It only applies when posts have at most 8 tags (the packed group key must
// fit into 64 bits) and there are at most 256 unique tags (u8 tag IDs).
// The racer skips it otherwise; the counting approaches always work.
const powersetMaxTagsPerPost = 8
const powersetMaxUniqueTags = 256

func powersetApplies(posts []Post) bool {
	unique := make(map[string]struct{}, InitialTagMapSize)
	for i := range posts {
		if len(posts[i].Tags) > powersetMaxTagsPerPost {
			return false
		}
		for _, tag := range posts[i].Tags {
			if _, ok := unique[tag]; !ok {
				if len(unique) >= powersetMaxUniqueTags {
					return false
				}
				unique[tag] = struct{}{}
			}
		}
	}
	return true
}

// resolved: topNs[0..resolved] are locked from higher cardinalities.
// total: topNs[resolved..total] are sorted ascending by post index.
type topNTracker struct {
	resolved uint8
	total    uint8
}

func powersetRelated(posts []Post) []RelatedPosts {
	if len(posts) == 0 {
		return []RelatedPosts{}
	}

	// Phase A: map tags to integer IDs
	tagIDs := make(map[string]uint8, InitialTagMapSize)
	var nextTID uint8
	kMax := 0
	postTIDs := make([][]uint8, len(posts))

	for i := range posts {
		if len(posts[i].Tags) > kMax {
			kMax = len(posts[i].Tags)
		}
		tids := make([]uint8, len(posts[i].Tags))
		for j, tag := range posts[i].Tags {
			id, ok := tagIDs[tag]
			if !ok {
				id = nextTID
				tagIDs[tag] = id
				nextTID++
			}
			tids[j] = id
		}
		sortUint8s(tids)
		postTIDs[i] = tids
	}

	// Phase B: build the powerset combination table
	comboTable := buildComboTable(kMax)

	// Phase C: initialize trackers
	trackers := make([]topNTracker, len(posts))
	topNs := make([][topN]uint32, len(posts))

	// Phase D: process cardinalities from k_max down to 1
	moreToDo := true
	for k := kMax; k >= 1 && moreToDo; k-- {
		// group posts by every k-element subset of their tags
		groups := findIntersections(k, postTIDs, comboTable)

		disseminate(groups, trackers, topNs)

		moreToDo = false
		for t := range trackers {
			trackers[t].resolved = trackers[t].total
			if trackers[t].resolved < topN {
				moreToDo = true
			}
		}
	}

	// Phase E: build output
	out := make([]RelatedPosts, len(posts))
	for i, post := range posts {
		total := int(trackers[i].total)
		if total > topN {
			total = topN
		}
		var related [topN]*Post
		for j := 0; j < topN; j++ {
			related[j] = &posts[0] // default, like the other implementations
		}
		for j := 0; j < total; j++ {
			related[j] = &posts[topNs[i][j]]
		}
		out[i] = RelatedPosts{
			ID:      post.ID,
			Tags:    &posts[i].Tags,
			Related: related,
		}
	}
	return out
}

// Builds table[n][k] = list of k-element index subsets of 0..n.
func buildComboTable(kMax int) [][][][]uint8 {
	table := make([][][][]uint8, kMax+1)
	for n := 0; n <= kMax; n++ {
		table[n] = make([][][]uint8, kMax+1)
		table[n][0] = [][]uint8{{}} // empty subset for all set sizes
	}

	for bitset := 1; bitset < 1<<uint(kMax); bitset++ {
		k := bits.OnesCount(uint(bitset))

		combo := make([]uint8, 0, k)
		for b := 0; b < kMax; b++ {
			if bitset&(1<<uint(b)) != 0 {
				combo = append(combo, uint8(b))
			}
		}

		// smallest set size this combo is valid for: highest bit + 1
		minN := 32 - bits.LeadingZeros32(uint32(bitset))
		for n := minN; n <= kMax; n++ {
			table[n][k] = append(table[n][k], combo)
		}
	}
	return table
}

// Returns the groups of posts (>= 2 posts) that share a specific k-subset of
// their tags, keyed by the packed tag IDs of that subset.
func findIntersections(k int, postTIDs [][]uint8, table [][][][]uint8) [][]uint32 {
	lists := make(map[uint64][]uint32, 1024)

	for i, tids := range postTIDs {
		if len(tids) < k {
			continue
		}
		for _, combo := range table[len(tids)][k] {
			key := packKey(tids, combo)
			lists[key] = append(lists[key], uint32(i))
		}
	}

	groups := make([][]uint32, 0, len(lists))
	for _, list := range lists {
		if len(list) >= 2 {
			groups = append(groups, list)
		}
	}
	return groups
}

func packKey(tids, combo []uint8) uint64 {
	var key uint64
	for i, pos := range combo {
		key |= uint64(tids[pos]) << (8 * i)
	}
	return key
}

// Feeds every group's candidate pairs into the per-post trackers.
func disseminate(groups [][]uint32, trackers []topNTracker, topNs [][topN]uint32) {
	for _, group := range groups {
		for _, i32 := range group {
			i := int(i32)
			resolved := int(trackers[i].resolved)

			// skip if this post already has topN resolved entries
			if resolved >= topN {
				continue
			}

			total := int(trackers[i].total)

			for _, j32 := range group {
				if i32 == j32 {
					continue
				}

				// check for duplicates in topNs[i][0..total]
				isDup := false
				for pos := 0; pos < total; pos++ {
					if topNs[i][pos] == j32 {
						isDup = true
						break
					}
				}
				if isDup {
					continue
				}

				if total < topN {
					// room available: append
					topNs[i][total] = j32
					total++
					trackers[i].total = uint8(total)
				} else {
					// full: the group is in ascending post index order, so
					// once j is past the last slot every following j will be
					// too (equal counts can still replace it)
					if j32 > topNs[i][topN-1] {
						break
					}
					topNs[i][topN-1] = j32
				}

				// insertion sort within the unresolved portion
				region := topNs[i][resolved:total]
				if l := len(region); l > 0 {
					val := region[l-1]
					pos := l - 1
					for pos > 0 && region[pos-1] > val {
						region[pos] = region[pos-1]
						pos--
					}
					region[pos] = val
				}
			}
		}
	}
}

func sortUint8s(s []uint8) {
	for i := 1; i < len(s); i++ {
		val := s[i]
		pos := i
		for pos > 0 && s[pos-1] > val {
			s[pos] = s[pos-1]
			pos--
		}
		s[pos] = val
	}
}
