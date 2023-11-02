#include <iostream>
#include <vector>
#include <string>
#include <array>
#include <fstream>
#include <chrono>
#include <stdint.h>
#include <unordered_map>
#include "include/json.hpp" // Assuming this path is correct

using json = nlohmann::json;
using map_t = std::unordered_map<std::string, std::vector<int>>;
constexpr size_t INITIAL_TAGGED_COUNT_SIZE = 100;
constexpr size_t TOPN=5;

struct Post
{
    std::string _id;
    std::string title;
    std::vector<std::string> tags;
};

struct RelatedPosts
{
    std::string const* _id;
    std::vector<std::string> const* tags;
    std::array<Post const*, TOPN> related;
};

void to_json(json &j, const RelatedPosts &rp)
{
    j = json{{"_id", *rp._id}, {"tags", *rp.tags}};
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



map_t get_tagMap(std::vector<Post> const& posts){
    map_t tagMap;
    tagMap.reserve(INITIAL_TAGGED_COUNT_SIZE);

    int total = static_cast<int>(posts.size());
    for (int i = 0; i < total; ++i)
    {
        for (auto const&tag : posts.at(i).tags)
        {
            tagMap[tag].emplace_back(i);
        }
    }

    return tagMap;
}

std::vector<Post> read_posts(){
    std::ifstream file("../posts.json");
    if (!file.is_open())
    {
        std::cerr << "Could not open the file.\n";
        throw std::runtime_error("Could not open file!");
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
    return posts;
}


std::vector<RelatedPosts> do_work(std::vector<Post>const& posts, 
             map_t const& tagMap){

    std::vector<RelatedPosts> allRelatedPosts(posts.size());
    std::vector<uint8_t> taggedPostCount(posts.size());

    for (size_t i = 0; i < posts.size(); ++i)
    {
        std::memset(taggedPostCount.data(), 0, posts.size());
        const Post& p = posts.at(i);
        RelatedPosts& relatedPost = allRelatedPosts.at(i);
        relatedPost._id = &p._id;
        relatedPost.tags = &p.tags;

        for (const auto &tag : p.tags)
        {
            const auto it = tagMap.find(tag);
            for (auto otherPostIdx : it->second)
            {
                taggedPostCount.at(otherPostIdx) += 1;
            }
        }

        taggedPostCount.at(i) = 0;

        std::array<std::pair<uint8_t, int>, TOPN> top5{};
        uint8_t minTags = 0;

        //  custom priority queue to find top N
        for (size_t j = 0; j < taggedPostCount.size(); j++)
        {
            uint8_t count = taggedPostCount.at(j);

            if (count > minTags)
            {
                int upperBound = 3;
                while (upperBound >= 0 && count > top5.at(upperBound).first)
                {
                    top5.at(upperBound + 1) = top5.at(upperBound);
                    upperBound -= 1;
                }

                top5.at(upperBound + 1) = {count, j};
                minTags = top5.at(4).first;
            }
        }
        for (size_t i{0}; i<top5.size(); ++i){
          relatedPost.related.at(i) = &posts.at(top5.at(i).second);
        }
    }

  return allRelatedPosts;
}

void write(std::vector<RelatedPosts>const & allRelatedPosts){
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
}

int main()
{
    auto const posts = read_posts();

    auto const start = std::chrono::high_resolution_clock::now();

    auto const tagMap = get_tagMap(posts);

    auto const allRelatedPosts = do_work(posts, tagMap);

    auto const end = std::chrono::high_resolution_clock::now();
    auto const elapsed = std::chrono::duration_cast<std::chrono::milliseconds>(end - start);

    std::cout << "Processing time (w/o IO): " << elapsed.count() << " ms\n";

    write(allRelatedPosts);

    return 0;
}
