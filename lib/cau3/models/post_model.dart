class PostModel {
  final int? id;
  final String title;
  final String body;
  final int userId;

  PostModel({
    this.id,
    required this.title,
    required this.body,
    required this.userId,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      id: json['id'] as int?,
      title: json['title'] as String,
      body: json['body'] as String,
      userId: json['userId'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'body': body,
      'userId': userId,
    };
  }
}
