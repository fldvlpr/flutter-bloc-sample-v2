import 'package:flutter_bloc_sample_v2/core/network/api_client.dart';
import 'package:flutter_bloc_sample_v2/features/posts/data/data_provider/post_data_provider.dart';
import 'package:flutter_bloc_sample_v2/features/posts/data/repositories/post_repository.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  getIt.registerLazySingleton<ApiClient>(
    () => ApiClient(baseUrl: 'https://dummyjson.com'),
  );

  getIt.registerLazySingleton<PostDataProvider>(
    () => PostDataProvider(getIt<ApiClient>()),
  );

  getIt.registerLazySingleton<PostRepository>(
    () => PostRepository(getIt<PostDataProvider>()),
  );
}
