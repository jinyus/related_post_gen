import std.stdio : writeln, toFile;
import std.datetime.stopwatch : StopWatch, AutoStart;
import asdf.serialization : deserialize, serializeToJson;
import std.file : readText;

enum TopN = 5;

union Chunk
{
	enum bytesPerChunk = 64;
	ulong[bytesPerChunk / ulong.sizeof] ula;
	ubyte[ula.sizeof] counts;
	static auto allocChunksFor(size_t n) => new Chunk[(n + counts.length - 1) / counts.length];
}

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

	auto relatedPosts = new RelatedPosts[posts.length];

	auto mapper = PostIdxMapper(posts[]);

	auto chunks = Chunk.allocChunksFor(posts.length);
	auto relatedCounts = (cast(ubyte[])(chunks))[0 .. posts.length];

	foreach (myPostIdx, ref post; posts)
	{
		relatedCounts[] = 0;
		foreach (tagIdx; mapper.postIdxToTagIDs[myPostIdx])
			foreach (postIdx; mapper.tagIDToPostIdxs[tagIdx])
				relatedCounts[postIdx]++;

		relatedCounts[myPostIdx] = 0; // exclude ourselves

		enum evenOperandMask = (255UL << 48) | (255UL << 32) | (255UL << 16) | (255UL << 0);
		enum overflowMask = ~evenOperandMask;
		ulong primedForOverflow = evenOperandMask; // primed to overflow for anything gt 0
		ubyte least;
		ulong[TopN] topn;
		enum idxOfLeast = topn.length - 1U;

		foreach (chunkIdx, ref const chunk; chunks)
		{
			ulong aggregatedOverflow;
			static foreach (i; 0 .. chunk.ula.length)
			{
				aggregatedOverflow |= (chunk.ula[i] & evenOperandMask) + primedForOverflow;
				aggregatedOverflow |= ((chunk.ula[i] >>> 8) & evenOperandMask) + primedForOverflow; // now do the odd operands
			}
			if (const sawSomethingGreaterThanLeast = aggregatedOverflow & overflowMask)
			{
				ulong shiftedIdx = (chunkIdx * Chunk.sizeof) << 8;
				foreach (count; chunk.counts)
				{
					if (count > least)
					{
						const newElement = shiftedIdx | count;
						topn[idxOfLeast] = newElement; // prep for the case where we are the new 'least'
						static foreach_reverse (i; 0 .. idxOfLeast)
						{
							if (count <= cast(ubyte) topn[i])
								goto doneShuffling;
							topn[i + 1] = topn[i];
							topn[i] = newElement;
						}
					doneShuffling:
						least = cast(ubyte) topn[idxOfLeast];
					}
					shiftedIdx += 256UL;
				}
				// update given the new 'least'
				primedForOverflow = ubyte.max - least;
				primedForOverflow |= primedForOverflow << 16;
				primedForOverflow |= primedForOverflow << 32;
			}
		}
		foreach (ref val; topn)
			val >>>= 8; // drop the count, recover the index

		auto rp = &relatedPosts[myPostIdx];
		rp._id = post._id;
		rp.tags = post.tags;
		foreach (i, ref relatedPost; rp.related)
			relatedPost = posts[topn[i]];
	}

	sw.stop();
	writeln("Processing time (w/o IO): ", sw.peek.total!"usecs" * 1.0 / 1000, "ms");
	toFile(serializeToJson(relatedPosts), "../related_posts_d.json");
}

struct PostIdxMapper
{
	size_t[][] postIdxToTagIDs;
	size_t[][] tagIDToPostIdxs;

	this(const(Post)[] posts)
	{
		size_t tagIDCount;
		foreach (ref const post; posts)
			tagIDCount += post.tags.length;
		size_t[] remaining;
		remaining.length = tagIDCount;

		size_t[string] tag2ID;

		postIdxToTagIDs.length = posts.length;
		foreach (myPostIdx, ref const post; posts)
		{
			foreach (i, ref const tag; post.tags)
				remaining[i] = tag2ID.require(tag, tag2ID.length - 1U);
			postIdxToTagIDs[myPostIdx] = remaining[0 .. post.tags.length];
			remaining = remaining[post.tags.length .. $];
		}

		tagIDToPostIdxs.length = tag2ID.length;
		foreach (myPostIdx, tagIDs; postIdxToTagIDs)
			foreach (tagID; tagIDs)
				tagIDToPostIdxs[tagID] ~= myPostIdx;
	}
}
