
import std
import dictionary
import json

let TOPN = 5

struct Post:
    title: string
    _id: string
    tags: [string]

struct RelatedPost:
    _id: string
    tags: [string]
    related: [Post]

// struct PostwithCount:
//     id: int
//     count: int



def json_to_posts(json_content: string) -> [Post]:
    let flexbuffer, err = flexbuffers_json_to_binary(json_content)

    assert(not err)

    let posts, err2 = flexbuffers_binary_to_value(typeof [Post], flexbuffer)

    assert(not err2)
    assert(posts)

    return posts


def main():
    let json_content = read_file("../posts.json")

    assert(json_content != nil)

    let posts = JSON.parse<[Post]>(json_content)

    print("Found {posts.length} posts")

    let start = seconds_elapsed()

    let tag_map = dictionary<string, [int]> ( 100 )

    for (posts) post,i:
        for (post.tags) tag:
            let indexes = tag_map.get(tag)

            if not indexes:
                tag_map.set(tag, [i])
            else:
                tag_map.set(tag, push(indexes, i))

    let all_related_posts = []::[RelatedPost]
    let tagged_post_count = []::[int]
    let posts_count = posts.length

    let topn_temp = []::[int]
    let top_posts_temp = []::[Post]

    vector_capacity(all_related_posts, posts_count)
    vector_capacity(tagged_post_count, posts_count)
    vector_capacity(topn_temp, TOPN*2)
    vector_capacity(top_posts_temp, TOPN)

    for(TOPN*2) i:
        topn_temp[i] = 0

    for(posts) post,i:

        for (posts_count) j:
            tagged_post_count[j] = 0

        for (post.tags) tag:
            for (tag_map.get(tag)) index:
                tagged_post_count[index] += 1
        
        tagged_post_count[i] = 0

        let topn = copy(topn_temp)
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

        let top_posts = copy(top_posts_temp)

        for(TOPN) j:
            let index = topn[j*2+1]
            top_posts[j] = posts[index]

        all_related_posts[i] = RelatedPost(post._id, post.tags, top_posts)



    let end = seconds_elapsed()

    print("Time: {end - start} seconds")

    let related_json = JSON.encode<[RelatedPost]>(all_related_posts)

    write_file("../related.json", related_json)


    // print("1st item in map: " + string(tag_map.get("java")).length)



main()
