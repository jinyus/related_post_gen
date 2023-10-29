module RelatedCon

using JSON3, StructTypes, Dates, StaticArrays, ChunkSplitters
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

StructTypes.StructType(::Type{PostData}) = StructTypes.Struct()

function fastmaxindex!(xs::Vector{T}, topn, maxs) where {T}
    # each element is a pair idx => val
    maxs .= (one(T) => zero(T))
    top = maxs[1][2]
    for (i, x) in enumerate(xs)
        if x > top
            maxs[1] = (i => x)
            for j in 2:topn
                if maxs[j-1][2] > maxs[j][2]
                    maxs[j-1], maxs[j] = maxs[j], maxs[j-1]
                end
            end
            top = maxs[1][2]
        end
    end
    return
end

function related(posts)
    Ts = (UInt8, UInt16, UInt32, UInt64)
    i = findfirst(T -> length(posts) < typemax(T), Ts)
    return related(Ts[i], posts)
end
function related(::Type{T}, posts) where {T}
    # key is every possible "tag" used in all posts
    # value is indicies of all "post"s that used this tag
    tagmap = Dict{String,Vector{T}}()
    for (idx, post) in enumerate(posts)
        for tag in post.tags
            tags = get!(() -> T[], tagmap, tag)
            push!(tags, idx)
        end
    end

    relatedposts = Vector{RelatedPost}(undef, length(posts))

    @threads for (postsrange, _) in chunks(posts, nthreads())
        topn = 5
        maxs = MVector{topn, Pair{Int, T}}(undef)
        taggedpostcount = Vector{T}(undef, length(posts))

        for i in postsrange
            post = posts[i]

            taggedpostcount .= zero(T)
            # for each post (`i`-th)
            # and every tag used in the `i`-th post
            # give all related post +1 in `taggedpostcount` shadow vector
            for tag in post.tags
                for idx in tagmap[tag]
                    taggedpostcount[idx] += one(T)
                end
            end

            # don't self count
            taggedpostcount[i] = zero(T)

            fastmaxindex!(taggedpostcount, topn, maxs)

            relatedpost = RelatedPost(post._id, post.tags, SVector{topn}(posts[maxs[i][1]] for i in 1:topn))
            relatedposts[i] = relatedpost
        end
    end

    return relatedposts
end

function main()
    json_string = read(@__DIR__()*"/../../../posts.json", String)
    posts = JSON3.read(json_string, Vector{PostData})
    fake_posts = fill(posts[1], length(posts))
    related(fake_posts) #warmup

    start = now()
    all_related_posts = related(posts)
    println("Processing time (w/o IO): $(now() - start)")

    open(@__DIR__()*"/../../../related_posts_julia_con.json", "w") do f
        JSON3.write(f, all_related_posts)
    end
end

end # module RelatedCon
