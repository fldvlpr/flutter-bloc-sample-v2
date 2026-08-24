// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PostFormState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostFormState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostFormState()';
}


}

/// @nodoc
class $PostFormStateCopyWith<$Res>  {
$PostFormStateCopyWith(PostFormState _, $Res Function(PostFormState) __);
}


/// Adds pattern-matching-related methods to [PostFormState].
extension PostFormStatePatterns on PostFormState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PostFormStateInitial value)?  initial,TResult Function( PostFormStateCreateSuccess value)?  createPost,TResult Function( PostFormStateUpdateSuccess value)?  updatePost,TResult Function( PostFormStateFailure value)?  failure,TResult Function( PostFormStateSubmitting value)?  submitting,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PostFormStateInitial() when initial != null:
return initial(_that);case PostFormStateCreateSuccess() when createPost != null:
return createPost(_that);case PostFormStateUpdateSuccess() when updatePost != null:
return updatePost(_that);case PostFormStateFailure() when failure != null:
return failure(_that);case PostFormStateSubmitting() when submitting != null:
return submitting(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PostFormStateInitial value)  initial,required TResult Function( PostFormStateCreateSuccess value)  createPost,required TResult Function( PostFormStateUpdateSuccess value)  updatePost,required TResult Function( PostFormStateFailure value)  failure,required TResult Function( PostFormStateSubmitting value)  submitting,}){
final _that = this;
switch (_that) {
case PostFormStateInitial():
return initial(_that);case PostFormStateCreateSuccess():
return createPost(_that);case PostFormStateUpdateSuccess():
return updatePost(_that);case PostFormStateFailure():
return failure(_that);case PostFormStateSubmitting():
return submitting(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PostFormStateInitial value)?  initial,TResult? Function( PostFormStateCreateSuccess value)?  createPost,TResult? Function( PostFormStateUpdateSuccess value)?  updatePost,TResult? Function( PostFormStateFailure value)?  failure,TResult? Function( PostFormStateSubmitting value)?  submitting,}){
final _that = this;
switch (_that) {
case PostFormStateInitial() when initial != null:
return initial(_that);case PostFormStateCreateSuccess() when createPost != null:
return createPost(_that);case PostFormStateUpdateSuccess() when updatePost != null:
return updatePost(_that);case PostFormStateFailure() when failure != null:
return failure(_that);case PostFormStateSubmitting() when submitting != null:
return submitting(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( Post post)?  createPost,TResult Function( Post post)?  updatePost,TResult Function( String message)?  failure,TResult Function()?  submitting,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PostFormStateInitial() when initial != null:
return initial();case PostFormStateCreateSuccess() when createPost != null:
return createPost(_that.post);case PostFormStateUpdateSuccess() when updatePost != null:
return updatePost(_that.post);case PostFormStateFailure() when failure != null:
return failure(_that.message);case PostFormStateSubmitting() when submitting != null:
return submitting();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( Post post)  createPost,required TResult Function( Post post)  updatePost,required TResult Function( String message)  failure,required TResult Function()  submitting,}) {final _that = this;
switch (_that) {
case PostFormStateInitial():
return initial();case PostFormStateCreateSuccess():
return createPost(_that.post);case PostFormStateUpdateSuccess():
return updatePost(_that.post);case PostFormStateFailure():
return failure(_that.message);case PostFormStateSubmitting():
return submitting();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( Post post)?  createPost,TResult? Function( Post post)?  updatePost,TResult? Function( String message)?  failure,TResult? Function()?  submitting,}) {final _that = this;
switch (_that) {
case PostFormStateInitial() when initial != null:
return initial();case PostFormStateCreateSuccess() when createPost != null:
return createPost(_that.post);case PostFormStateUpdateSuccess() when updatePost != null:
return updatePost(_that.post);case PostFormStateFailure() when failure != null:
return failure(_that.message);case PostFormStateSubmitting() when submitting != null:
return submitting();case _:
  return null;

}
}

}

/// @nodoc


class PostFormStateInitial implements PostFormState {
  const PostFormStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostFormStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostFormState.initial()';
}


}




/// @nodoc


class PostFormStateCreateSuccess implements PostFormState {
  const PostFormStateCreateSuccess({required this.post});
  

 final  Post post;

/// Create a copy of PostFormState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostFormStateCreateSuccessCopyWith<PostFormStateCreateSuccess> get copyWith => _$PostFormStateCreateSuccessCopyWithImpl<PostFormStateCreateSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostFormStateCreateSuccess&&(identical(other.post, post) || other.post == post));
}


