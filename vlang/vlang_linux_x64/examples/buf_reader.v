// Simple raw HTTP head request
import net
import time
import io

fn main() {
	// Make a new connection
	mut conn := net.dial_tcp('google.com:80')!
	// Simple http HEAD request for a file
	conn.write_string('GET /index.html HTTP/1.0\r\n\r\n')!
	// Wrap in a buffered reader
	mut r := io.new_buffered_reader(reader: conn)
	for {
		l := r.read_line() or { break }
		println('${l}')
		// Make it nice and obvious that we are doing this line by line
		time.sleep(100 * time.millisecond)
	}
}
