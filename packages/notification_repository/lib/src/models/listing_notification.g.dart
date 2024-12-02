// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListingNotificationImpl _$$ListingNotificationImplFromJson(
        Map<String, dynamic> json) =>
    _$ListingNotificationImpl(
      senderId: (json['senderId'] as num?)?.toInt() ?? -1,
      listingId: json['listingId'] as String? ?? '',
    );

Map<String, dynamic> _$$ListingNotificationImplToJson(
        _$ListingNotificationImpl instance) =>
    <String, dynamic>{
      'senderId': instance.senderId,
      'listingId': instance.listingId,
    };
