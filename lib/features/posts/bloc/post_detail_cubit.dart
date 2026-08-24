import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_sample_v2/features/posts/bloc/post_detail_state.dart';
import 'package:flutter_bloc_sample_v2/features/posts/data/repositories/post_repository.dart';

class PostDetailCubit extends Cubit<PostDetailState> {
  PostDetailCubit({required this._postRepository})
    : super(PostDetailState.initial());

  final PostRepository _postRepository;

  Future<void> fetchPostDetail(int id) async {
    emit(PostDetailState.loading());
    try {
      final post = await _postRepository.getPostById(id: id);
      emit(PostDetailState.loaded(post));
    } catch (e) {
      emit(PostDetailState.error(e.toString()));
    }
  }
}
