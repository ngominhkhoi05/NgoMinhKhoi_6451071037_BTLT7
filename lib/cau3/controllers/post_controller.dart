import '../models/post_model.dart';
import '../services/post_service.dart';

class PostController {
  final PostService _postService = PostService();

  Future<PostModel> createPost({
    required String title,
    required String body,
    required int userId,
  }) async {
    return await _postService.createPost(
      title: title,
      body: body,
      userId: userId,
    );
  }
}
