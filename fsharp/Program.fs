open System.IO
open FSharp.Data
open System
open FSharp.Json
open System.Collections.Generic
// [<Literal>]
// let ResolutionFolder = __SOURCE_DIRECTORY__

// type Post = JsonProvider<"../posts.json", SampleIsList=true, ResolutionFolder=ResolutionFolder>

type Post =
    { _id: string
      title: string
      tags: string[] }

type RelatedPosts =
    { _id: string
      tags: string[]
      related: Post[] }

let posts = Json.deserialize<Post[]> (File.ReadAllText "../posts.json")

let start = DateTime.Now

let mutable tagMap = Dictionary<string, int array>()

for i in 0 .. posts.Length - 1 do
    for tag in posts.[i].tags do
        match tagMap.TryGetValue tag with
        | true, l -> tagMap.[tag] <- Array.append l [| i |]
        | false, _ -> tagMap.[tag] <- [| i |]


// printf "tagmap took: %dms" (DateTime.Now - start).Milliseconds

// File.WriteAllText("../tag_map_fsharp.json", Json.serialize tagMap)

let mutable taggedPostCount = Array.create posts.Length 0


let allRelatedPosts: RelatedPosts[] =
    Array.init posts.Length (fun i ->
        let post = posts.[i]

        Array.fill taggedPostCount 0 posts.Length 0

        for tag in post.tags do
            for oIDX in tagMap[tag] do
                taggedPostCount[oIDX] <- taggedPostCount[oIDX] + 1


        taggedPostCount[i] <- 0

        let topN = 5
        let mutable top5 = Array.zeroCreate (topN * 2) // flattened list of (count, id)
        let mutable minTags = 0

        for i in 0 .. taggedPostCount.Length - 1 do
            let count = taggedPostCount.[i]

            if count > minTags then
                // Find upper bound: pos at which count is larger than current one.
                let mutable upperBound = (topN - 2) * 2

                while upperBound >= 0 && count > top5.[upperBound] do
                    top5.[upperBound + 2] <- top5.[upperBound]
                    top5.[upperBound + 3] <- top5.[upperBound + 1]
                    upperBound <- upperBound - 2

                let insertionPos = upperBound + 2
                top5.[insertionPos] <- count
                top5.[insertionPos + 1] <- i

                minTags <- top5.[topN * 2 - 2]

        { _id = post._id
          tags = post.tags
          related = Array.init topN (fun i -> posts.[top5.[i * 2 + 1]]) }

    )


printf "Processing time (w/o IO): %dms" (DateTime.Now - start).Milliseconds
let json = Json.serialize allRelatedPosts

File.WriteAllText("../related_posts_fsharp.json", json)
