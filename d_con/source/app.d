import std.stdio : writeln, toFile;
import std.datetime.stopwatch : StopWatch, AutoStart;
import asdf.serialization : deserialize, serializeToJson;
import std.file : readText;
import std.algorithm : copy;
import std.parallelism : parallel, taskPool;

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
	int postsCount = cast(int)posts.length;

	// Could be optimized, but is safe as is
	ulong[][string] tagMap;

	auto sw = StopWatch(AutoStart.yes);

	foreach (i, post; posts)
		foreach (tag; post.tags)
			tagMap[tag] ~= i;

	auto related = new RelatedPosts[postsCount];
	ubyte[] result = new ubyte[postsCount];

	auto wls = taskPool.workerLocalStorage(new ubyte[postsCount]);

	foreach (k, ref post; posts.parallel)
	{
		ubyte[] tpc = wls.get;
		tpc[] = 0;

		foreach (tag; post.tags)
			foreach (idx; tagMap[tag])
				tpc[idx]++;

		tpc[k] = 0;

		top5[] = PostsWithSharedTags(0, 0);
		ubyte minTags = 0;

		foreach (j, count; tpc)
		{
			if (count > minTags)
			{
				int upperBound = TopN - 2;

				while (upperBound >= 0 && count > top5[upperBound].sharedTags)
				{
					top5[upperBound + 1] = top5[upperBound];
					upperBound--;
				}

				top5[upperBound + 1] = PostsWithSharedTags(j, count);

				minTags = top5[TopN - 1].sharedTags;
			}
		}

		foreach (i, t; top5)
			topPosts[i] = posts[t.post];

		related[k] = RelatedPosts(
			posts[k]._id,
			posts[k].tags,
			topPosts
		);
	}

	foreach (x; wls.toRange)
		result[] += x[];

	sw.stop();

	writeln("Processing time (w/o IO): ", sw.peek.total!"usecs" * 1.0 / 1000, "ms");
	toFile(serializeToJson(related), "../related_posts_d.json");
}
