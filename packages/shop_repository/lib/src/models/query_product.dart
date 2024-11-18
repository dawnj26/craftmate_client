import 'package:shop_repository/shop_repository.dart';

class QueryProduct {
  const QueryProduct({
    required this.id,
    required this.product,
  });

  const QueryProduct.empty()
      : id = '',
        product = const Product();

  final String id;
  final Product product;

  @override
  String toString() {
    return 'QueryProduct{id: $id, product: $product}';
  }
}
