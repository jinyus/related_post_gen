open System
open System.IO
open FSharp.NativeInterop
open System.Collections.Generic
open System.Text.Json

#nowarn "9"

let inline stackalloc<'a when 'a: unmanaged> (length: int) : Span<'a> =
    let p = NativePtr.stackalloc<'a> length |> NativePtr.toVoidPtr
    Span<'a>(p, length)

[<Struct>]
type Post =
    { _id: string
      title: string
      tags: string[] }

type RelatedPosts =
    { _id: string
      tags: string[]
      related: Post[] }

let srcDir = __SOURCE_DIRECTORY__

let posts =
    JsonSerializer.Deserialize<Post[]>(File.ReadAllText $"{srcDir}/../posts.json")

let stopwatch = Diagnostics.Stopwatch.StartNew()

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

let [<Literal>] topN = 5

let top5 = Array.zeroCreate<struct{|count:byte;postId:int|}> topN

let allRelatedPosts: RelatedPosts[] =
    posts
    |> Array.mapi (fun postId post ->
        let taggedPostCount = stackalloc posts.Length

        for tagId in post.tags do
            for relatedPostId in tagPosts[tagId] do
                taggedPostCount[relatedPostId] <- taggedPostCount[relatedPostId] + 1uy

        taggedPostCount[postId] <- 0uy // ignore self

        let mutable minTags = 0uy

        // custom priority queue to find topN
        for i in 0 .. taggedPostCount.Length - 1 do
            let count = taggedPostCount[i]

            if count > minTags then
                // Find upper bound: pos at which count is larger than current one.
                let mutable pos = topN - 2

                while pos >= 0 && count > top5[pos].count do
                    top5[pos + 1] <- top5[pos]
                    pos <- pos - 1

                top5[pos+1] <- {| count=count; postId=i |}
                minTags <- top5[topN-1].count

        let result =
            { _id = post._id
              tags = post.tags
              related = top5 |> Array.map (fun top -> posts[top.postId]) }

        // Clean up the top5 array
        for i in 0..top5.Length - 1 do
            top5[i] <- {|count = 0uy; postId = -1|}

        result
    )

stopwatch.Stop()
printfn "Processing time (w/o IO): %dms" stopwatch.ElapsedMilliseconds

let json = JsonSerializer.Serialize allRelatedPosts

File.WriteAllText($"{srcDir}/../related_posts_fsharp.json", json)
