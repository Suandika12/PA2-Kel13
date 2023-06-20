import 'package:freezed_annotation/freezed_annotation.dart';
part 'dropped_file_model.freezed.dart';
part 'dropped_file_model.g.dart';

@freezed
class DroppedFile with _$DroppedFile {
  const DroppedFile._();
  factory DroppedFile({
    required String name,
    required String url,
    required String mine,
    required int bytes,
    required String size,
  }) = _DroppedFile;

  String get sizeFormatted {
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(2)} KB';
    if (bytes < 1024 * 1024 * 1024) {
      return '${(bytes / 1024 / 1024).toStringAsFixed(2)} MB';
    }
    return '${(bytes / 1024 / 1024 / 1024).toStringAsFixed(2)} GB';
  }

  factory DroppedFile.fromJson(Map<String, Object?> json) =>
      _$DroppedFileFromJson(json);
}
