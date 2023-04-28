class PostsModel {
  String id;
  String userId;
  final String post;
  final String timestamp;

  PostsModel({
    this.id = '',
    this.userId = '',
    required this.post,
    required this.timestamp,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'userID': userId,
        'post': post,
        'date': timestamp,
      };

  static PostsModel fromJson(Map<String, dynamic> json) => PostsModel(
        id: json['id'] ?? '',
        userId: json['userID'] ?? '',
        post: json['post'] ?? '',
        timestamp: json['date'] ?? '',
      );
}
