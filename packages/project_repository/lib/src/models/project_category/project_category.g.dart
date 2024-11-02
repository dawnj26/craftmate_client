// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectCategoryImpl _$$ProjectCategoryImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectCategoryImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$$ProjectCategoryImplToJson(
        _$ProjectCategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
