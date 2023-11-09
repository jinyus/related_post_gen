import gleam/io
import gleam/int
import gleam/list
import gleam/map
import gleam/option.{None, Some}
import gleam/result
import types
import simplifile.{read, write}
import json
import birl/time

// very slow; needs work; takes 7s for 1 post
// no mutability, too much copying in hot loop
// sort on linked list too slow

const top_n = 5

pub fn main() {
  let assert Ok(posts_raw) = read(from: "../posts.json")
  let assert Ok(posts) = json.posts_from_json(posts_raw)

  let start = time.monotonic_now()

  let tag_map: map.Map(String, List(Int)) =
    posts
    |> list.index_fold(
      map.new(),
      fn(acc, post, i) {
        list.fold(
          post.tags,
          acc,
          fn(acc, tag) {
            map.update(
              acc,
              tag,
              fn(val) {
                case val {
                  None -> [i]
                  Some(post_ids) -> list.append(post_ids, [i])
                }
              },
            )
          },
        )
      },
    )

  let all_related =
    posts
    |> list.take(1)
    |> list.index_map(fn(i, post) {
      // no arrays, must use maps
      let tagged_post_count_temp =
        posts
        |> list.index_map(fn(i, _) { #(i, 0) })
        |> map.from_list

      let tagged_post_count =
        posts
        |> list.fold(
          tagged_post_count_temp,
          fn(acc, _) {
            post.tags
            |> list.fold(
              acc,
              fn(acc, tag) {
                tag_map
                |> map.get(tag)
                |> result.unwrap(or: [])
                |> list.fold(
                  acc,
                  fn(acc, o_idx) {
                    let assert Ok(current_count) = map.get(acc, o_idx)
                    map.insert(acc, o_idx, current_count + 1)
                  },
                )
              },
            )
          },
        )

      let related_posts =
        tagged_post_count
        |> map.to_list
        |> list.filter(fn(a) { a.1 > 0 && a.0 != i })
        |> list.sort(fn(a, b) { int.compare(b.1, a.1) })
        |> list.take(top_n)
        |> list.map(fn(a) {
          let assert Ok(post) = list.at(posts, a.0)
          post
        })

      types.RelatedPost(id: post.id, tags: post.tags, related: related_posts)
    })

  let end = time.monotonic_now()

  let took =
    { end - start } / 1000
    |> int.to_string

  io.println("Processing time (w/o IO): " <> { took } <> "ms")

  let all_related_json = json.related_posts_to_json(all_related)

  let assert Ok(_) = write(all_related_json, "../related_posts_gleam.json")
}
