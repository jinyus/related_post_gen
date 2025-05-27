import std;
import core.time;
import asdf.serialization : deserialize, serializeToJson;
import swisstable.map : Map; // a quick associative array

enum TopN = 5;
alias PostIdx = uint;
alias SharedCount = ubyte;

struct Post {
    string _id;
    string title;
    string[] tags;
}

struct RelatedPosts {
    string _id;
    string[] tags;
    Post[TopN] related;
}

void main() {
    auto posts = deserialize!(Post[])(readText("../posts.json"));
    auto startTime = MonoTime.currTime;
    const relatedPosts = genRelatedPosts(posts);
    auto duration = MonoTime.currTime - startTime;
    writeln("Processing time (w/o IO): ", duration.total!"usecs" * 1.0 / 1000, "ms");
    toFile(serializeToJson(relatedPosts), "../related_posts_d_optimized.json");
}

RelatedPosts[] genRelatedPosts(Post[] posts) {
    enforce(0 < posts.length && posts.length <= uint.max, "expecting posts.length in [1 .. uint.max]");

    RPGArgs a;
    a.init(posts);
    if (const cantUsePowersets = a.kMax > 8 || a.lastTID > ushort.max)
        return dv2Implementation(posts); // use d_v2 variant as a fallback

    // specialize to: post index type, subset element type
    auto f1(idxt, SE)() {
        RPGPowerset!(idxt, SE) x;
        return x(a);
    }

    auto f0(idxt)() => a.lastTID <= ubyte.max ? f1!(idxt, ubyte) : f1!(idxt, ushort);
    return posts.length > ushort.max ? f0!uint : f0!ushort;
}

struct RPGPowerset(idxt, SE) {

    RelatedPosts[] opCall()(ref RPGArgs args) {
        setup(args);
        foreach_reverse (k; 1 .. kMax + 1) {
            findIntersectionsAtCardinality(k);
            disseminateIntersectionsToUnfinishedTopNs();
            if (!moreToDo)
                break;
        }

        auto rposts = new RelatedPosts[](posts.length);
        foreach (i, ref rp; rposts) {
            auto p = &posts[i];
            rp._id = p._id;
            rp.tags = p.tags;
            foreach (j, idx; topNs[i][0 .. counts[i].total])
                rp.related[j] = posts[idx];
        }
        return rposts;
    }

    void findIntersectionsAtCardinality(uint k) {
        void finalizeIntersections(MapT)(ref MapT map) {
            intersectionLists.reserve(map.length);
            intersectionLists.length = 0;
            foreach (list; map.byValue) {
                if (list.length > 1)
                    intersectionLists ~= list;
            }
        }

        void findIntersections(MapT)(ref MapT map) {
            alias U = MapTtoU!MapT;
            map.clear;
            foreach (postIdx, ref const tids; postTIDs[]) {
                if (tids.length < k)
                    continue;
                U u; // no need to reset key as the same cells are overwritten
                ubyte[][] combos = ctbl[tids.length][k];
                foreach (ubyte[] combo; combos[]) {
                    assert(combo.length == k);
                    foreach (j, ref ke; u.arr[0 .. k])
                        ke = tids[combo[j]];
                    map[u.key] ~= cast(idxt)postIdx;
                }
            }
            finalizeIntersections(map);
        }

        if (k <= 4)
            return findIntersections(map1to4);
        if (k <= 8)
            return findIntersections(map5to8);
        enforce(false, "internal error, expecting k <= 8");
    }

    void disseminateIntersectionsToUnfinishedTopNs() {
        foreach (nthList, postIndices; intersectionLists) {
            nextPostIdx: foreach (i; postIndices) {
                auto tnc = &counts[i];
                const resolved = tnc.resolved;
                if (const full = resolved >= TopN)
                    continue;
                auto total = tnc.total;
                assert(resolved <= total && total <= TopN, "Invalid TopNCount");
                auto mustCheckForDuplicates = topNs[i][0 .. total];
                auto sortables = topNs[i][resolved .. total];

                nextCandidate: foreach (j; postIndices) {
                    if (const selfIntersection = i == j)
                        continue;
                    const next = cast(idxt)j;
                    foreach (current; mustCheckForDuplicates) {
                        if (const isDuplicate = next == current)
                            continue nextCandidate;
                    }
                    if (total < TopN) {
                        topNs[i][total++] = next;
                        tnc.total = total;
                        sortables = topNs[i][resolved .. total];
                    } else {
                        if (const noOneAfterMeWorksEither = next > topNs[i][TopN - 1])
                            continue nextPostIdx;
                        topNs[i][TopN - 1] = next;
                    }
                    // bubble up insertion sort
                    foreach_reverse (pos, ref maybeLower; sortables[0 .. $ - 1]) {
                        if (maybeLower < next)
                            break;
                        sortables[pos + 1] = maybeLower;
                        maybeLower = next;
                    }
                }
            }
        }
        bool moreToDo;
        foreach (i, ref c; counts[]) {
            c.resolved = c.total;
            moreToDo |= c.resolved < TopN;
        }
        this.moreToDo = moreToDo;
    }

