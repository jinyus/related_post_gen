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
# tagged_post_count = Array(Int32).new(posts.size, 0)

# Get number of cores
num_cores = System.cpu_count

# Create a buffered channel
channel = Channel(RelatedPost).new(posts.size)

# Divide the posts into chunks for each core
num_posts = posts.size
posts_per_core = num_posts // num_cores

num_cores.times do |i|
  start_idx = i * posts_per_core
  end_idx = i == num_cores - 1 ? num_posts : start_idx + posts_per_core

  spawn do
    start_idx.upto(end_idx - 1) do |idx|
      post = posts[idx]

      tagged_post_count = Array(Int32).new(posts.size, 0)

      post.tags.each do |tag|
        tag_map[tag].each do |other_post_idx|
          tagged_post_count[other_post_idx] += 1 unless other_post_idx == idx
        end
      end

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

      channel.send(RelatedPost.new(id: post.id, tags: post.tags, related: topPosts))
    end
  end
end

# Collect results from the channel
num_posts.times do
  allRelatedPosts << channel.receive
end

t2 = Time.utc
print "Processing time (w/o IO): #{(t2 - t1).total_milliseconds}ms\n"

File.write("../related_posts_cr.json", allRelatedPosts.to_json)
