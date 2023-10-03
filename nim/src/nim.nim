# This is just an example to get you started. A typical binary package
# uses this file as the main entry point of the application.
import std/os
import strformat
import json
import std/tables
import std/sequtils
import times

type
  Post = object
    `"_id"`: string
    title: string
    tags : seq[string]

  RelatedPosts = object
    `"_id"`: string
    tags : seq[string]
    related : seq[Post]

const 
    input = "../posts.json"
    output = "../related_posts_nim.json"


let posts = to(parseFile(input), seq[Post])

let start = getTime()

var tagMap = initTable[string, var seq[int]]()

for i, post in posts.pairs:
  for tag in post.tags:
    var lst = tagMap.getOrDefault(tag, @[])
    lst.add(i)
    tagMap[tag] = lst

echo "Loaded ", posts.len, " posts"

echo "Count of tags: ", tagMap.len
echo "redis count", tagMap["redis"].len

# seq of table
var allRelatedPosts  = newSeq[RelatedPosts](posts.len)
var taggedPostCount  = newSeq[int](posts.len)

for i ,post in posts.pairs:
  taggedPostCount.apply(proc(x: int): int = 0)

  for tag in post.tags:
    for idx in tagMap[tag]:
      taggedPostCount[idx] += 1

  taggedPostCount[i] = 0 # remove self

  var top5 : array[5, tuple[ idx: int,count: int]]
  var minTags = 0

  for i , count in taggedPostCount.pairs:
    if count > minTags:
      var pos = 4

      while pos >= 0 and count > top5[pos].count:
        pos -= 1

      pos += 1

      if pos < 4:
        for i in countdown(3, pos):
          top5[i + 1] = top5[i]
      if pos <= 4:
        top5[pos] = (idx: i, count: count)
        minTags = top5[4].count

  var topPosts = newSeq[Post](5)

  for idx, _ in top5:
    topPosts.add(posts[idx])

  allRelatedPosts[i] = RelatedPosts(`"_id"`: post.`"_id"`, tags: post.tags, related: topPosts)


let total = getTime() - start


echo "Processing time (w/o IO): ", total.inMilliseconds, "ms"

echo "R count: ", allRelatedPosts.len

let jsonObject = %* allRelatedPosts


writeFile(output, $jsonObject)



