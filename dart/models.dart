class Post {
  late String iD;
  late String title;
  late List<String> tags;

  Post({required this.iD, required this.title, required this.tags});

  Post.fromJson(dynamic json) {
    iD = json['_id'];
    title = json['title'];
    tags = json['tags'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': iD,
      'title': title,
      'tags': tags,
    };
  }
}

class RelatedPost {
  String iD;
  List<String> tags;
  List<Post> related;

  RelatedPost({required this.iD, required this.tags, required this.related});

  Map<String, dynamic> toJson() {
    return {
      '_id': iD,
      'tags': tags,
      'related': related.map((v) => v.toJson()).toList(),
    };
  }
}
