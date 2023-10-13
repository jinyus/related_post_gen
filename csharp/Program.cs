using System.Diagnostics;
using System.Runtime.InteropServices;
using System.Text.Json;
using System.Text.Json.Serialization;


const int topN = 5;
var posts = JsonSerializer.Deserialize(File.ReadAllText(@"../posts.json"), MyJsonContext.Default.ListPost)!;

var postsCount = posts.Count;

// slower when warm up manually
// GetRelatedPosts(posts);

var sw = Stopwatch.StartNew();

var allRelatedPosts = GetRelatedPosts(posts);

sw.Stop();

Console.WriteLine($"Processing time (w/o IO): {sw.Elapsed.TotalMilliseconds}ms");

File.WriteAllText(@"../related_posts_csharp.json", JsonSerializer.Serialize(allRelatedPosts.ToArray(), MyJsonContext.Default.RelatedPostsArray));


Span<RelatedPosts> GetRelatedPosts(List<Post> posts)
{

    // Create a dictionary to map tags to post IDs.
    var tagMapTemp = new Dictionary<string, LinkedList<int>>(100);

    for (var i = 0; i < postsCount; i++)
    {
        foreach (var tag in posts[i].Tags)
        {
            // single lookup
            ref var stack = ref CollectionsMarshal.GetValueRefOrAddDefault(tagMapTemp, tag, out _);
            stack ??= new LinkedList<int>();
            stack.AddLast(i);
        }
    }

    var tagMap = new Dictionary<string, int[]>(tagMapTemp.Count);

    foreach (var (tag, postIds) in tagMapTemp)
    {
        tagMap[tag] = postIds.ToArray();
    }

    // Create an array to store all of the related posts.
    Span<RelatedPosts> allRelatedPosts = new RelatedPosts[postsCount];
    Span<byte> taggedPostCount = stackalloc byte[postsCount];
    Span<(byte Count, int PostId)> top5 = stackalloc (byte Count, int PostId)[topN];

    // Iterate over all of the posts.
    for (var i = 0; i < postsCount; i++)
    {
        // Reset the tagged post counts.
        taggedPostCount.Fill(0);

        // Iterate over all of the tags for the current post.
        foreach (var tag in posts[i].Tags)
        {
            // Iterate over all of the related post IDs for the current tag.
            foreach (var otherPostIdx in tagMap[tag])
            {
                // Increment the tagged post count for the related post.
                taggedPostCount[otherPostIdx]++;
            }
        }

        taggedPostCount[i] = 0; // don't count self
        top5.Clear();
        byte minTags = 0;

        //  custom priority queue to find top N
        for (var j = 0; j < postsCount; j++)
        {
            byte count = taggedPostCount[j];

            if (count > minTags)
            {
                int upperBound = topN - 2;

                while (upperBound >= 0 && count > top5[upperBound].Count)
                {
                    top5[upperBound + 1] = top5[upperBound];
                    upperBound--;
                }

                top5[upperBound + 1] = (count, j);

                minTags = top5[topN - 1].Count;
            }
        }

        var topPosts = new Post[topN];

        // Convert indexes back to Post references. skip even indexes
        for (int j = 0; j < 5; j++)
        {
            topPosts[j] = posts[top5[j].PostId];
        }

        allRelatedPosts[i] = new RelatedPosts
        {
            Id = posts[i].Id,
            Tags = posts[i].Tags,
            Related = topPosts
        };

    }
    return allRelatedPosts;
}


public record struct Post
{
    [JsonPropertyName("_id")]
    public string Id { get; set; }

    [JsonPropertyName("title")]
    public string Title { get; set; }

    [JsonPropertyName("tags")]
    public string[] Tags { get; set; }
}

public record RelatedPosts
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
