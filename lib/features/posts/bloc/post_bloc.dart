import 'package:flutter_bloc_sample_v2/features/posts/bloc/post_event.dart';
import 'package:flutter_bloc_sample_v2/features/posts/bloc/post_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_sample_v2/features/posts/data/repositories/post_repository.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  static const int _limit = 10;

  final PostRepository postRepository;

  PostBloc({required this.postRepository}) : super(PostState()) {
    on<GetPostsEvent>(_getPosts);
  }

  Future<void> _getPosts(GetPostsEvent event, Emitter<PostState> emit) async {
    try {
      if (state.isLoading || !state.hasMore) {
        return;
      }

      emit(state.copyWith(isLoading: true, error: null));

      final response = await postRepository.getPosts(
        limit: _limit,
        skip: state.posts.length,
      );

      // Add newly fetched posts to existing posts.
      final allPosts = [...state.posts, ...response.posts];

      emit(
        state.copyWith(
          posts: allPosts,
          isLoading: false,
          hasMore: response.posts.length == _limit,
          error: null,
        ),
      );
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: e.toString()));
    }
  }
}
