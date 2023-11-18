import std/[hashes, monotimes, tables, times]
import pkg/[jsony, xxhash]

const N: Positive = 5

type
  Post = ref object
    `"_id"`: string
    title: string
    tags : ref seq[string]

  RelatedPosts = object
    `"_id"`: string
    tags : ref seq[string]
    related: array[N, Post]

const
  input = "../posts.json"
  output = "../related_posts_nim.json"

func hash(x: string): Hash {.inline, used.} =
  cast[Hash](XXH3_64bits(x))

func genTagMap(posts: seq[Post]): Table[string, seq[int]] =
  result = initTable[string, seq[int]](100)
  for i, post in posts:
    for tag in post.tags[]:
      result.withValue(tag, val):
        val[].add i
      do:
        result[tag] = @[i]

proc readPosts(path: string): seq[Post] =
  path.readFile.fromJson(seq[Post])

proc writePosts(path: string, posts: seq[RelatedPosts]) =
  path.writeFile(posts.toJson)

{.push inline.}

proc countTaggedPost(
    posts: seq[Post],
    tagMap: Table[string, seq[int]],
    i: int): seq[uint8] =
  result = newSeq[uint8](posts.len)
  for tag in posts[i].tags[]:
    try:
      for relatedIDX in tagMap[tag]:
        inc result[relatedIDX]
    except KeyError as e:
      raise (ref Defect)(msg: e.msg)
  result[i] = 0 # remove self

proc findTopN(
    posts: seq[Post],
    tagMap: Table[string, seq[int]],
    i: int): array[N, Post] =
  let taggedPostCount = countTaggedPost(posts, tagMap, i)
  var
    minCount = 0
    topN: array[N*2, int]
  for i, count in taggedPostCount:
    let count = count.int
    if count > minCount:
      var pos = (N-2)*2
      while (pos >= 0) and (count > topN[pos]):
        dec(pos, 2)
      inc(pos, 2)
      if pos < (N-1)*2:
        for j in countdown((N-2)*2, pos, 2):
          topN[j+2] = topN[j]
          topN[j+3] = topN[j+1]
      topN[pos] = count
      topN[pos+1] = i
      minCount = topN[(N-1)*2]
  for i in 0..<N:
    result[i] = posts[topN[i*2+1]]

proc process(
    posts: seq[Post],
    relatedPosts: var seq[RelatedPosts]) =
  let tagMap = genTagMap(posts)
  for i in 0..<posts.len:
    relatedPosts[i].`"_id"` = posts[i].`"_id"`
    relatedPosts[i].tags = posts[i].tags
    relatedPosts[i].related = posts.findTopN(tagMap, i)

{.pop.}

proc main() =
  let
    posts = input.readPosts
    t0 = getMonotime()
  var relatedPosts = newSeq[RelatedPosts](posts.len)
  posts.process(relatedPosts)
  let time = (getMonotime() - t0).inMicroseconds / 1000
  output.writePosts(relatedPosts)
  echo "Processing time (w/o IO): ", time, "ms"

when isMainModule:
  main()
