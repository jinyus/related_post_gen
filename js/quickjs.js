import * as std from 'std';
import { genRelatedPosts } from "./related.js";

const file = std.open('../posts.json', 'r');
const content = file.readAsString();
const posts = JSON.parse(content);

const start = Date.now();

const allRelatedPosts = genRelatedPosts(posts);

console.log(`Processing time (w/o IO): ${Date.now() - start}ms`);

const ofile = std.open('../related_posts_quickjs.json', 'w+');
ofile.puts(JSON.stringify(allRelatedPosts));
ofile.close(ofile);