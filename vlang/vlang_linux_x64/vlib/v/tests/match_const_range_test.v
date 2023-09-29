const (
	start        = 1
	start_2      = 4
	end          = 3
	end_2        = 8
	//
	start_rune   = `a`
	start_2_rune = `d`
	end_rune     = `c`
	end_2_rune   = `i`
)

fn test_match_int_const_ranges() {
	mut results := []int{}
	for x in 0 .. 10 {
		match x {
			start...end { results << 1 }
			start_2...5 { results << 2 }
			6...end_2 { results << 3 }
			else { results << 4 }
		}
	}
	assert results == [4, 1, 1, 1, 2, 2, 3, 3, 3, 4]
}

fn test_match_rune_const_ranges() {
	mut results := []int{}
	for x in `a` .. `l` {
		match x {
			start_rune...end_rune { results << 1 }
			start_2_rune...`e` { results << 2 }
			`f`...end_2_rune { results << 3 }
			else { results << 4 }
		}
	}
	assert results == [1, 1, 1, 2, 2, 3, 3, 3, 3, 4, 4]
}

fn test_match_expr_int_const_ranges() {
	mut results := []int{}
	for x in 0 .. 10 {
		result := match x {
			start...end { 1 }
			start_2...5 { 2 }
			6...end_2 { 3 }
			else { 4 }
		}
		results << result
	}
	assert results == [4, 1, 1, 1, 2, 2, 3, 3, 3, 4]
}

fn test_match_expr_rune_const_ranges() {
	mut results := []int{}
	for x in `a` .. `l` {
		result := match x {
			start_rune...end_rune { 1 }
			start_2_rune...`e` { 2 }
			`f`...end_2_rune { 3 }
			else { 4 }
		}
		results << result
	}
	assert results == [1, 1, 1, 2, 2, 3, 3, 3, 3, 4, 4]
}
