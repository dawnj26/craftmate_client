// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QueryReportImpl _$$QueryReportImplFromJson(Map<String, dynamic> json) =>
    _$QueryReportImpl(
      id: json['id'] as String? ?? '',
      report: json['report'] == null
          ? const Report()
          : Report.fromJson(json['report'] as Map<String, dynamic>),
      reporter: json['reporter'] == null
          ? const User()
          : User.fromJson(json['reporter'] as Map<String, dynamic>),
      reported: json['reported'] == null
          ? const User()
          : User.fromJson(json['reported'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$QueryReportImplToJson(_$QueryReportImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'report': instance.report,
      'reporter': instance.reporter,
      'reported': instance.reported,
    };
