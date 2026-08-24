import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_bloc_sample_v2/features/posts/data/data_provider/post_data_provider.dart';
import 'package:flutter_bloc_sample_v2/features/posts/data/repositories/post_repository.dart';

class MockPostDataProvider extends Mock implements PostDataProvider {}

void main() {
  late PostRepository postRepository;
  late MockPostDataProvider mockPostDataProvider;

  setUp(() {
    mockPostDataProvider = MockPostDataProvider();
    postRepository = PostRepository(mockPostDataProvider);
  });

  group('PostRepository', () {
    const tLimit = 10;
    const tSkip = 0;
    const tId = 1;
    const tTitle = 'Test Title';
    const tBody = 'Test Body';

    final tPostJson = {
      'id': tId,
      'title': tTitle,
      'body': tBody,
    };

    final tPostResponseJson = {
      'posts': [tPostJson],
      'total': 1,
      'skip': 0,
      'limit': 10,
    };

    test('getPosts should call getPosts on data provider and return PostResponse', () async {
      // arrange
      when(() => mockPostDataProvider.getPosts(tLimit, tSkip))
          .thenAnswer((_) async => tPostResponseJson);

      // act
      final result = await postRepository.getPosts(limit: tLimit, skip: tSkip);

      // assert
      expect(result.posts.length, 1);
      expect(result.posts.first.title, tTitle);
      verify(() => mockPostDataProvider.getPosts(tLimit, tSkip)).called(1);
    });

    test('getPostById should call getPostById on data provider and return Post', () async {
      // arrange
      when(() => mockPostDataProvider.getPostById(tId))
          .thenAnswer((_) async => tPostJson);

      // act
      final result = await postRepository.getPostById(id: tId);

      // assert
      expect(result.id, tId);
      expect(result.title, tTitle);
      verify(() => mockPostDataProvider.getPostById(tId)).called(1);
    });

    test('createPost should call createPost on data provider and return Post', () async {
      // arrange
      when(() => mockPostDataProvider.createPost({
            'title': tTitle,
            'body': tBody,
          })).thenAnswer((_) async => tPostJson);

      // act
      final result = await postRepository.createPost(title: tTitle, body: tBody);

      // assert
      expect(result.id, tId);
      expect(result.title, tTitle);
      verify(() => mockPostDataProvider.createPost({
            'title': tTitle,
            'body': tBody,
          })).called(1);
    });

    test('updatePost should call updatePost on data provider and return Post', () async {
      // arrange
      when(() => mockPostDataProvider.updatePost(tId, {
            'title': tTitle,
            'body': tBody,
          })).thenAnswer((_) async => tPostJson);

      // act
      final result = await postRepository.updatePost(id: tId, title: tTitle, body: tBody);

      // assert
      expect(result.id, tId);
      expect(result.title, tTitle);
      verify(() => mockPostDataProvider.updatePost(tId, {
            'title': tTitle,
            'body': tBody,
          })).called(1);
    });
  });
}
