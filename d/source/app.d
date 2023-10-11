import std.stdio: writeln, toFile;
import std.datetime.stopwatch: StopWatch, AutoStart;
import asdf.serialization: deserialize, serializeToJson;
import std.file: readText;
import std.algorithm: copy;

import memutils.hashmap: HashMap;
import memutils.vector : Array;

enum TopN = 5;

struct Post {
	string _id;
	string title;
	string[] tags;
}

struct RelatedPosts {
	string _id;
	string[] tags;
	Post[TopN] related;
}

struct PostsWithSharedTags {
	ulong post;
	uint sharedTags;
}

void main()
{
	auto jsonText = readText("../posts.json");
	auto posts = deserialize!(Post[])(jsonText);
	int postsCount = cast(int)posts.length;

	auto sw = StopWatch(AutoStart.no);
    sw.start();

    HashMap!(string, Array!size_t) tagMap;

	foreach(i, post; posts)
		foreach(tag; post.tags) {
            if (tag in tagMap)
			    tagMap[tag].pushBack(i);
            else
                tagMap[tag] = Array!size_t([i]);
		}

	auto relatedPosts = new RelatedPosts[postsCount];
	auto taggedPostsCount = new uint[postsCount];
    PostsWithSharedTags[TopN] top5;
	Post[TopN] topPosts;

	foreach(k, post; posts) {
		taggedPostsCount[] = 0;
		foreach(tag; post.tags) {
			foreach(idx; tagMap[tag][])
			    taggedPostsCount[idx]++;
		}
		taggedPostsCount[k] = 0;
        
        top5[] = PostsWithSharedTags(0,0);
        auto minTags = 0;
        foreach(j, count; taggedPostsCount) {
            if (count > minTags) {
                // Find position to insert
                auto pos = 4;
                while (pos >= 0 && top5[pos].sharedTags < count) {
                    pos--;
                }
                pos++;

                // Shift and insert
                if (pos < 4) {
                    copy(top5[pos..4], top5[(pos+1)..$]);
                }
                top5[pos] = PostsWithSharedTags(j, count);
                minTags = top5[4].sharedTags;
            }
        }

		foreach(i, t; top5)
			topPosts[i] = posts[t.post];
		
		relatedPosts[k] = RelatedPosts(
				posts[k]._id,
				posts[k].tags,
				topPosts
		);
	}
	sw.stop();
    writeln("Processing time (w/o IO): ", sw.peek.total!"usecs"*1.0/1000, "ms");
	toFile(serializeToJson(relatedPosts), "../related_posts_d.json");
}
