// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MaterialCategoryImpl _$$MaterialCategoryImplFromJson(
        Map<String, dynamic> json) =>
    _$MaterialCategoryImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      hexColor: (json['hexColor'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$MaterialCategoryImplToJson(
        _$MaterialCategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'hexColor': instance.hexColor,
    };
