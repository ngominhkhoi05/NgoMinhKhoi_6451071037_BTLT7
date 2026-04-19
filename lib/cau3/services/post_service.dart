import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/post_model.dart';

class PostService {
  static const String _baseUrl = 'https://jsonplaceholder.typicode.com';

  Future<PostModel> createPost({
    required String title,
    required String body,
    required int userId,
  }) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/posts'),
      headers: {'Content-Type': 'application/json; charset=UTF-8'},
      body: jsonEncode({
        'title': title,
        'body': body,
        'userId': userId,
      }),
    );

    if (response.statusCode == 201) {
      return PostModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Không thể tạo bài viết: ${response.statusCode}');
    }
  }
}
