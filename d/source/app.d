import std.stdio : writeln, toFile;
import std.datetime.stopwatch : StopWatch, AutoStart;
import asdf.serialization : deserialize, serializeToJson;
import std.file : readText;

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

void main()
{
	auto jsonText = readText("../posts.json");
	auto posts = deserialize!(Post[])(jsonText);

	auto sw = StopWatch(AutoStart.yes);

	int postsCount = cast(int) posts.length;
	auto relatedPosts = new RelatedPosts[postsCount];
	auto taggedPostsCount = new byte[postsCount];
	size_t[][string] tagMap;

	foreach (i, post; posts)
		foreach (tag; post.tags)
			tagMap[tag] ~= i;

	foreach (k, ref post; posts)
	{

		taggedPostsCount[] = 0;

		foreach (tag; post.tags)
			foreach (idx; tagMap[tag])
				taggedPostsCount[idx]++;

		taggedPostsCount[k] = 0;

		size_t minTags = 0;
		size_t[TopN * 2] top5;
		foreach (j, count; taggedPostsCount)
		{
			if (count > minTags)
			{
				auto upperBound = (TopN - 2) * 2;

				while (upperBound >= 0 && count > top5[upperBound])
				{
					auto idx = upperBound + 2;
					top5[idx .. idx + 2] = top5[upperBound .. upperBound + 2];
					upperBound -= 2;
				}

				top5[upperBound + 2] = count;
				top5[upperBound + 3] = j;

				minTags = top5[2 * (TopN - 1)];
			}
		}

		auto rp = &relatedPosts[k];
		rp._id = post._id;
		rp.tags = post.tags;
		foreach (i; 0 .. TopN)
			rp.related[i] = posts[top5[2 * i + 1]];
	}
	sw.stop();
	writeln("Processing time (w/o IO): ", sw.peek.total!"usecs" * 1.0 / 1000, "ms");
	toFile(serializeToJson(relatedPosts), "../related_posts_d.json");
}
