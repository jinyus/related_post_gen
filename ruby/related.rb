# frozen_string_literal: true

require 'json'
require 'time'

TOPN = 5

posts = JSON.parse(File.read('../posts.json'), symbolize_names: true)

t1 = Time.now

POST_SIZE = posts.length
tag_map = Hash.new { |hash, key| hash[key] = [] }

i = 0
while i < POST_SIZE
  tags = posts[i][:tags]
  tag_size = tags&.length.to_i

  j = 0
  while j < tag_size
    tag_map[tags[j]] << i
    j += 1
  end

  i += 1
end

all_related_posts = Array.new(POST_SIZE)
tagged_post_count = Array.new(POST_SIZE, 0)

idx = 0
while idx < POST_SIZE
  post = posts[idx]
  tags = post[:tags]

  tagged_post_count.fill(0)

  ti = 0
  while ti < tags.length
    tag = tags[ti]
    o = tag_map[tag]

    tj = 0
    while tj < o.length
      tagged_post_count[o[tj]] += 1
      tj += 1
    end
    tag_map[tag]

    ti += 1
  end

  tagged_post_count[idx] = 0

  top5 = Array.new(TOPN, 0)
  top_posts = Array.new(TOPN)
  min_tags = 0

  j = 0
  while j < tagged_post_count.length
    count = tagged_post_count[j]
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
    j += 1
  end

  all_related_posts[idx] = {_id: post[:_id], tags: tags, related: top_posts}
  idx += 1
end

t2 = Time.now

puts "Processing time (w/o IO): #{((t2 - t1) * 1000).round}ms"

File.write('../related_posts_ruby.json', JSON.generate(all_related_posts))
