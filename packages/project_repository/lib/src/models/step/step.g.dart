// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StepImpl _$$StepImplFromJson(Map<String, dynamic> json) => _$StepImpl(
      id: (json['id'] as num).toInt(),
      stepNumber: (json['stepNumber'] as num).toInt(),
      content: json['content'] as List<dynamic>?,
    );

Map<String, dynamic> _$$StepImplToJson(_$StepImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stepNumber': instance.stepNumber,
      'content': instance.content,
    };
