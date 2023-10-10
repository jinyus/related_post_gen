import { genRelatedPosts } from "./related.js";

const posts = await Bun.file('../posts.json').json();

const start = Date.now();

const allRelatedPosts = genRelatedPosts(posts);

console.log(`Processing time (w/o IO): ${Date.now() - start}ms`);

await Bun.write('../related_posts_bun.json', JSON.stringify(allRelatedPosts));