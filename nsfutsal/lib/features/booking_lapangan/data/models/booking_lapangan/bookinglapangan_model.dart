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
    required String opsiPembayaran,
    required String status,
    required String startTime,
    required String endTime,
  }) = _BookingLapangan;

  factory BookingLapangan.fromJson(Map<String, dynamic> json) =>
      _$BookingLapanganFromJson(json);
}
