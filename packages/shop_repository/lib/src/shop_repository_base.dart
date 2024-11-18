import 'package:config_repository/config_repository.dart';
import 'package:dio/dio.dart';
import 'package:shop_repository/src/exceptions/shop_exception.dart';
import 'package:shop_repository/src/models/product.dart';

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

Future<List<String>> _uploadImages(List<String> images) async {
    try {
      final formData = FormData.fromMap({
        'images[]': images.map((e) {
          final filename = e.split('/').last;
          return MultipartFile.fromFileSync(e, filename: filename);
        }).toList(),
      });

      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/shop/images',
        method: 'POST',
        data: formData,
      );

      if (response.data == null) {
        throw ShopException('No response');
      }

      final imageUrls = response.data!['data']['images']
          .map<String>((e) => e as String)
          .toList();

      return imageUrls;
    } on RequestException catch (e) {
      throw ShopException('Failed to upload images: $e');
    }
  }
}
