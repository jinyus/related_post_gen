
import std
import dictionary
import json

let TOPN = 5

struct Post:
    _id: string
    title: string
    tags: [string]

struct RelatedPost:
    _id: string
    tags: [string]
    related: [Post]

def main():
    let json_content = read_file("../posts.json")

    assert(json_content != nil)

    let posts = JSON.parse<[Post]>(json_content)

    let start = seconds_elapsed()

    let tag_map = dictionary<string, [int]> ( 101 )

    for (posts) post,i:
        for (post.tags) tag:
            let indexes = tag_map.get(tag)

            if not indexes:
                tag_map.set(tag, [i])
            else:
                indexes.push(i)

    let posts_count = posts.length
    let all_related_posts = []::RelatedPost.vector_capacity(posts_count)

    for(posts) post,i:

        let tagged_post_count = map(posts_count) : 0

        for (post.tags) tag:
            for (assert(tag_map.get(tag))) index:
                tagged_post_count[index] += 1
        
        tagged_post_count[i] = 0

        let topn = map(TOPN*2) : 0
        var min_tags = 0

        for(tagged_post_count) count, idx:
            guard count > min_tags

            var upper_bound = (TOPN-2) * 2

            while upper_bound >= 0 and count > topn[upper_bound]:
                topn[upper_bound+2] = topn[upper_bound]
                topn[upper_bound+3] = topn[upper_bound+1]
                upper_bound -= 2
            
            let insert_pos = upper_bound + 2
            topn[insert_pos] = count
            topn[insert_pos+1] = idx

            min_tags = topn[TOPN*2-2]

        let top_posts = map(TOPN) j:
            let index = topn[j*2+1]
            posts[index]

        all_related_posts.push(RelatedPost {post._id, post.tags, top_posts}) 


    let end = seconds_elapsed()

    print("Processing time (w/o IO): {end - start}s")

    let related_json = JSON.encode(all_related_posts)

    write_file("../related_posts_lobster.json", related_json)


main()
