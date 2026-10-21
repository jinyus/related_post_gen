import struct Collections.TreeDictionary
import Foundation
import Dispatch

// The implementation is the same as in `swift` but with `TreeDictionary` from `swift-collections`
// and concurrent computation with `DispatchQueue` for each post in a pre-allocated array.

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

// State shared with the concurrent workers. `tagMap` is immutable once built
// and each worker writes a distinct `allRelatedPosts` slot, so the lock only
// serialises the single write per post (the counting loop stays lock-free).
final class SharedState: @unchecked Sendable {
    let tagMap: TreeDictionary<String, [Int]>
    private var allRelatedPosts: [RelatedPosts]
    private let lock = NSLock()

    init(posts: [Post]) {
        var tagMap: TreeDictionary<String, [Int]> = [:]
        for (i, post) in posts.enumerated() {
            for tag in post.tags {
                tagMap[tag, default: []].append(i)
            }
        }
        self.tagMap = tagMap
        self.allRelatedPosts = Array(repeating: RelatedPosts(_id: "", tags: [], related: []), count: posts.count)
    }

    func set(_ post: RelatedPosts, at index: Int) {
        lock.lock()
        allRelatedPosts[index] = post
        lock.unlock()
    }

    func results() -> [RelatedPosts] {
        lock.lock()
        defer { lock.unlock() }
        return allRelatedPosts
    }
}

func main() {
    let jsonData: Data
    do {
        jsonData = try Data(contentsOf: URL(fileURLWithPath: "../posts.json"))
    } catch {
        print("Error reading file: \(error)")
        return
    }

    guard let posts = try? JSONDecoder().decode([Post].self, from: jsonData) else {
        print("Error decoding JSON")
        return
    }

    let start = DispatchTime.now()

    let shared = SharedState(posts: posts)

    let queue = DispatchQueue(label: "relatedPosts", attributes: .concurrent)
    let group = DispatchGroup()

    for (idx, post) in posts.enumerated() {
        queue.async(group: group) {
            var taggedPostCount = Array(repeating: 0, count: posts.count)
            for tag in post.tags {
                if let tagPosts = shared.tagMap[tag] {
                    for otherPostIdx in tagPosts {
                        taggedPostCount[otherPostIdx] += 1
                    }
                }
            }

            taggedPostCount[idx] = 0

            var top5Queue = Array(repeating: (0, 0), count: 5)
            var minTags = 0

            for (idx, count) in taggedPostCount.enumerated() {
                if count > minTags {
                    var pos = 4
                    while pos >= 0 && top5Queue[pos].1 < count {
                        pos -= 1
                    }
                    pos += 1
                    if pos <= 4 {
                        top5Queue.insert((idx, count), at: pos)
                        top5Queue.removeLast()
                        minTags = top5Queue[4].1
                    }
                }
            }
            let related = top5Queue.map { posts[$0.0] }

            shared.set(RelatedPosts(_id: post._id, tags: post.tags, related: related), at: idx)
        }
    }

    group.wait()

    let end = DispatchTime.now()
    let nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds
    let processingTime = Double(nanoTime) / 1_000_000
    print("Processing time (w/o IO): \(processingTime)ms")

    let fileURL = URL(fileURLWithPath: "../related_posts_swift_con.json", isDirectory: false)
    if let data = try? JSONEncoder().encode(shared.results()) {
        try! data.write(to: fileURL, options: .atomic)
    }
}

main()
