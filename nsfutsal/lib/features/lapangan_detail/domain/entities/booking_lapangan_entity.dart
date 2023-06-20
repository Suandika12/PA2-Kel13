import '../../data/models/lapangan_model.dart';

class BookingLapanganEntity {
  final Lapangan lapangan;
  final String opsiPembayaran;
  final String startTime;
  final String endTime;
  final int durasi;
  

  BookingLapanganEntity({
    required this.lapangan,
    required this.opsiPembayaran,
    required this.startTime,
    required this.endTime,
    required this.durasi,
  });
}
