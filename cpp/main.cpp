#include <iostream>
#include <vector>
#include <string>
#include <unordered_map>
#include <fstream>
#include <chrono>
#include <algorithm>
#include <array>
#include "include/json.hpp"  // Assuming this path is correct

// NEEDS IMPROVEMENT: Excluded from charts until then

using json = nlohmann::json;

const size_t INITIAL_TAGGED_COUNT_SIZE = 100;
const size_t TOP_N = 5;

struct Post {
    std::string _id;
    std::string title;
    std::vector<std::string> tags;
};

struct RelatedPosts {
    std::string _id;
    std::vector<std::string> tags;
    std::vector<Post *> related;
};

struct PostsWithSharedTags {
    size_t post;
    size_t tags;
};

bool compareSharedTags(const PostsWithSharedTags& a, const PostsWithSharedTags& b) {
    return a.tags > b.tags;
}

void to_json(json &j, const RelatedPosts &rp) {
    j = json{{"_id", rp._id}, {"tags", rp.tags}};
    json related;
    for (auto &post : rp.related) {
        json p;
        p["_id"] = post->_id;
        p["title"] = post->title;
        p["tags"] = post->tags;
        related.push_back(p);
    }
    j["related"] = related;
}

int main() {
    std::ifstream file("../posts.json");
    if (!file.is_open()) {
        std::cerr << "Could not open the file.\n";
        return 1;
    }

    json j;
    file >> j;
    std::vector<Post> posts;
    posts.reserve(j.size());
    
    for (const auto &post : j) {
        Post p;
        p._id = post["_id"].get<std::string>();
        p.title = post["title"].get<std::string>();
        p.tags = post["tags"].get<std::vector<std::string>>();
        posts.push_back(p);
    }

    auto start = std::chrono::high_resolution_clock::now();

    std::unordered_map<std::string, std::vector<size_t>> tagMap;
    tagMap.reserve(INITIAL_TAGGED_COUNT_SIZE);
    
    for (size_t i = 0; i < posts.size(); ++i) {
        for (const auto &tag : posts[i].tags) {
            tagMap[tag].push_back(i);
        }
    }

    std::vector<RelatedPosts> allRelatedPosts;
    allRelatedPosts.reserve(posts.size());

    std::vector<size_t> taggedPostCount(posts.size(), 0);
    std::vector<PostsWithSharedTags> sharedTagsVector(posts.size());

    for (size_t i = 0; i < posts.size(); ++i) {
        std::fill(taggedPostCount.begin(), taggedPostCount.end(), 0);

        for (const auto &tag : posts[i].tags) {
            for (const auto &otherPostIdx : tagMap[tag]) {
                taggedPostCount[otherPostIdx]++;
            }
        }

        taggedPostCount[i] = 0;

        for (size_t j = 0; j < taggedPostCount.size(); ++j) {
            sharedTagsVector[j] = {j, taggedPostCount[j]};
        }

        std::sort(sharedTagsVector.begin(), sharedTagsVector.end(), compareSharedTags);
        
        std::vector<Post *> topPosts(TOP_N);
        for (size_t idx = 0; idx < TOP_N; ++idx) {
            topPosts[idx] = &posts[sharedTagsVector[idx].post];
        }

        RelatedPosts relatedPost = {posts[i]._id, posts[i].tags, topPosts};
        allRelatedPosts.push_back(relatedPost);
    }

    std::chrono::duration<double> elapsed = std::chrono::high_resolution_clock::now() - start;
    std::cout << "Processing time (w/o IO): " << elapsed.count() << " s\n";

    json j_array = json::array();
    for (const auto &rp : allRelatedPosts) {
        json j;
        to_json(j, rp);
        j_array.push_back(j);
    }

    std::ofstream out("../related_posts_cpp.json");
    if (out.is_open()) {
        out << j_array.dump(4);
        out.close();
    }

    return 0;
}
