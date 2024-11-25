import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_repository/shop_repository.dart';

part 'query_product.freezed.dart';

@freezed
class QueryProduct with _$QueryProduct {
  const factory QueryProduct({
    @Default('') String id,
    @Default(Product()) Product product,
    @Default(false) bool isFavorite,
  }) = _QueryProduct;
}
