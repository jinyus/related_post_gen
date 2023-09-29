module builtin

fn __heap_base() voidptr
fn __memory_size() usize
fn __memory_grow(size usize) usize
fn __memory_fill(dest &u8, value isize, size isize)
fn __memory_copy(dest &u8, src &u8, size isize)

// add doc comments for the below functions

// __reinterpret_f32_u32 converts a `u32` to a `f32` without changing the bit pattern.
pub fn __reinterpret_f32_u32(v f32) u32

// __reinterpret_u32_f32 converts a `f32` to a `u32` without changing the bit pattern.
pub fn __reinterpret_u32_f32(v u32) f32

// __reinterpret_f64_u64 converts a `u64` to a `f64` without changing the bit pattern.
pub fn __reinterpret_f64_u64(v f64) u64

// __reinterpret_u64_f64 converts a `f64` to a `u64` without changing the bit pattern.
pub fn __reinterpret_u64_f64(v u64) f64

// vcalloc dynamically allocates a zeroed `n` bytes block of memory on the heap.
// vcalloc returns a `byteptr` pointing to the memory address of the allocated space.
// Unlike `v_calloc` vcalloc checks for negative values given in `n`.
[unsafe]
pub fn vcalloc(n isize) &u8 {
	if n <= 0 {
		panic('vcalloc(n <= 0)')
	} else if n == 0 {
		return &u8(0)
	}

	res := unsafe { malloc(n) }

	__memory_fill(res, 0, n)

	return res
}

// isnil returns true if an object is nil (only for C objects).
[inline]
pub fn isnil(v voidptr) bool {
	return v == 0
}

// vmemcpy copies n bytes from memory area src to memory area dest.
// The memory areas **CAN** overlap. vmemcpy returns a pointer to `dest`.
[unsafe]
pub fn vmemcpy(dest voidptr, const_src voidptr, n isize) voidptr {
	__memory_copy(dest, const_src, n)
	return dest
}

// vmemmove copies n bytes from memory area src to memory area dest.
// The memory areas **CAN** overlap. vmemmove returns a pointer to `dest`.
[unsafe]
pub fn vmemmove(dest voidptr, const_src voidptr, n isize) voidptr {
	__memory_copy(dest, const_src, n)
	return dest
}

// vmemset fills the first `n` bytes of the memory area pointed to by `s`,
// with the constant byte `c`. It returns a pointer to the memory area `s`.
[unsafe]
pub fn vmemset(s voidptr, c int, n isize) voidptr {
	__memory_fill(s, c, n)
	return s
}
