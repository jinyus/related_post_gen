require "json"
require "time"

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

posts.each_with_index do |post, idx|
  tagged_post_count.fill(0)

  post.tags.each do |tag|
    tag_map[tag].each do |other_post_idx|
      tagged_post_count[other_post_idx] += 1 unless other_post_idx == idx
    end
  end

  # size at 6 to avoid resizing. also faster than allocating outside loop
  top5Queue = Array({Int32, Int32}).new(6, {0, 0})
  min_tags = 0

  tagged_post_count.each_with_index do |count, idx|
    if count > min_tags
      pos = 4

      while pos >= 0 && top5Queue[pos][1] < count
        pos -= 1
      end
      pos += 1

      if pos <= 4
        top5Queue.insert(pos, {idx, count})
        top5Queue.truncate(0, 5)
        min_tags = top5Queue[4][1]
      end
    end
  end

  topPosts = top5Queue.map { |p| posts[p[0]] }

  allRelatedPosts << RelatedPost.new(id: post.id, tags: post.tags, related: topPosts)
end

t2 = Time.utc
print "Processing time (w/o IO): #{(t2 - t1).total_milliseconds}ms\n"

File.write("../related_posts_cr.json", allRelatedPosts.to_json)
