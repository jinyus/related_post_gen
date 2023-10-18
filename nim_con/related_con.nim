import std/[hashes, monotimes, sequtils, sugar, times]
import pkg/[jsony, malebolgia, xxhash]
import ./related_con/fixedtable

type
  Digest = tuple[tagCol: TagCol, tagMap: TagMap]

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

  RelMeta = tuple[index: PostIndex, count: RelCount]

  Tag = distinct string

  TagCol = seq[seq[Tag]]

  TagMap = Table[Tag, seq[PostIndex]]

  TaskGroup = tuple[first, last: PostIndex]

  TaskGroups = object
    groups: seq[TaskGroup]
    size: int

  Top5 = array[5, RelMeta]

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
    tagCol = newSeqOfCap[seq[Tag]](posts.len)
    tagMap = initTable[Tag, seq[PostIndex]](100)

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
    groups.add((first: step * i, last: step * (i + 1) - 1))
    if i == ThreadPoolSize - 1:
      groups[i].last = groups[i].last + taskCount mod ThreadPoolSize

  T(groups: groups, size: groups.len)

proc tally(
    relCounts: var seq[RelCount],
    index: PostIndex,
    tagCol: ptr TagCol,
    tagMap: ptr TagMap) =
  for tag in tagCol[][index]:
    for relIndex in tagMap[][tag]:
      inc relCounts[relIndex]

  relCounts[index] = 0 # remove self

proc top5(relCounts: seq[RelCount], top5: var Top5) =
  for index, count in relCounts:
    if count > top5[4].count:
      top5[4] = (index: index, count: count)
      for rank in countdown(3, 0):
        if count > top5[rank].count:
          swap(top5[rank + 1], top5[rank])

proc process(
    group: TaskGroup,
    tagCol: ptr TagCol,
    tagMap: ptr TagMap,
    top5s: ptr seq[Top5]) =
  for index in (group.first)..(group.last):
    var relCounts = newSeq[RelCount](tagCol[].len)
    relCounts.tally(index, tagCol, tagMap)
    relCounts.top5(top5s[][index])

proc readPosts(path: string): Posts =
  path.readFile.fromJson(Posts)

func resolve(posts: Posts, top5s: seq[Top5]): seq[PostOut] =
  collect(newSeqOfCap(posts.len)):
    for index, top5 in top5s:
      PostOut(
        `"_id"`: posts[index].`"_id"`,
        tags: posts[index].tags,
        related: top5.mapIt(posts[it.index]))

proc main() =
  let
    posts = input.readPosts
    t0 = getMonotime()
    groups = TaskGroups.init(posts.len)
    (tagCol, tagMap) = Digest.init(posts)

  var
    top5s = newSeq[Top5](posts.len)
    tasks = createMaster()

  tasks.awaitAll:
    for i in 0..<groups.size:
      tasks.spawn groups[i].process(addr tagCol, addr tagMap, addr top5s)

  let
    postsOut = posts.resolve(top5s)
    time = (getMonotime() - t0).inMicroseconds / 1000

  # echo "Threads: ", ThreadPoolSize, ", Chan size: ", FixedChanSize
  echo "Processing time (w/o IO): ", time, "ms"
  output.writeFile(postsOut.toJson)

when isMainModule:
  main()
