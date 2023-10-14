import std/hashes
import pkg/[jsony, xxhash]
import ./related/fixedtable

when defined(profileGen):
  echo "Generating profile"
else:
  import std/[monotimes, times]

type
  Post = ref object
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

func hash(x: string): Hash =
  cast[Hash](XXH3_64bits(x))

func findTop5(
    posts: seq[Post],
    taggedPostCount: seq[uint8]): seq[Post] =
  result = newSeq[Post](5)
  var top5: array[5, tuple[idx: int, count: uint8]]
  for i, count in taggedPostCount:
    if count > top5[4].count:
      top5[4] = (idx: i, count: count)
      for pos in countdown(3, 0):
        if count > top5[pos].count:
          swap(top5[pos+1], top5[pos])
  for i, t in top5:
    result[i] = posts[t.idx]

func genTagMap(posts: seq[Post]): Table[string, seq[int]] =
  result = initTable[string, seq[int]](100)
  for i, post in posts:
    for tag in post.tags:
      result.withValue(tag, val):
        val[].add i
      do:
        result[tag] = @[i]

proc countTaggedPost(
    taggedPostCount: var seq[uint8],
    i: int,
    post: Post,
    tagMap: Table[string, seq[int]]) =
  for tag in post.tags:
    for otherIDX in tagMap[tag]:
      inc(taggedPostCount[otherIDX])
  taggedPostCount[i] = 0 # remove self

func process(posts: seq[Post]): seq[RelatedPosts] =
  result = newSeq[RelatedPosts](posts.len)
  let tagMap = genTagMap(posts)
  for i, post in posts.pairs:
    var taggedPostCount = newSeq[uint8](posts.len)
    taggedPostCount.countTaggedPost(i, post, tagMap)
    let relatedPosts = RelatedPosts(
      `"_id"`: post.`"_id"`,
      tags: post.tags,
      related: posts.findTop5(taggedPostCount))
    result[i] = relatedPosts

proc main() =
  let posts = readFile(input).fromJson(seq[Post])
  when not defined(profileGen):
    let t0 = getMonotime()
  let res = process(posts)
  when not defined(profileGen):
    let time = (getMonotime() - t0).inMicroseconds / 1000
    echo "Processing time (w/o IO): ", time, "ms"
  writeFile(output, res.toJson)

when isMainModule:
  main()
