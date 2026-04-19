import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../cau1/models/user.dart';

class UserUpdateService {
  static const String _baseUrl = 'https://jsonplaceholder.typicode.com';

  Future<User> fetchUser(int id) async {
    final response = await http.get(Uri.parse('$_baseUrl/users/$id'));

    if (response.statusCode == 200) {
      return User.fromJson(json.decode(response.body));
    } else {
      throw Exception('Không thể tải thông tin user: ${response.statusCode}');
    }
  }

  Future<User> updateUser({
    required int id,
    required String name,
    required String email,
    required String phone,
  }) async {
    final response = await http.put(
      Uri.parse('$_baseUrl/users/$id'),
      headers: {'Content-Type': 'application/json; charset=UTF-8'},
      body: jsonEncode({
        'id': id,
        'name': name,
        'email': email,
        'phone': phone,
      }),
    );

    if (response.statusCode == 200) {
      return User.fromJson(json.decode(response.body));
    } else {
      throw Exception('Không thể cập nhật user: ${response.statusCode}');
    }
  }
}
