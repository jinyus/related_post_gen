using Newtonsoft.Json;


public struct Post
{
    [JsonProperty("_id")]
    public required string Id { get; set; }

    [JsonProperty("title")]
    public required string Title { get; set; }

    [JsonProperty("tags")]
    public required List<string> Tags { get; set; }
}

public struct RelatedPosts
{
    [JsonProperty("_id")]
    public required string Id { get; set; }

    [JsonProperty("tags")]
    public required List<string> Tags { get; set; }

    [JsonProperty("related")]
    public required Post[] Related { get; set; }
}

public class Program
{
    public static void Main(string[] args)
    {
        const int topN = 5;
        var filePath = @"../posts.json";
        var posts = JsonConvert.DeserializeObject<List<Post>>(File.ReadAllText(filePath));

        var start = DateTime.Now;

        var tagPostsTmp = new Dictionary<string, Stack<int>>();

        for (int i = 0; i < posts!.Count; i++)
        {
            var post = posts[i];
            foreach (var tag in post.Tags)
            {
                if (tagPostsTmp.TryGetValue(tag, out Stack<int> s))
                {
                    s.Push(i);
                }
                else
                {
                    var newStack = new Stack<int>();
                    newStack.Push(i);
                    tagPostsTmp[tag] = newStack;
                }
            }
        }

        // convert from Dictionary<string, Stack<int>> to Dictionary<string, int[]> for faster access
        var tagMap = new Dictionary<string, int[]>(tagPostsTmp.Count);
        foreach (var kv in tagPostsTmp)
        {
            tagMap[kv.Key] = kv.Value.ToArray();
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
            foreach (var item in taggedPostCount.Select((value, index) => new { value, index }))
            {
                int j = item.index;
                int count = item.value;

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

        File.WriteAllText(@"../related_posts_csharp.json", JsonConvert.SerializeObject(allRelatedPosts));
    }
}
