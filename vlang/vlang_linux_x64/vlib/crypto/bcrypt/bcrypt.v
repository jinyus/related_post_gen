module bcrypt

import encoding.base64
import crypto.rand
import crypto.blowfish

pub const (
	min_cost              = 4
	max_cost              = 31
	default_cost          = 10
	salt_length           = 16
	max_crypted_hash_size = 23
	encoded_salt_size     = 22
	encoded_hash_size     = 31
	min_hash_size         = 59

	major_version         = '2'
	minor_version         = 'a'
)

pub struct Hashed {
mut:
	hash  []u8
	salt  []u8
	cost  int
	major string
	minor string
}

// free the resources taken by the Hashed `h`
[unsafe]
pub fn (mut h Hashed) free() {
	$if prealloc {
		return
	}
	unsafe {
		h.salt.free()
		h.hash.free()
	}
}

const magic_cipher_data = [u8(0x4f), 0x72, 0x70, 0x68, 0x65, 0x61, 0x6e, 0x42, 0x65, 0x68, 0x6f,
	0x6c, 0x64, 0x65, 0x72, 0x53, 0x63, 0x72, 0x79, 0x44, 0x6f, 0x75, 0x62, 0x74]

// generate_from_password return a bcrypt string from Hashed struct.
pub fn generate_from_password(password []u8, cost int) !string {
	mut p := new_from_password(password, cost) or { return error('Error: ${err}') }
	x := p.hash_u8()
	return x.bytestr()
}

// compare_hash_and_password compares a bcrypt hashed password with its possible hashed version.
pub fn compare_hash_and_password(password []u8, hashed_password []u8) ! {
	mut p := new_from_hash(hashed_password) or { return error('Error: ${err}') }
	p.salt << `=`
	p.salt << `=`
	other_hash := bcrypt(password, p.cost, p.salt) or { return error('err') }

	mut other_p := Hashed{
		hash: other_hash
		salt: p.salt
		cost: p.cost
		major: p.major
		minor: p.minor
	}

	if p.hash_u8() != other_p.hash_u8() {
		return error('mismatched hash and password')
	}
}

// generate_salt generate a string to be treated as a salt.
pub fn generate_salt() string {
	randbytes := rand.bytes(bcrypt.salt_length) or { panic(err) }
	return randbytes.bytestr()
}

// new_from_password converting from password to a Hashed struct with bcrypt.
fn new_from_password(password []u8, cost int) !&Hashed {
	mut cost_ := cost
	if cost < bcrypt.min_cost {
		cost_ = bcrypt.default_cost
	}
	mut p := &Hashed{}
	p.major = bcrypt.major_version
	p.minor = bcrypt.minor_version

	if cost_ < bcrypt.min_cost || cost_ > bcrypt.max_cost {
		return error('invalid cost')
	}
	p.cost = cost_

	salt := generate_salt().bytes()
	p.salt = base64.encode(salt).bytes()
	hash := bcrypt(password, p.cost, p.salt) or { return err }
	p.hash = hash
	return p
}

// new_from_hash converting from hashed data to a Hashed struct.
fn new_from_hash(hashed_secret []u8) !&Hashed {
	mut tmp := hashed_secret.clone()
	if tmp.len < bcrypt.min_hash_size {
		return error('hash to short')
	}

	mut p := &Hashed{}
	mut n := p.decode_version(tmp) or { return err }
	tmp = tmp[n..].clone()

	n = p.decode_cost(tmp) or { return err }
	tmp = tmp[n..].clone()

	p.salt = tmp[..bcrypt.encoded_salt_size].clone()
	p.hash = tmp[bcrypt.encoded_salt_size..].clone()

	return p
}

// bcrypt hashing passwords.
fn bcrypt(password []u8, cost int, salt []u8) ![]u8 {
	mut cipher_data := []u8{len: 72 - bcrypt.magic_cipher_data.len, init: 0}
	cipher_data << bcrypt.magic_cipher_data

	mut bf := expensive_blowfish_setup(password, u32(cost), salt) or { return err }

	for i := 0; i < 24; i += 8 {
		for j := 0; j < 64; j++ {
			bf.encrypt(mut cipher_data[i..i + 8], cipher_data[i..i + 8])
		}
	}

	hash := base64.encode(cipher_data[..bcrypt.max_crypted_hash_size])
	return hash.bytes()
}

// expensive_blowfish_setup generate a Blowfish cipher, given key, cost and salt.
fn expensive_blowfish_setup(key []u8, cost u32, salt []u8) !&blowfish.Blowfish {
	csalt := base64.decode(salt.bytestr())
	// Bug compatibility with C bcrypt implementations, which use the trailing NULL in the key string during expansion.
	// See https://cs.opensource.google/go/x/crypto/+/master:bcrypt/bcrypt.go;l=226
	mut ckey := key.clone()
	ckey << 0

	mut bf := blowfish.new_salted_cipher(ckey, csalt) or { return err }

	mut i := u64(0)
	mut rounds := u64(0)
	rounds = 1 << cost
	for i = 0; i < rounds; i++ {
		blowfish.expand_key(ckey, mut bf)
		blowfish.expand_key(csalt, mut bf)
	}

	return &bf
}

// hash_byte converts the hash value to a byte array.
fn (mut h Hashed) hash_u8() []u8 {
	mut arr := []u8{len: 65, init: 0}
	arr[0] = `$`
	arr[1] = h.major[0]
	mut n := 2
	if h.minor != '0' {
		arr[2] = h.minor[0]
		n = 3
	}
	arr[n] = `$`
	n++
	copy(mut arr[n..], '${int(h.cost):02}'.bytes())
	n += 2
	arr[n] = `$`
	n++
	copy(mut arr[n..], h.salt)
	n += bcrypt.encoded_salt_size
	copy(mut arr[n..], h.hash)
	n += bcrypt.encoded_hash_size
	res := arr[..n].clone()
	return res
}

// decode_version decode bcrypt version.
fn (mut h Hashed) decode_version(sbytes []u8) !int {
	if sbytes[0] != `$` {
		return error("bcrypt hashes must start with '$'")
	}
	if sbytes[1] != bcrypt.major_version[0] {
		return error('bcrypt algorithm version ${bcrypt.major_version}')
	}
	h.major = sbytes[1].ascii_str()
	mut n := 3
	if sbytes[2] != `$` {
		h.minor = sbytes[2].ascii_str()
		n++
	}
	return n
}

// decode_cost extracts the value of cost and returns the next index in the array.
fn (mut h Hashed) decode_cost(sbytes []u8) !int {
	cost := sbytes[0..2].bytestr().int()
	check_cost(cost) or { return err }
	h.cost = cost
	return 3
}

// check_cost check for reasonable quantities.
fn check_cost(cost int) ! {
	if cost < bcrypt.min_cost || cost > bcrypt.max_cost {
		return error('invalid cost')
	}
}
