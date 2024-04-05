import 'dart:io';

class FilesModel {
  File file;
  String? name;
  String? extension;
  String? fileType;

  FilesModel({
    required this.file,
    this.extension,
    this.name,
    this.fileType,
  });

  factory FilesModel.fromJson(Map<dynamic, dynamic> json) => FilesModel(
        file: json["file"],
        name: json["name"],
        extension: json["extension"] ?? '',
        fileType: json["file_type"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "file": file,
        "name": name,
        "extension": extension,
        "file_type": fileType,
      };
}
