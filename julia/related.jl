using JSON3
using StatsBase: countmap
using StructTypes
using Dates

function relatedIO()
    json_string = read("../posts.json", String)
    posts = JSON3.read(json_string, Vector{PostData})

    start = now()
    all_related_posts = related(posts)
    println("Processing time (w/o IO): $(now() - start)")
    

    open("../related_posts_julia_v1.json", "w") do f
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
    tag_map = Dict{String, Vector{Int64}}()
    for (idx, post) in enumerate(posts)
        for tag in post.tags
            if !haskey(tag_map, tag)
                tag_map[tag] = Vector{Int64}()
            end
            push!(tag_map[tag], idx)
        end
    end

    all_related_posts = Vector{RelatedPost}()

    for (this_post_idx, post) in enumerate(posts)
        related_posts_list = countmap(reduce(vcat, [tag_map[tag] for tag in post.tags]))
        related_posts_list[this_post_idx] = 0

        top_posts = [
            posts[p]
            for (p, v) in partialsort!(collect(related_posts_list), by=x-> x[2], 1:5, rev=true)
        ]

        push!(all_related_posts, RelatedPost(post._id, post.tags, top_posts))
    end

    return all_related_posts
end


relatedIO()
