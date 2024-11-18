import 'package:config_repository/config_repository.dart';

abstract class IShopRepository {
  Future<void> publishListing(Product product);
}

class ShopRepository implements IShopRepository {
  final ConfigRepository _config;

  const ShopRepository(this._config);

  @override
  Future<void> publishListing(Product product) async {
    try {
      final List<String> imageUrls = await _uploadImages(product.imageUrls);
      final newProduct = product.copyWith(
        imageUrls: imageUrls,
      );

      await _config.db.collection('marketplace').add(newProduct.toJson());
    } catch (e) {
      _config.logger
          .error('Failed to publish listing: $e', e, StackTrace.current);
      throw ShopException('Failed to publish listing: $e');
    }
  }

}
