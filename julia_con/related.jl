using Base.Threads

using JSON3
using StructTypes
using Dates
using ChunkSplitters

# warmup is done by hyperfine

struct BufferKey{T}
    len::Int
end
function task_local_buffer(::Type{T}, len) where {T}
    tls = task_local_storage()
    key = BufferKey{T}(len)
    get!(() -> Vector{T}(undef, len), tls, key)
end

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
    related::NTuple{5,PostData}
end

StructTypes.StructType(::Type{PostData}) = StructTypes.Struct()

function fastmaxindex!(xs::Vector, topn, buf)
    maxn = view(buf, 1:topn)            .= 1
    maxv = view(buf, (topn+1):(2*topn)) .= 0
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
    maxn
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
        buf  = task_local_buffer(T, 2*topn)
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

            maxn = fastmaxindex!(taggedpostcount, topn, buf)

            relatedpost = RelatedPost(post._id, post.tags, ntuple(i -> posts[maxn[i]], topn))
            relatedposts[i] = relatedpost
        end
    end

    return relatedposts
end

const res = relatedIO()
