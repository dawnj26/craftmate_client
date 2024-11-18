import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:map_repository/map_repository.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  @JsonSerializable(explicitToJson: true)
  const factory Product({
    @Default(-1) int sellerId,
    @Default('') String name,
    @Default('') String description,
    @Default(-1.0) double price,
    @Default('') String category,
    @Default([]) List<String> imageUrls,
    @Default(Place()) Place address,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? soldAt,
    int? buyerId,
    DateTime? deletedAt,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
