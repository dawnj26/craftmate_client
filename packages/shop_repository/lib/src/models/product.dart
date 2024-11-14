import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    @Default('') String name,
    @Default('') String description,
    @Default(-1.0) double price,
    @Default('') String imageUrl,
    @Default('') String category,
    @Default(ProductCondition.new_) ProductCondition condition,
    @Default([]) List<String> imageUrls,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? soldAt,
    DateTime? deletedAt,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

enum ProductCondition { new_, used, refurbished }
