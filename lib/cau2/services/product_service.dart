import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/product.dart';

class ProductService {
  static const String _baseUrl = 'https://fakestoreapi.com';

  Future<Product> fetchProduct(int id) async {
    final response = await http.get(Uri.parse('$_baseUrl/products/$id'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonData = json.decode(response.body);
      return Product.fromJson(jsonData);
    } else {
      throw Exception('Không thể tải thông tin sản phẩm: ${response.statusCode}');
    }
  }
}
