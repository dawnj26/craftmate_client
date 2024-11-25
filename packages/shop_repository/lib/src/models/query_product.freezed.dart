// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'query_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QueryProduct {
  String get id => throw _privateConstructorUsedError;
  Product get product => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;

  /// Create a copy of QueryProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QueryProductCopyWith<QueryProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryProductCopyWith<$Res> {
  factory $QueryProductCopyWith(
          QueryProduct value, $Res Function(QueryProduct) then) =
      _$QueryProductCopyWithImpl<$Res, QueryProduct>;
  @useResult
  $Res call({String id, Product product, bool isFavorite});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$QueryProductCopyWithImpl<$Res, $Val extends QueryProduct>
    implements $QueryProductCopyWith<$Res> {
  _$QueryProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QueryProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? product = null,
    Object? isFavorite = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of QueryProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QueryProductImplCopyWith<$Res>
    implements $QueryProductCopyWith<$Res> {
  factory _$$QueryProductImplCopyWith(
          _$QueryProductImpl value, $Res Function(_$QueryProductImpl) then) =
      __$$QueryProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, Product product, bool isFavorite});

  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$QueryProductImplCopyWithImpl<$Res>
    extends _$QueryProductCopyWithImpl<$Res, _$QueryProductImpl>
    implements _$$QueryProductImplCopyWith<$Res> {
  __$$QueryProductImplCopyWithImpl(
      _$QueryProductImpl _value, $Res Function(_$QueryProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of QueryProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? product = null,
    Object? isFavorite = null,
  }) {
    return _then(_$QueryProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$QueryProductImpl implements _QueryProduct {
  const _$QueryProductImpl(
      {this.id = '', this.product = const Product(), this.isFavorite = false});

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final Product product;
  @override
  @JsonKey()
  final bool isFavorite;

  @override
  String toString() {
    return 'QueryProduct(id: $id, product: $product, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueryProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, product, isFavorite);

  /// Create a copy of QueryProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QueryProductImplCopyWith<_$QueryProductImpl> get copyWith =>
      __$$QueryProductImplCopyWithImpl<_$QueryProductImpl>(this, _$identity);
}

abstract class _QueryProduct implements QueryProduct {
  const factory _QueryProduct(
      {final String id,
      final Product product,
      final bool isFavorite}) = _$QueryProductImpl;

  @override
  String get id;
  @override
  Product get product;
  @override
  bool get isFavorite;

  /// Create a copy of QueryProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QueryProductImplCopyWith<_$QueryProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
