import std.stdio : writeln, toFile;
import std.datetime.stopwatch : StopWatch, AutoStart;
import std.file : readText;
import std.parallelism : taskPool, parallel;
import core.simd : Vector;
import ldc.simd;
import std.algorithm : max;
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

PostsWithSharedTags[TopN] top5;
Post[TopN] topPosts;

enum vSize = 16;
alias hashmap = size_t[][string];
alias vec_u = Vector!(byte[vSize]);

bool vecLessThan(vec_u a, vec_u b)
{
	foreach (index; 0 .. vSize)
	{
		if (a[index] > b[index])
		{
			return false;
		}
	}
	return true;
}

vec_u vecMax(vec_u a, vec_u b)
{
	vec_u result;

	foreach (index; 0 .. vSize)
	{
		auto value = max(a[index], b[index]);
		result[index] = value;
	}

	return result;
}

void main()
{
	import core.memory : GC;

	auto jsonText = readText("../posts.json");
	auto posts = deserialize!(Post[])(jsonText);

	GC.collect();
	GC.disable();

	auto sw = StopWatch(AutoStart.yes);

	int postsCount = cast(int) posts.length;
	auto relatedPosts = new RelatedPosts[postsCount];
	hashmap tagMap;

	foreach (i, post; posts)
		foreach (tag; post.tags)
			tagMap[tag] ~= i;

	auto nVectors = (postsCount + vSize - 1) / vSize;
	auto taggedPostsVecThreadPool = taskPool.workerLocalStorage(new vec_u[nVectors]);

	foreach (k, ref post; parallel(posts, 5))
	{
		vec_u[] taggedPostsVec = taggedPostsVecThreadPool.get;
		auto taggedPostsCount = cast(ubyte[]) taggedPostsVec;
		taggedPostsCount[] = 0;

		foreach (tag; post.tags)
			foreach (idx; tagMap[tag])
				taggedPostsCount[idx]++;

		taggedPostsCount[k] = 0;
		auto posVecLen = taggedPostsVec.length;

		top5[] = PostsWithSharedTags(0, 0);

		vec_u minTags = 0;
		ulong pv = 0;
		vec_u neqMask = 0;
		while (pv < posVecLen)
		{
			while (pv < posVecLen && vecLessThan(taggedPostsVec[pv], minTags))
				pv++;
			if (pv < posVecLen)
			{
				vec_u counts = vecMax(taggedPostsVec[pv], minTags);
				if ((counts != minTags) is neqMask)
				{
					foreach (l; 0 .. posVecLen)
					{
						if (counts[l] > minTags[0])
						{
							int upperBound = TopN - 2;

							while (upperBound >= 0 && counts[l] > top5[upperBound].sharedTags)
							{
								top5[upperBound + 1] = top5[upperBound];
								upperBound--;
							}

							top5[upperBound + 1] = PostsWithSharedTags(pv * vSize + l, counts[k]);

							minTags = cast(vec_u) top5[TopN - 1].sharedTags;
						}
					}
				}
			}
			pv++;
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
	GC.enable();
	writeln("Processing time (w/o IO): ", sw.peek.total!"usecs" * 1.0 / 1000, "ms");
	toFile(serializeToJson(relatedPosts), "../related_posts_d_con.json");
}
