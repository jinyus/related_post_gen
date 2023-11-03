require daslib/json
require fio
require daslib/json_boost
require strings

struct Post
    _id: string
    title: string
    tags: array<string>

struct RelatedPosts
    _id: string
    tags: array<string>
    related: array<Post?>

let topN = 5

[export]
def main

    var file = fopen("../posts.json", "r")
    var jsonStr = file |> fread
    var error : string
    var json = read_json(jsonStr, error)
    if error != ""
        print("Error: {error}\n")
        return
    var tposts <- from_JV(json, type<array<Post>>)
    var posts <- [{for tpost in tposts; new [[Post _id = tpost._id, title = tpost.title, tags <- tpost.tags]]}]
    delete tposts

    var start_time = ref_time_ticks()

    let postsCount = length(posts)
    var tagMap : table<string; array<int>>

    for post, i in posts, range(0, postsCount)
        for tag in post.tags
            tagMap[tag] |> push(i)

    var allRelatedPosts : array<RelatedPosts>
    allRelatedPosts |> resize(postsCount)
    var taggedPostCount : array<int>
    taggedPostCount |> reserve(postsCount)
    var top5 : array<tuple<count:int; post_id:int>>
    top5 |> reserve(topN)

    for post, i in posts, range(0, postsCount)
        // reset counts
        taggedPostCount |> clear()
        taggedPostCount |> resize(postsCount)

        // Count the number of tags shared between posts
        for tag in post.tags
            for otherPostIdx in tagMap[tag]
                taggedPostCount[otherPostIdx]++
        taggedPostCount[i] = 0 // Don't count self

        // clear top5
        top5 |> clear()
        top5 |> resize(topN)

        var minTags = 0

        //  custom priority queue to find top N
        for count, j in taggedPostCount, range(0, postsCount)
            if count > minTags
                var upperBound = 3

                while upperBound >= 0 && count > top5[upperBound].count
                    top5[upperBound + 1] = top5[upperBound--]

                top5[upperBound + 1] = [[auto count, j]]
                minTags = top5[topN - 1].count


        // Convert indexes back to Post pointers.
        var topPosts : array<Post?> <- [{for j in range(0,topN); posts[top5[j].post_id]}]
        allRelatedPosts[i] <- [[RelatedPosts _id = posts[i]._id, tags := posts[i].tags, related <- topPosts]]

    var processing_time_ms = float(get_time_usec(start_time)) / 1000.0

    print("Processing time (w/o IO): {format("%.2f", processing_time_ms)} ms\n")

    var jsonResultStr = JV(allRelatedPosts) |> write_json()

    fopen("../related_posts_dascript.json", "w") |> fwrite(jsonResultStr)