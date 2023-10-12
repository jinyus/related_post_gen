using JSON3
using StructTypes
using Dates
using Base.Cartesian: @nexprs, @ncall
# warmup is done by hyperfine


const topn = 5

function relatedIO()
    json_string = read("../posts.json", String)
    posts = JSON3.read(json_string, Vector{PostData})    

    related(posts)

    start = now()       
    all_related_posts = related(posts)
    println("Processing time (w/o IO): $(now() - start)")

    open("../related_posts_julia.json", "w") do f
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
    related::NTuple{topn, PostData}
end

StructTypes.StructType(::Type{PostData}) = StructTypes.Struct()

function fastmaxindex!(xs::Vector, topn, maxs)
    # each element is a pair idx => val
    maxs .= (1 => 0)
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
    reverse!(maxs)
    first.(maxs)
end

function related(posts)
    for T in (UInt8, UInt16, UInt32, UInt64)
        if length(posts) < typemax(T)
            return related(T, posts)
        end
    end
end

function related(::Type{T}, posts) where {T}
    buf = Vector{Pair{Int, T}}(undef, topn)
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
    taggedpostcount = Vector{T}(undef, length(posts))

    for (i, post) in enumerate(posts)
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

    return relatedposts
end

const res = relatedIO()