    static struct TopNCounts {
        // 0 <= resolved <= total <= TopN
        ubyte resolved; // topN[0 .. resolved] are resolved
        ubyte total; // topN[resolved .. total] are sorted ascending
    }

    template UFor(uint n) {
        static assert(n == 4 || n == 8);
        alias Arr = SE[n];
        static if (Arr.sizeof == 4)
            alias Key = uint;
        else static if (Arr.sizeof == 8)
            alias Key = ulong;
        else
            alias Key = ulong[2];
        union U {
            Key key;
            Arr arr;
        }
        alias UFor = U;
    }

    template MapT(uint n) {
        alias U = UFor!n;
        alias MapT = typeof(Map!(typeof(U.init.key), idxt[])());
    }
    
    template MapTtoU(M) {
        static if (is(M == MapT!4))
            alias MapTtoU = UFor!4;
        else {
            static assert(is(M == MapT!8), "expecting MapT!4 or MapT!8");
            alias MapTtoU = UFor!8;
        }
    }

    MapT!4 map1to4;
    MapT!8 map5to8;
    idxt[][] intersectionLists;
    bool moreToDo;

    Post[] posts;
    ubyte kMax;
    ubyte[][][][] ctbl;
    SE[][] postTIDs;
    idxt[TopN][] topNs;
    TopNCounts[] counts;

    void setup(ref RPGArgs args) {
        enforce(args.lastTID <= SE.max, "SE doesn't match up with args.lastTID");
        enforce(args.kMax <= 8, "expecting kMax <= 8 unless/until mods are made");
        posts = args.posts;
        kMax = cast(ubyte)args.kMax;
        ctbl = createPowersetTable(kMax);
        postTIDs = args.createPostTIDs!SE();
        topNs = new idxt[TopN][](posts.length); // Fixed-size idxt[TopN] per post
        counts = new TopNCounts[](posts.length); // Single TopNCounts per post
    }
}

struct RPGArgs {
    Post[] posts;
    // a TID (Tag ID) is a number that can be used in place of a tag (string)
    uint[] allTIDs; // all tids for post[0].tags then tids for post[1].tags then ...
    uint kMax; // largest number (cardinality k) of tags associated with any one post
    uint lastTID; // the total number of unique tags, minus one

@safe:
    void init(Post[] posts_) {
        posts = posts_;
        {
            ulong totalTags;
            ulong kMax;
            foreach (i, ref post; posts) {
                auto tagsLength = post.tags.length;
                kMax = max(kMax, tagsLength);
                totalTags += tagsLength;
            }
            enforce(totalTags > 0, "expecting at least one valid tag");
            enforce(kMax < uint.max, "expecting fewer than 4 billion tags per entry");
            this.kMax = cast(uint)kMax;
            allTIDs = new uint[](totalTags);
        }

        auto map = Map!(string, uint)();
        uint nxtTID;
        ulong end;
        foreach (ref const(Post) p; posts[]) {
            auto tags = p.tags[];
            const length = tags.length;
            const begin = end;
            end += length;
            auto slice = allTIDs[begin .. end];
            foreach (i, tag; tags[]) {
                auto ptr = tag in map;
                slice[i] = ptr is null ? nxtTID : *ptr;
                if (ptr is null)
                    map[tag] = nxtTID++;
            }
        }
        enforce(map.length <= uint.max, "expecting fewer than 4 billion unique tags");
        lastTID = nxtTID - 1U;
    }

