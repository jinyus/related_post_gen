require "json"
require "time"

TOPN                  =   5
INITIAL_TAG_MAP_CAP   = 100
INITIAL_TAG_ARRAY_CAP = 256

struct Post
  include JSON::Serializable

  property _id : String
  property title : String
  property tags : Array(String)
end

struct RelatedPost
  include JSON::Serializable

  def initialize(@_id : String, @tags : Array(String), @related : Array(Post?))
  end

  property _id : String
  property tags : Array(String)
  property related : Array(Post?)
end

posts = Array(Post).from_json(File.read("../posts.json"))

t1 = Time.monotonic

tag_map = Hash(String, Array(Int32)).new(INITIAL_TAG_ARRAY_CAP) do |hash, key|
  hash[key] = Array(Int32).new(INITIAL_TAG_ARRAY_CAP)
end

posts.each_with_index do |post, i|
  post.tags.each do |tag|
    tag_map[tag] << i
  end
end

allRelatedPosts = Array(RelatedPost?).new(posts.size)
# using Pointer buffer can greatly improve performance but this is unsafe, thus against the benchmark rules
# https://crystal-lang.org/reference/latest/syntax_and_semantics/unsafe.html
tagged_post_count = Array(Int32).new(posts.size, 0) # Pointer(Int32).malloc(posts.size, 0)

posts.each_with_index do |post, idx|
  tagged_post_count.fill(0) # .clear(posts.size) # for Pointer buffer

  post.tags.each do |tag|
    tag_map[tag].each do |other_post_idx|
      tagged_post_count[other_post_idx] += 1
    end
  end

  tagged_post_count[idx] = 0 # don't count self

  # flattened list of (count, id), size at 6 to avoid resizing. also faster than allocating outside loop
  top5 = Array(Int32).new(TOPN, 0) # Pointer(Int32).malloc(TOPN * 2, 0)
  top_posts = Array(Post?).new(TOPN, nil)
  min_tags = 0

  tagged_post_count.each_with_index do |count, j|
    if count > min_tags
      upper_bound = (TOPN - 2)

      while upper_bound >= 0 && count > top5[upper_bound]
        top5[upper_bound + 1] = top5[upper_bound]
        top_posts[upper_bound + 1] = top_posts[upper_bound]
        upper_bound -= 1
      end

      upper_bound += 1
      top5[upper_bound] = count
      top_posts[upper_bound] = posts[j]

      min_tags = top5[TOPN - 1]
    end
  end

  allRelatedPosts << RelatedPost.new(_id: post._id, tags: post.tags, related: top_posts)
end

t2 = Time.monotonic
print "Processing time (w/o IO): #{(t2 - t1).total_milliseconds}ms\n"

File.write("../related_posts_cr.json", allRelatedPosts.to_json)
