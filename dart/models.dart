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
