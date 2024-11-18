// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'place.freezed.dart';
part 'place.g.dart';

@freezed
class Place with _$Place {
  const factory Place({
    @Default('') @JsonKey(name: 'place_id') String placeId,
    @Default('') @JsonKey(name: 'formatted') String name,
    @Default(0.0) double lat,
    @Default(0.0) double lon,
  }) = _Place;

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);
}
