package main

import (
	"testing"
)

// TestMain is useful for tracing a single run:
// go test -trace go.trace && go tool trace go.trace
func TestMain(t *testing.T) {
	main()
}

// go test -bench=. -run=x -cpuprofile cpu.prof -benchtime=5s > 0.bench
// then: go tool pprof cpu.prof
func BenchmarkMain(b *testing.B) {

	for i := 0; i < b.N; i++ {
		main()
	}
}
