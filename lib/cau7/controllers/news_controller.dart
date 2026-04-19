import '../models/article_model.dart';
import '../services/news_service.dart';

class NewsController {
  final NewsService _newsService = NewsService();

  Future<List<ArticleModel>> loadArticles() async {
    return await _newsService.fetchArticles();
  }
}
