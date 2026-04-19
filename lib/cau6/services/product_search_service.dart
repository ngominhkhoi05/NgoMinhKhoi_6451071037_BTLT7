import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../cau2/models/product.dart';

class ProductSearchService {
  static const String _baseUrl = 'https://fakestoreapi.com';

  Future<List<Product>> searchProducts(String query, List<Product> allProducts) async {
    if (query.trim().isEmpty) {
      return allProducts;
    }

    final queryLower = query.toLowerCase().trim();
    return allProducts.where((product) {
      return product.title.toLowerCase().contains(queryLower) ||
          product.category.toLowerCase().contains(queryLower) ||
          product.description.toLowerCase().contains(queryLower);
    }).toList();
  }

  Future<List<Product>> fetchAllProducts() async {
    final response = await http.get(Uri.parse('$_baseUrl/products'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((json) => Product.fromJson(json)).toList();
    } else {
      throw Exception('Không thể tải sản phẩm: ${response.statusCode}');
    }
  }
}
