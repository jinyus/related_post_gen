package main

import "testing"

// TestMain is useful for tracing a single run:
// go test -trace go.trace && go tool trace go.trace
func TestMain(t *testing.T) {
	main()
}

func BenchmarkMain(b *testing.B) {
	for i := 0; i < b.N; i++ {
		main()
	}
}
