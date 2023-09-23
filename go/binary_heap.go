package main

import "sort"

type PostHeap []PostWithSharedTags

func (a PostHeap) Len() int      { return len(a) }
func (a PostHeap) Swap(i, j int) { a[i], a[j] = a[j], a[i] }
func (a PostHeap) Less(i, j int) bool {
	if a[i].SharedTags == a[j].SharedTags {
		return a[i].Post < a[j].Post
	}
	return a[i].SharedTags > a[j].SharedTags
}

func (a *PostHeap) Push(x PostWithSharedTags) {
	if a.Len() < 5 {
		*a = append(*a, x)
	} else if x.SharedTags > (*a)[4].SharedTags {
		*a = append(*a, x)
		if a.Len() == 6 {
			sort.Sort(*a)
			*a = (*a)[:5]
		}
	}
}
