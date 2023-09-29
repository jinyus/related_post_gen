import os
import net.unix

const tfolder = os.join_path(os.vtmp_dir(), 'v', 'unix_test')

const test_port = os.join_path(tfolder, 'unix_domain_socket')

fn testsuite_begin() {
	os.mkdir_all(tfolder) or {}
}

fn testsuite_end() {
	os.rmdir_all(tfolder) or {}
}

fn handle_conn(mut c unix.StreamConn) {
	for {
		mut buf := []u8{len: 100, init: 0}
		read := c.read(mut buf) or {
			println('Server: connection dropped')
			return
		}
		c.write(buf[..read]) or {
			println('Server: connection dropped')
			return
		}
	}
}

fn echo_server(mut l unix.StreamListener) ! {
	for {
		mut new_conn := l.accept() or { continue }
		spawn handle_conn(mut new_conn)
	}
}

fn echo() ! {
	mut c := unix.connect_stream(test_port)!
	defer {
		c.close() or {}
	}
	data := 'Hello from vlib/net!'
	c.write_string(data)!
	mut buf := []u8{len: 4096}
	read := c.read(mut buf)!
	assert read == data.len
	for i := 0; i < read; i++ {
		assert buf[i] == data[i]
	}
	println('Got "${buf.bytestr()}"')
	return
}

fn test_tcp() {
	assert os.exists(test_port) == false
	mut l := unix.listen_stream(test_port) or { panic(err) }
	spawn echo_server(mut l)
	echo() or { panic(err) }
	l.close() or {}
}
