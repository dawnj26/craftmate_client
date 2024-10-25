// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_suggestion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectSuggestionImpl _$$ProjectSuggestionImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectSuggestionImpl(
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      steps:
          (json['steps'] as List<dynamic>?)?.map((e) => e as String).toList(),
      materials: (json['materials'] as List<dynamic>?)
              ?.map((e) => Material.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ProjectSuggestionImplToJson(
        _$ProjectSuggestionImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'steps': instance.steps,
      'materials': instance.materials,
    };
