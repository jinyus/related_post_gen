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
    start = now()
    json_string = read("../posts.json", String)
    posts = JSON3.read(json_string, Vector{PostData})

    all_related_posts = related(posts)

    write("../related_posts_julia.json", all_related_posts)
    println("Processing time (with IO): $(now() - start)")
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

# warmup for writing JSON to disk
write(joinpath(tempdir(), "warmup_related_posts.json"), [RelatedPost("a", ["b"], fill(PostData("c", "d", ["e"]), 5))])

const res = relatedIO()
