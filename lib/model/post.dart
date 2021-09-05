class PostList {
  final List<Post> posts;

  PostList({required this.posts});

  factory PostList.fromJson(List<dynamic> parsedJson) {
    List<Post> posts = <Post>[];
    posts = parsedJson.map((i) => Post.fromJson(i)).toList();
    return new PostList(posts: posts); //Post[0].userId;

  }
}

class Post {
  int userId;
  int id;
  int title;
  int body;

  Post(
      {required this.userId,
      required this.body,
      required this.id,
      required this.title});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}
