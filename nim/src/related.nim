import std/[hashes, monotimes, sequtils, sugar, times]
import pkg/[jsony, xxhash]
import ./fixedtable

type
  Post = object
    `"_id"`: string
    title: string
    tags : seq[string]

  Posts = seq[ref Post]

  RelatedPosts = object
    `"_id"`: string
    tags : seq[string]
    related : Posts

  Top5 = array[5, tuple[idx: int, count: uint8]]

const
  input = "../posts.json"
  output = "../related_posts_nim.json"

func hash(x: string): Hash =
  cast[Hash](XXH3_64bits(x))

proc findTop5(taggedPostCount: seq[uint8], top5: var Top5) =
  for i, count in taggedPostCount:
    if count > top5[4].count:
      top5[4] = (idx: i, count: count)
      for pos in countdown(3, 0):
        if count > top5[pos].count:
          swap(top5[pos+1], top5[pos])

func genTagMap(posts: Posts): Table[string, seq[int]] =
  result = initTable[string, seq[int]](100)
  for i, post in posts:
    for tag in post.tags:
      result.withValue(tag, val):
        val[].add(i)
      do:
        result[tag] = @[i]

proc countTaggedPost(
    taggedPostCount: var seq[uint8],
    post: ref Post,
    idx: int,
    tagMap: Table[string, seq[int]]) =
  for tag in post.tags:
    for relIdx in tagMap[tag]:
      inc taggedPostCount[relIdx]
  taggedPostCount[idx] = 0 # remove self

proc process(
    posts: Posts,
    tagMap: Table[string, seq[int]],
    top5s: var seq[Top5]) =
  for i, post in posts:
    var taggedPostCount = newSeq[uint8](posts.len)
    taggedPostCount.countTaggedPost(post, i, tagMap)
    taggedPostCount.findTop5(top5s[i])

proc readPosts(path: string): Posts =
  path.readFile.fromJson(Posts)

func resolve(posts: Posts, top5s: seq[Top5]): seq[RelatedPosts] =
  collect(newSeqOfCap(posts.len)):
    for i, top5 in top5s:
      RelatedPosts(
        `"_id"`: posts[i].`"_id"`,
        tags: posts[i].tags,
        related: top5.mapIt(posts[it.idx]))

proc main() =
  let
    posts = input.readPosts
    start = getMonotime()
    tagMap = posts.genTagMap
  var top5s = newSeq[Top5](posts.len)
  posts.process(tagMap, top5s)
  let
    relatedPosts = posts.resolve(top5s)
    total = getMonotime() - start
  echo "Processing time (w/o IO): ", total.inMicroseconds / 1000, "ms"
  output.writeFile(relatedPosts.toJson)

when isMainModule:
  main()
