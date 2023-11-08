open System
open System.Collections.Frozen
open System.IO
open System.Runtime.InteropServices
open FSharp.NativeInterop
open System.Collections.Generic
open FSharp.Json
open ObjectLayoutInspector //System.Text.Json is not aot friendly

#nowarn "9"

let inline stackalloc<'a when 'a: unmanaged> (length: int) : Span<'a> =
    let p = NativePtr.stackalloc<'a> length |> NativePtr.toVoidPtr
    Span<'a>(p, length)

let inline incv (x : byref<_>) = x <- x + LanguagePrimitives.GenericOne

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

module Work =
    let getRelatedPosts (i: int, tagMap: FrozenDictionary<string, int[]>, taggedPostCount: Span<byte>, posts: Span<Post>) =
        
        taggedPostCount.Fill(0uy)
        let post = posts[i]
        for tag in post.tags do
            for otherPostIdx in tagMap[tag] do
                incv &taggedPostCount[otherPostIdx]
                // taggedPostCount[otherPostIdx] <- taggedPostCount[otherPostIdx] + 1uy
        
        taggedPostCount[i] <- 0uy // ignore self
        let top5 = Span.op_Implicit(Array.zeroCreate<struct {| count: byte; postId: int |}> topN)
        let mutable minTags: byte = 0uy
        let taggedPostLength = uint taggedPostCount.Length
        
        //  custom priority queue to find top N
        let mutable p: int = 0
        while (uint p < taggedPostLength) do
            while ((uint p < taggedPostLength) && (taggedPostCount[p] <= minTags)) do
                p <- p + 1
            if (uint p < taggedPostLength) then
                let count: byte = taggedPostCount[p]
                let mutable upperBound: int = topN - 2
                while upperBound >= 0 && count > top5[upperBound].count do
                    top5[upperBound + 1] <- top5[upperBound]
                    upperBound <- upperBound - 1

                top5[upperBound + 1] <- {| count = count; postId = p |}
                minTags <- top5[topN - 1].count
            
            p <- p + 1
            
        let topPosts = Array.zeroCreate<Post>(topN)
        
        let mutable j = 0
        while j < 5 do
            topPosts[j] <- posts[top5[j].postId]
            j <- j + 1
            
        
        { _id = post._id
          tags = post.tags
          related = topPosts }
        
    let getAllRelated (posts: Span<Post>) =
        let postsCount = posts.Length
        
        // Start work
        let tagPostsTmp = Dictionary<string, LinkedList<int>>(100)

        for i in 0 .. postsCount - 1 do
            for tag in posts[i].tags do
                match tagPostsTmp.TryGetValue tag with
                | true, s -> s.AddLast i |> ignore
                | false, _ ->
                    let stack = LinkedList()
                    stack.AddLast i |> ignore
                    tagPostsTmp[tag] <- stack
                    
        // convert from Dict<_,LinkedList<int>> to Dict<_,int[]> for faster access
        let tagMap = FrozenDictionary.ToFrozenDictionary(tagPostsTmp, (fun s -> s.Key), fun s -> System.Linq.Enumerable.ToArray(s.Value))
        
        let allRelatedPosts = Array.zeroCreate<RelatedPosts> postsCount
        let mutable taggedPostCount = stackalloc postsCount

        
        for i in 0 .. postsCount - 1 do
            allRelatedPosts[i] <- getRelatedPosts(i,tagMap, taggedPostCount, posts) 
        allRelatedPosts
        
[<EntryPoint>]
let main args =
    let posts = Json.deserialize<Post[]> (File.ReadAllText $"{srcDir}/../posts.json")
    
    // TypeLayout.PrintLayout<Post>(recursively = true)
    let posts = Span.op_Implicit(posts)
    // Warmup
    Work.getAllRelated posts |> ignore

    GC.Collect()

    let stopwatch = Diagnostics.Stopwatch.StartNew()

    let allRelatedPosts = Work.getAllRelated posts

    stopwatch.Stop()
    Console.WriteLine($"Processing time (w/o IO): {stopwatch.Elapsed.TotalMilliseconds}ms")

    let json = Json.serialize allRelatedPosts

    File.WriteAllText($"{srcDir}/../related_posts_fsharp.json", json)
    0
