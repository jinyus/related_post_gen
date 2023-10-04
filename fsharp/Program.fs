﻿open System.IO
open System
open FSharp.Json
open Microsoft.FSharp.NativeInterop

#nowarn "9"

let inline stackalloc<'a when 'a: unmanaged> (length: int): Span<'a> =
  let p = NativePtr.stackalloc<'a> length |> NativePtr.toVoidPtr
  Span<'a>(p, length)


type Post =
    { _id: string
      title: string
      tags: string[] }

type RelatedPosts =
    { _id: string
      tags: string[]
      related: Post[] }

let srcDir = __SOURCE_DIRECTORY__
let posts = Json.deserialize<Post[]> (File.ReadAllText $"{srcDir}/../posts.json")

let start = DateTime.Now

// very slow, 50ms. needs improvement
let tagMap: Map<string, int array> =
    posts
    |> Array.mapi (fun i p -> i, p)
    |> Array.collect (fun (i, p) -> p.tags |> Array.map (fun t -> t, [| i |]))
    |> Array.groupBy fst
    |> Array.map (fun (t, is) -> t, is |> Array.collect snd)
    |> Map.ofArray


let allRelatedPosts: RelatedPosts[] =
    posts
    |> Array.mapi (fun i post ->
        let mutable taggedPostCount = stackalloc posts.Length

        for tag in post.tags do
            for oIDX in tagMap[tag] do
                taggedPostCount[oIDX] <- taggedPostCount[oIDX] + 1


        taggedPostCount[i] <- 0 // ignore self

        let topN = 5
        let mutable top5 = stackalloc (topN * 2) // flattened list of (count, id)
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

        let related = Array.zeroCreate 5
        for i in 0 .. related.Length - 1 do
            related[i] <- posts[top5[i * 2 + 1]]
        
        { _id = post._id
          tags = post.tags
          related = related }

    )


printfn "Processing time (w/o IO): %dms" (DateTime.Now - start).Milliseconds
let json = Json.serialize allRelatedPosts

File.WriteAllText($"{srcDir}/../related_posts_fsharp.json", json)
