import std/[cpuinfo, monotimes, tables, times]
import pkg/[jsony, taskpools]

const N: Positive = 5

type
  Post = object
    `"_id"`: string
    title: string
    tags : seq[Tag]

  PostIndex = int

  PostOut = object
    `"_id"`: string
    tags : ptr seq[Tag]
    related: TopN

  RelCount = uint8

  RelMeta = tuple[count: RelCount, index: PostIndex]

  Tag = string

  TagMap = Table[Tag, seq[PostIndex]]

  TaskGroup = tuple[first, last: PostIndex]

  TaskGroups = object
    groups: seq[TaskGroup]
    size: int

  TopN = array[N, ptr Post]

const
  input = "../posts.json"
  output = "../related_posts_nim_con.json"

func `[]`(t: TagMap, key: Tag): lent seq[PostIndex] =
  tables.`[]`(t.addr[], key)

func `[]`(groups: TaskGroups, i: int): TaskGroup =
  groups.groups[i]

proc dumpHook(s: var string, v: ptr) {.inline, used.} =
  if v == nil:
    s.add("null")
  else:
    s.dumpHook(v[])

func init(T: typedesc[TagMap], posts: seq[Post]): T =
  result = initTable[Tag, seq[PostIndex]](100)
  for i, post in posts:
    for tag in post.tags:
      result.withValue(tag, val):
        val[].add(i)
      do:
        result[tag] = @[i]

func init(T: typedesc[TaskGroups], taskCount, groupCount: int): T =
  var groups = newSeqOfCap[TaskGroup](groupCount)
  let width = taskCount div groupCount
  for i in 0..<groupCount:
    groups.add((first: width * i, last: width * (i + 1) - 1))
    if i == groupCount - 1:
      groups[i].last = groups[i].last + taskCount mod groupCount
  T(groups: groups, size: groups.len)

proc readPosts(path: string): seq[Post] =
  path.readFile.fromJson(seq[Post])

proc writePosts(path: string, posts: seq[PostOut]) =
  path.writeFile(posts.toJson)

{.push inline.}

proc tally(
    counts: var seq[RelCount],
    posts: ptr seq[Post],
    tagMap: ptr TagMap,
    index: PostIndex) =
  for tag in posts[index].tags:
    try:
      for relIndex in tagMap[][tag]:
        inc counts[relIndex]
    except KeyError as e:
      raise (ref Defect)(msg: e.msg)
  counts[index] = 0 # remove self

proc topN(
    counts: var seq[RelCount],
    posts: ptr seq[Post],
    metas: var array[N, RelMeta],
    related: var TopN) =
  for index, count in counts:
    let rank = N - 1
    if count > metas[rank].count:
      metas[rank].count = count
      metas[rank].index = index
      when N >= 2:
        for rank in countdown(N - 2, 0):
          if count > metas[rank].count:
            swap(metas[rank + 1], metas[rank])
    counts[index] = 0
  for rank in 0..<N:
    related[rank] = addr posts[metas[rank].index]
    metas[rank].count = 0
    metas[rank].index = 0

proc process(
    group: TaskGroup,
    posts: ptr seq[Post],
    tagMap: ptr TagMap,
    postsOut: ptr seq[PostOut]) =
  var
    counts = newSeq[RelCount](posts[].len)
    metas: array[N, RelMeta]
  for index in (group.first)..(group.last):
    counts.tally(posts, tagMap, index)
    postsOut[index].`"_id"` = posts[index].`"_id"`
    postsOut[index].tags = addr posts[index].tags
    counts.topN(posts, metas, postsOut[index].related)

{.pop.}

proc main() =
  let
    posts = input.readPosts
    t0 = getMonotime()
    tagMap = TagMap.init(posts)
    threadCount = countProcessors()
    groups = TaskGroups.init(posts.len, threadCount)
  var
    pool = Taskpool.new(threadCount)
    postsOut = newSeq[PostOut](posts.len)
  for i in 0..<groups.size:
    pool.spawn groups[i].process(addr posts, addr tagMap, addr postsOut)
  pool.syncAll
  let time = (getMonotime() - t0).inMicroseconds / 1000
  pool.shutdown
  output.writePosts(postsOut)
  echo "Processing time (w/o IO): ", time, "ms"

when isMainModule:
  main()
