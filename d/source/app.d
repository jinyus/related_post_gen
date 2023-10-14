import std.stdio : writeln, toFile;
import std.datetime.stopwatch : StopWatch, AutoStart;
import asdf.serialization : deserialize, serializeToJson;
import std.file : readText;
import core.memory;

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

void main()
{
	GC.disable();
	auto jsonText = readText("../posts.json");
	auto posts = deserialize!(Post[])(jsonText);

	auto sw = StopWatch(AutoStart.yes);

	int postsCount = cast(int) posts.length;
	auto relatedPosts = new RelatedPosts[postsCount];
	auto taggedPostsCount = new ubyte[postsCount];
	Post[TopN] topPosts;
	size_t[][string] tagMap;

	foreach (i, post; posts)
		foreach (tag; post.tags)
			tagMap[tag] ~= i;

	foreach (k, post; posts)
	{
		PostsWithSharedTags[TopN] top5;

		taggedPostsCount[] = 0;

		foreach (tag; post.tags)
			foreach (idx; tagMap[tag])
				taggedPostsCount[idx]++;

		taggedPostsCount[k] = 0;

		auto minTags = 0;
		foreach (j, count; taggedPostsCount)
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

		relatedPosts[k] = RelatedPosts(
			post._id,
			post.tags,
			topPosts
		);
	}
	sw.stop();
	writeln("Processing time (w/o IO): ", sw.peek.total!"usecs" * 1.0 / 1000, "ms");
	toFile(serializeToJson(relatedPosts), "../related_posts_d.json");
}
