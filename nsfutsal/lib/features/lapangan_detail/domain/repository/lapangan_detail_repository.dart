import 'package:dartz/dartz.dart';
import 'package:nsfutsal/features/lapangan_detail/data/models/dropped_file_model.dart';

import '../../../../core/failure.dart';
import '../../data/models/lapangan_model.dart';
import '../entities/booking_lapangan_entity.dart';

abstract class LapanganDetailRepository {
  Future<Either<Failure, Lapangan>> getLapanganDetailFromServer(
      {required int lapanganId});
  Future<Either<Failure, String>> bookingLapangan(
      {required BookingLapanganEntity bookingLapanganEntity,
      DroppedFile? droppedFile});
}
