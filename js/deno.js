import { genRelatedPosts } from "./related.js";

const posts = JSON.parse(await Deno.readTextFile('../posts.json'));

const start = Date.now();

const allRelatedPosts = genRelatedPosts(posts);

console.log(`Processing time (w/o IO): ${Date.now() - start}ms`);

await Deno.writeTextFile('../related_posts_deno.json', JSON.stringify(allRelatedPosts));