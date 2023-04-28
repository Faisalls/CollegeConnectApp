class CommentsModel {
  String id;
  final String comment;
  final String timestamp;

  CommentsModel({
    this.id = '',
    required this.comment,
    required this.timestamp,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'comment': comment,
        'date': timestamp,
      };

  static CommentsModel fromJson(Map<String, dynamic> json) => CommentsModel(
        id: json['id'] ?? '',
        comment: json['comment'] ?? '',
        timestamp: json['date'] ?? '',
      );
}
