import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_event.freezed.dart';

@freezed
abstract class PostEvent with _$PostEvent {
  const factory PostEvent.getPosts() = GetPostsEvent;
}
