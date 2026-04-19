class ArticleModel {
  final int id;
  final String title;
  final String body;
  final int userId;

  ArticleModel({
    required this.id,
    required this.title,
    required this.body,
    required this.userId,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      id: json['id'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
      userId: json['userId'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'body': body,
      'userId': userId,
    };
  }
}
