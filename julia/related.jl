using JSON3
using StructTypes
using Dates
using StaticArrays

# warmup is done by hyperfine

function relatedIO()
    json_string = read("../posts.json", String)
    posts = JSON3.read(json_string, Vector{PostData})    

    fasterrelated(posts)

    start = now()
    all_related_posts = fasterrelated(posts)
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
    related::SVector{5,PostData}
end

StructTypes.StructType(::Type{PostData}) = StructTypes.Struct()

function fastermaxindex!(tagmask::Vector{T}, i, topn, maxn, maxv) where T
    maxn .= 1
    maxv .= 0
    req = 0

    A = tagmask[i]

    for (j, mask) in enumerate(tagmask)
        i == j && continue
        x = count_ones(A & mask)
        x > req || continue
        idx = topn 
        u = maxv[idx - 1]
        req = min(u, x)
        while x > u
            maxv[idx] = u
            maxn[idx] = maxn[idx - 1]
            idx -= 1
            idx == 1 && break
            u = maxv[idx - 1]
        end

        maxv[idx] = x
        maxn[idx] = j
    end

    maxn    
end

for Container in [UInt8, UInt16, UInt32, UInt64, UInt128]
    @eval function getrelatedposts!(tagmap, posts, topn, maxn, maxv, relatedposts, ::Val{$Container})
        tagmask = zeros($Container, length(posts))
        for (idx, post) in enumerate(posts)
            for tag in post.tags
                tagmask[idx] |= one($Container) << tagmap[tag]
            end
        end

        for (i, post) in enumerate(posts)
            fastermaxindex!(tagmask, i, topn, maxn, maxv)
            relatedpost = RelatedPost(post._id, post.tags, SVector{topn}(@view posts[maxn]))
            relatedposts[i] = relatedpost
        end

        return
    end
end

function getContainer(x)
    for (y, size) in zip([UInt8, UInt16, UInt32, UInt64], [8, 16, 32, 64])
        x < size && return Val{y}()
    end
    Val{UInt128}()
end

function fasterrelated(posts)
    tagmap = Dict{String, Int}()

    Ct = 0
    for (idx, post) in enumerate(posts)
        for tag in post.tags
            get!(() -> (Ct += 1), tagmap, tag)
        end
    end
    
    topn = 5
    maxn = Vector{Int}(undef, 5)
    maxv = Vector{Int}(undef, 5)
    
    relatedposts = Vector{RelatedPost}(undef, length(posts))
    getrelatedposts!(tagmap, posts, topn, maxn, maxv, relatedposts, getContainer(Ct))
    relatedposts
end

const res = relatedIO()
