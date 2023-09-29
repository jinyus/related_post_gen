import os
import stbi

const tfolder = os.join_path(os.vtmp_dir(), 'v', 'stbi')

fn testsuite_begin() {
	os.mkdir_all(tfolder) or {}
}

fn testsuite_end() {
	os.rmdir_all(tfolder) or {}
}

fn test_stbi_read_write() {
	vroot := @VEXEROOT
	path := os.join_path(vroot, 'examples', 'assets', 'logo.png')
	println('Source path: ${path}')
	d_s := stbi.load(path) or { panic(err) }
	println('Image source data:\n ${d_s}')

	out_path := os.join_path(tfolder, 'test.png')
	println('Out path: ${out_path}')
	stbi.stbi_write_png(out_path, d_s.width, d_s.height, 4, d_s.data, d_s.width * 4) or {
		panic(err)
	}

	d_d := stbi.load(out_path) or { panic(err) }
	println('Image dest data:\n ${d_d}')

	assert d_s.width == d_d.width
	assert d_s.height == d_d.height
	assert d_s.nr_channels == d_d.nr_channels

	mut v_s := &u32(d_s.data)
	mut v_d := &u32(d_d.data)
	mut delta := i64(0)
	for index in 0 .. (d_d.width * d_d.width) {
		unsafe {
			delta += v_s[index] - v_d[index]
		}
	}
	assert 0 == delta
	os.rm(out_path) or {}
}

fn test_stbi_resize() {
	vroot := @VEXEROOT
	path := os.join_path(vroot, 'examples', 'assets', 'logo.png')
	println('Source path: ${path}')
	d_s := stbi.load(path) or { panic(err) }
	println('Image source data:\n ${d_s}')

	new_width, new_height := 100, 100

	d_r := stbi.resize_uint8(d_s, new_width, new_height) or { panic(err) }
	println('Resized Image source data:\n ${d_s}')

	out_path := os.join_path(tfolder, 'test.png')
	println('Out path: ${out_path}')
	stbi.stbi_write_png(out_path, d_r.width, d_r.height, 4, d_r.data, d_r.width * 4) or {
		panic(err)
	}

	d_d := stbi.load(out_path) or { panic(err) }
	println('Image dest data:\n ${d_d}')

	assert d_d.width == new_width
	assert d_d.height == new_height
	assert d_d.nr_channels == d_r.nr_channels
	os.rm(out_path) or {}
}
