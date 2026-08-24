import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_bloc_sample_v2/core/network/api_client.dart';
import 'package:flutter_bloc_sample_v2/features/posts/data/data_provider/post_data_provider.dart';

class MockApiClient extends Mock implements ApiClient {}

void main() {
  late MockApiClient mockApiClient;
  late PostDataProvider postDataProvider;

  setUp(() {
    mockApiClient = MockApiClient();
    postDataProvider = PostDataProvider(mockApiClient);
  });

  group('PostDataProvider', () {
    const tId = 1;
    const tLimit = 10;
    const tSkip = 0;
    final tBody = {'title': 'Test', 'body': 'Data'};

    test('getPosts should call ApiClient.get with correct endpoint and query params', () async {
      // arrange
      when(() => mockApiClient.get(any(), any())).thenAnswer((_) async => {'success': true});

      // act
      await postDataProvider.getPosts(tLimit, tSkip);

      // assert
      verify(() => mockApiClient.get('/posts', {'limit': tLimit, 'skip': tSkip})).called(1);
    });

    test('getPostById should call ApiClient.get with correct endpoint', () async {
      // arrange
      when(() => mockApiClient.get(any())).thenAnswer((_) async => {'success': true});

      // act
      await postDataProvider.getPostById(tId);

      // assert
      verify(() => mockApiClient.get('/posts/$tId')).called(1);
    });

    test('createPost should call ApiClient.post with correct endpoint and body', () async {
      // arrange
      when(() => mockApiClient.post(any(), any())).thenAnswer((_) async => {'success': true});

      // act
      await postDataProvider.createPost(tBody);

      // assert
      verify(() => mockApiClient.post('/posts/add', tBody)).called(1);
    });

    test('updatePost should call ApiClient.post with correct endpoint and body', () async {
      // arrange
      when(() => mockApiClient.post(any(), any())).thenAnswer((_) async => {'success': true});

      // act
      await postDataProvider.updatePost(tId, tBody);

      // assert
      verify(() => mockApiClient.post('/posts/$tId', tBody)).called(1);
    });
  });
}
