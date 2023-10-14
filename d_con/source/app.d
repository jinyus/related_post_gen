import std.stdio : writeln, toFile;
import std.datetime.stopwatch : StopWatch, AutoStart;
import asdf.serialization : deserialize, serializeToJson;
import std.file : readText;
import std.parallelism : taskPool, parallel;
import schlib.newaa, schlib.lookup;
import std.algorithm, std.array;

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

struct TagMap {
   string tag;
   ulong[] posts;
}

PostsWithSharedTags[TopN] top5;
Post[TopN] topPosts;

void main()
{
	auto jsonText = readText("../posts.json");
	auto posts = deserialize!(Post[])(jsonText);
	int postsCount = cast(int) posts.length;
	auto relatedPosts = new RelatedPosts[postsCount];
	Hash!(string, ulong[]) tagMap;

	auto sw = StopWatch(AutoStart.yes);

	foreach (i, post; posts)
		foreach (tag; post.tags)
			if (auto arr = tag in tagMap)
				(*arr) ~= i;
			else
				tagMap[tag] = [i];

	TagMap[] lookup = tagMap.byKeyValue.map!(kv => TagMap(kv.key, kv.value)).array;
	auto index = lookup.fieldLookup!"tag";

	auto taggedPostsCountThreadPool = taskPool.workerLocalStorage(new ubyte[postsCount]);

	foreach (k, ref post; posts.parallel)
	{
		ubyte[] taggedPostsCount = taggedPostsCountThreadPool.get;
		taggedPostsCount[] = 0;

		foreach (tag; post.tags)
			foreach (idx; index[tag].posts)
				taggedPostsCount[idx]++;

		taggedPostsCount[k] = 0;

		top5[] = PostsWithSharedTags(0, 0);

		ubyte minTags = 0;
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
	toFile(serializeToJson(relatedPosts), "../related_posts_d_con.json");
}
