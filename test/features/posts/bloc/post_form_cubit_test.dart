import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_bloc_sample_v2/features/posts/bloc/post_form_cubit.dart';
import 'package:flutter_bloc_sample_v2/features/posts/bloc/post_form_state.dart';
import 'package:flutter_bloc_sample_v2/features/posts/data/models/post.dart';
import 'package:flutter_bloc_sample_v2/features/posts/data/repositories/post_repository.dart';

class MockPostRepository extends Mock implements PostRepository {}

void main() {
  late MockPostRepository mockPostRepository;
  late PostFormCubit postFormCubit;

  setUp(() {
    mockPostRepository = MockPostRepository();
    postFormCubit = PostFormCubit(postRepository: mockPostRepository);
  });

  tearDown(() {
    postFormCubit.close();
  });

  group('PostFormCubit', () {
    const tId = 1;
    const tTitle = 'Test Title';
    const tBody = 'Test Body';
    const tPost = Post(
      id: tId,
      title: tTitle,
      body: tBody,
    );

    test('initial state should be initial', () {
      expect(postFormCubit.state, const PostFormState.initial());
    });

    blocTest<PostFormCubit, PostFormState>(
      'emits [submitting, createPost] when createPost succeeds',
      build: () {
        when(() => mockPostRepository.createPost(title: tTitle, body: tBody))
            .thenAnswer((_) async => tPost);
        return postFormCubit;
      },
      act: (cubit) => cubit.createPost(title: tTitle, body: tBody),
      expect: () => [
        const PostFormState.submitting(),
        const PostFormState.createPost(post: tPost),
      ],
      verify: (_) {
        verify(() => mockPostRepository.createPost(title: tTitle, body: tBody)).called(1);
      },
    );

    blocTest<PostFormCubit, PostFormState>(
      'emits [submitting, failure] when createPost fails',
      build: () {
        when(() => mockPostRepository.createPost(title: tTitle, body: tBody))
            .thenThrow(Exception('Creation failed'));
        return postFormCubit;
      },
      act: (cubit) => cubit.createPost(title: tTitle, body: tBody),
      expect: () => [
        const PostFormState.submitting(),
        const PostFormState.failure(message: 'Exception: Creation failed'),
      ],
      verify: (_) {
        verify(() => mockPostRepository.createPost(title: tTitle, body: tBody)).called(1);
      },
    );

    blocTest<PostFormCubit, PostFormState>(
      'emits [submitting, updatePost] when updatePost succeeds',
      build: () {
        when(() => mockPostRepository.updatePost(id: tId, title: tTitle, body: tBody))
            .thenAnswer((_) async => tPost);
        return postFormCubit;
      },
      act: (cubit) => cubit.updatePost(id: tId, title: tTitle, body: tBody),
      expect: () => [
        const PostFormState.submitting(),
        const PostFormState.updatePost(post: tPost),
      ],
      verify: (_) {
        verify(() => mockPostRepository.updatePost(id: tId, title: tTitle, body: tBody)).called(1);
      },
    );

    blocTest<PostFormCubit, PostFormState>(
      'emits [submitting, failure] when updatePost fails',
      build: () {
        when(() => mockPostRepository.updatePost(id: tId, title: tTitle, body: tBody))
            .thenThrow(Exception('Update failed'));
        return postFormCubit;
      },
      act: (cubit) => cubit.updatePost(id: tId, title: tTitle, body: tBody),
      expect: () => [
        const PostFormState.submitting(),
        const PostFormState.failure(message: 'Exception: Update failed'),
      ],
      verify: (_) {
        verify(() => mockPostRepository.updatePost(id: tId, title: tTitle, body: tBody)).called(1);
      },
    );
  });
}
