import 'package:freezed_annotation/freezed_annotation.dart';

part 'lapangan_model.freezed.dart';
part 'lapangan_model.g.dart';

typedef LapanganList = List<Lapangan>;

@freezed
class Lapangan with _$Lapangan {
  factory Lapangan({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String opsiPembayaran,
    @Default('') String image,
    @Default('') String status,
    @Default(0) int price,
  }) = _Lapangan;

  factory Lapangan.fromJson(Map<String, Object?> json) =>
      _$LapanganFromJson(json);
}
