import std/[tables, hashes, sequtils, monotimes, times]
import jsony
import xxhash

type
  Post = ref object
    `"_id"`: string
    title: string
    tags : seq[string]

  RelatedPosts = ref object
    `"_id"`: string
    tags : seq[string]
    related : seq[Post]

  Key = string

proc hash(x: Key): Hash =
  cast[Hash](XXH3_64bits(x))

const
    input = "../posts.json"
    output = "../related_posts_nim.json"

proc main() =
  let posts = readFile(input).fromJson(seq[Post])

  let start = getMonotime()

  var tagMap: Table[Key, seq[int]]
  for i, post in posts:
    for tag in post.tags:
      if tagMap.hasKeyOrPut(tag.Key, @[i]):
        tagMap[tag.Key].add i

  var allRelatedPosts = newSeq[RelatedPosts](posts.len)
  var taggedPostCount = newSeq[uint8](posts.len)

  for i, post in posts.pairs:
    zeroMem(taggedPostCount[0].addr, taggedPostCount.len)

    for tag in post.tags:
      for otherIDX in tagMap[tag.Key]:
        taggedPostCount[otherIDX] += 1

    taggedPostCount[i] = 0 # remove self

    var top5: array[5, tuple[idx: int, count: uint8]]

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

when isMainModule:
  main()
