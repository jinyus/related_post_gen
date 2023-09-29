struct Abc {
	ch chan int
}

fn f(st Abc) {
	st.ch <- 47
}

fn test_chan_init() {
	st := Abc{}
	spawn f(st)
	i := <-st.ch
	assert i == 47
}
