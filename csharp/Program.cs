using System.Text.Json;
using System.Text.Json.Serialization;


public struct Post
{
    [JsonPropertyName("_id")]
    public required string Id { get; set; }

    [JsonPropertyName("title")]
    public required string Title { get; set; }

    [JsonPropertyName("tags")]
    public required List<string> Tags { get; set; }
}

public struct RelatedPosts
{
    [JsonPropertyName("_id")]
    public required string Id { get; set; }

    [JsonPropertyName("tags")]
    public required List<string> Tags { get; set; }

    [JsonPropertyName("related")]
    public required Post[] Related { get; set; }
}

public class Program
{
    public static void Main(string[] args)
    {
        const int topN = 5;
        var filePath = @"../posts.json";
        var posts = JsonSerializer.Deserialize<List<Post>>(File.ReadAllText(filePath));

        var start = DateTime.Now;

        var tagMap = new Dictionary<string, List<int>>();
        for (var i = 0; i < posts!.Count; i++)
        {
            foreach (var tag in posts[i].Tags)
            {
                if (!tagMap.ContainsKey(tag))
                {
                    tagMap[tag] = new List<int>();
                }
                tagMap[tag].Add(i);
            }
        }

        var allRelatedPosts = new List<RelatedPosts>(posts.Count);
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

            int[] top5 = new int[topN * 2]; // flattened list of (count, id)
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

            Post[] topPosts = new Post[topN];

            // Convert indexes back to Post references
            for (int j = 1; j < 10; j += 2)
            {
                topPosts[j / 2] = posts[top5[j]];
            }


            allRelatedPosts.Add(new RelatedPosts
            {
                Id = posts[i].Id,
                Tags = posts[i].Tags,
                Related = topPosts
            });
        }

        var end = DateTime.Now;

        Console.WriteLine("Processing time (w/o IO): {0}", (end - start).TotalMilliseconds);

        File.WriteAllText(@"../related_posts_csharp.json", JsonSerializer.Serialize(allRelatedPosts));
    }
}
