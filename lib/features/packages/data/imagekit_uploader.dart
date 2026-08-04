import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

import 'media_api.dart';

/// Picks an image and uploads via backend ImageKit proxy (works once env is set).
class ImageKitUploader {
  ImageKitUploader(this._mediaApi);

  final MediaApi _mediaApi;
  final ImagePicker _picker = ImagePicker();

  Future<String?> pickAndUpload({
    ImageSource source = ImageSource.gallery,
  }) async {
    final picked = await _picker.pickImage(
      source: source,
      maxWidth: 1600,
      imageQuality: 85,
    );
    if (picked == null) return null;

    final bytes = await picked.readAsBytes();
    final result = await _mediaApi.uploadFile(
      bytes: bytes,
      filename: picked.name.isNotEmpty
          ? picked.name
          : 'cover-${DateTime.now().millisecondsSinceEpoch}.jpg',
    );
    return result.url;
  }

  /// Direct client upload to ImageKit using auth params (optional path).
  Future<String> uploadDirect(File file) async {
    final auth = await _mediaApi.getImageKitAuth();
    final uri = Uri.parse('https://upload.imagekit.io/api/v1/files/upload');
    final request = http.MultipartRequest('POST', uri)
      ..fields['publicKey'] = auth.publicKey
      ..fields['signature'] = auth.signature
      ..fields['expire'] = auth.expire.toString()
      ..fields['token'] = auth.token
      ..fields['fileName'] = file.uri.pathSegments.last
      ..fields['folder'] = '/pantri/packages'
      ..files.add(await http.MultipartFile.fromPath('file', file.path));

    final streamed = await request.send();
    final body = await streamed.stream.bytesToString();
    if (streamed.statusCode < 200 || streamed.statusCode >= 300) {
      throw Exception('ImageKit upload failed: $body');
    }
    final urlMatch = RegExp(r'"url"\s*:\s*"([^"]+)"').firstMatch(body);
    if (urlMatch == null) {
      throw Exception('ImageKit response missing url');
    }
    return urlMatch.group(1)!;
  }
}

final imageKitUploaderProvider = Provider<ImageKitUploader>((ref) {
  return ImageKitUploader(ref.watch(mediaApiProvider));
});
