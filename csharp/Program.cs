using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using Newtonsoft.Json;


public class Post
{
    [JsonProperty("_id")]
    public required string Id { get; set; }

    [JsonProperty("title")]
    public required string Title { get; set; }

    [JsonProperty("tags")]
    public required List<string> Tags { get; set; }
}

public class RelatedPosts
{
    [JsonProperty("_id")]
    public required string Id { get; set; }

    [JsonProperty("tags")]
    public required List<string> Tags { get; set; }

    [JsonProperty("related")]
    public required List<Post> Related { get; set; }
}

public class Program
{
    public static void Main(string[] args)
    {
        var filePath = @"../posts.json";
        var posts = JsonConvert.DeserializeObject<List<Post>>(File.ReadAllText(filePath));

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

            var top5Indexes = taggedPostCount
                .Select((count, id) => new { id, count })
                .OrderByDescending(x => x.count)
                .Take(5)
                .Select(x => x.id)
                .ToList();

            allRelatedPosts.Add(new RelatedPosts
            {
                Id = posts[i].Id,
                Tags = posts[i].Tags,
                Related = top5Indexes.Select(index => posts[index]).ToList()
            });
        }

        var end = DateTime.Now;

        Console.WriteLine("Processing time (w/o IO): {0}", (end - start).TotalMilliseconds);

        var outputFilePath = @"../related_posts_csharp.json";
        File.WriteAllText(outputFilePath, JsonConvert.SerializeObject(allRelatedPosts, Formatting.Indented));
    }
}
