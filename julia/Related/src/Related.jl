module Related

using JSON3
using StructTypes
using Dates
using PrecompileTools
# warmup is done by hyperfine

const topn = 5

export main

struct PostData
    _id::String
    title::String
    tags::Vector{Symbol}
end

struct RelatedPost
    _id::String
    tags::Vector{Symbol}
    related::NTuple{topn, PostData}
end

StructTypes.StructType(::Type{PostData}) = StructTypes.Struct()

function maxindex!(xs::Vector, maxs)
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
    maxs
end

function related!(posts, tagmap, relatedposts, taggedpostcount, maxs) where {T}
    # key is every possible "tag" used in all posts
    # value is indicies of all "post"s that used this tag

    for (idx, post) in enumerate(posts)
        for tag in post.tags
            tags = get!(() -> sizehint!(UInt32[], 1_000), tagmap, tag)
            push!(tags, idx)
        end
    end

    for (i, post) in enumerate(posts)
        taggedpostcount .= 0
        # for each post (`i`-th)
        # and every tag used in the `i`-th post
        # give all related post +1 in `taggedpostcount` shadow vector
        for tag in post.tags
            for idx in tagmap[tag]
                taggedpostcount[idx] += one(UInt32)
            end
        end

        # don't self count
        taggedpostcount[i] = 0
        maxs= maxindex!(taggedpostcount, maxs)
        
        relatedposts[i] = RelatedPost(post._id, post.tags, ntuple(i -> posts[maxs[topn+1-i][1]], topn))
    end

    return relatedposts
end

function main()
    json_string = read("../../../posts.json", String)
    posts = JSON3.read(json_string, Vector{PostData})

    tagmap=Dict{Symbol, Vector{UInt32}}()
    relatedposts=Vector{RelatedPost}(undef, length(posts))
    taggedpostcount = Vector{UInt32}(undef, length(posts))
    maxs=Vector{Pair{Int, UInt32}}(undef, topn)
    
    start = now()       
    all_related_posts = related!(posts, tagmap, relatedposts, taggedpostcount, maxs)
    println("Processing time (w/o IO): $(now() - start)")

    open("../related_posts_julia.json", "w") do f
        JSON3.write(f, all_related_posts)
    end
end


@precompile_workload begin
    println("Precompiling main workload")
    main()
end


end # module Related
