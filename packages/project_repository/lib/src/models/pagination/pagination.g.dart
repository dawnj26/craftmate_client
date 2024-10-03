// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationImpl<T> _$$PaginationImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$PaginationImpl<T>(
      currentPage: (json['currentPage'] as num?)?.toInt() ?? 0,
      totalPages: (json['totalPages'] as num?)?.toInt() ?? 0,
      pageSize: (json['pageSize'] as num?)?.toInt() ?? 0,
      totalItems: (json['totalItems'] as num?)?.toInt() ?? 0,
      items: (json['items'] as List<dynamic>?)?.map(fromJsonT).toList() ??
          const [],
      nextPageUrl: json['nextPageUrl'] as String?,
    );

Map<String, dynamic> _$$PaginationImplToJson<T>(
  _$PaginationImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
      'pageSize': instance.pageSize,
      'totalItems': instance.totalItems,
      'items': instance.items.map(toJsonT).toList(),
      'nextPageUrl': instance.nextPageUrl,
    };
