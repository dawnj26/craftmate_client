import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:config_repository/config_repository.dart';
import 'package:dio/dio.dart';
import 'package:shop_repository/shop_repository.dart';
import 'package:user_repository/user_repository.dart';

abstract class IShopRepository {
  Future<List<QueryProduct>> fetchListings({
    String? category,
  });
  Future<List<QueryProduct>> fetchUserListings(
    int userId, {
    String? category,
  });
  Future<List<QueryProduct>> fetchSavedListings(int userId);
  Future<QueryProduct> fetchListing(String id, [int? userId]);
  Future<void> publishListing(Product product,
      [List<String> networkImages = const []]);
  Future<QueryProduct> favoriteListing(String id, int userId);
  List<QueryProduct> getNearbyListings(
    List<QueryProduct> allListings,
    double userLat,
    double userLong,
    double radiusInKm,
  );
  Future<void> publishReview(int sellerId, Review review);
  Future<bool> isAlreadyReviewed(int sellerId, int userId);
  Future<List<QueryReview>> fetchReviews(int sellerId);
  Future<void> viewListing(String id, int userId);
  Future<ShopOverview> getSellerStats(int sellerId, {String? period});
  Future<void> markAsSold(String id);
  Future<void> deleteListing(String id);
  Future<void> updateListing(String id, Product product,
      [List<String> networkImages = const []]);
  Future<String> shareListing(String id);
  Future<List<QueryProduct>> searchListings(
    String query, {
    String? category,
    double? lat,
    double? lon,
    double? radius,
  });
}

class ShopRepository implements IShopRepository {
  final ConfigRepository _config;
  final UserRepository _userRepository;
  final String _baseUrl = '/shop';

  const ShopRepository(this._config, this._userRepository);

  Future<bool> _isFavorite(String id, int userId) async {
    final userDoc = _config.db.collection('users').doc(userId.toString());
    final docSnapshot = await userDoc.get();

    final favoriteListings =
        docSnapshot.data()?['favoriteListings'] as List<dynamic>? ?? [];

    return favoriteListings.contains(id);
  }

