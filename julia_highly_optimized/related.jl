using JSON3
using StructTypes
using Dates
using StaticArrays
using SuperDataStructures

function write(filename, data)
    open(filename, "w") do f
        JSON3.write(f, data)
    end
end

function relatedIO()
    json_string = read("../posts.json", String)
    posts = JSON3.read(json_string, Vector{PostData})

    start = now()
    all_related_posts = related(posts)
    println("Processing time (w/o IO): $(now() - start)")

    write("../related_posts_julia_highly_optimized.json", all_related_posts)
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

function related(posts)

    universe = Set{String}()
    for post in posts
        union!(universe, post.tags)
    end

    tag_map::AbstractDict{String, Vector{Int}} = SuperDict{String, Vector{Int}}(universe)

    for (i,post) in enumerate(posts)
        push!.(tag_map[post.tags], i)
    end

    relatedposts = Vector{RelatedPost}(undef, length(posts))
    shared_tags::AbstractVector{Int} = SuperVector{Int}(length(posts))

    for (i, post) in enumerate(posts)
        shared_tags .= 0

        inds = tag_map[post.tags]

        @views shared_tags[inds] .+= 1

        top6 = (partialsortperm(shared_tags, 1:6, rev=true))
        top5 = NTuple{5}(Iterators.take(Iterators.filter(x -> x != i, top6), 5))

        relatedposts[i] = RelatedPost(post._id, post.tags, posts[SVector(top5)])
    end

    relatedposts
end

const res = relatedIO()
