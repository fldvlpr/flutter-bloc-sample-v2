import 'package:flutter_bloc_sample_v2/features/posts/data/data_provider/post_data_provider.dart';
import 'package:flutter_bloc_sample_v2/features/posts/data/models/post.dart';
import 'package:flutter_bloc_sample_v2/features/posts/data/models/post_response.dart';

class PostRepository {
  final PostDataProvider postDataProvider;

  PostRepository(this.postDataProvider);

  Future<PostResponse> getPosts({required int limit, required int skip}) async {
    final data = await postDataProvider.getPosts(limit, skip);

    return PostResponse.fromJson(data);
  }

  Future<Post> getPostById({required int id}) async {
    final data = await postDataProvider.getPostById(id);

    return Post.fromJson(data);
  }

  Future<Post> createPost({required String title, required String body}) async {
    final data = await postDataProvider.createPost({
      'title': title,
      'body': body,
    });

    return Post.fromJson(data);
  }

  Future<Post> updatePost({
    required int id,
    required String title,
    required String body,
  }) async {
    final data = await postDataProvider.updatePost(id, {
      'title': title,
      'body': body,
    });

    return Post.fromJson(data);
  }
}
