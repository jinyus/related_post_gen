module Related

using JSON3, StructTypes, Dates, StaticArrays

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

function fastmaxindex!(xs::Vector{T}, topn, maxn, maxv) where {T}
    maxn .= one(T)
    maxv .= zero(T)
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
    L = length(posts)
    T = UInt32
    topn = 5
    # key is every possible "tag" used in all posts
    # value is indicies of all "post"s that used this tag
    tagmap = Dict{String,Vector{T}}()
    sizehint!(tagmap, 100)
    @inbounds for idx in 1:L
        for tag in posts[idx].tags
            tags = get!(() -> T[], tagmap, tag)
            push!(tags, idx)
        end
    end

    relatedposts = Vector{RelatedPost}(undef, L)
    taggedpostcount = Vector{T}(undef, L)

    maxn = MVector{topn,T}(undef)
    maxv = MVector{topn,T}(undef)

    @inbounds for i in 1:L
        post = posts[i]
        taggedpostcount .= zero(T)
        # for each post (`i`-th)
        # and every tag used in the `i`-th post
        # give all related post +1 in `taggedpostcount` shadow vector
        for tag in post.tags
            for idx in tagmap[tag]
                # all length are bounded by L = length(posts) we know at runtime
                taggedpostcount[idx] += one(T)
            end
        end

        # don't self count
        taggedpostcount[i] = zero(T)

        fastmaxindex!(taggedpostcount, topn, maxn, maxv)

        relatedpost = RelatedPost(post._id, post.tags, SVector{topn}(@view posts[maxn]))
        relatedposts[i] = relatedpost
    end

    return relatedposts
end

function main()
    json_string = read(@__DIR__()*"/../../../posts.json", String)
    posts = JSON3.read(json_string, Vector{PostData})
    fake_posts = posts[1:2]
    related(fake_posts) #warmup

    start = now()
    all_related_posts = related(posts)
    println("Processing time (w/o IO): $(now() - start)")

    open(@__DIR__()*"/../../../related_posts_julia.json", "w") do f
        JSON3.write(f, all_related_posts)
    end
end

end # module Related
