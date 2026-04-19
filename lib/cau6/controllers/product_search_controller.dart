import '../../cau2/models/product.dart';
import '../services/product_search_service.dart';

class ProductSearchController {
  final ProductSearchService _productSearchService = ProductSearchService();

  Future<List<Product>> searchProducts(String query, List<Product> allProducts) async {
    return await _productSearchService.searchProducts(query, allProducts);
  }

  Future<List<Product>> loadAllProducts() async {
    return await _productSearchService.fetchAllProducts();
  }
}
