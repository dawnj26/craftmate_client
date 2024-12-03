// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportImpl _$$ReportImplFromJson(Map<String, dynamic> json) => _$ReportImpl(
      reason: $enumDecodeNullable(_$ReportReasonEnumMap, json['reason']) ??
          ReportReason.other,
      description: json['description'] as String? ?? '',
      reporterId: (json['reporterId'] as num?)?.toInt() ?? -1,
      reportedId: (json['reportedId'] as num?)?.toInt() ?? -1,
      isReviewed: json['isReviewed'] as bool? ?? false,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$ReportImplToJson(_$ReportImpl instance) =>
    <String, dynamic>{
      'reason': _$ReportReasonEnumMap[instance.reason]!,
      'description': instance.description,
      'reporterId': instance.reporterId,
      'reportedId': instance.reportedId,
      'isReviewed': instance.isReviewed,
      'createdAt': instance.createdAt?.toIso8601String(),
    };

const _$ReportReasonEnumMap = {
  ReportReason.spam: 'spam',
  ReportReason.inappropriate: 'inappropriate',
  ReportReason.harassment: 'harassment',
  ReportReason.other: 'other',
};
