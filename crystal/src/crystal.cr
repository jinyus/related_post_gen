require "json"
require "time"
require "crystalline"
require "heap"
require "./min_heap.cr"

class Post
  include JSON::Serializable

  @[JSON::Field(key: "_id")]
  property id : String

  property title : String

  property tags : Array(String)
end

class RelatedPost
  include JSON::Serializable

  def initialize(@id : String, @tags : Array(String), @related : Array(Post))
  end

  @[JSON::Field(key: "_id")]
  property id : String

  property tags : Array(String)

  property related : Array(Post)
end

posts = Array(Post).from_json(File.read("../posts.json"))

t1 = Time.utc

tag_map = Hash(String, Array(Int32)).new

posts.each_with_index do |post, i|
  post.tags.each do |tag|
    tag_map[tag] = [] of Int32 unless tag_map[tag]?
    tag_map[tag] << i
  end
end

allRelatedPosts = Array(RelatedPost).new(posts.size)
tagged_post_count = Array(Int32).new(posts.size, 0)

min_heap = MinHeap({Int32, Int32}).new(5) do |a, b|
  a[1] <=> b[1]
end

posts.each_with_index do |post, idx|
  tagged_post_count.fill(0)

  post.tags.each do |tag|
    tag_map[tag].each do |other_post_idx|
      tagged_post_count[other_post_idx] += 1 unless other_post_idx == idx
    end
  end

  tagged_post_count.each_with_index do |count, p_idx|
    if p_idx < 5
      min_heap.push({p_idx, count})
    elsif min_heap.peek_min[1] < count
      val = min_heap.pop.not_nil![1]
      min_heap.push({p_idx, count})
    end
  end

  # avoid popping the heap which would reorder it
  # better to just iterate over it then clear it
  topPosts = min_heap.map do |p|
    posts[p[0]]
  end

  min_heap.clear

  allRelatedPosts << RelatedPost.new(id: post.id, tags: post.tags, related: topPosts)
end

t2 = Time.utc
print "Processing time (w/o IO): #{(t2 - t1).total_milliseconds}ms\n"

File.write("../related_posts_cr.json", allRelatedPosts.to_json)
