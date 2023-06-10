import 'package:freezed_annotation/freezed_annotation.dart';

import '../lapangan/lapangan_model.dart';
part 'bookinglapangan_model.freezed.dart';
part 'bookinglapangan_model.g.dart';

typedef BookingLapanganList = List<BookingLapangan>;

@freezed
class BookingLapangan with _$BookingLapangan {
  const factory BookingLapangan({
    required int id,
    required Lapangan lapangan,
    required String description,
    required String status,
    required String startDate,
    required String endDate,
    required String createdAt,
    required String updatedAt,
  }) = _BookingLapangan;

  factory BookingLapangan.fromJson(Map<String, dynamic> json) =>
      _$BookingLapanganFromJson(json);
}
