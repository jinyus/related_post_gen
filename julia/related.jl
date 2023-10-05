using JSON3
using LinearAlgebra
using StructTypes
using Dates

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
    related::Vector{PostData}
end

StructTypes.StructType(::Type{PostData}) = StructTypes.Struct()

function fastmaxindex(xs::Vector{Int64}, topn::Int64)
    maxn = ones(Int64, topn)
    maxv = zeros(Int64, topn)
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
    tag_map = Dict{String,Vector{Int64}}()
    for (idx, post) in enumerate(posts)
        for tag in post.tags
            if !haskey(tag_map, tag)
                tag_map[tag] = Vector{Int64}()
            end
            push!(tag_map[tag], idx)
        end
    end

    relatedposts = Vector{RelatedPost}()
    taggedpostcount = zeros(Int64, length(posts))

    for (i, post) in enumerate(posts)
        taggedpostcount .= 0
        for tag in post.tags
            for idx in tag_map[tag]
                taggedpostcount[idx] += 1
            end
        end
        taggedpostcount[i] = 0
        max5 = fastmaxindex(taggedpostcount, 5)
        relatedpost = RelatedPost(post._id, post.tags, [posts[ix] for ix in max5])
        push!(relatedposts, relatedpost)
    end

    relatedposts
end

relatedIO()

