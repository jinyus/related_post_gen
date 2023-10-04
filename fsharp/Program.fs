open System
open System.IO
open FSharp.Json
open System.Collections.Generic


[<Struct>]
type Post =
    { _id: string
      title: string
      tags: string[] }

[<Struct>]
type RelatedPosts =
    { _id: string
      tags: string[]
      related: Post[] }

let srcDir = __SOURCE_DIRECTORY__
let posts = Json.deserialize<Post[]> (File.ReadAllText $"{srcDir}/../posts.json")

let stopwatch = Diagnostics.Stopwatch()
stopwatch.Start()

// Start work
let tagPosts = Dictionary<string, Stack<int>>()

let postTagsStacks =
    posts
    |> Array.mapi (fun postId post ->
        let postTagsStack = Stack()

        for tag in post.tags do
            postTagsStack.Push tag
            match tagPosts.TryGetValue tag with
            | true, s -> s.Push postId
            | false, _ ->
                let newStack = Stack()
                newStack.Push postId
                tagPosts[tag] <- newStack

        postTagsStack)


let topN = 5

let allRelatedPosts: RelatedPosts[] =
    posts
    |> Array.Parallel.mapi (fun postId post ->
        let taggedPostCount = Array.zeroCreate posts.Length
        let top5 = Array.zeroCreate (topN * 2) // flattened list of (count, id)

        for tagId in postTagsStacks[postId] do
            for relatedPostId in tagPosts[tagId] do
                taggedPostCount[relatedPostId] <- taggedPostCount[relatedPostId] + 1

        taggedPostCount[postId] <- 0 // ignore self

        let mutable minTags = 0

        // custom priority queue to find topN
        for i in 0 .. taggedPostCount.Length - 1 do
            let count = taggedPostCount[i]

            if count > minTags then
                // Find upper bound: pos at which count is larger than current one.
                let mutable upperBound = (topN - 2) * 2

                while upperBound >= 0 && count > top5[upperBound] do
                    top5[upperBound + 2] <- top5[upperBound]
                    top5[upperBound + 3] <- top5[upperBound + 1]
                    upperBound <- upperBound - 2

                let insertionPos = upperBound + 2
                top5[insertionPos] <- count
                top5[insertionPos + 1] <- i

                minTags <- top5[topN * 2 - 2]

        { _id = post._id
          tags = post.tags
          related = Array.init topN (fun i -> posts[top5[i * 2 + 1]]) }

    )


stopwatch.Stop()
printfn "Processing time (w/o IO): %dms" stopwatch.ElapsedMilliseconds
let json = Json.serialize allRelatedPosts

File.WriteAllText($"{srcDir}/../related_posts_fsharp.json", json)
