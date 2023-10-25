import std/[hashes, monotimes, tables, times]
import pkg/[jsony, xxhash]

type
  Post = ref object
    `"_id"`: string
    title: string
    tags : seq[string]

  RelatedPosts = object
    `"_id"`: string
    tags : ptr seq[string]
    related: array[5, ptr Post]

const
  input = "../posts.json"
  output = "../related_posts_nim.json"

func hash(x: string): Hash {.inline, used.} =
  cast[Hash](XXH3_64bits(x))

func `[]`(t: Table[string, seq[int]], key: string): lent seq[int] =
  tables.`[]`(t.addr[], key)

proc dumpHook(s: var string, v: ptr) {.inline, used.} =
  if v == nil:
    s.add("null")
  else:
    s.dumpHook(v[])

func genTagMap(posts: seq[Post]): Table[string, seq[int]] =
  result = initTable[string, seq[int]](100)
  for i, post in posts:
    for tag in post.tags:
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
    taggedPostCount: var seq[uint8],
    posts: seq[Post],
    tagMap: Table[string, seq[int]],
    i: int) =
  for tag in posts[i].tags:
    try:
      for relatedIDX in tagMap[tag]:
        inc(taggedPostCount[relatedIDX])
    except KeyError as e:
      raise (ref Defect)(msg: e.msg)
  taggedPostCount[i] = 0 # remove self

proc findTop5(
    taggedPostCount: var seq[uint8],
    posts: seq[Post],
    top5: var array[5, tuple[idx: int, count: uint8]],
    related: var array[5, ptr Post]) =
  for i, count in taggedPostCount:
    if count > top5[4].count:
      top5[4].idx = i
      top5[4].count = count
      for pos in countdown(3, 0):
        if count > top5[pos].count:
          swap(top5[pos+1], top5[pos])
  for i in 0..<top5.len:
    related[i] = addr posts[top5[i].idx]
    top5[i].idx = 0
    top5[i].count = 0

proc process(
    posts: seq[Post],
    tagMap: Table[string, seq[int]],
    relatedPosts: var seq[RelatedPosts]) =
  var top5: array[5, tuple[idx: int, count: uint8]]
  for i in 0..<posts.len:
    var taggedPostCount = newSeq[uint8](posts.len)
    taggedPostCount.countTaggedPost(posts, tagMap, i)
    relatedPosts[i].`"_id"` = posts[i].`"_id"`
    relatedPosts[i].tags = addr posts[i].tags
    taggedPostCount.findTop5(posts, top5, relatedPosts[i].related)

{.pop.}

proc main() =
  let
    posts = input.readPosts
    t0 = getMonotime()
    tagMap = genTagMap(posts)
  var relatedPosts = newSeq[RelatedPosts](posts.len)
  posts.process(tagMap, relatedPosts)
  let time = (getMonotime() - t0).inMicroseconds / 1000
  output.writePosts(relatedPosts)
  echo "Processing time (w/o IO): ", time, "ms"

when isMainModule:
  main()
