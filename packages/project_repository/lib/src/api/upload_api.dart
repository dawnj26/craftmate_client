import 'package:config_repository/config_repository.dart';
import 'package:dio/dio.dart';
import 'package:project_repository/src/exceptions/project_exception.dart';
import 'package:project_repository/src/models/models.dart';

final class UploadApi {
  final ConfigRepository _config;

  UploadApi({required ConfigRepository config}) : _config = config;

  Future<String> upload(String filePath, String uploadType) async {
    final filename = filePath.split('/').last;

    try {
      final api = await _config.apiWithAuthorization;
      final formData = FormData.fromMap({
        uploadType: await MultipartFile.fromFile(filePath, filename: filename),
      });

      final response = await api.post<Map<String, dynamic>>(
          '/project/$uploadType/upload',
          data: formData);

      if (response.data == null) {
        throw ProjectException(message: 'No response');
      }

      return response.data!['data']['${uploadType}_url'];
    } on TokenException catch (e) {
      _config.logger.error(e.message);
      throw ProjectException(message: e.message);
    } on UnsupportedError catch (_) {
      _config.logger.error('Unsupported file');
      throw ProjectException(message: 'Unsupported file');
    } on DioException catch (e) {
      final message = _config.getErrorMsg(e);
      _config.logger.error(e.response?.data);

      throw ProjectException(message: message);
    }
  }

  Future<String> uploadProjectImage(Project project, String imagePath) async {
    try {
      final api = await _config.apiWithAuthorization;
      final response = await api.post('/project/${project.id}/image/upload',
          data: FormData.fromMap({
            'image': await MultipartFile.fromFile(imagePath),
          }));

      if (response.data == null) {
        throw ProjectException(message: 'Response is null');
      }

      return response.data!['data']['image_url'];
    } on DioException catch (e) {
      final message = _config.getErrorMsg(e);

      throw ProjectException(message: message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }
}
