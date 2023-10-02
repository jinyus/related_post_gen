import { dlopen, FFIType, suffix, ptr, CString } from "bun:ffi";

// Load the Rust library
const path = `./target/release/librelatedposts.${suffix}`;

const {
  symbols: {
    get_related_posts,
    free_related_posts,
  },
} = dlopen(
  path,
  {
    get_related_posts: {
      args: [FFIType.ptr, FFIType.u64],
      returns: FFIType.ptr, // Update this to a struct type containing a pointer and a length
    },
    free_related_posts: {
      args: [FFIType.ptr],
      returns: FFIType.void,
    },
  },
);

async function genRelatedPostsUsingRust(posts) {
  const postsJson = JSON.stringify(posts);

  const buffer = Buffer.from(postsJson, 'utf-8');

  const resultPtr = get_related_posts(ptr(buffer), buffer.length);
  const result = new CString(resultPtr);

  return JSON.parse(result);
}

const posts = await Bun.file('../posts.json').json();

const start = Date.now();

const allRelatedPosts = await genRelatedPostsUsingRust(posts);

console.log(`Processing time (w/o IO): ${Date.now() - start}ms`);

await Bun.write('../related_posts_bun_rust_ffi.json', JSON.stringify(allRelatedPosts));
