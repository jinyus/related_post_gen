#include <iostream>
#include <vector>
#include <string>
#include <unordered_map>
#include <fstream>
#include <chrono>
#include <algorithm>
#include <array>
#include <stdint.h>
#include "include/json.hpp" // Assuming this path is correct

// NEEDS IMPROVEMENT: Excluded from charts until then

using json = nlohmann::json;

const size_t INITIAL_TAGGED_COUNT_SIZE = 100;
const size_t TOP_N = 5;

struct Post
{
    std::string _id;
    std::string title;
    std::vector<std::string> tags;
};

struct RelatedPosts
{
    std::string _id;
    std::vector<std::string> tags;
    std::vector<Post *> related;
};

void to_json(json &j, const RelatedPosts &rp)
{
    j = json{{"_id", rp._id}, {"tags", rp.tags}};
    json related;
    for (auto &post : rp.related)
    {
        json p;
        p["_id"] = post->_id;
        p["title"] = post->title;
        p["tags"] = post->tags;
        related.push_back(p);
    }
    j["related"] = related;
}

int main()
{
    std::ifstream file("../posts.json");
    if (!file.is_open())
    {
        std::cerr << "Could not open the file.\n";
        return 1;
    }

    json j;
    file >> j;
    std::vector<Post> posts;
    posts.reserve(j.size());

    for (const auto &post : j)
    {
        Post p;
        p._id = post["_id"].get<std::string>();
        p.title = post["title"].get<std::string>();
        p.tags = post["tags"].get<std::vector<std::string>>();
        posts.push_back(p);
    }

    auto start = std::chrono::high_resolution_clock::now();

    std::unordered_map<std::string, std::vector<int>> tagMap;
    tagMap.reserve(INITIAL_TAGGED_COUNT_SIZE);

    int total = static_cast<int>(posts.size());
    for (int i = 0; i < total; ++i)
    {
        for (const auto &tag : posts[i].tags)
        {
            tagMap[tag].push_back(i);
        }
    }

    std::vector<RelatedPosts> allRelatedPosts;
    allRelatedPosts.resize(total);

    std::vector<uint8_t> taggedPostCount(total);
    for (size_t i = 0; i < total; ++i)
    {
        std::memset(taggedPostCount.data(), 0, total);
        const Post& p = posts[i];
        RelatedPosts& relatedPost = allRelatedPosts[i];
        relatedPost = {p._id, p.tags, std::vector<Post*>{5}};

        for (const auto &tag : p.tags)
        {
            const auto it = tagMap.find(tag);
            for (auto otherPostIdx : it->second)
            {
                taggedPostCount.at(otherPostIdx) += 1;
            }
        }

        taggedPostCount[i] = 0;

        uint8_t top5[5] = {0, 0, 0, 0, 0};
        uint8_t minTags = 0;

        //  custom priority queue to find top N
        for (int j = 0; j < taggedPostCount.size(); j++)
        {
            uint8_t count = taggedPostCount[j];

            if (count > minTags)
            {
                int upperBound = 3;
                while (upperBound >= 0 && count > top5[upperBound])
                {
                    top5[upperBound + 1] = top5[upperBound];
                    relatedPost.related[upperBound + 1] = relatedPost.related[upperBound];
                    upperBound -= 1;
                }

                top5[upperBound + 1] = count;
                relatedPost.related[upperBound + 1] = &posts[j];
                minTags = top5[4];
            }
        }
    }

    auto end = std::chrono::high_resolution_clock::now();
    auto elapsed = std::chrono::duration_cast<std::chrono::milliseconds>(end - start);

    std::cout << "Processing time (w/o IO): " << elapsed.count() << " ms\n";

    json j_array = json::array();
    for (const auto &rp : allRelatedPosts)
    {
        json j;
        to_json(j, rp);
        j_array.push_back(j);
    }

    std::ofstream out("../related_posts_cpp.json");
    if (out.is_open())
    {
        out << j_array.dump(4);
        out.close();
    }

    return 0;
}
