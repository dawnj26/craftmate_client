// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QueryProductImpl _$$QueryProductImplFromJson(Map<String, dynamic> json) =>
    _$QueryProductImpl(
      id: json['id'] as String? ?? '',
      product: json['product'] == null
          ? const Product()
          : Product.fromJson(json['product'] as Map<String, dynamic>),
      isFavorite: json['isFavorite'] as bool? ?? false,
    );

Map<String, dynamic> _$$QueryProductImplToJson(_$QueryProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product': instance.product,
      'isFavorite': instance.isFavorite,
    };
