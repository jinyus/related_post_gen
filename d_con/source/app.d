import std.stdio : writeln, toFile;
import std.datetime.stopwatch : StopWatch, AutoStart;
import std.file : readText;
import std.parallelism : taskPool, parallel;
import ldc.simd;
import asdf.serialization : deserialize, serializeToJson;

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

enum vSize = 16;
alias hashmap = size_t[][string];
alias vec_u = __vector(ubyte[vSize]);

void main()
{
	import core.memory : GC;

	auto jsonText = readText("../posts.json");
	auto posts = deserialize!(Post[])(jsonText);

	GC.collect();

	auto sw = StopWatch(AutoStart.yes);

	int postsCount = cast(int) posts.length;
	auto relatedPosts = new RelatedPosts[postsCount];
	hashmap tagMap;

	foreach (i, post; posts)
		foreach (tag; post.tags)
			tagMap[tag] ~= i;

	auto nVectors = (postsCount + vSize - 1) / vSize;
	auto taggedPostsVecThreadPool = taskPool.workerLocalStorage(new vec_u[nVectors]);

	foreach (k, post; parallel(posts, 1))
	{
		PostsWithSharedTags[TopN] top5;

		auto taggedPostsVec = taggedPostsVecThreadPool.get;
		auto taggedPostsCount = cast(ubyte[]) taggedPostsVec;
		taggedPostsCount[] = 0;

		foreach (tag; post.tags)
			foreach (idx; tagMap[tag])
				taggedPostsCount[idx]++;

		taggedPostsCount[k] = 0;

		vec_u minTags = 0;

		foreach (vecIdx, vecElem; taggedPostsVec)
		{
			if ((vecElem > minTags) is vec_u.init)
				continue;

			foreach (l, el; vecElem)
			{
				if (el > minTags[0])
				{
					int upperBound = TopN - 2;

					while (upperBound >= 0 && el > top5[upperBound].sharedTags)
					{
						top5[upperBound + 1] = top5[upperBound];
						upperBound--;
					}

					top5[upperBound + 1] = PostsWithSharedTags(vecIdx * vSize + l, el);

					minTags[] = top5[TopN - 1].sharedTags;
				}
			}
		}

		Post[TopN] topPosts;

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
