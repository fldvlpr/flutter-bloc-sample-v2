import 'package:flutter_bloc_sample_v2/core/network/api_client.dart';

class PostDataProvider {
  final ApiClient apiClient;

  PostDataProvider(this.apiClient);

  Future<dynamic> getPosts(int limit, int skip) =>
      apiClient.get('/posts', {'limit': limit, 'skip': skip});

  Future<dynamic> getPostById(int id) => apiClient.get('/posts/$id');

  Future<dynamic> createPost(Map<String, dynamic> body) =>
      apiClient.post('/posts/add', body);

  Future<dynamic> updatePost(int id, Map<String, dynamic> body) =>
      apiClient.post('/posts/$id', body);
}
