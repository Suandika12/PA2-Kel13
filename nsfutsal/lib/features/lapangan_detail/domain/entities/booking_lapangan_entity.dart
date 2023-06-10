import '../../data/models/lapangan_model.dart';

class BookingLapanganEntity {
  final Lapangan lapangan;
  final String description;
  final DateTime startDate;
  final DateTime endDate;

  BookingLapanganEntity({
    required this.lapangan,
    required this.description,
    required this.startDate,
    required this.endDate,
  });
}