  @override
  Future<void> publishListing(Product product,
      [List<String> networkImages = const []]) async {
    try {
      final List<String> imageUrls = await _uploadImages(product.imageUrls);
      final newProduct = product.copyWith(
        imageUrls: [...networkImages, ...imageUrls],
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
  Future<QueryProduct> fetchListing(String id, [int? userId]) async {
    try {
      final product = await _config.db.collection(_baseUrl).doc(id).get();
      final data = product.data();
      final isFavorite = userId == null ? false : await _isFavorite(id, userId);

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

  @override
  Future<void> publishReview(int sellerId, Review review) async {
    try {
      await _config.db
          .collection('users/$sellerId/reviews')
          .add(review.toJson());
    } catch (e) {
      _config.logger
          .error('Failed to publish review: $e', e, StackTrace.current);
      throw ShopException('Failed to publish review: $e');
    }
  }

  @override
  Future<bool> isAlreadyReviewed(int sellerId, int userId) async {
    try {
      final reviews =
          await _config.db.collection('users/$sellerId/reviews').get();
      final isAlreadyReviewed =
          reviews.docs.any((e) => e.data()['userId'] == userId);
      return isAlreadyReviewed;
    } catch (e) {
      _config.logger.error(
          'Failed to check if already reviewed: $e', e, StackTrace.current);
      throw ShopException('Failed to check if already reviewed: $e');
    }
  }

  @override
  Future<List<QueryReview>> fetchReviews(int sellerId) async {
    try {
      final reviews =
          await _config.db.collection('users/$sellerId/reviews').get();
      final q = <QueryReview>[];

      for (final review in reviews.docs) {
        final data = review.data();
        final user = await _userRepository.getUserById(data['userId']);
        final queryReview = QueryReview(
          id: review.id,
          user: user,
          review: Review.fromJson(data),
        );
        q.add(queryReview);
      }

      return q;
    } catch (e) {
      _config.logger
          .error('Failed to fetch reviews: $e', e, StackTrace.current);
      throw ShopException('Failed to fetch reviews: $e');
    }
  }

  @override
  Future<void> viewListing(String id, int userId) async {
    try {
      await _config.db
          .collection('$_baseUrl/$id/views')
          .doc(userId.toString())
          .set({
        'viewedAt': DateTime.now(),
      }, SetOptions(merge: true));
    } catch (e) {
      _config.logger.error('Failed to view listing: $e', e, StackTrace.current);
      throw ShopException('Failed to view listing: $e');
    }
  }

  DateTime _getStartDate(String? period) {
    final now = DateTime.now();
    switch (period) {
      case 'weekly':
        return now.subtract(const Duration(days: 7));
      case 'monthly':
        return DateTime(now.year, now.month - 1, now.day);
      case 'yearly':
        return DateTime(now.year - 1, now.month, now.day);
      default:
        return DateTime(1970); // all time
    }
  }

  @override
  Future<ShopOverview> getSellerStats(int sellerId, {String? period}) async {
    try {
      final startDate = _getStartDate(period);

      // Get listings count
      final listingsQuery = await _config.db
          .collection(_baseUrl)
          .where('sellerId', isEqualTo: sellerId)
          // .where('createdAt', isGreaterThanOrEqualTo: startDate)
          .get();

      final listingsCount = listingsQuery.docs.where((e) {
        final listingDate = DateTime.parse(e.data()['createdAt'] as String);
        return listingDate.isAfter(startDate) ||
            listingDate.isAtSameMomentAs(startDate);
      }).length;

      // Get total views
      var totalViews = 0;
      for (var listing in listingsQuery.docs) {
        final listingData = listing.data();
        final listingDate = DateTime.parse(listingData['createdAt'] as String);

        if (listingDate.isBefore(startDate) ||
            listingDate.isAtSameMomentAs(startDate)) {
          continue;
        }

        final viewsQuery = await _config.db
            .collection('$_baseUrl/${listing.id}/views')
            .where('viewedAt', isGreaterThanOrEqualTo: startDate)
            .get();
        totalViews += viewsQuery.docs.length;
      }

      // Get average rating
      final reviewsQuery = await _config.db
          .collection('users/$sellerId/reviews')
          // .where('createdAt', isGreaterThanOrEqualTo: startDate)
          .get();

      double averageRating = 0;
      int reviewsCount = 0;
      for (var review in reviewsQuery.docs) {
        final reviewData = review.data();
        final dateString = reviewData['createdAt'] as String?;
        final reviewDate = dateString != null
            ? DateTime.parse(reviewData['createdAt'] as String)
            : DateTime.now();

        if (reviewDate.isBefore(startDate)) {
          continue;
        }

        averageRating += reviewData['rating'] as int;
        reviewsCount++;
      }

      averageRating = reviewsCount > 0 ? averageRating / reviewsCount : 0;

      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/user/followers/${period ?? 'all'}',
        method: 'GET',
        withAuthorization: true,
      );

      if (response.data == null) {
        throw ShopException('No response');
      }

      final totalFollowers = response.data!['data']['count'] as int;

      return ShopOverview(
        totalProducts: listingsCount,
        totalViews: totalViews,
        totalRating: averageRating,
        totalFollowers: totalFollowers,
      );
    } catch (e) {
      _config.logger
          .error('Failed to get seller stats: $e', e, StackTrace.current);
      throw ShopException('Failed to get seller stats: $e');
    }
  }

  @override
  Future<void> markAsSold(String id) async {
    try {
      await _config.db.collection(_baseUrl).doc(id).update({
        'soldAt': DateTime.now().toIso8601String(),
      });
    } catch (e) {
      _config.logger.error('Failed to mark as sold: $e', e, StackTrace.current);
      throw ShopException('Failed to mark as sold: $e');
    }
  }

  @override
  Future<void> deleteListing(String id) async {
    try {
      await _config.db.collection(_baseUrl).doc(id).delete();
    } catch (e) {
      _config.logger
          .error('Failed to delete listing: $e', e, StackTrace.current);
      throw ShopException('Failed to delete listing: $e');
    }
  }

  @override
  Future<void> updateListing(String id, Product product,
      [List<String> networkImages = const []]) async {
    try {
      if (product.imageUrls.isEmpty && networkImages.isEmpty) {
        throw ShopException('Please upload at least one image');
      }

      final List<String> imageUrls = product.imageUrls.isEmpty
          ? []
          : await _uploadImages(product.imageUrls);
      final updatedProduct = product.copyWith(
        imageUrls: [...networkImages, ...imageUrls],
      );

      await _config.db
          .collection(_baseUrl)
          .doc(id)
          .update(updatedProduct.toJson());
    } catch (e) {
      _config.logger
          .error('Failed to update listing: $e', e, StackTrace.current);
      throw ShopException('Failed to update listing: $e');
    }
  }

  @override
  Future<String> shareListing(String id) async {
    try {
      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/shop/$id/share',
        method: 'GET',
        withAuthorization: true,
      );

      if (response.data == null) {
        throw ShopException('No response');
      }

      return response.data!['data']['share_link'];
    } on RequestException catch (e) {
      throw ShopException('Failed to share listing: $e');
    }
  }

  @override
  Future<List<QueryProduct>> searchListings(
    String query, {
    String? category,
    double? lat,
    double? lon,
    double? radius,
  }) async {
    try {
      var productsRef = category != null
          ? _config.db
              .collection(_baseUrl)
              .where('category', isEqualTo: category)
          : _config.db.collection(_baseUrl);

      final products = await productsRef.get();
      var results = products.docs
          .map((e) =>
              QueryProduct(id: e.id, product: Product.fromJson(e.data())))
          .where((product) =>
              product.product.name
                  .toLowerCase()
                  .contains(query.toLowerCase()) ||
              product.product.description
                  .toLowerCase()
                  .contains(query.toLowerCase()))
          .toList();

      if (lat != null && lon != null && radius != null) {
        results = getNearbyListings(results, lat, lon, radius);
      }

      return results;
    } catch (e) {
      _config.logger
          .error('Failed to search listings: $e', e, StackTrace.current);
      throw ShopException('Failed to search listings: $e');
    }
  }
}
