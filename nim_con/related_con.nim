import std/[hashes, monotimes, times]
import pkg/[jsony, malebolgia, xxhash]
import ./related_con/fixedtable

const N = 5
when N < 1:
  {.fatal: "N must be greater than zero!".}

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

  Tag = distinct string

  TagMap = Table[Tag, seq[PostIndex]]

  TaskGroup = tuple[first, last: PostIndex]

  TaskGroups = object
    groups: seq[TaskGroup]
    size: int

  TopN = array[N, ptr Post]

const
  input = "../posts.json"
  output = "../related_posts_nim_con.json"

func `$`(x: Tag): string =
  x.string

func `==`(x, y: Tag): bool {.borrow.}

func `[]`(groups: TaskGroups, i: int): TaskGroup =
  groups.groups[i]

proc dumpHook(s: var string, v: ptr) {.inline, used.} =
  if v == nil:
    s.add("null")
  else:
    s.dumpHook(v[])

func hash(x: Tag): Hash {.used.} =
  cast[Hash](XXH3_64bits($x))

func init(T: typedesc[TagMap], posts: seq[Post]): T =
  result = initTable[Tag, seq[PostIndex]](100)
  for i, post in posts:
    for tag in post.tags:
      result.withValue(tag, val):
        val[].add(i)
      do:
        result[tag] = @[i]

func init(T: typedesc[TaskGroups], taskCount: int): T =
  var groups = newSeqOfCap[TaskGroup](ThreadPoolSize)
  let step = taskCount div ThreadPoolSize
  for i in 0..<ThreadPoolSize:
    groups.add((first: step * i, last: step * (i + 1) - 1))
    if i == ThreadPoolSize - 1:
      groups[i].last = groups[i].last + taskCount mod ThreadPoolSize
  T(groups: groups, size: groups.len)

{.push inline.}

proc tally(
    counts: var seq[RelCount],
    posts: ptr seq[Post],
    tagMap: ptr TagMap,
    index: PostIndex) =
  for tag in posts[index].tags:
    for relIndex in tagMap[][tag]:
      inc counts[relIndex]
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

proc readPosts(path: string): seq[Post] =
  path.readFile.fromJson(seq[Post])

proc main() =
  let
    posts = input.readPosts
    t0 = getMonotime()
    groups = TaskGroups.init(posts.len)
    tagMap = TagMap.init(posts)
  var
    m = createMaster()
    postsOut = newSeq[PostOut](posts.len)
  # echo "threads: ", ThreadPoolSize, ", chanSize: ", FixedChanSize
  m.awaitAll:
    for i in 0..<groups.size:
      m.spawn groups[i].process(addr posts, addr tagMap, addr postsOut)
  let time = (getMonotime() - t0).inMicroseconds / 1000
  echo "Processing time (w/o IO): ", time, "ms"
  output.writeFile(postsOut.toJson)

when isMainModule:
  main()
