import std.file : readText;
import std.stdio : writeln, toFile;
import core.time : MonoTime;
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

void main()
{
	auto jsonText = readText("../posts.json");
	auto posts = deserialize!(Post[])(jsonText);

	auto startTime = MonoTime.currTime;

	alias Chunk = ubyte[64];
	auto chunks = new Chunk[(posts.length + Chunk.length - 1) / Chunk.length];
	auto relatedCounts = (cast(ubyte[]) chunks)[0 .. posts.length];
	auto relatedPosts = new RelatedPosts[posts.length];

	size_t[][string] tagToPostIdxs;
	foreach (postIdx, ref post; posts)
		foreach (ref tag; post.tags)
			tagToPostIdxs[tag] ~= postIdx;

	foreach (myPostIdx, ref post; posts)
	{
		relatedCounts[] = 0;
		foreach (ref const tag; post.tags)
			foreach (postIdx; tagToPostIdxs[tag])
				relatedCounts[postIdx]++;
		relatedCounts[myPostIdx] = 0; // exclude ourselves

		ulong[TopN] topn;
		ubyte smallestInTopN;
		foreach (chunkIdx, ref const chunk; chunks)
		{
			ubyte atLeastOneIsBigEnough;
			foreach (count; chunk)
				atLeastOneIsBigEnough |= (count > smallestInTopN);
			if (atLeastOneIsBigEnough)
			{
				foreach (idx, count; chunk)
				{
					if (const notBigEnough = count <= smallestInTopN)
						continue;
					const newest = (((chunkIdx * Chunk.length) + idx) * 256UL) | count;
					topn[$ - 1] = newest; // enter as the lowest then shuffle up as needed
					foreach_reverse (i, ref higher; topn[0 .. $ - 1])
					{
						if (const doneShuffling = count <= cast(ubyte) higher)
							break;
						topn[i + 1] = higher;
						higher = newest;
					}
					smallestInTopN = cast(ubyte) topn[$ - 1];
				}
			}
		}

		auto rp = &relatedPosts[myPostIdx];
		rp._id = post._id;
		rp.tags = post.tags;
		foreach (rank, ref related; rp.related) // rank 0 is best, rank 1 is next best, ...
			related = posts[topn[rank] >>> 8]; // shift to recover the index
	}

	const duration = MonoTime.currTime - startTime;

	writeln("Processing time (w/o IO): ", duration.total!"usecs" * 1.0 / 1000, "ms");
	toFile(serializeToJson(relatedPosts), "../related_posts_d2.json");
}
