using JSON3
using LinearAlgebra
using StructTypes
using Dates
using StaticArrays
using StatsBase

function relatedIO()
    json_string = read("../posts.json", String)
    posts = JSON3.read(json_string, Vector{PostData})

    # we only want to evaluate the time it takes to run the algorithm,
    # not to compile the function(s) - so we run it once before starting the timer
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
    related::SVector{5,PostData}
end

StructTypes.StructType(::Type{PostData}) = StructTypes.Struct()

function fastmaxindex!(xs::Vector{Int64}, topn, maxn, maxv)
    maxn .= 1
    maxv .= 0
    for (i, x) in enumerate(xs)
        if x > maxv[1]
            maxv[1] = x
            maxn[1] = i
            for j in 2:topn
                if maxv[j-1] > maxv[j]
                    maxv[j-1], maxv[j] = maxv[j], maxv[j-1]
                    maxn[j-1], maxn[j] = maxn[j], maxn[j-1]
                end
            end
        end
    end
    reverse!(maxn)
    maxn
end

function related(posts)
    topn = 5
    tag_map = countmap(tag for post in posts for tag in post.tags)

    relatedposts = Vector{RelatedPost}()
    taggedpostcount = zeros(Int64, length(posts))
    maxn = zeros(Int, topn)
    maxv = ones(Int, topn)

    for (i, post) in enumerate(posts)
        taggedpostcount .= 0
        for tag in post.tags
            for idx in tag_map[tag]
                taggedpostcount[idx] += 1
            end
        end
        taggedpostcount[i] = 0

        fastmaxindex!(taggedpostcount, topn, maxn, maxv)

        relatedpost = RelatedPost(post._id, post.tags, SVector{topn}([posts[ix] for ix in maxn]))

        push!(relatedposts, relatedpost)

        # for (j, ix) in enumerate(maxn)
        #     relatedposts[i].related[j] = posts[ix]
        # end
    end

    relatedposts
end

relatedIO()

