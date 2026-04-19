import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/task_model.dart';

class TaskService {
  static const String _baseUrl = 'https://jsonplaceholder.typicode.com';

  Future<List<TaskModel>> fetchTasks() async {
    final response = await http.get(Uri.parse('$_baseUrl/todos'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((json) => TaskModel.fromJson(json)).toList();
    } else {
      throw Exception('Không thể tải danh sách task: ${response.statusCode}');
    }
  }

  Future<void> deleteTask(int id) async {
    final response = await http.delete(
      Uri.parse('$_baseUrl/todos/$id'),
      headers: {'Content-Type': 'application/json; charset=UTF-8'},
    );

    if (response.statusCode != 200 && response.statusCode != 204) {
      throw Exception('Không thể xóa task: ${response.statusCode}');
    }
  }
}
