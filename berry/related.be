import json
import os
import time


file = open('../posts.json','r')
posts = json.load(file.read())
file.close()

start = time.time()

tag_map = {}

for i: 0 .. size(posts) - 1
    for tag : posts[i]['tags']
        if tag_map.contains(tag)
            tag_map[tag].push(i)
        else
            tag_map[tag] = [i]
        end
    end
end

all_related_posts = []
tagged_post_count = []
tagged_post_count.resize(size(posts))


for i : 0 .. size(posts) - 1

    for j: 0 .. size(posts) - 1
        tagged_post_count[j] = 0
    end

    for tag : posts[i]['tags']
        for o_idx: tag_map[tag]
            tagged_post_count[o_idx] += 1
        end
    end

    tagged_post_count[i] = 0

    top5 = [[0,0],[0,0],[0,0],[0,0],[0,0]]
    min_tags = 0

    for j: 0 .. size(tagged_post_count) - 1
        count = tagged_post_count[j]
        if count > min_tags
            pos = 4

            while pos >= 0 && count > top5[pos][1]
               pos -= 1
            end

            pos += 1

            top5.insert(pos, [j, count])
            top5.pop()
            min_tags = top5[4][1]
        end
    end

    top_posts = []

    for j: 0 .. 4
        top_posts.push(posts[top5[j][0]])
    end

    all_related_posts.push({
        '_id': posts[i]['_id'],
        'tags': posts[i]['tags'],
        'related': top_posts
    })
end

print('Processing time (w/o IO): ' + str(time.time() - start) + 's')

file = open('../related_posts_berry.json','w')

file.write(json.dump(all_related_posts))
file.close()