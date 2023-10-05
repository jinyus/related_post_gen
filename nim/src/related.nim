# This is just an example to get you started. A typical binary package
# uses this file as the main entry point of the application.
import std/[tables, sequtils, monotimes, times]
import jsony

const
    input = "../posts.json"
    output = "../related_posts_nim.json"
    topN = 5

type
  Post = ref object
    `"_id"`: string
    title: string
    tags : seq[string]

  RelatedPosts = ref object
    `"_id"`: string
    tags : seq[string]
    related : array[topN,Post]



let posts = readFile(input).fromJson(seq[Post])

let start = getMonotime()

var tagMap: Table[string, seq[int]]
for i, post in posts:
  for tag in post.tags:
    if tagMap.hasKeyOrPut(tag, @[i]):
      tagMap[tag].add i

var allRelatedPosts  = newSeq[RelatedPosts](posts.len)
var taggedPostCount: seq[int]

for i ,post in posts.pairs:
  taggedPostCount  = newSeq[int](posts.len)

  for tag in post.tags:
    for otherIDX in tagMap[tag]:
      taggedPostCount[otherIDX] += 1

  taggedPostCount[i] = 0 # remove self

  var top5: array[topN * 2, int]
  var minTags = 0

  for j, count in taggedPostCount:
    if count > minTags:
      var upperBound = (topN - 2) * 2

      while upperBound >= 0 and count > top5[upperBound]:
        top5[upperBound+2] = top5[upperBound]
        top5[upperBound+3] = top5[upperBound+1]
        upperBound -= 2

      let insertPos = upperBound + 2
      top5[insertPos] = count
      top5[insertPos+1] = j

      minTags = top5[topN*2-2]
      
  
  var topPosts: array[5, Post]

# Convert indexes back to Post pointers
  for i in countup(1, 9, 2):
    topPosts[i div 2] = posts[top5[i]]

  allRelatedPosts[i] = RelatedPosts(
    `"_id"`: post.`"_id"`,
    tags: post.tags,
    related: topPosts,
    )

let total = getMonotime() - start

echo "Processing time (w/o IO): ", total.inMilliseconds, "ms"

writeFile(output, allRelatedPosts.toJson)



