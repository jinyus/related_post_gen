require 'json'
require 'time'

TOPN = 5

posts = JSON.parse(File.read('../posts.json'), symbolize_names: true)

t1 = Time.now

tag_map = Hash.new { |hash, key| hash[key] = [] }

posts.each_with_index do |post, i|
  post[:tags].each do |tag|
    tag_map[tag] << i
  end
end

all_related_posts = Array.new(posts.size)
tagged_post_count = Array.new(posts.size, 0)

posts.each_with_index do |post, idx|
  tagged_post_count.fill(0)

  post[:tags].each do |tag|
    tag_map[tag].each do |oidx|
      tagged_post_count[oidx] += 1
    end
  end

  tagged_post_count[idx] = 0

  top5 = Array.new(TOPN, 0)
  top_posts = Array.new(TOPN)
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

  all_related_posts[idx] = {_id: post[:_id],tags: post[:tags], related: top_posts}
end

t2 = Time.now

puts "Processing time (w/o IO): #{((t2 - t1) * 1000).round}ms"

File.write('../related_posts_ruby.json', JSON.generate(all_related_posts))
