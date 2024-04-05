import 'dart:core';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

import '../files_model.dart';

class Utils {
  Utils._();

  static Future<FilesModel?> pickImage(String source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(
      source: source == 'GALLERY' ? ImageSource.gallery : ImageSource.camera,
      imageQuality: 50,
    );

    if (pickedFile != null) {
      return FilesModel(
        file: File(pickedFile.path),
        name: pickedFile.name,
        extension:
            pickedFile.path.substring(pickedFile.path.lastIndexOf('.') + 1),
        fileType: 'image',
      );
    }
    return null;
  }
}
