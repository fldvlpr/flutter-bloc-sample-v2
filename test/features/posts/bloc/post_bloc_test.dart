import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_bloc_sample_v2/features/posts/bloc/post_bloc.dart';
import 'package:flutter_bloc_sample_v2/features/posts/bloc/post_event.dart';
import 'package:flutter_bloc_sample_v2/features/posts/bloc/post_state.dart';
import 'package:flutter_bloc_sample_v2/features/posts/data/models/post.dart';
import 'package:flutter_bloc_sample_v2/features/posts/data/models/post_response.dart';
import 'package:flutter_bloc_sample_v2/features/posts/data/repositories/post_repository.dart';

class MockPostRepository extends Mock implements PostRepository {}

void main() {
  late MockPostRepository mockPostRepository;
  late PostBloc postBloc;

  setUp(() {
    mockPostRepository = MockPostRepository();
    postBloc = PostBloc(postRepository: mockPostRepository);
  });

  tearDown(() {
    postBloc.close();
  });

  group('PostBloc', () {
    const tPost = Post(
      id: 1,
      title: 'Test Title',
      body: 'Test Body',
    );

    const tPostResponse = PostResponse(
      posts: [tPost],
      total: 1,
      skip: 0,
      limit: 10,
    );

    test('initial state should be PostState with default values', () {
      expect(postBloc.state, const PostState());
    });

    blocTest<PostBloc, PostState>(
      'emits [isLoading: true] then [isLoading: false, posts: [...]] when GetPostsEvent is added and succeeds',
      build: () {
        when(() => mockPostRepository.getPosts(limit: 10, skip: 0))
            .thenAnswer((_) async => tPostResponse);
        return postBloc;
      },
      act: (bloc) => bloc.add(const GetPostsEvent()),
      expect: () => [
        const PostState(isLoading: true),
        const PostState(isLoading: false, posts: [tPost], hasMore: false),
      ],
      verify: (_) {
        verify(() => mockPostRepository.getPosts(limit: 10, skip: 0)).called(1);
      },
    );

    blocTest<PostBloc, PostState>(
      'emits [isLoading: true] then [isLoading: false, error: "Exception: Error"] when GetPostsEvent fails',
      build: () {
        when(() => mockPostRepository.getPosts(limit: 10, skip: 0))
            .thenThrow(Exception('Error'));
        return postBloc;
      },
      act: (bloc) => bloc.add(const GetPostsEvent()),
      expect: () => [
        const PostState(isLoading: true),
        const PostState(isLoading: false, error: 'Exception: Error'),
      ],
      verify: (_) {
        verify(() => mockPostRepository.getPosts(limit: 10, skip: 0)).called(1);
      },
    );

    blocTest<PostBloc, PostState>(
      'does not emit anything if state.hasMore is false',
      build: () {
        return postBloc;
      },
      seed: () => const PostState(hasMore: false, posts: [tPost]),
      act: (bloc) => bloc.add(const GetPostsEvent()),
      expect: () => [], // Should return early and emit nothing
    );
  });
}
