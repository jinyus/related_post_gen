# This is just an example to get you started. A typical binary package
# uses this file as the main entry point of the application.
import std/[tables, sequtils, monotimes, times]
import jsony

type
  Post = ref object
    `"_id"`: string
    title: string
    tags : seq[string]

  RelatedPosts = ref object
    `"_id"`: string
    tags : seq[string]
    related : seq[Post]

const
    input = "../posts.json"
    output = "../related_posts_nim.json"

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

  var top5: array[5, tuple[idx, count: int]]

  for i, count in taggedPostCount:
    if count > top5[4].count:
      top5[4] = top5[3]
      block loop:
        for pos in countdown(3, 1):
          if count > top5[pos - 1].count:
            top5[pos] = top5[pos - 1]
          else:
            top5[pos] = (idx: i, count: count)
            break loop
        top5[0] = (idx: i, count: count)

  allRelatedPosts[i] = RelatedPosts(
    `"_id"`: post.`"_id"`,
    tags: post.tags,
    related: top5.map(proc(x: auto): Post = posts[x.idx]),
    )

let total = getMonotime() - start

echo "Processing time (w/o IO): ", total.inMilliseconds, "ms"

writeFile(output, allRelatedPosts.toJson)



