// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'query_review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QueryReview {
  String get id => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  Review get review => throw _privateConstructorUsedError;
  bool get isLiked => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;

  /// Create a copy of QueryReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QueryReviewCopyWith<QueryReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryReviewCopyWith<$Res> {
  factory $QueryReviewCopyWith(
          QueryReview value, $Res Function(QueryReview) then) =
      _$QueryReviewCopyWithImpl<$Res, QueryReview>;
  @useResult
  $Res call({String id, User user, Review review, bool isLiked, int likes});

  $UserCopyWith<$Res> get user;
  $ReviewCopyWith<$Res> get review;
}

/// @nodoc
class _$QueryReviewCopyWithImpl<$Res, $Val extends QueryReview>
    implements $QueryReviewCopyWith<$Res> {
  _$QueryReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QueryReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? review = null,
    Object? isLiked = null,
    Object? likes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as Review,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of QueryReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of QueryReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReviewCopyWith<$Res> get review {
    return $ReviewCopyWith<$Res>(_value.review, (value) {
      return _then(_value.copyWith(review: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QueryReviewImplCopyWith<$Res>
    implements $QueryReviewCopyWith<$Res> {
  factory _$$QueryReviewImplCopyWith(
          _$QueryReviewImpl value, $Res Function(_$QueryReviewImpl) then) =
      __$$QueryReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, User user, Review review, bool isLiked, int likes});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $ReviewCopyWith<$Res> get review;
}

/// @nodoc
class __$$QueryReviewImplCopyWithImpl<$Res>
    extends _$QueryReviewCopyWithImpl<$Res, _$QueryReviewImpl>
    implements _$$QueryReviewImplCopyWith<$Res> {
  __$$QueryReviewImplCopyWithImpl(
      _$QueryReviewImpl _value, $Res Function(_$QueryReviewImpl) _then)
      : super(_value, _then);

  /// Create a copy of QueryReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? review = null,
    Object? isLiked = null,
    Object? likes = null,
  }) {
    return _then(_$QueryReviewImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as Review,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$QueryReviewImpl implements _QueryReview {
  const _$QueryReviewImpl(
      {this.id = '',
      this.user = const User(),
      this.review = const Review(),
      this.isLiked = false,
      this.likes = 0});

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final User user;
  @override
  @JsonKey()
  final Review review;
  @override
  @JsonKey()
  final bool isLiked;
  @override
  @JsonKey()
  final int likes;

  @override
  String toString() {
    return 'QueryReview(id: $id, user: $user, review: $review, isLiked: $isLiked, likes: $likes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueryReviewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked) &&
            (identical(other.likes, likes) || other.likes == likes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, user, review, isLiked, likes);

  /// Create a copy of QueryReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QueryReviewImplCopyWith<_$QueryReviewImpl> get copyWith =>
      __$$QueryReviewImplCopyWithImpl<_$QueryReviewImpl>(this, _$identity);
}

abstract class _QueryReview implements QueryReview {
  const factory _QueryReview(
      {final String id,
      final User user,
      final Review review,
      final bool isLiked,
      final int likes}) = _$QueryReviewImpl;

  @override
  String get id;
  @override
  User get user;
  @override
  Review get review;
  @override
  bool get isLiked;
  @override
  int get likes;

  /// Create a copy of QueryReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QueryReviewImplCopyWith<_$QueryReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
