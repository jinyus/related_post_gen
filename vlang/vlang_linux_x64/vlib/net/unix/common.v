module unix

import time
import net

const error_ewouldblock = C.EWOULDBLOCK

fn C.SUN_LEN(ptr &C.sockaddr_un) int

fn C.strncpy(&char, &char, int)

// shutdown shutsdown a socket, given its file descriptor `handle`.
// By default it shuts it down in both directions, both for reading
// and for writing. You can change that using `net.shutdown(handle, how: .read)`
// or `net.shutdown(handle, how: .write)`
pub fn shutdown(handle int, config net.ShutdownConfig) int {
	return net.shutdown(handle, config)
}

// close a socket, given its file descriptor `handle`.
pub fn close(handle int) ! {
	net.close(handle)!
}

// Select waits for an io operation (specified by parameter `test`) to be available
fn @select(handle int, test Select, timeout time.Duration) !bool {
	set := C.fd_set{}

	C.FD_ZERO(&set)
	C.FD_SET(handle, &set)

	seconds := timeout / time.second
	microseconds := time.Duration(timeout - (seconds * time.second)).microseconds()

	mut tt := C.timeval{
		tv_sec: u64(seconds)
		tv_usec: u64(microseconds)
	}

	mut timeval_timeout := &tt

	// infinite timeout is signaled by passing null as the timeout to
	// select
	if timeout == unix.infinite_timeout {
		timeval_timeout = &C.timeval(unsafe { nil })
	}

	match test {
		.read {
			net.socket_error(C.@select(handle + 1, &set, C.NULL, C.NULL, timeval_timeout))!
		}
		.write {
			net.socket_error(C.@select(handle + 1, C.NULL, &set, C.NULL, timeval_timeout))!
		}
		.except {
			net.socket_error(C.@select(handle + 1, C.NULL, C.NULL, &set, timeval_timeout))!
		}
	}

	return C.FD_ISSET(handle, &set)
}

// wait_for_common wraps the common wait code
fn wait_for_common(handle int, deadline time.Time, timeout time.Duration, test Select) ! {
	if deadline.unix == 0 {
		// do not accept negative timeout
		if timeout < 0 {
			return net.err_timed_out
		}
		ready := @select(handle, test, timeout)!
		if ready {
			return
		}
		return net.err_timed_out
	}
	// Convert the deadline into a timeout
	// and use that
	d_timeout := deadline.unix - time.now().unix
	if d_timeout < 0 {
		// deadline is in the past so this has already
		// timed out
		return net.err_timed_out
	}

	ready := @select(handle, test, d_timeout)!
	if ready {
		return
	}
	return net.err_timed_out
}

// wait_for_write waits for a write io operation to be available
fn wait_for_write(handle int, deadline time.Time, timeout time.Duration) ! {
	return wait_for_common(handle, deadline, timeout, .write)
}

// wait_for_read waits for a read io operation to be available
fn wait_for_read(handle int, deadline time.Time, timeout time.Duration) ! {
	return wait_for_common(handle, deadline, timeout, .read)
}

// no_deadline should be given to functions when no deadline is wanted (i.e. all functions
// return instantly)
const (
	no_deadline = time.Time{
		unix: 0
	}
)

// no_timeout should be given to functions when no timeout is wanted (i.e. all functions
// return instantly)
const (
	no_timeout = time.Duration(0)
)

// infinite_timeout should be given to functions when an infinite_timeout is wanted (i.e. functions
// only ever return with data)
const (
	infinite_timeout = time.infinite
)

[inline]
fn wrap_read_result(result int) !int {
	if result != 0 {
		return result
	}
	return error('none')
}
