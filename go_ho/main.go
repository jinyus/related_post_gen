package main

import (
	"encoding/json"
	"fmt"
	"os"
	"runtime"
	"strings"
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

// A candidate strategy for computing the related posts.
type approach struct {
	name    string
	applies func(posts []Post) bool
	run     func(posts []Post) []RelatedPosts
}

type raceResult struct {
	name string
	took time.Duration
	out  []RelatedPosts
}

func always(_ []Post) bool { return true }

// The three approaches race against each other on every invocation; the
// result of the fastest one is written and its time is reported as the
// processing time.
func approaches() []approach {
	return []approach{
		// powerset tag-subset intersections (the Rust/D HO core)
		{"powerset", powersetApplies, powersetRelated},
		// count every candidate, full array scan for the top 5 (Julia HO style)
		{"count_scan", always, countScanRelated},
		// count with a dirty list, top-k insertion (Rust HO fallback style)
		{"count_dirty", always, countDirtyRelated},
	}
}

func main() {
	posts := getPosts()

	apps := approaches()

	// optional arg: run a single approach (for debugging/verification)
	var forced string
	if len(os.Args) > 1 {
		arg := os.Args[1]
		for _, app := range apps {
			if app.name == arg {
				forced = arg
				break
			}
		}
		// ignore flags from `go test` binaries
		if forced == "" && !strings.HasPrefix(arg, "-") {
			fmt.Println("unknown approach:", arg, "(expected powerset, count_scan or count_dirty)")
			os.Exit(2)
		}
	}

	var results []raceResult
	for _, app := range apps {
		if forced != "" && app.name != forced {
			continue
		}
		if !app.applies(posts) {
			fmt.Printf("  %s: skipped (input violates its constraints)\n", app.name)
			if forced != "" {
				// the requested approach can't run
				os.Exit(1)
			}
			continue
		}

		runtime.GC()
		start := time.Now()
		out := app.run(posts)
		took := time.Since(start)

		results = append(results, raceResult{app.name, took, out})
		fmt.Printf("  %s: %s\n", app.name, fmtDuration(took))
	}

	if len(results) == 0 {
		fmt.Println("  no approach was applicable")
		os.Exit(1)
	}

	winner := results[0]
	for _, r := range results[1:] {
		if r.took < winner.took {
			winner = r
		}
	}

	fmt.Printf("  winner: %s\n", winner.name)
	fmt.Println("  Processing time (w/o IO):", fmtDuration(winner.took))

	writeResults(winner.out)
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
