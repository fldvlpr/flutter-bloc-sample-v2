import 'package:flutter_bloc_sample_v2/features/posts/data/models/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_detail_state.freezed.dart';

@freezed
abstract class PostDetailState with _$PostDetailState {
  const factory PostDetailState.initial() = PostDetailStateInitial;

  const factory PostDetailState.loading() = PostDetailStateLoading;

  const factory PostDetailState.error(String message) = PostDetailStateError;

  const factory PostDetailState.loaded(Post post) = PostDetailStateLoaded;
}
