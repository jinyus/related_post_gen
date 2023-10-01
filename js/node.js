import * as fs from "fs";
import { genRelatedPosts } from "./related.js";

const start = Date.now();

const posts = JSON.parse(
    fs.readFileSync("../posts.json", {
        encoding: "utf-8",
    })
);

const allRelatedPosts = genRelatedPosts(posts);

console.log(`Processing time (w/o IO): ${Date.now() - start}ms`);

fs.writeFileSync("../related_posts_node.json", JSON.stringify(allRelatedPosts));
