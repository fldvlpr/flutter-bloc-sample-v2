import 'package:flutter_bloc_sample_v2/features/posts/data/models/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_state.freezed.dart';

@freezed
abstract class PostState with _$PostState {
  const factory PostState({
    @Default([]) List<Post> posts,
    @Default(false) bool isLoading,
    @Default(true) bool hasMore,
    String? error,
  }) = _PostState;
}
