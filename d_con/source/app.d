import std.stdio : writeln, toFile;
import std.datetime.stopwatch : StopWatch, AutoStart;
import asdf.serialization : deserialize, serializeToJson;
import std.file : readText;
import std.parallelism : taskPool, parallel;

enum TopN = 5;

struct Post
{
	string _id;
	string title;
	string[] tags;
}

struct RelatedPosts
{
	string _id;
	string[] tags;
	Post[TopN] related;
}

struct PostsWithSharedTags
{
	ulong post;
	ubyte sharedTags;
}

PostsWithSharedTags[TopN] top5;
Post[TopN] topPosts;

void main()
{
	auto jsonText = readText("../posts.json");
	auto posts = deserialize!(Post[])(jsonText);
	int postsCount = cast(int) posts.length;

	auto sw = StopWatch(AutoStart.yes);

	size_t[][string] tagMap;

	foreach (i, post; posts)
		foreach (tag; post.tags)
			tagMap[tag] ~= i;

	auto relatedPosts = new RelatedPosts[postsCount];
	auto taggedPostsCountThreadPool = taskPool.workerLocalStorage(new ubyte[postsCount]);
	
	foreach (k, ref post; posts.parallel)
	{
		ubyte[] taggedPostsCount = taggedPostsCountThreadPool.get;
		taggedPostsCount[] = 0;

		foreach (tag; post.tags)
			foreach (idx; tagMap[tag])
				taggedPostsCount.ptr[idx]++;

		taggedPostsCount[k] = 0;

		top5[] = PostsWithSharedTags(0, 0);

		ubyte minTags = 0;
		foreach (j, count; taggedPostsCount)
		{
			if (count > minTags)
			{
                // Find position to insert
                auto pos = 4;
                while (pos >= 0 && top5[pos].sharedTags < count) {
                    pos--;
                }
                pos++;

                // Shift and insert
                if (pos < 4) {
                    foreach_reverse (idx; pos .. 4)
                        top5.ptr[idx + 1] = top5.ptr[idx];
                }
                top5[pos] = PostsWithSharedTags(j, count);
                minTags = top5[4].sharedTags;
			}
		}

		foreach (i, t; top5)
			topPosts[i] = posts[t.post];

		relatedPosts[k] = RelatedPosts(
			post._id,
			post.tags,
			topPosts
		);
	}
	sw.stop();
	writeln("Processing time (w/o IO): ", sw.peek.total!"usecs" * 1.0 / 1000, "ms");
	toFile(serializeToJson(relatedPosts), "../related_posts_d_con.json");
}

