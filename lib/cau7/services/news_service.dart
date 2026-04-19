import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/article_model.dart';

class NewsService {
  static const String _baseUrl = 'https://jsonplaceholder.typicode.com';

  Future<List<ArticleModel>> fetchArticles() async {
    final response = await http.get(Uri.parse('$_baseUrl/posts'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((json) => ArticleModel.fromJson(json)).toList();
    } else {
      throw Exception('Không thể tải danh sách bài viết: ${response.statusCode}');
    }
  }
}
