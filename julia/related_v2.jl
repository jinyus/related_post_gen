using JSON3
using LinearAlgebra
using StructTypes
using Dates

function relatedIO()
    json_string = read("../posts.json", String)
    posts = JSON3.read(json_string, Vector{PostData})

    start = now()
    all_related_posts = related(posts)
    println("Processing time (w/o IO): $(now() - start)")
    

    open("../related_posts_julia_v2.json", "w") do f
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

function related(posts)
    tags = reduce(vcat, [p.tags for p in posts])
    unique_tags = unique(tags)

    tag_map = zeros(Int16, (length(posts), length(unique_tags)))

    for (i, post) in enumerate(posts), (j, utag) in enumerate(unique_tags)
        tag_map[i, j] = in(utag, post.tags)
    end

    relatedness = tag_map * tag_map'
    relatedness[diagind(relatedness)] .= 0

    related_posts = mapslices(c -> partialsortperm(c, 1:5, rev=true), relatedness, dims=2)

    all_related_posts = Vector{RelatedPost}()
    for (i, post) in enumerate(posts)
        related = posts[related_posts[i, :]]
        push!(all_related_posts, RelatedPost(post._id, post.tags, related))
    end

    return all_related_posts
end

relatedIO()

