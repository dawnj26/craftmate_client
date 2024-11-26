import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_overview.freezed.dart';

@freezed
class ShopOverview with _$ShopOverview {
  const factory ShopOverview({
    @Default(0) int totalProducts,
    @Default(0) int totalViews,
    @Default(0.0) double totalRating,
    @Default(0) int totalFollowers,
  }) = _ShopOverview;
}
