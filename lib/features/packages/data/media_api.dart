import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/dio_client.dart';
import '../domain/package_models.dart';

class MediaApi {
  MediaApi(this._dio);

  final Dio _dio;

  Future<ImageKitAuth> getImageKitAuth() async {
    try {
      final response =
          await _dio.get<Map<String, dynamic>>('/media/imagekit-auth');
      return ImageKitAuth.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<MediaUploadResult> uploadFile({
    required List<int> bytes,
    required String filename,
  }) async {
    try {
      final formData = FormData.fromMap({
        'file': MultipartFile.fromBytes(bytes, filename: filename),
      });
      final response = await _dio.post<Map<String, dynamic>>(
        '/media/upload',
        data: formData,
        options: Options(contentType: 'multipart/form-data'),
      );
      return MediaUploadResult.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }
}

final mediaApiProvider = Provider<MediaApi>((ref) {
  return MediaApi(ref.watch(dioProvider));
});
