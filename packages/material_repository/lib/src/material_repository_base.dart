import 'package:config_repository/config_repository.dart';
import 'package:dio/dio.dart';
import 'package:material_repository/material_repository.dart';

abstract class IMaterialRepository {
  Future<List<Material>> getMaterials([int? categoryId]);
  Future<String> uploadMaterialImage(String path);
  Future<List<MaterialCategory>> getMaterialCategories();
  Future<Material> getMaterial(int id);
  Future<void> addMaterial(Material material);
  Future<void> updateMaterial(Material material);
  Future<void> deleteMaterial(int id);
  Future<List<Material>> deleteMaterials(List<int> ids);
  Future<List<Material>> searchMaterials(String query);
}

class MaterialRepository implements IMaterialRepository {
  const MaterialRepository({required ConfigRepository config})
      : _config = config;

  final ConfigRepository _config;

  @override
  Future<List<Material>> searchMaterials(String query) async {
    try {
      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/materials/search',
        method: 'GET',
        queryParameters: {
          'q': query,
        },
        withAuthorization: true,
      );

      if (response.data == null) {
        throw MaterialException(message: 'Response is null');
      }
      final materialsJson = response.data!['data'] as List<dynamic>;

      return materialsJson.map((e) => Material.fromJson(e)).toList();
    } on RequestException catch (e) {
      throw MaterialException(message: e.message);
    }
  }

  @override
  Future<List<Material>> deleteMaterials(List<int> ids) async {
    try {
      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/materials/delete',
        method: 'DELETE',
        data: {'materials': ids},
        withAuthorization: true,
      );

      if (response.data == null) {
        throw MaterialException(message: 'No data found');
      }

      final materialsJson = response.data!['data'] as List<dynamic>;

      final List<Material> materials =
          materialsJson.map((material) => Material.fromJson(material)).toList();

      return materials;
    } on RequestException catch (e) {
      throw MaterialException(message: e.message);
    }
  }

  @override
  Future<void> addMaterial(Material material) async {
    try {
      await _config.makeRequest<void>(
        '/material/create',
        method: 'POST',
        data: {
          'name': material.name,
          'description': material.description,
          'quantity': material.quantity,
          'category': material.materialCategory.id,
          'image_url': material.imageUrl,
        },
        withAuthorization: true,
      );
    } on RequestException catch (e) {
      throw MaterialException(message: e.message);
    }
  }

  @override
  Future<void> deleteMaterial(int id) async {
    try {
      await _config.makeRequest<void>(
        '/material/$id/delete',
        method: 'DELETE',
        withAuthorization: true,
      );
    } on RequestException catch (e) {
      throw MaterialException(message: e.message);
    }
  }

  @override
  Future<Material> getMaterial(int id) async {
    try {
      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/material/$id',
        method: 'GET',
      );

      if (response.data == null) {
        throw MaterialException(message: 'No data found');
      }

      final materialJson = response.data!['data'] as Map<String, dynamic>;

      final Material material = Material.fromJson(materialJson);

      return material;
    } on RequestException catch (e) {
      throw MaterialException(message: e.message);
    }
  }

  @override
  Future<List<Material>> getMaterials([
    int? categoryId,
    MaterialSort sort = MaterialSort.lastModified,
    SortOrder order = SortOrder.desc,
  ]) async {
    try {
      final queryParams = categoryId != null
          ? {
              'category_id': categoryId,
              'sort_by': sort.value,
              'order_by': order.value
            }
          : {'sort_by': sort.value, 'order_by': order.value};

      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/materials/user',
        method: 'GET',
        queryParameters: queryParams,
        withAuthorization: true,
      );

      if (response.data == null) {
        throw MaterialException(message: 'No data found');
      }

      final materialsJson = response.data!['data'] as List<dynamic>;

      final List<Material> materials =
          materialsJson.map((material) => Material.fromJson(material)).toList();

      return materials;
    } on RequestException catch (e) {
      throw MaterialException(message: e.message);
    }
  }

  @override
  Future<void> updateMaterial(Material material) async {
    try {
      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/material/${material.id}/edit',
        method: 'PUT',
        data: {
          'name': material.name,
          'description': material.description,
          'category_id': material.materialCategory.id,
          'quantity': material.quantity,
          'image_url': material.imageUrl,
        },
        withAuthorization: true,
      );

      if (response.data == null) {
        throw MaterialException(message: 'No data found');
      }
    } on RequestException catch (e) {
      throw MaterialException(message: e.message);
    }
  }

  @override
  Future<List<MaterialCategory>> getMaterialCategories() async {
    try {
      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/material-categories',
        method: 'GET',
      );

      if (response.data == null) {
        throw MaterialException(message: 'No data found');
      }

      final categoryJson = response.data!['data'] as List<dynamic>;

      final List<MaterialCategory> categories = categoryJson
          .map((category) => MaterialCategory.fromJson(category))
          .toList();

      return categories;
    } on RequestException catch (e) {
      throw MaterialException(message: e.message);
    }
  }

  @override
  Future<String> uploadMaterialImage(String path) async {
    final filename = path.split('/').last;

    try {
      final formData = FormData.fromMap({
        'image': await MultipartFile.fromFile(path, filename: filename),
      });

      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/project/image/upload',
        method: 'POST',
        data: formData,
        withAuthorization: true,
      );

      if (response.data == null) {
        throw MaterialException(message: 'No response');
      }

      return response.data!['data']['image_url'];
    } on RequestException catch (e) {
      _config.logger.error(e.message);
      throw MaterialException(message: e.message);
    } on UnsupportedError catch (_) {
      _config.logger.error('Unsupported file');
      throw MaterialException(message: 'Unsupported file');
    }
  }
}
