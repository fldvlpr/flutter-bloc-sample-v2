import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_sample_v2/features/posts/bloc/post_form_state.dart';
import 'package:flutter_bloc_sample_v2/features/posts/data/repositories/post_repository.dart';

class PostFormCubit extends Cubit<PostFormState> {
  PostFormCubit({required this._postRepository})
    : super(PostFormState.initial());

  final PostRepository _postRepository;

  Future<void> createPost({required String title, required String body}) async {
    emit(PostFormState.submitting());
    try {
      final post = await _postRepository.createPost(title: title, body: body);
      emit(PostFormState.createPost(post: post));
    } catch (e) {
      emit(PostFormState.failure(message: e.toString()));
    }
  }

  Future<void> updatePost({
    required int id,
    required String title,
    required String body,
  }) async {
    emit(PostFormState.submitting());
    try {
      final post = await _postRepository.updatePost(
        id: id,
        title: title,
        body: body,
      );
      emit(PostFormState.updatePost(post: post));
    } catch (e) {
      emit(PostFormState.failure(message: e.toString()));
    }
  }
}
