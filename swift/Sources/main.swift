import Foundation
// import FoundationPreview



let TOPN = 5
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

    var top5 = [Int](repeating: 0, count: TOPN * 2)
    var minTags: UInt8 = 0

    for (j, count) in tagged_post_count.enumerated() {
        if count > minTags {
            var upperBound = (TOPN - 2) * 2
            let countInt = Int(count)

            while upperBound >= 0 && countInt > top5[upperBound] {
                top5[upperBound + 2] = top5[upperBound]
                top5[upperBound + 3] = top5[upperBound + 1]
                upperBound -= 2
            }

            let insertPos = upperBound + 2
            top5[insertPos] = countInt
            top5[insertPos + 1] = j

            minTags = UInt8(top5[TOPN * 2 - 2])
        }
    }

    // Convert indexes back to Post pointers
    var topPosts = [Post]()

    for j in 0..<TOPN {
        let index = top5[j * 2 + 1]
        topPosts.append(posts[index])
    }


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