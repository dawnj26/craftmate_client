// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_overview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShopOverview {
  int get totalProducts => throw _privateConstructorUsedError;
  int get totalViews => throw _privateConstructorUsedError;
  double get totalRating => throw _privateConstructorUsedError;
  int get totalFollowers => throw _privateConstructorUsedError;

  /// Create a copy of ShopOverview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShopOverviewCopyWith<ShopOverview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopOverviewCopyWith<$Res> {
  factory $ShopOverviewCopyWith(
          ShopOverview value, $Res Function(ShopOverview) then) =
      _$ShopOverviewCopyWithImpl<$Res, ShopOverview>;
  @useResult
  $Res call(
      {int totalProducts,
      int totalViews,
      double totalRating,
      int totalFollowers});
}

/// @nodoc
class _$ShopOverviewCopyWithImpl<$Res, $Val extends ShopOverview>
    implements $ShopOverviewCopyWith<$Res> {
  _$ShopOverviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShopOverview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalProducts = null,
    Object? totalViews = null,
    Object? totalRating = null,
    Object? totalFollowers = null,
  }) {
    return _then(_value.copyWith(
      totalProducts: null == totalProducts
          ? _value.totalProducts
          : totalProducts // ignore: cast_nullable_to_non_nullable
              as int,
      totalViews: null == totalViews
          ? _value.totalViews
          : totalViews // ignore: cast_nullable_to_non_nullable
              as int,
      totalRating: null == totalRating
          ? _value.totalRating
          : totalRating // ignore: cast_nullable_to_non_nullable
              as double,
      totalFollowers: null == totalFollowers
          ? _value.totalFollowers
          : totalFollowers // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShopOverviewImplCopyWith<$Res>
    implements $ShopOverviewCopyWith<$Res> {
  factory _$$ShopOverviewImplCopyWith(
          _$ShopOverviewImpl value, $Res Function(_$ShopOverviewImpl) then) =
      __$$ShopOverviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalProducts,
      int totalViews,
      double totalRating,
      int totalFollowers});
}

/// @nodoc
class __$$ShopOverviewImplCopyWithImpl<$Res>
    extends _$ShopOverviewCopyWithImpl<$Res, _$ShopOverviewImpl>
    implements _$$ShopOverviewImplCopyWith<$Res> {
  __$$ShopOverviewImplCopyWithImpl(
      _$ShopOverviewImpl _value, $Res Function(_$ShopOverviewImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShopOverview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalProducts = null,
    Object? totalViews = null,
    Object? totalRating = null,
    Object? totalFollowers = null,
  }) {
    return _then(_$ShopOverviewImpl(
      totalProducts: null == totalProducts
          ? _value.totalProducts
          : totalProducts // ignore: cast_nullable_to_non_nullable
              as int,
      totalViews: null == totalViews
          ? _value.totalViews
          : totalViews // ignore: cast_nullable_to_non_nullable
              as int,
      totalRating: null == totalRating
          ? _value.totalRating
          : totalRating // ignore: cast_nullable_to_non_nullable
              as double,
      totalFollowers: null == totalFollowers
          ? _value.totalFollowers
          : totalFollowers // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ShopOverviewImpl implements _ShopOverview {
  const _$ShopOverviewImpl(
      {this.totalProducts = 0,
      this.totalViews = 0,
      this.totalRating = 0.0,
      this.totalFollowers = 0});

  @override
  @JsonKey()
  final int totalProducts;
  @override
  @JsonKey()
  final int totalViews;
  @override
  @JsonKey()
  final double totalRating;
  @override
  @JsonKey()
  final int totalFollowers;

  @override
  String toString() {
    return 'ShopOverview(totalProducts: $totalProducts, totalViews: $totalViews, totalRating: $totalRating, totalFollowers: $totalFollowers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopOverviewImpl &&
            (identical(other.totalProducts, totalProducts) ||
                other.totalProducts == totalProducts) &&
            (identical(other.totalViews, totalViews) ||
                other.totalViews == totalViews) &&
            (identical(other.totalRating, totalRating) ||
                other.totalRating == totalRating) &&
            (identical(other.totalFollowers, totalFollowers) ||
                other.totalFollowers == totalFollowers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, totalProducts, totalViews, totalRating, totalFollowers);

  /// Create a copy of ShopOverview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopOverviewImplCopyWith<_$ShopOverviewImpl> get copyWith =>
      __$$ShopOverviewImplCopyWithImpl<_$ShopOverviewImpl>(this, _$identity);
}

abstract class _ShopOverview implements ShopOverview {
  const factory _ShopOverview(
      {final int totalProducts,
      final int totalViews,
      final double totalRating,
      final int totalFollowers}) = _$ShopOverviewImpl;

  @override
  int get totalProducts;
  @override
  int get totalViews;
  @override
  double get totalRating;
  @override
  int get totalFollowers;

  /// Create a copy of ShopOverview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShopOverviewImplCopyWith<_$ShopOverviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
