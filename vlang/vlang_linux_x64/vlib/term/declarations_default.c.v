module term

pub struct C.termios {
mut:
	c_iflag int
	c_oflag int
	c_cflag int
	c_lflag int
	c_cc    [20]u8
}
