import '../models/product.dart';
import '../services/product_service.dart';

class ProductController {
  final ProductService _productService = ProductService();

  Future<Product> loadProduct(int id) async {
    return await _productService.fetchProduct(id);
  }
}
