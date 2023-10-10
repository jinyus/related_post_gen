import Foundation
// import FoundationPreview



let url = URL(fileURLWithPath: "../posts.json")
let data = try! Data(contentsOf: url)
let decoder = JSONDecoder()
let posts = try! decoder.decode([Post].self, from: data)


let t1 = Date()

var tag_map = [String: [Int]]()
for (index, post) in posts.enumerated() {
    for tag in post.tags {
        tag_map[tag, default:[]].append(index)
    }
}

var allRelatedPosts = [RelatedPosts]()

for (idx, post) in posts.enumerated() {
    // how to preallocate and empty on each iteration?
    var tagged_post_count = Array(repeating: 0, count: posts.count)

    for tag in post.tags {
        for other_post_idx in tag_map[tag]! {
            tagged_post_count[other_post_idx] += 1
        }
    }

    tagged_post_count[idx] = 0 // don't count self

    var top5Queue = Array(repeating: (0, 0), count: 5)
    var min_tags = 0

    // custom priority queue
    for (idx, count) in tagged_post_count.enumerated() {
        if count > min_tags {
            var pos = 4

            while pos >= 0 && top5Queue[pos].1 < count {
                pos -= 1
            }
            pos += 1

            if pos <= 4 {
                top5Queue.insert((idx, count), at: pos)
                top5Queue.removeLast()
                min_tags = top5Queue[4].1
            }
        }
    }

    let topPosts = top5Queue.map { posts[$0.0] }

    allRelatedPosts.append(RelatedPosts(_id: post._id, tags: post.tags, related: topPosts))
}


let timeInterval =  Date().timeIntervalSince(t1)

print("Processing time (w/o IO): \(timeInterval * 1000)ms")


let encoder = JSONEncoder()

if let data = try? encoder.encode(allRelatedPosts) {

    let fileURL = URL(fileURLWithPath: "../related_posts_swift.json", isDirectory: false) 
    try! data.write(to: fileURL)

} else {

    fatalError("Failed to encode data")

}

// types

struct Post: Codable {
    let _id: String
    let title: String
    let tags: [String]
}

struct RelatedPosts: Codable {
    let _id: String
    let tags: [String]
    let related: [Post]
}