module RelatedCon

using JSON3, StaticArrays, ChunkSplitters
using Base.Threads: @threads, nthreads

export main

const topn = 5

struct PostData
    _id::String
    title::String
    tags::Vector{String}
end

struct RelatedPost
    _id::String
    tags::Vector{String}
    related::SVector{topn, PostData}
end


function fastmaxindex!(xs::Vector, topn, maxn, maxv)
    maxn .= one(UInt32)
    maxv .= zero(UInt32)
    top = maxv[1]
    for (i, x) in enumerate(xs)
        if x > top
            maxn[1], maxv[1] = i, x
            for j in 2:topn
                if maxv[j-1] > maxv[j]
                    maxv[j-1], maxv[j] = maxv[j], maxv[j-1]
                    maxn[j-1], maxn[j] = maxn[j], maxn[j-1]
                end
            end
            top = maxv[1]
        end
    end
    reverse!(maxn)
    return
end

function related(posts)
    # key is every possible "tag" used in all posts
    # value is indicies of all "post"s that used this tag
    tagmap = Dict{String,Vector{UInt32}}()
    sizehint!(tagmap, 100)
    for (idx, post) in enumerate(posts)
        for tag in post.tags
            tags = get!(() -> UInt32[], tagmap, tag)
            push!(tags, idx)
        end
    end

    relatedposts = Vector{RelatedPost}(undef, length(posts))

    @threads for (postsrange, _) in chunks(posts, nthreads())
        topn = 5
        maxn = MVector{topn,UInt32}(undef)
        maxv = MVector{topn,UInt32}(undef)
        taggedpostcount = Vector{UInt32}(undef, length(posts))

        for i in postsrange
            post = posts[i]

            taggedpostcount .= zero(UInt32)
            # for each post (`i`-th)
            # and every tag used in the `i`-th post
            # give all related post +1 in `taggedpostcount` shadow vector
            for tag in post.tags
                for idx in tagmap[tag]
                    taggedpostcount[idx] += one(UInt32)
                end
            end
            # don't self count
            taggedpostcount[i] = zero(UInt32)

            fastmaxindex!(taggedpostcount, topn, maxn, maxv)

            relatedpost = RelatedPost(post._id, post.tags, SVector{topn}(@view posts[maxn]))
            relatedposts[i] = relatedpost
        end
    end
    return relatedposts
end

function main()
    json_string = read(@__DIR__()*"/../../../posts.json", String)
    posts = JSON3.read(json_string, Vector{PostData})
    fake_posts = first(posts, 1000)
    related(fake_posts) #warmup
    stats = @timed related(posts)
    println("Processing time (w/o IO): $(1000*stats.time)ms")
    open(@__DIR__()*"/../../../related_posts_julia_con.json", "w") do f
        JSON3.write(f, stats.value)
    end
end

main()

end # module RelatedCon
