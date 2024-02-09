// related_post_gen benchmark definitions
enum TopN = 5;
alias PostIdx = uint;
alias SharedCount = ubyte;

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
    import core.time : MonoTime;
    import std.file : readText;
    import std.stdio : toFile, writeln;
    import asdf.serialization : deserialize, serializeToJson;

    auto posts = deserialize!(Post[])(readText("../posts.json"));

    const startTime = MonoTime.currTime;
    const relatedPosts = genRelatedPosts(posts);
    const duration = MonoTime.currTime - startTime;

    writeln("Processing time (w/o IO): ", duration.total!"usecs" * 1.0 / 1000, "ms");
    toFile(serializeToJson(relatedPosts), "../related_posts_d_con_v2.json");
}

RelatedPosts[] genRelatedPosts(Post[] posts)
{
    alias Chunk = __vector(SharedCount[64]); // ldc synthesizes this if target doesn't support 64
    struct SharedCountAndIndex
    {
        SharedCount count;
        PostIdx relatedPostIndex;
    }

    const postCount = posts.length;
    assert(postCount == 0 || (postCount - 1UL) <= PostIdx.max, "posts.length is OOB wrt PostIdx");
    auto relatedPosts = new RelatedPosts[](postCount);

    size_t[][string] tagToPostIdxs;
    size_t ptrCount;
    foreach (postIdx, ref const post; posts)
    {
        ptrCount += post.tags.length;
        foreach (ref const tag; post.tags)
            tagToPostIdxs[tag] ~= postIdx;
    }

    auto genTagToSharedCountPtrs(SharedCount[] counts) @safe
    {
        auto ptrs = new SharedCount*[](ptrCount);
        SharedCount*[][string] tagToSharedCountPtrs;
        foreach (tag, postIdxs; tagToPostIdxs)
        {
            const nptrs = postIdxs.length;
            foreach (i, ref ptr; ptrs[0 .. nptrs])
                ptr = &counts[postIdxs[i]];
            tagToSharedCountPtrs[tag] = ptrs[0 .. nptrs];
            ptrs = ptrs[nptrs .. $];
        }
        return tagToSharedCountPtrs;
    }

    shared long postCountdown = cast(long) posts.length; // long.max is (2^63-1)so we should be OK
    void doWork() @safe
    {
        import core.atomic : atomicOp;

        auto postIdx = atomicOp!"-="(postCountdown, 1L);
        if (postIdx < 0)
            return;
        auto chunks = new Chunk[]((posts.length + Chunk.length - 1U) / Chunk.length);
        auto counts = (cast(SharedCount[]) chunks)[0 .. posts.length];
        auto tagToSharedCountPtrs = genTagToSharedCountPtrs(counts);

        for (; postIdx >= 0; postIdx = atomicOp!"-="(postCountdown, 1))
        {
            auto post = &posts[postIdx];
            // accumulate the shared counts for this post
            foreach (ref const tag; post.tags)
            {
                auto ptrs = tagToSharedCountPtrs[tag];
                // go wide for better code gen  (a sufficiently advanced PGO could do this on its own)
                typeof(ptrs[0])[11] ptrChunk;
                for (; ptrs.length >= ptrChunk.length; ptrs = ptrs[ptrChunk.length .. $])
                {
                    ptrChunk[] = ptrs[0 .. ptrChunk.length];
                    foreach (ptr; ptrChunk)
                        ptr[0]++;
                }
                foreach (ptr; ptrs)
                    ptr[0]++;
            }
            counts[postIdx] = 0; // exclude ourselves from consideration

            // now that we have the counts, locate the TopN
            SharedCountAndIndex[TopN] topn;
            SharedCount threshold;
            Chunk vthreshold;

            foreach (chunkIdx, ref chunk; chunks)
            {
                if (const somethingAboveThreshold = (chunk > vthreshold) !is Chunk.init)
                {
                    const baseIdx = Chunk.length * chunkIdx;
                    foreach (subIdx, count; chunk)
                    {
                        if (count <= threshold)
                            continue;
                        auto newest = SharedCountAndIndex(count, cast(PostIdx)(baseIdx + subIdx));
                        topn[$ - 1] = newest; // start low then shuffle up until we find our slot
                        foreach_reverse (i, ref highSide; topn[0 .. $ - 1])
                        {
                            if (const noHigher = highSide.count >= newest.count)
                                break;
                            topn[i + 1] = highSide;
                            highSide = newest;
                        }
                        threshold = topn[$ - 1].count;
                    }
                    vthreshold[] = threshold;
                }
                chunk[] = 0;
            }

            // report our findings
            auto rp = &relatedPosts[postIdx];
            rp._id = post._id;
            rp.tags = post.tags;
            foreach (rank, ref related; rp.related)
                if (topn[rank].count > 0) // this lets clients detect+handle the LT TopN case
                    related = posts[topn[rank].relatedPostIndex];
        }
    }

    import std.parallelism : parallel, totalCPUs;
    import std.range : iota;

    foreach (_; parallel(iota(0, totalCPUs), 1))
        doWork();

    return relatedPosts;
}
