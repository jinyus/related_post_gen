require "json"
require "time"

TOPN = 5

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
      tagged_post_count[other_post_idx] += 1
    end
  end

  tagged_post_count[idx] = 0 # don't count self

  # size at 6 to avoid resizing. also faster than allocating outside loop
  top5 = Array(Int32).new(TOPN * 2, 0) # flattened list of (count, id)
  min_tags = 0

  tagged_post_count.each_with_index do |count, j|
    if count > min_tags
      upper_bound = (TOPN - 2) * 2

      while upper_bound >= 0 && count > top5[upper_bound]
        top5[upper_bound + 2] = top5[upper_bound]
        top5[upper_bound + 3] = top5[upper_bound + 1]
        upper_bound -= 2
      end

      insert_pos = upper_bound + 2
      top5[insert_pos] = count
      top5[insert_pos + 1] = j

      min_tags = top5[TOPN*2 - 2]
    end
  end

  top_posts = Array(Post).new(TOPN)

  # Convert indexes back to Post pointers
  (1...10).step(2) do |i|
    top_posts << posts[top5[i]]
  end

  allRelatedPosts << RelatedPost.new(id: post.id, tags: post.tags, related: top_posts)
end

t2 = Time.utc
print "Processing time (w/o IO): #{(t2 - t1).total_milliseconds}ms\n"

File.write("../related_posts_cr.json", allRelatedPosts.to_json)
