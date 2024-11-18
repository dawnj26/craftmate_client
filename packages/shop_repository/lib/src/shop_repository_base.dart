import 'package:config_repository/config_repository.dart';
import 'package:dio/dio.dart';
import 'package:shop_repository/src/exceptions/shop_exception.dart';
import 'package:shop_repository/src/models/product.dart';
import 'package:shop_repository/src/models/query_product.dart';

abstract class IShopRepository {
  Future<List<QueryProduct>> fetchListings();
  Future<QueryProduct> fetchListing(String id);
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

  @override
  Future<List<QueryProduct>> fetchListings() async {
    try {
      final products = await _config.db.collection('marketplace').get();

      return products.docs
          .map((e) =>
              QueryProduct(id: e.id, product: Product.fromJson(e.data())))
          .toList();
    } catch (e) {
      _config.logger
          .error('Failed to fetch listings: $e', e, StackTrace.current);
      throw ShopException('Failed to fetch listings: $e');
    }
  }

  @override
  Future<QueryProduct> fetchListing(String id) async {
    try {
      final product = await _config.db.collection('marketplace').doc(id).get();
      final data = product.data();

      if (data == null) {
        throw ShopException('No data found');
      }

      return QueryProduct(id: product.id, product: Product.fromJson(data));
    } catch (e) {
      _config.logger
          .error('Failed to fetch listing: $e', e, StackTrace.current);
      throw ShopException('Failed to fetch listing: $e');
    }
  }
}
