open System
open System.IO
open FSharp.NativeInterop
open FSharp.Json
open System.Collections.Generic

#nowarn "9"

let inline stackalloc<'a when 'a: unmanaged> (length: int) : Span<'a> =
    let p = NativePtr.stackalloc<'a> length |> NativePtr.toVoidPtr
    Span<'a>(p, length)


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
let tagPostsTmp = Dictionary<string, Stack<int>>()

posts
|> Array.iteri (fun postId post ->

    for tag in post.tags do

        match tagPostsTmp.TryGetValue tag with
        | true, s -> s.Push postId
        | false, _ ->
            let newStack = Stack()
            newStack.Push postId
            tagPostsTmp[tag] <- newStack)

// convert from Dict<_,Stack<int>> to Dict<_,int[]> for faster access
let tagPosts = Dictionary(tagPostsTmp.Count)
for kv in tagPostsTmp do
    tagPosts[kv.Key] <- kv.Value.ToArray() 

let topN = 5

let allRelatedPosts: RelatedPosts[] =
    posts
    |> Array.Parallel.mapi (fun postId post ->
        let taggedPostCount = stackalloc posts.Length
        let top5 = stackalloc (topN * 2) // flattened list of (count, id)

        for tagId in post.tags do
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

        let related = Array.zeroCreate topN

        for i in 0 .. related.Length - 1 do
            related[i] <- posts[top5[i * 2 + 1]]

        { _id = post._id
          tags = post.tags
          related = related }

    )


stopwatch.Stop()
printfn "Processing time (w/o IO): %dms" stopwatch.ElapsedMilliseconds
let json = Json.serialize allRelatedPosts

File.WriteAllText($"{srcDir}/../related_posts_fsharp_con.json", json)
