local json = require("json")
local socket = require("socket")

local function main()
    local file = assert(io.open("../posts.json", "r"))
    local posts = json.decode(file:read("*all"))
    file:close()

    local start = socket.gettime()

    local tagMap = {}
    local numPosts = #posts

    local taggedPostCount = {}
	 for i = 1, numPosts do
	     taggedPostCount[i] = 0
	 end
    for i = 1, numPosts do
        local post = posts[i]
        for _, tag in ipairs(post.tags) do
            tagMap[tag] = tagMap[tag] or {}
            table.insert(tagMap[tag], i)
        end
    end

    local allRelatedPosts = {}
    local minTags = 0

    for i = 1, numPosts do
        for j = 1, numPosts do
            taggedPostCount[j] = 0
        end

        for _, tag in ipairs(posts[i].tags) do
            for _, otherPostIdx in ipairs(tagMap[tag] or {}) do
                taggedPostCount[otherPostIdx] = taggedPostCount[otherPostIdx] + 1
            end
        end

        taggedPostCount[i] = 0

        local top5 = {}
        for i = 1, 5 do
            top5[i] = { post = 0, sharedTags = 0 }
        end
        minTags = 0

        for j = 1, numPosts do
            local count = taggedPostCount[j]
            if count > minTags then
                local pos = 5
                while pos > 0 and (top5[pos].sharedTags < count) do
                    pos = pos - 1
                end
                pos = pos + 1

                if pos < 5 then
                    for k = 4, pos, -1 do
                        top5[k + 1] = top5[k]
                    end
                end

                if pos <= 5 then
                    top5[pos] = { post = j, sharedTags = count }
                    minTags = top5[5].sharedTags
                end
            end
        end

        local topPosts = {}
        for _, t in ipairs(top5) do
            if t.sharedTags > 0 then
                table.insert(topPosts, posts[t.post])
            end
        end

        table.insert(allRelatedPosts, {
            _id = posts[i]._id,
            tags = posts[i].tags,
            related = topPosts
        })
    end

    local end_time = socket.gettime()
	 print("Processing time (w/o IO):", (end_time - start)*1000, "ms")

    file = assert(io.open("../related_posts_lua.json", "w"))
    file:write(json.encode(allRelatedPosts))
    file:close()
end

main()
