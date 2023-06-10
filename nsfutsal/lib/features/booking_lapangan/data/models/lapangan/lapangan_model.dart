import 'package:freezed_annotation/freezed_annotation.dart';

part 'lapangan_model.freezed.dart';
part 'lapangan_model.g.dart';

@freezed
class Lapangan with _$Lapangan {
  factory Lapangan({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String description,
    @Default('') String image,
    @Default('') String status,
  }) = _Lapangan;

  factory Lapangan.fromJson(Map<String, Object?> json) => _$LapanganFromJson(json);
}
