from collections import Dict, List
from collections.vector import InlinedFixedVector
from time import now
from python import Python

struct Post(CollectionElement):
    var _id: String
    var title: String
    var tags: List[String]

    fn __init__(inout self, _id: String, title: String, tags: List[String]):
        self._id = _id
        self.title = title
        self.tags = tags

    fn __copyinit__(inout self, existing: Self):
        self._id = existing._id
        self.title = existing.title
        self.tags = existing.tags
    
    fn __moveinit__(inout self, owned existing: Self):
        self._id = existing._id^
        self.title = existing.title^
        self.tags = existing.tags^
    
struct RelatedPosts(CollectionElement):
    var _id: String
    var tags: List[String]
    var related: List[Post]

    fn __init__(inout self, _id: String, tags: List[String], related: List[Post]):
        self._id = _id
        self.tags = tags
        self.related = related

    fn __copyinit__(inout self, existing: Self):
        self._id = existing._id
        self.tags = existing.tags
        self.related = existing.related
    
    fn __moveinit__(inout self, owned existing: Self):
        self._id = existing._id^
        self.tags = existing.tags^
        self.related = existing.related^

struct PostsWithSharedTags(CollectionElement):
    var post: Int
    var sharedTags: Int

    fn __init__(inout self, post: Int = 0, sharedTags: Int = 0):
        self.post = post
        self.sharedTags = sharedTags

    fn __copyinit__(inout self, existing: Self):
        self.post= existing.post
        self.sharedTags = existing.sharedTags
    
    fn __moveinit__(inout self, owned existing: Self):
        self.post = existing.post
        self.sharedTags = existing.sharedTags

fn deser_tags(tags: List[String]) raises -> String:
    var res = String("[")
    for i in range(len(tags)):
        res += '"' + tags[i] + '"'
        if (i != len(tags) - 1):
            res += ','
    res += "]"
    return res

fn deser_post(post: Post) raises -> String:
    var res = String("{")
    res += '"_id":"' + post._id + '","title":"' + post.title + '","tags":' + deser_tags(post.tags)
    res += "}"
    return res

fn deser_list_posts(posts: List[Post]) raises -> String:
    var res = String("[")
    for i in range(len(posts)):
        res += deser_post(posts[i])
        if (i != len(posts) - 1):
            res += ','
    res += "]"
    return res

fn deser_relpost(relpost: RelatedPosts) raises -> String:
    var res = String("{")
    res += '"_id":"'+ relpost._id + '",'
    res += '"tags":' + deser_tags(relpost.tags) + ','
    res += '"related":' + deser_list_posts(relpost.related) + '}'
    return res

fn deser_list_relpost(relposts: List[RelatedPosts]) raises -> String:
    var res = String("[")
    for i in range(len(relposts)):
        var x = relposts[i]
        res += deser_relpost(x)
        if (i != len(relposts) - 1):
            res += ","
    res += "]"
    return res

fn write_json(posts: List[RelatedPosts]) raises:
    var js = Python.import_module("json")
    with open("../related_posts_mojo.json", "wb") as f:
        var res = deser_list_relpost(posts)
        f.write(res)

fn read_json() raises -> List[Post]:
    var js = Python.import_module("json")
    with open("../posts.json", "rb") as f:
        var s = f.read()
        var posts = js.loads(s)
        var result = List[Post]()
        for post in posts:
            var t = List[String]()
            for ta in post["tags"]:
                t.append(String(ta))
            result.append(Post(String(post["_id"]), String(post["title"]), t))
        return result

fn process_posts(posts: List[Post]) raises -> List[RelatedPosts]:
    var posts_count = len(posts)
    var related_posts = List[RelatedPosts]()
    var tagged_post_count = InlinedFixedVector[Int](posts_count)
    var top_posts = List[Post]()
    var tag_map = Dict[String, List[Int]]()

    for i in range(posts_count):
        var x = posts[i].tags
        for tag in x:
            var xt = tag[]
            if xt in tag_map:
                tag_map[xt].append(i)
            else:
                tag_map[xt] = List[Int](i)

    for k in range(posts_count):
        for z in range(posts_count):
            tagged_post_count[z] = 0

        var top5 = List[PostsWithSharedTags]()
        top5.reserve(5)

        var y = posts[k].tags
        for tag in y:
            var local_list = tag_map[tag[]]
            for other_idx in local_list:
                var deref_idx = other_idx[]
                tagged_post_count[deref_idx] += 1
        
        tagged_post_count[k] = 0

        var min_tags = 0
        for j in range(posts_count):
            var count = tagged_post_count[j]
            if (count > min_tags):
                var upper_bound = 5 - 2
                while ((upper_bound >= 0) and (count > top5[upper_bound].sharedTags)):
                    top5[upper_bound + 1] = top5[upper_bound]
                    upper_bound -= 1

                top5[upper_bound + 1] = PostsWithSharedTags(j, count)
                min_tags = top5[5 - 1].sharedTags

        top_posts.clear()
        for i in range(5):
            top_posts.append(posts[top5[i].post])

        related_posts.append(RelatedPosts(
            posts[k]._id,
            posts[k].tags,
            top_posts
        ))

    return related_posts

fn main():
    try:
        var posts = read_json()
        var start = now()
        var result = process_posts(posts)
        print("Processing time (w/o IO): ", (now() - start)/1e6, "ms", sep = "")
        write_json(result)
    except:
        print("exception")
