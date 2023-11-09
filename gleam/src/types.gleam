pub type Post {
  Post(id: String, title: String, tags: List(String))
}

pub type RelatedPost {
  RelatedPost(id: String, tags: List(String), related: List(Post))
}
