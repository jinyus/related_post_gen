module term

import os
import term.termios

#include <sys/ioctl.h>

pub struct C.winsize {
pub:
	ws_row    u16
	ws_col    u16
	ws_xpixel u16
	ws_ypixel u16
}

fn C.ioctl(fd int, request u64, arg voidptr) int

// get_terminal_size returns a number of colums and rows of terminal window.
pub fn get_terminal_size() (int, int) {
	if os.is_atty(1) <= 0 || os.getenv('TERM') == 'dumb' {
		return default_columns_size, default_rows_size
	}
	w := C.winsize{}
	unsafe { C.ioctl(1, u64(C.TIOCGWINSZ), &w) }
	return int(w.ws_col), int(w.ws_row)
}

// get_cursor_position returns a Coord containing the current cursor position
pub fn get_cursor_position() !Coord {
	if os.is_atty(1) <= 0 || os.getenv('TERM') == 'dumb' {
		return Coord{0, 0}
	}

	mut old_state := termios.Termios{}
	if termios.tcgetattr(0, mut old_state) != 0 {
		return os.last_error()
	}
	defer {
		// restore the old terminal state:
		termios.tcsetattr(0, C.TCSANOW, mut old_state)
	}

	mut state := termios.Termios{}
	if termios.tcgetattr(0, mut state) != 0 {
		return os.last_error()
	}

	state.c_lflag &= termios.invert(u32(C.ICANON) | u32(C.ECHO))
	termios.tcsetattr(0, C.TCSANOW, mut state)

	print('\e[6n')
	flush_stdout()

	mut x := 0
	mut y := 0
	mut stage := u8(0)

	// ESC [ YYY `;` XXX `R`

	for {
		w := unsafe { C.getchar() }
		if w < 0 {
			return error_with_code('Failed to read from stdin', 888)
		} else if w == `[` || w == `;` {
			stage++
		} else if `0` <= w && w <= `9` {
			match stage {
				// converting string values to int:
				1 { y = y * 10 + int(w - `0`) }
				2 { x = x * 10 + int(w - `0`) }
				else {}
			}
		} else if w == `R` {
			break
		}
	}
	return Coord{x, y}
}

// set_terminal_title change the terminal title (usually that is the containing terminal window title)
pub fn set_terminal_title(title string) bool {
	if os.is_atty(1) <= 0 || os.getenv('TERM') == 'dumb' {
		return false
	}
	print('\033]0;')
	print(title)
	print('\007')
	flush_stdout()
	return true
}

// set_tab_title changes the terminal *tab title*, for terminal emulators like Konsole, that support several tabs
pub fn set_tab_title(title string) bool {
	if os.is_atty(1) <= 0 || os.getenv('TERM') == 'dumb' {
		return false
	}
	print('\033]30;')
	print(title)
	print('\007')
	flush_stdout()
	return true
}

// clear clears current terminal screen.
pub fn clear() bool {
	if os.is_atty(1) <= 0 || os.getenv('TERM') == 'dumb' {
		return false
	}
	print('\x1b[2J')
	print('\x1b[H')
	flush_stdout()
	return true
}
