import gleam/json
import gleam/dynamic
import types.{type Post, type RelatedPost}

pub fn post_to_object(post: Post) -> json.Json {
  json.object([
    #("_id", json.string(post.id)),
    #("title", json.string(post.title)),
    #("tags", json.array(post.tags, of: json.string)),
  ])
}

pub fn post_to_json(post: Post) -> String {
  post_to_object(post)
  |> json.to_string
}

pub fn related_post_to_json(related_post: RelatedPost) -> String {
  json.object([
    #("_id", json.string(related_post.id)),
    #("tags", json.array(related_post.tags, of: json.string)),
    #("related", json.array(related_post.related, of: post_to_object)),
  ])
  |> json.to_string
}

pub fn related_post_to_object(related_post: RelatedPost) -> json.Json {
  json.object([
    #("_id", json.string(related_post.id)),
    #("tags", json.array(related_post.tags, of: json.string)),
    #("related", json.array(related_post.related, of: post_to_object)),
  ])
}

pub fn related_posts_to_json(related_posts: List(RelatedPost)) -> String {
  json.array(related_posts, of: related_post_to_object)
  |> json.to_string
}

pub fn posts_from_json(
  json_string: String,
) -> Result(List(Post), json.DecodeError) {
  let post_decoder =
    dynamic.decode3(
      types.Post,
      dynamic.field("_id", of: dynamic.string),
      dynamic.field("title", of: dynamic.string),
      dynamic.field("tags", of: dynamic.list(dynamic.string)),
    )

  json.decode(from: json_string, using: dynamic.list(post_decoder))
}
