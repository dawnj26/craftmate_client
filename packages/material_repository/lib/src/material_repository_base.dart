import 'package:config_repository/config_repository.dart';
import 'package:dio/dio.dart';
import 'package:material_repository/material_repository.dart';

abstract class IMaterialRepository {
  Future<List<Material>> getMaterials();
  Future<String> uploadMaterialImage(String path);
  Future<List<MaterialCategory>> getMaterialCategories();
  Future<Material> getMaterial(String id);
  Future<void> addMaterial(Material material);
  Future<Material> updateMaterial(Material material);
  Future<void> deleteMaterial(String id);
}

class MaterialRepository implements IMaterialRepository {
  const MaterialRepository({required ConfigRepository config})
      : _config = config;

  final ConfigRepository _config;

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
  Future<void> deleteMaterial(String id) {
    // TODO: implement deleteMaterial
    throw UnimplementedError();
  }

  @override
  Future<Material> getMaterial(String id) {
    // TODO: implement getMaterial
    throw UnimplementedError();
  }

  @override
  Future<List<Material>> getMaterials() async {
    try {
      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/materials/user',
        method: 'GET',
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
  Future<Material> updateMaterial(Material material) {
    // TODO: implement updateMaterial
    throw UnimplementedError();
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
