import 'package:flutter_bloc_sample_v2/features/posts/data/models/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_form_state.freezed.dart';

@freezed
abstract class PostFormState with _$PostFormState {
  const factory PostFormState.initial() = PostFormStateInitial;

  const factory PostFormState.createPost({required Post post}) =
      PostFormStateCreateSuccess;

  const factory PostFormState.updatePost({required Post post}) =
      PostFormStateUpdateSuccess;

  const factory PostFormState.failure({required String message}) =
      PostFormStateFailure;

  const factory PostFormState.submitting() = PostFormStateSubmitting;
}
