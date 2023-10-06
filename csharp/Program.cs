using System.Collections.Generic;
using System.Diagnostics;
using System.Runtime.InteropServices;
using System.Text.Json;
using System.Text.Json.Serialization;

const int topN = 5;
var posts = JsonSerializer.Deserialize<List<Post>>(File.ReadAllText(@"../posts.json"), MyJsonContext.Default.ListPost);

var sw = Stopwatch.StartNew();

// slower when int[] is used
var tagMapTemp = new Dictionary<string, Stack<int>>(100);

for (var i = 0; i < posts!.Count; i++)
{
    foreach (var tag in posts[i].Tags)
    {
        // single lookup
        ref var stack = ref CollectionsMarshal.GetValueRefOrAddDefault(tagMapTemp, tag, out _);
        stack ??= new Stack<int>();
        stack.Push(i);
    }
}

var tagMap = new Dictionary<string, int[]>(100);

foreach (var (tag, postIds) in tagMapTemp)
{
    tagMap[tag] = postIds.ToArray();
}

var allRelatedPosts = new RelatedPosts[posts.Count];
var taggedPostCount = new int[posts.Count];

for (var i = 0; i < posts.Count; i++)
{
    Array.Clear(taggedPostCount, 0, taggedPostCount.Length);  // reset counts

    foreach (var tag in posts[i].Tags)
    {
        foreach (var otherPostIdx in tagMap[tag])
        {
            taggedPostCount[otherPostIdx]++;
        }
    }

    taggedPostCount[i] = 0;  // Don't count self

    var top5 = new int[topN * 2]; // flattened list of (count, id)
    int minTags = 0;

    //  custom priority queue to find top N
    for (var j = 0; j < taggedPostCount.Length; j++)
    {
        int count = taggedPostCount[j];

        if (count > minTags)
        {
            int upperBound = (topN - 2) * 2;

            while (upperBound >= 0 && count > top5[upperBound])
            {
                top5[upperBound + 2] = top5[upperBound];
                top5[upperBound + 3] = top5[upperBound + 1];
                upperBound -= 2;
            }

            int insertPos = upperBound + 2;
            top5[insertPos] = count;
            top5[insertPos + 1] = j;

            minTags = top5[topN * 2 - 2];
        }
    }

    var topPosts = new Post[topN];

    // Convert indexes back to Post references. skip even indexes
    for (int j = 1; j < 10; j += 2)
    {
        topPosts[j / 2] = posts[top5[j]];
    }

    allRelatedPosts[i] = new RelatedPosts
    {
        Id = posts[i].Id,
        Tags = posts[i].Tags,
        Related = topPosts
    };
}

sw.Stop();

Console.WriteLine("Processing time (w/o IO): {0}ms", sw.Elapsed.TotalMilliseconds);

File.WriteAllText(@"../related_posts_csharp.json", JsonSerializer.Serialize(allRelatedPosts, MyJsonContext.Default.RelatedPostsArray));

public class Post
{
    [JsonPropertyName("_id")]
    public string Id { get; set; }

    [JsonPropertyName("title")]
    public string Title { get; set; }

    [JsonPropertyName("tags")]
    public string[] Tags { get; set; }
}

public class RelatedPosts
{
    [JsonPropertyName("_id")]
    public string Id { get; set; }

    [JsonPropertyName("tags")]
    public string[] Tags { get; set; }

    [JsonPropertyName("related")]
    public Post[] Related { get; set; }
}

[JsonSerializable(typeof(Post))]
[JsonSerializable(typeof(List<Post>))]
[JsonSerializable(typeof(RelatedPosts))]
[JsonSerializable(typeof(RelatedPosts[]))]
public partial class MyJsonContext : JsonSerializerContext { }
