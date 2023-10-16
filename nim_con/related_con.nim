import std/[hashes, monotimes, sequtils, sugar, times]
import pkg/[jsony, malebolgia, malebolgia/ticketlocks, xxhash]
import ./related_con/fixedtable

type
  Digest = tuple[tagCol: TagCol, tagMap: TagMap]

  Meta = object
    index: PostIndex
    related : seq[PostIndex]

  Post = object
    `"_id"`: string
    title: string
    tags : seq[Tag]

  Posts = seq[ref Post]

  PostIndex = int

  PostOut = object
    `"_id"`: string
    tags : seq[Tag]
    related : Posts

  RelCount = uint8

  Tag = distinct string

  TagCol = seq[seq[Tag]]

  TagMap = Table[Tag, seq[PostIndex]]

  TaskGroup = tuple[first, last: PostIndex]

  TaskGroups = object
    groups: seq[TaskGroup]
    size: int

const
  input = "../posts.json"
  output = "../related_posts_nim_con.json"

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
  var groups = newSeqOfCap[TaskGroup](ThreadPoolSize)
  let step = taskCount div ThreadPoolSize
  for i in 0..<ThreadPoolSize:
    groups.add (first: step * i, last: step * (i + 1) - 1)
    if i == ThreadPoolSize - 1:
      groups[i].last = groups[i].last + taskCount mod ThreadPoolSize

  T(groups: groups, size: groups.len)

func size(group: TaskGroup): int =
  group.last - group.first + 1

proc tally(
    relCounts: var seq[RelCount],
    index: PostIndex,
    tagCol: ptr TagCol,
    tagMap: ptr TagMap) =
  for tag in tagCol[][index]:
    for relIndex in tagMap[][tag]:
      inc relCounts[relIndex]

  relCounts[index] = 0 # remove self

proc top5(relCounts: var seq[RelCount]): seq[PostIndex] =
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

proc process(
    group: TaskGroup,
    tagCol: ptr TagCol,
    tagMap: ptr TagMap,
    metas: ptr seq[Meta],
    L: ptr TicketLock) =
  var pMetas = newSeqOfCap[Meta](group.size)
  for index in (group.first)..(group.last):
    var relCounts = newSeq[RelCount](tagCol[].len)
    relCounts.tally(index, tagCol, tagMap)
    pMetas.add Meta(index: index, related: relCounts.top5)

  withLock L[]:
    for meta in pMetas:
      metas[].add meta

proc readPosts(path: string): Posts =
  readFile(path).fromJson(Posts)

func resolve(metas: var seq[Meta], posts: var Posts): seq[PostOut] =
  collect(newSeqOfCap(posts.len)):
    for meta in metas:
      PostOut(
        `"_id"`: posts[meta.index].`"_id"`,
        tags: posts[meta.index].tags,
        related: meta.related.mapIt(posts[it]))

proc main() =
  var posts = readPosts(input)
  let t0 = getMonotime()

  let
    groups = TaskGroups.init(posts.len)
    (tagCol, tagMap) = Digest.init(posts)

  var
    L = initTicketLock()
    metas = newSeqOfCap[Meta](posts.len)
    tasks = createMaster()

  tasks.awaitAll:
    for i in 0..<groups.size:
      tasks.spawn process(
        groups[i], addr tagCol, addr tagMap, addr metas, addr L)

  let
    postsOut = metas.resolve(posts)
    time = (getMonotime() - t0).inMicroseconds / 1000

  # echo "Threads: ", ThreadPoolSize, ", Chan size: ", FixedChanSize
  echo "Processing time (w/o IO): ", time, "ms"
  writeFile(output, postsOut.toJson)

when isMainModule:
  main()
