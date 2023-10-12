using Pkg
Pkg.instantiate()

using Base.Threads

using JSON3
using StructTypes
using Dates
using ChunkSplitters

# warmup is done by hyperfine

include("../julia/vector5.jl")

function relatedIO()
    json_string = read("../posts.json", String)
    posts = JSON3.read(json_string, Vector{PostData})

    related(posts)

    start = now()
    all_related_posts = related(posts)
    println("Processing time (w/o IO): $(now() - start)")


    open("../related_posts_julia_con.json", "w") do f
        JSON3.write(f, all_related_posts)
    end
end

struct PostData
    _id::String
    title::String
    tags::Vector{String}
end

struct RelatedPost
    _id::String
    tags::Vector{String}
    related::SVector5{PostData}
end

StructTypes.StructType(::Type{PostData}) = StructTypes.Struct()

function fastmaxindex!(xs::Vector, topn, maxn, maxv)
    maxn .= 1
    maxv .= 0
    top = maxv[1]
    for (i, x) in enumerate(xs)
        if x > top
            maxv[1] = x
            maxn[1] = i
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

    return maxn
end

function related(posts)
    for T in (UInt8, UInt16, UInt32, UInt64)
        if length(posts) < typemax(T)
            return related(T, posts)
        end
    end
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
        maxn = Vector{T}(undef,topn)
        maxv = Vector{T}(undef,topn)
        taggedpostcount = Vector{T}(undef, length(posts))

        for i in postsrange
            post = posts[i]

            taggedpostcount .= 0
            # for each post (`i`-th)
            # and every tag used in the `i`-th post
            # give all related post +1 in `taggedpostcount` shadow vector
            for tag in post.tags
                for idx in tagmap[tag]
                    taggedpostcount[idx] += one(T)
                end
            end

            # don't self count
            taggedpostcount[i] = 0

            fastmaxindex!(taggedpostcount, topn, maxn, maxv)

            relatedpost = RelatedPost(post._id, post.tags, SVector5(@view posts[maxn]))
            relatedposts[i] = relatedpost
        end
    end



    return relatedposts
end

const res = relatedIO()
