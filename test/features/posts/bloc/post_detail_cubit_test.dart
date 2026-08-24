import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_bloc_sample_v2/features/posts/bloc/post_detail_cubit.dart';
import 'package:flutter_bloc_sample_v2/features/posts/bloc/post_detail_state.dart';
import 'package:flutter_bloc_sample_v2/features/posts/data/models/post.dart';
import 'package:flutter_bloc_sample_v2/features/posts/data/repositories/post_repository.dart';

class MockPostRepository extends Mock implements PostRepository {}

void main() {
  late MockPostRepository mockPostRepository;
  late PostDetailCubit postDetailCubit;

  setUp(() {
    mockPostRepository = MockPostRepository();
    postDetailCubit = PostDetailCubit(postRepository: mockPostRepository);
  });

  tearDown(() {
    postDetailCubit.close();
  });

  group('PostDetailCubit', () {
    const tId = 1;
    const tPost = Post(
      id: tId,
      title: 'Test Title',
      body: 'Test Body',
    );

    test('initial state should be initial', () {
      expect(postDetailCubit.state, const PostDetailState.initial());
    });

    blocTest<PostDetailCubit, PostDetailState>(
      'emits [loading, loaded] when fetchPostDetail succeeds',
      build: () {
        when(() => mockPostRepository.getPostById(id: tId))
            .thenAnswer((_) async => tPost);
        return postDetailCubit;
      },
      act: (cubit) => cubit.fetchPostDetail(tId),
      expect: () => [
        const PostDetailState.loading(),
        const PostDetailState.loaded(tPost),
      ],
      verify: (_) {
        verify(() => mockPostRepository.getPostById(id: tId)).called(1);
      },
    );

    blocTest<PostDetailCubit, PostDetailState>(
      'emits [loading, error] when fetchPostDetail fails',
      build: () {
        when(() => mockPostRepository.getPostById(id: tId))
            .thenThrow(Exception('Error fetching details'));
        return postDetailCubit;
      },
      act: (cubit) => cubit.fetchPostDetail(tId),
      expect: () => [
        const PostDetailState.loading(),
        const PostDetailState.error('Exception: Error fetching details'),
      ],
      verify: (_) {
        verify(() => mockPostRepository.getPostById(id: tId)).called(1);
      },
    );
  });
}
