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
    toFile(serializeToJson(relatedPosts), "../related_posts_d2.json");
}

RelatedPosts[] genRelatedPosts(Post[] posts) @safe
{
    alias Chunk = SharedCount[64];
    struct SharedCountAndIndex
    {
        SharedCount count;
        PostIdx relatedPostIndex;
    }

    const postCount = posts.length;
    assert(postCount == 0 || (postCount - 1UL) <= PostIdx.max, "posts.length is OOB wrt PostIdx");
    auto relatedPosts = new RelatedPosts[](postCount);
    auto chunks = new Chunk[]((posts.length + Chunk.length - 1U) / Chunk.length);
    auto counts = (cast(SharedCount[]) chunks)[0 .. posts.length];

    SharedCount*[][string] tagToSharedCountPtrs;
    foreach (postIdx, ref const post; posts)
        foreach (ref const tag; post.tags)
            tagToSharedCountPtrs[tag] ~= &counts[postIdx]; // bounds checked and tracked by GC

    foreach (postIdx, post; posts)
    {
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

        foreach (chunkIdx, ref chunk; chunks)
        {
            // auto vectorizable filter to locate the, sparse, candidates
            // would be clearer with D's builtin __vectors and, depending on the target, slightly faster
            bool somethingAboveThreshold;
            foreach (count; chunk)
                somethingAboveThreshold |= (count > threshold);

            if (somethingAboveThreshold)
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
            }
            chunk[] = 0; // reset counts while in cache
        }

        // report our findings
        auto rp = &relatedPosts[postIdx];
        rp._id = post._id;
        rp.tags = post.tags;
        foreach (rank, ref related; rp.related)
            if (topn[rank].count > 0) // this lets clients detect+handle the LT TopN case
                related = posts[topn[rank].relatedPostIndex];
    }
    return relatedPosts;
}
