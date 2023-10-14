import std/[hashes, monotimes, sequtils, sugar, times]
import pkg/[jsony, malebolgia, xxhash]
import ./related_con/fixedtable

type
  Digest = tuple[tagCol: TagCol, tagMap: TagMap]

  Meta = object
    index: PostIndex
    related : PostIndices

  Metas = seq[Meta]

  Post = object
    `"_id"`: string
    title: string
    tags : Tags

  Posts = seq[ref Post]

  PostIndex = int

  PostIndices = seq[PostIndex]

  PostOut = object
    `"_id"`: string
    tags : Tags
    related : Posts

  RelCount = uint8

  RelCounts = seq[RelCount]

  Tag = distinct string

  Tags = seq[Tag]

  TagCol = seq[Tags]

  TagMap = Table[Tag, PostIndices]

  TaskGroup = tuple[first, last: PostIndex]

  TaskGroups = object
    groups: seq[TaskGroup]
    size: int

const
  input = "../posts.json"
  output = "../related_posts_nim_con.json"

var digest: Digest

func `$`(x: Tag): string {.used.} =
  x.string

func `==`(x, y: Tag): bool {.borrow.}

func `[]`(groups: TaskGroups, i: int): TaskGroup =
  groups.groups[i]

func hash(x: Tag): Hash {.used.} =
  cast[Hash](XXH3_64bits(x.string))

func init(T: typedesc[Digest], posts: Posts): T =
  var
    tagCol: TagCol
    tagMap: TagMap

  for i, post in posts:
    tagCol.add(post.tags)
    for tag in post.tags:
      tagMap.withValue(tag, val):
        val[].add(i)
      do:
        tagMap[tag] = @[i]

  (tagCol: tagCol, tagMap: tagMap)

func init(T: typedesc[TaskGroups], taskCount: int): T =
  var groups = newSeq[TaskGroup](ThreadPoolSize)
  let step = taskCount div ThreadPoolSize
  for i in 0..<ThreadPoolSize:
    groups[i] = (first: step * i, last: step * (i + 1) - 1)
    if i == ThreadPoolSize - 1:
      groups[i].last = groups[i].last + taskCount mod ThreadPoolSize

  T(groups: groups, size: groups.len)

func size(group: TaskGroup): int =
  group.last - group.first + 1

proc tally(relCounts: var RelCounts, index: PostIndex) =
  for tag in digest.tagCol[index]:
    for index in digest.tagMap[tag]:
      inc relCounts[index]

  relCounts[index] = 0 # remove self

proc top5(relCounts: var RelCounts): PostIndices =
  result = newSeq[PostIndex](5)
  var top5: array[5, tuple[index: PostIndex, count: RelCount]]
  for index, count in relCounts:
    if count > top5[4].count:
      top5[4] = (index: index, count: count)
      for rank in countdown(3, 0):
        if count > top5[rank].count:
          swap(top5[rank + 1], top5[rank])

  for i in 0..<top5.len:
    result[i] = top5[i].index

proc process(group: TaskGroup): Metas =
  result = newSeq[Meta](group.size)
  var i = 0
  for index in (group.first)..(group.last):
    var relCounts = newSeq[RelCount](digest.tagCol.len)
    relCounts.tally(index)
    result[i] = Meta(index: index, related: relCounts.top5)
    inc i

proc readPosts(path: string): Posts =
  readFile(path).fromJson(Posts)

func resolve(metaCol: seq[Metas], posts: Posts): seq[PostOut] =
  collect(newSeqOfCap(posts.len)):
    for metas in metaCol:
      for meta in metas:
        PostOut(
          `"_id"`: posts[meta.index].`"_id"`,
          tags: posts[meta.index].tags,
          related: meta.related.mapIt(posts[it]))

proc main() =
  let
    posts = readPosts(input)
    t0 = getMonotime()

  digest = Digest.init(posts)

  let groups = TaskGroups.init(posts.len)

  var
    metaCol = newSeq[Metas](groups.size)
    tasks = createMaster()

  tasks.awaitAll:
    for i in 0..<groups.size:
      tasks.spawn process(groups[i]) -> metaCol[i]

  let
    postsOut = metaCol.resolve(posts)
    time = (getMonotime() - t0).inMicroseconds / 1000

  # echo "ThreadPoolSize: ", ThreadPoolSize
  # echo "FixedChanSize: ", FixedChanSize
  echo "Processing time (w/o IO): ", time, "ms"
  writeFile(output, postsOut.toJson)

when isMainModule:
  main()
