import 'dart:math';

import 'package:config_repository/config_repository.dart';
import 'package:dio/dio.dart';
import 'package:shop_repository/src/exceptions/shop_exception.dart';
import 'package:shop_repository/src/models/product.dart';
import 'package:shop_repository/src/models/query_product.dart';

abstract class IShopRepository {
  Future<List<QueryProduct>> fetchListings({
    String? category,
  });
  Future<List<QueryProduct>> fetchUserListings(
    int userId, {
    String? category,
  });
  Future<List<QueryProduct>> fetchSavedListings(int userId);
  Future<QueryProduct> fetchListing(String id, int userId);
  Future<void> publishListing(Product product);
  Future<QueryProduct> favoriteListing(String id, int userId);
  List<QueryProduct> getNearbyListings(
    List<QueryProduct> allListings,
    double userLat,
    double userLong,
    double radiusInKm,
  );
}

class ShopRepository implements IShopRepository {
  final ConfigRepository _config;
  final String _baseUrl = '/shop';

  const ShopRepository(this._config);

  Future<bool> _isFavorite(String id, int userId) async {
    final userDoc = _config.db.collection('users').doc(userId.toString());
    final docSnapshot = await userDoc.get();

    final favoriteListings =
        docSnapshot.data()?['favoriteListings'] as List<dynamic>? ?? [];

    return favoriteListings.contains(id);
  }

  @override
  Future<void> publishListing(Product product) async {
    try {
      final List<String> imageUrls = await _uploadImages(product.imageUrls);
      final newProduct = product.copyWith(
        imageUrls: imageUrls,
      );

      await _config.db.collection(_baseUrl).add(newProduct.toJson());
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
  Future<List<QueryProduct>> fetchListings({
    String? category,
  }) async {
    try {
      final productsRef = _config.db.collection(_baseUrl);

      if (category != null) {
        final filtered =
            await productsRef.where('category', isEqualTo: category).get();
        return filtered.docs.map((e) {
          return QueryProduct(id: e.id, product: Product.fromJson(e.data()));
        }).toList();
      }

      final products = await productsRef.get();

      return products.docs.map((e) {
        return QueryProduct(id: e.id, product: Product.fromJson(e.data()));
      }).toList();
    } catch (e) {
      _config.logger
          .error('Failed to fetch listings: $e', e, StackTrace.current);
      throw ShopException('Failed to fetch listings: $e');
    }
  }

  @override
  Future<QueryProduct> fetchListing(String id, int userId) async {
    try {
      final product = await _config.db.collection(_baseUrl).doc(id).get();
      final data = product.data();
      final isFavorite = await _isFavorite(id, userId);

      if (data == null) {
        throw ShopException('No data found');
      }

      return QueryProduct(
        id: product.id,
        product: Product.fromJson(data),
        isFavorite: isFavorite,
      );
    } catch (e) {
      _config.logger
          .error('Failed to fetch listing: $e', e, StackTrace.current);
      throw ShopException('Failed to fetch listing: $e');
    }
  }

  @override
  Future<QueryProduct> favoriteListing(String id, int userId) async {
    try {
      final userDoc = _config.db.collection('users').doc(userId.toString());
      final docSnapshot = await userDoc.get();

      if (!docSnapshot.exists) {
        await userDoc.set({
          'favoriteListings': [],
          'createdAt': DateTime.now(),
        });
      }

      final favoriteListings = docSnapshot.exists
          ? (docSnapshot.data()?['favoriteListings'] as List<dynamic>? ?? [])
          : [];

      final isFavorite = favoriteListings.contains(id);

      if (isFavorite) {
        favoriteListings.remove(id);
      } else {
        favoriteListings.add(id);
      }

      await userDoc.update({'favoriteListings': favoriteListings});

      final product = await fetchListing(id, userId);
      return product.copyWith(isFavorite: !isFavorite);
    } catch (e) {
      _config.logger
          .error('Failed to favorite listing: $e', e, StackTrace.current);
      throw ShopException('Failed to favorite listing: $e');
    }
  }

  // Haversine formula to calculate distance between two coordinates
  double _calculateDistance(
    double startLat,
    double startLong,
    double endLat,
    double endLong,
  ) {
    const double earthRadius = 6371; // Earth's radius in kilometers

    double latDifference = _toRadians(endLat - startLat);
    double longDifference = _toRadians(endLong - startLong);

    double a = pow(sin(latDifference / 2), 2) +
        cos(_toRadians(startLat)) *
            cos(_toRadians(endLat)) *
            pow(sin(longDifference / 2), 2);

    double c = 2 * asin(sqrt(a));
    return earthRadius * c; // Returns distance in kilometers
  }

  double _toRadians(double degree) {
    return degree * (3.141592653589793 / 180);
  }

  // Get nearby listings within specified radius
  @override
  List<QueryProduct> getNearbyListings(
    List<QueryProduct> allListings,
    double userLat,
    double userLong,
    double radiusInKm,
  ) {
    List<QueryProduct> nearbyListings = allListings.where((product) {
      double distance = _calculateDistance(
        userLat,
        userLong,
        product.product.address.lat,
        product.product.address.lon,
      );

      return distance <= radiusInKm;
    }).toList();

    // Sort by distance
    // nearbyListings.sort((a, b) => a.distance!.compareTo(b.distance!));
    return nearbyListings;
  }

  @override
  Future<List<QueryProduct>> fetchUserListings(int userId,
      {String? category}) async {
    try {
      final productsRef = _config.db.collection(_baseUrl);

      if (category != null) {
        final filtered = await productsRef
            .where('category', isEqualTo: category)
            .where('sellerId', isEqualTo: userId)
            .get();
        return filtered.docs.map((e) {
          return QueryProduct(id: e.id, product: Product.fromJson(e.data()));
        }).toList();
      }

      final products =
          await productsRef.where('sellerId', isEqualTo: userId).get();

      return products.docs.map((e) {
        return QueryProduct(id: e.id, product: Product.fromJson(e.data()));
      }).toList();
    } catch (e) {
      _config.logger
          .error('Failed to fetch listings: $e', e, StackTrace.current);
      throw ShopException('Failed to fetch listings: $e');
    }
  }

  @override
  Future<List<QueryProduct>> fetchSavedListings(int userId) async {
    try {
      final userDoc = _config.db.collection('users').doc(userId.toString());
      final docSnapshot = await userDoc.get();

      if (!docSnapshot.exists) {
        await userDoc.set({
          'favoriteListings': [],
          'createdAt': DateTime.now(),
        });
      }

      final favoriteListings = docSnapshot.exists
          ? (docSnapshot.data()?['favoriteListings'] as List<dynamic>? ?? [])
          : [];

      final products = await _config.db.collection(_baseUrl).get();

      final savedListings =
          products.docs.where((e) => favoriteListings.contains(e.id)).map((e) {
        return QueryProduct(id: e.id, product: Product.fromJson(e.data()));
      }).toList();

      return savedListings;
    } catch (e) {
      _config.logger
          .error('Failed to fetch saved listings: $e', e, StackTrace.current);
      throw ShopException('Failed to fetch saved listings: $e');
    }
  }
}