@override
int get hashCode => Object.hash(runtimeType,post);

@override
String toString() {
  return 'PostFormState.createPost(post: $post)';
}


}

/// @nodoc
abstract mixin class $PostFormStateCreateSuccessCopyWith<$Res> implements $PostFormStateCopyWith<$Res> {
  factory $PostFormStateCreateSuccessCopyWith(PostFormStateCreateSuccess value, $Res Function(PostFormStateCreateSuccess) _then) = _$PostFormStateCreateSuccessCopyWithImpl;
@useResult
$Res call({
 Post post
});


$PostCopyWith<$Res> get post;

}
/// @nodoc
class _$PostFormStateCreateSuccessCopyWithImpl<$Res>
    implements $PostFormStateCreateSuccessCopyWith<$Res> {
  _$PostFormStateCreateSuccessCopyWithImpl(this._self, this._then);

  final PostFormStateCreateSuccess _self;
  final $Res Function(PostFormStateCreateSuccess) _then;

/// Create a copy of PostFormState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? post = null,}) {
  return _then(PostFormStateCreateSuccess(
post: null == post ? _self.post : post // ignore: cast_nullable_to_non_nullable
as Post,
  ));
}

/// Create a copy of PostFormState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostCopyWith<$Res> get post {
  
  return $PostCopyWith<$Res>(_self.post, (value) {
    return _then(_self.copyWith(post: value));
  });
}
}

/// @nodoc


class PostFormStateUpdateSuccess implements PostFormState {
  const PostFormStateUpdateSuccess({required this.post});
  

 final  Post post;

/// Create a copy of PostFormState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostFormStateUpdateSuccessCopyWith<PostFormStateUpdateSuccess> get copyWith => _$PostFormStateUpdateSuccessCopyWithImpl<PostFormStateUpdateSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostFormStateUpdateSuccess&&(identical(other.post, post) || other.post == post));
}


@override
int get hashCode => Object.hash(runtimeType,post);

@override
String toString() {
  return 'PostFormState.updatePost(post: $post)';
}


}

/// @nodoc
abstract mixin class $PostFormStateUpdateSuccessCopyWith<$Res> implements $PostFormStateCopyWith<$Res> {
  factory $PostFormStateUpdateSuccessCopyWith(PostFormStateUpdateSuccess value, $Res Function(PostFormStateUpdateSuccess) _then) = _$PostFormStateUpdateSuccessCopyWithImpl;
@useResult
$Res call({
 Post post
});


$PostCopyWith<$Res> get post;

}
/// @nodoc
class _$PostFormStateUpdateSuccessCopyWithImpl<$Res>
    implements $PostFormStateUpdateSuccessCopyWith<$Res> {
  _$PostFormStateUpdateSuccessCopyWithImpl(this._self, this._then);

  final PostFormStateUpdateSuccess _self;
  final $Res Function(PostFormStateUpdateSuccess) _then;

/// Create a copy of PostFormState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? post = null,}) {
  return _then(PostFormStateUpdateSuccess(
post: null == post ? _self.post : post // ignore: cast_nullable_to_non_nullable
as Post,
  ));
}

/// Create a copy of PostFormState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostCopyWith<$Res> get post {
  
  return $PostCopyWith<$Res>(_self.post, (value) {
    return _then(_self.copyWith(post: value));
  });
}
}

/// @nodoc


class PostFormStateFailure implements PostFormState {
  const PostFormStateFailure({required this.message});
  

 final  String message;

/// Create a copy of PostFormState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostFormStateFailureCopyWith<PostFormStateFailure> get copyWith => _$PostFormStateFailureCopyWithImpl<PostFormStateFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostFormStateFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'PostFormState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $PostFormStateFailureCopyWith<$Res> implements $PostFormStateCopyWith<$Res> {
  factory $PostFormStateFailureCopyWith(PostFormStateFailure value, $Res Function(PostFormStateFailure) _then) = _$PostFormStateFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$PostFormStateFailureCopyWithImpl<$Res>
    implements $PostFormStateFailureCopyWith<$Res> {
  _$PostFormStateFailureCopyWithImpl(this._self, this._then);

  final PostFormStateFailure _self;
  final $Res Function(PostFormStateFailure) _then;

/// Create a copy of PostFormState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(PostFormStateFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PostFormStateSubmitting implements PostFormState {
  const PostFormStateSubmitting();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostFormStateSubmitting);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostFormState.submitting()';
}


}




// dart format on
