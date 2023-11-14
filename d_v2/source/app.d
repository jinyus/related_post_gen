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

union Chunk
{
	ulong[8] ula; // some CPUs do better with more than 8, others with less
	ubyte[ula.sizeof] counts;
	static size_t countsToChunks(size_t n) => (n + (counts.length - 1U)) / counts.length;
}

void main()
{
	auto jsonText = readText("../posts.json");
	auto posts = deserialize!(Post[])(jsonText);

	auto startTime = MonoTime.currTime;

	size_t[][string] tag2PostIdxs;
	foreach (postIdx, ref const post; posts)
		foreach (ref const tag; post.tags)
			tag2PostIdxs[tag] ~= postIdx;

	auto relatedPosts = new RelatedPosts[posts.length];
	auto chunks = new Chunk[Chunk.countsToChunks(posts.length)];
	auto relatedCounts = (cast(ubyte[])(chunks))[0 .. posts.length];

	foreach (myPostIdx, ref post; posts)
	{
		relatedCounts[] = 0;
		foreach (ref const tag; post.tags)
			foreach (postIdx; tag2PostIdxs[tag])
				relatedCounts[postIdx]++;
		relatedCounts[myPostIdx] = 0; // exclude ourselves

		ulong[TopN] topn;

		// D's __vector is clearer and faster here but that's not allowed so SWAR it is
		enum ulong evens = 0x00FF_00FF_00FF_00FFUL;
		ulong primedForOverflow = evens; // primed to overflow for anything gt 0
		ubyte least;
		foreach (chunkIdx, ref const chunk; chunks)
		{
			ulong overflow;
			static foreach (i; 0 .. chunk.ula.length)
			{
				overflow |= primedForOverflow + (evens & chunk.ula[i]);
				overflow |= primedForOverflow + (evens & (chunk.ula[i] >>> 8));
			}
			if (const nothingInThisChunkIsLargerthanLeast = !(overflow & ~evens))
				continue;

			foreach (idx, count; chunk.counts)
			{
				if (count > least)
				{
					const x = (((chunkIdx * Chunk.counts.length) + idx) * 256UL) | count;
					topn[$ - 1] = x; // enter as the lowest then shuffle up as needed
					foreach_reverse (i, ref higher; topn[0 .. $ - 1])
					{
						if (const doneShuffling = count <= cast(ubyte) higher)
							break;
						topn[i + 1] = higher;
						higher = x;
					}
					least = cast(ubyte) topn[$ - 1];
				}
			}
			primedForOverflow = ubyte.max - least;
			primedForOverflow |= (primedForOverflow << 16);
			primedForOverflow |= (primedForOverflow << 32);
		}

		auto rp = &relatedPosts[myPostIdx];
		rp._id = post._id;
		rp.tags = post.tags;
		foreach (i; 0 .. rp.related.length)
			rp.related[i] = posts[topn[i] >>> 8]; // shift recovers the index
	}
	const duration = MonoTime.currTime - startTime;

	writeln("Processing time (w/o IO): ", duration.total!"usecs" * 1.0 / 1000, "ms");
	toFile(serializeToJson(relatedPosts), "../related_posts_d2.json");
}
