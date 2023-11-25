package main

import (
	"runtime"
	"testing"
)

// TestMain is useful for tracing a single run:
// go test -trace go.trace && go tool trace go.trace
func TestMain(t *testing.T) {
	posts := getPosts()
	runtime.GC()

	generateRelatedPosts(posts)
}

// go test -bench=. -run=x -cpuprofile cpu.prof -benchtime=5s > 0.bench
// then: go tool pprof cpu.prof
func BenchmarkMain(b *testing.B) {
	posts := getPosts()

	runtime.GC()

	for i := 0; i < b.N; i++ {
		generateRelatedPosts(posts)
	}
}