    auto createPostTIDs(SE)() {
        auto tidsBuf = new SE[](allTIDs.length);
        size_t end;
        auto postTIDs = new SE[][](posts.length);
        foreach (i, ref tids; postTIDs) {
            const length = posts[i].tags.length;
            const begin = end;
            end += length;
            tids = tidsBuf[begin .. end];
            foreach (j, ref x; tids)
                x = cast(SE)allTIDs[begin + j];
            sort(tids[]); // we need ordered sets
        }
        return postTIDs;
    }
}

enum PowersetKMax = 8;
// table[orderedSetSize][subsetSize][comboIndex][idxIntoOrderedSet]
ubyte[][][][] createPowersetTable(size_t kMax) {
    import core.bitop : popcnt, bsr, bsf;

    // Check kMax against KMax and bitset limit
    enforce(kMax <= PowersetKMax, "kMax exceeds maximum allowed value KMax");

    // Calculate total number of unique elements (non-empty subsets)
    // Note that we share ubyte[] slices in the bottom layer
    size_t totalElements = kMax == 0 ? 0 : kMax * (1L << (kMax - 1)); // Allocate a single contiguous buffer for all subset elements
    ubyte[] outerBuf = new ubyte[](totalElements);
    size_t bufOffset = 0;
    ubyte[][][][] table = new ubyte[][][][](kMax + 1);
    for (int n = 0; n <= kMax; n++) {
        table[n] = new ubyte[][][](n + 1);
        for (int k = 0; k <= n; k++) {
            table[n][k] = [];
        }
    }

    // Handle empty set to make indexing easier
    for (int n = 0; n <= kMax; n++)
        table[n][0] ~= [];
    for (uint bitset = 1; bitset < (1U << kMax); bitset++) {
        const k = popcnt(bitset); // the cardinality
        const min_n = bsr(bitset) + 1; // the smallest ordered set size that shares this slice
        ubyte[] slice = outerBuf[bufOffset .. bufOffset + k];
        bufOffset += k; // Convert bitset to ascending array of set bit locs
        uint tempBitset = bitset;
        foreach (ref x; slice) {
            x = cast(ubyte)bsf(tempBitset);
            tempBitset ^= (1U << x);
        }
        // Append slice to all applicable table[n][k]
        foreach (n; min_n .. kMax + 1)
            table[n][k] ~= slice;
    }

    return table;
}

RelatedPosts[] dv2Implementation(Post[] posts) @safe {
    alias Chunk = SharedCount[64];
    struct SharedCountAndIndex {
        SharedCount count;
        PostIdx relatedPostIndex;
    }

    const postCount = posts.length;
    assert(postCount == 0 || (postCount - 1UL) <= PostIdx.max, "posts.length is OOB wrt PostIdx");
    auto relatedPosts = new RelatedPosts[](postCount);
    auto chunks = new Chunk[]((posts.length + Chunk.length - 1U) / Chunk.length);
    auto counts = (cast(SharedCount[])chunks)[0 .. posts.length];
    SharedCount*[][string] tagToSharedCountPtrs;
    foreach (postIdx, ref const post; posts)
        foreach (ref const tag; post.tags)
            tagToSharedCountPtrs[tag] ~= &counts[postIdx]; // bounds checked and tracked by GC

    foreach (postIdx, post; posts) {
        // accumulate the shared counts for this post
        foreach (ref const tag; post.tags) {
            auto ptrs = tagToSharedCountPtrs[tag];
            // go wide for better code gen  (a sufficiently advanced PGO could do this on its own)
            typeof(ptrs[0])[11] ptrChunk;
            for (; ptrs.length >= ptrChunk.length; ptrs = ptrs[ptrChunk.length .. $]) {
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

        foreach (chunkIdx, ref chunk; chunks) {
            // auto vectorizable filter to locate the, sparse, candidates
            // would be clearer with D's builtin __vectors and, depending on the target, slightly faster
            bool somethingAboveThreshold;
            foreach (count; chunk)
                somethingAboveThreshold |= (count > threshold);

            if (somethingAboveThreshold) {
                const baseIdx = Chunk.length * chunkIdx;
                foreach (subIdx, count; chunk) {
                    if (count <= threshold)
                        continue;
                    auto newest = SharedCountAndIndex(count, cast(PostIdx)(baseIdx + subIdx));
                    topn[$ - 1] = newest; // start low then shuffle up until we find our slot
                    foreach_reverse (
                        i, ref highSide; topn[0 .. $ - 1]) {
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

