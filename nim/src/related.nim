import std/[hashes, monotimes, times]
import jsony
import xxhash
import fixedtable

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

func hash(x: string): Hash =
  cast[Hash](XXH3_64bits(x))

func findTop5(posts: seq[Post], taggedPostCount: seq[uint8]): array[5, tuple[idx: int, count: uint8]] =
  for i, count in taggedPostCount:
    if count > result[4].count:
      result[4] = (idx: i, count: count)
      for pos in countdown(3, 0):
        if count > result[pos].count:
          swap(result[pos+1], result[pos])

func genTagMap(posts: seq[Post]): Table[string, seq[int]] =
  result = initTable[string, seq[int]](100)
  for i, post in posts:
    for tag in post.tags:
      result.withValue(tag, val):
        val[].add i
      do:
        result[tag] = @[i]

func countTaggedPost(taggedPostCount: var seq[uint8], i: int, post: Post, tagMap: Table[string, seq[int]]) =
  for tag in post.tags:
    for otherIDX in tagMap[tag]:
      inc(taggedPostCount[otherIDX])
  taggedPostCount[i] = 0 # remove self

proc process(posts: seq[Post]): seq[RelatedPosts] =
  let start = getMonotime()

  let tagMap = genTagMap(posts)

  var allRelatedPosts = newSeq[RelatedPosts](posts.len)
  var taggedPostCount = newSeq[uint8](posts.len)

  for i, post in posts.pairs:
    zeroMem(taggedPostCount[0].addr, posts.len)
    taggedPostCount.countTaggedPost(i, post, tagMap)

    let relatedPosts = RelatedPosts(
      `"_id"`: post.`"_id"`,
      tags: post.tags,
      related: newSeqOfCap[Post](5)
      )

    for t in posts.findTop5(taggedPostCount):
      relatedPosts.related.add posts[t.idx]

    allRelatedPosts[i] = relatedPosts

  let total = getMonotime() - start

  echo "Processing time (w/o IO): ", total.inMicroseconds / 1000, "ms"

  return allRelatedPosts

proc main() =
  let posts = readFile(input).fromJson(seq[Post])
  let res = process(posts)
  writeFile(output, res.toJson)

when isMainModule:
  main()
