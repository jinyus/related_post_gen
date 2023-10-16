open System
open System.IO
open FSharp.NativeInterop
open System.Collections.Generic
open FSharp.Json //System.Text.Json is not aot friendly

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

[<Literal>]
let srcDir = __SOURCE_DIRECTORY__

[<Literal>]
let topN = 5


let getAllRelated (posts: Post[]) =
    // Start work
    let tagPostsTmp = Dictionary<string, Stack<int>>()

    for postId in 0 .. (Array.length posts - 1) do
        let post = posts[postId]

        for tag in post.tags do
            match tagPostsTmp.TryGetValue tag with
            | true, s -> s.Push postId
            | false, _ ->
                let newStack = Stack()
                newStack.Push postId
                tagPostsTmp[tag] <- newStack

    // convert from Dict<_,Stack<int>> to Dict<_,int[]> for faster access
    let tagPosts = Dictionary(tagPostsTmp.Count)

    for kv in tagPostsTmp do
        tagPosts[kv.Key] <- kv.Value.ToArray()


    let getRelated (idx: int) (post: Post) =
        let taggedPostCount = stackalloc posts.Length

        for tagId in post.tags do
            for relatedPostId in tagPosts[tagId] do
                let mutable relatedPostTagCount = &taggedPostCount[relatedPostId]
                relatedPostTagCount <- relatedPostTagCount + 1uy

        taggedPostCount[idx] <- 0uy // ignore self

        let top5 = Array.zeroCreate<struct {| count: byte; postId: int |}> topN
        let mutable minTags = 0uy

        for i in 0 .. taggedPostCount.Length - 1 do
            let count = taggedPostCount[i]

            if count > minTags then
                // Find upper bound: pos at which count is larger than current one.
                let mutable pos = topN - 2

                while pos >= 0 && count > top5[pos].count do
                    top5[pos + 1] <- top5[pos]
                    pos <- pos - 1

                top5[pos + 1] <- {| count = count; postId = i |}
                minTags <- top5[topN - 1].count


        { _id = post._id
          tags = post.tags
          related = top5 |> Array.map (fun top -> posts[top.postId]) }


    posts |> Array.mapi getRelated




[<EntryPoint>]
let main args =
    let posts = Json.deserialize<Post[]> (File.ReadAllText $"{srcDir}/../posts.json")

    // Warmup
    getAllRelated posts |> ignore

    let stopwatch = Diagnostics.Stopwatch.StartNew()

    let allRelatedPosts = getAllRelated posts

    stopwatch.Stop()
    Console.WriteLine($"Processing time (w/o IO): %d{stopwatch.ElapsedMilliseconds}ms")

    let json = Json.serialize allRelatedPosts

    File.WriteAllText($"{srcDir}/../related_posts_fsharp.json", json)
    0
