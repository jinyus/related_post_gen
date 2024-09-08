#include <iostream>
#include <vector>
#include <string>
#include <fstream>
#include <chrono>
#include <algorithm>
#include <array>
#include <stdint.h>
#include "include/json.hpp" // Assuming this path is correct
#include <thread>
#include <unordered_map>

using json = nlohmann::json;

const size_t TOPN = 5;
const size_t CACHE_LINE_SIZE = 64;
const size_t THREADS_NUM = 4;

size_t ceil(size_t n, size_t N) {
  size_t x = n / N;
  while (x * N < n) {
    x += 1;
  }
  return x;
}

struct Post
{
    std::string _id;
    std::string title;
    std::vector<std::string> tags;
};

template<typename T>
struct Deleter
{
    void operator()(T* p) const
    {
      // DO NOTHING
    }
};

struct RelatedPosts
{
    std::unique_ptr<std::string const, Deleter<std::string const>> _id;
    std::unique_ptr<std::vector<std::string> const, Deleter<std::vector<std::string> const>> tags;
    std::array<std::unique_ptr<Post const, Deleter<Post const>>, TOPN> related;
    char padding[8];
};
static_assert(sizeof(RelatedPosts) == CACHE_LINE_SIZE);

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

using TagMap = std::unordered_map<std::string, std::unique_ptr<std::vector<int>>>;

struct TagPost {
  std::unique_ptr<Post const, Deleter<Post const>> post;
  std::vector<std::unique_ptr<std::vector<int>, Deleter<std::vector<int>>>> tags;
};

void create_tagPost(std::vector<Post> const& posts, std::vector<TagPost>& tps, TagMap& tm) {
  for (size_t i = 0; i < posts.size(); ++i) {
      auto& tp = tps.at(i);
      tp.post = std::move(std::unique_ptr<Post const, Deleter<Post const>>(&(posts.at(i))));

      for (auto const&tag : posts.at(i).tags)
      {
          std::vector<int>* vp = nullptr;
          auto it = tm.find(tag);

          if (it == tm.end()) {
            auto p = tm.insert({tag, std::make_unique<std::vector<int>>()});
            p.first->second->emplace_back(i);
            vp = p.first->second.get();
          }
          else {
            it->second->emplace_back(i);
            vp = it->second.get();
          }
          tp.tags.emplace_back(vp);
      }
  }
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


void do_work(size_t b, size_t e, std::vector<TagPost>const& posts,  std::vector<RelatedPosts>& allRelatedPosts)
{
    std::vector<uint8_t> taggedPostCount(posts.size());

    for (size_t i = b; i < e; ++i)
    {
        std::memset(taggedPostCount.data(), 0, posts.size());
        const TagPost& p = posts.at(i);
        RelatedPosts& relatedPost = allRelatedPosts.at(i);
        relatedPost._id = std::move(std::unique_ptr<std::string const, Deleter<std::string const>>(&p.post->_id));
        relatedPost.tags = std::move(std::unique_ptr<std::vector<std::string> const, Deleter<std::vector<std::string> const>>(&p.post->tags));

        for (const auto &tag : p.tags)
        {
            for (auto otherPostIdx : *tag)
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
        for (size_t i{0}; i<top5.size(); ++i) {
            relatedPost.related.at(i) = std::move(std::unique_ptr<Post const, Deleter<Post const>>(posts.at(top5.at(i).second).post.get()));
        }
    }
}

void write(std::vector<RelatedPosts>const & allRelatedPosts){
    json j_array = json::array();
    for (const auto &rp : allRelatedPosts)
    {
        json j;
        to_json(j, rp);
        j_array.push_back(j);
    }

    std::ofstream out("../related_posts_cpp_con.json");
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

    auto max = ceil(posts.size(), THREADS_NUM);
    std::vector<RelatedPosts> allRelatedPosts(posts.size());
    std::vector<TagPost> tps(posts.size());
    TagMap tmap;
    create_tagPost(posts, tps, tmap);

    auto calculate = [&tps, max, &allRelatedPosts](size_t id) {
        auto b = id * max;
        auto e = (id + 1) * max;
        if (e > tps.size()) {
            e = tps.size();
        }
        do_work(b, e, tps, allRelatedPosts);
    };

    std::vector<std::thread> workers;
    for (auto id: {0, 1, 2, 3}) {
       workers.emplace_back(std::thread(calculate, id));
    }

    for (auto& w: workers) {
       w.join();
    }

    auto const end = std::chrono::high_resolution_clock::now();
    auto const elapsed = std::chrono::duration_cast<std::chrono::milliseconds>(end - start);

    std::cout << "Processing time (w/o IO): " << elapsed.count() << " ms\n";

    write(allRelatedPosts);

    return 0;
}
