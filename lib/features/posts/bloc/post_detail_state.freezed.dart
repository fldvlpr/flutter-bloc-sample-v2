// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PostDetailState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostDetailState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostDetailState()';
}


}

/// @nodoc
class $PostDetailStateCopyWith<$Res>  {
$PostDetailStateCopyWith(PostDetailState _, $Res Function(PostDetailState) __);
}


/// Adds pattern-matching-related methods to [PostDetailState].
extension PostDetailStatePatterns on PostDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PostDetailStateInitial value)?  initial,TResult Function( PostDetailStateLoading value)?  loading,TResult Function( PostDetailStateError value)?  error,TResult Function( PostDetailStateLoaded value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PostDetailStateInitial() when initial != null:
return initial(_that);case PostDetailStateLoading() when loading != null:
return loading(_that);case PostDetailStateError() when error != null:
return error(_that);case PostDetailStateLoaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PostDetailStateInitial value)  initial,required TResult Function( PostDetailStateLoading value)  loading,required TResult Function( PostDetailStateError value)  error,required TResult Function( PostDetailStateLoaded value)  loaded,}){
final _that = this;
switch (_that) {
case PostDetailStateInitial():
return initial(_that);case PostDetailStateLoading():
return loading(_that);case PostDetailStateError():
return error(_that);case PostDetailStateLoaded():
return loaded(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PostDetailStateInitial value)?  initial,TResult? Function( PostDetailStateLoading value)?  loading,TResult? Function( PostDetailStateError value)?  error,TResult? Function( PostDetailStateLoaded value)?  loaded,}){
final _that = this;
switch (_that) {
case PostDetailStateInitial() when initial != null:
return initial(_that);case PostDetailStateLoading() when loading != null:
return loading(_that);case PostDetailStateError() when error != null:
return error(_that);case PostDetailStateLoaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String message)?  error,TResult Function( Post post)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PostDetailStateInitial() when initial != null:
return initial();case PostDetailStateLoading() when loading != null:
return loading();case PostDetailStateError() when error != null:
return error(_that.message);case PostDetailStateLoaded() when loaded != null:
return loaded(_that.post);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String message)  error,required TResult Function( Post post)  loaded,}) {final _that = this;
switch (_that) {
case PostDetailStateInitial():
return initial();case PostDetailStateLoading():
return loading();case PostDetailStateError():
return error(_that.message);case PostDetailStateLoaded():
return loaded(_that.post);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String message)?  error,TResult? Function( Post post)?  loaded,}) {final _that = this;
switch (_that) {
case PostDetailStateInitial() when initial != null:
return initial();case PostDetailStateLoading() when loading != null:
return loading();case PostDetailStateError() when error != null:
return error(_that.message);case PostDetailStateLoaded() when loaded != null:
return loaded(_that.post);case _:
  return null;

}
}

}

/// @nodoc


class PostDetailStateInitial implements PostDetailState {
  const PostDetailStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostDetailStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostDetailState.initial()';
}


}




/// @nodoc


class PostDetailStateLoading implements PostDetailState {
  const PostDetailStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostDetailStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostDetailState.loading()';
}


}




/// @nodoc


class PostDetailStateError implements PostDetailState {
  const PostDetailStateError(this.message);
  

 final  String message;

/// Create a copy of PostDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostDetailStateErrorCopyWith<PostDetailStateError> get copyWith => _$PostDetailStateErrorCopyWithImpl<PostDetailStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostDetailStateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'PostDetailState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $PostDetailStateErrorCopyWith<$Res> implements $PostDetailStateCopyWith<$Res> {
  factory $PostDetailStateErrorCopyWith(PostDetailStateError value, $Res Function(PostDetailStateError) _then) = _$PostDetailStateErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$PostDetailStateErrorCopyWithImpl<$Res>
    implements $PostDetailStateErrorCopyWith<$Res> {
  _$PostDetailStateErrorCopyWithImpl(this._self, this._then);

  final PostDetailStateError _self;
  final $Res Function(PostDetailStateError) _then;

/// Create a copy of PostDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(PostDetailStateError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PostDetailStateLoaded implements PostDetailState {
  const PostDetailStateLoaded(this.post);
  

 final  Post post;

/// Create a copy of PostDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostDetailStateLoadedCopyWith<PostDetailStateLoaded> get copyWith => _$PostDetailStateLoadedCopyWithImpl<PostDetailStateLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostDetailStateLoaded&&(identical(other.post, post) || other.post == post));
}


@override
int get hashCode => Object.hash(runtimeType,post);

@override
String toString() {
  return 'PostDetailState.loaded(post: $post)';
}


}

/// @nodoc
abstract mixin class $PostDetailStateLoadedCopyWith<$Res> implements $PostDetailStateCopyWith<$Res> {
  factory $PostDetailStateLoadedCopyWith(PostDetailStateLoaded value, $Res Function(PostDetailStateLoaded) _then) = _$PostDetailStateLoadedCopyWithImpl;
@useResult
$Res call({
 Post post
});


$PostCopyWith<$Res> get post;

}
/// @nodoc
class _$PostDetailStateLoadedCopyWithImpl<$Res>
    implements $PostDetailStateLoadedCopyWith<$Res> {
  _$PostDetailStateLoadedCopyWithImpl(this._self, this._then);

  final PostDetailStateLoaded _self;
  final $Res Function(PostDetailStateLoaded) _then;

/// Create a copy of PostDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? post = null,}) {
  return _then(PostDetailStateLoaded(
null == post ? _self.post : post // ignore: cast_nullable_to_non_nullable
as Post,
  ));
}

/// Create a copy of PostDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostCopyWith<$Res> get post {
  
  return $PostCopyWith<$Res>(_self.post, (value) {
    return _then(_self.copyWith(post: value));
  });
}
}

// dart format on
