require "json"
require "time"

TOPN = 5

struct Post
  include JSON::Serializable

  @[JSON::Field(key: "_id")]
  property id : String
  property title : String
  property tags : Array(String)
end

struct RelatedPost
  include JSON::Serializable

  def initialize(@id : String, @tags : Array(String), @related : Array(Post))
  end

  @[JSON::Field(key: "_id")]
  property id : String
  property tags : Array(String)
  property related : Array(Post)
end

posts = Array(Post).from_json(File.read("../posts.json"))

t1 = Time.monotonic

tag_map = Hash(String, Array(Int32)).new(16) do |hash, key|
  hash[key] = [] of Int32
end

posts.each_with_index do |post, i|
  post.tags.each do |tag|
    tag_map[tag] << i
  end
end

allRelatedPosts = Array(RelatedPost?).new(posts.size, nil)
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
  top5 = Array(Int32).new(TOPN * 2, 0) # Pointer(Int32).malloc(TOPN * 2, 0)
  min_tags = 0

  posts.size.times do |j|
    count = tagged_post_count[j]
    if count > min_tags
      upper_bound = (TOPN - 2) * 2

      while upper_bound >= 0 && count > top5[upper_bound]
        top5[upper_bound + 2] = top5[upper_bound]
        top5[upper_bound + 3] = top5[upper_bound + 1]
        upper_bound -= 2
      end

      upper_bound += 2
      top5[upper_bound] = count
      top5[upper_bound + 1] = j

      min_tags = top5[TOPN*2 - 2]
    end
  end

  # Convert indexes back to Post pointers
  top_posts = [posts[top5[1]], posts[top5[3]], posts[top5[5]], posts[top5[7]], posts[top5[9]]]

  allRelatedPosts[idx] = RelatedPost.new(id: post.id, tags: post.tags, related: top_posts)
end

t2 = Time.monotonic
print "Processing time (w/o IO): #{(t2 - t1).total_milliseconds}ms\n"

File.write("../related_posts_cr.json", allRelatedPosts.to_json)
