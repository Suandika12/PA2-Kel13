import 'package:dartz/dartz.dart';
import 'package:nsfutsal/features/lapangan_detail/data/models/dropped_file_model.dart';
import 'package:nsfutsal/features/lapangan_detail/data/models/lapangan_model.dart';
import 'package:nsfutsal/features/lapangan_detail/domain/entities/booking_lapangan_entity.dart';

import '../../../../core/failure.dart';
import '../../../../core/service_locator.dart';
import '../../domain/repository/lapangan_detail_repository.dart';
import '../datasource/lapangan_detail_remote_source.dart';

class LapanganDetailRepositoryImpl extends LapanganDetailRepository {
  @override
  Future<Either<Failure, Lapangan>> getLapanganDetailFromServer(
      {required int lapanganId}) {
    return serviceLocator<LapanganDetailRemoteDataSource>()
        .getLapanganDetailFromServer(lapanganId: lapanganId);
  }

  @override
  Future<Either<Failure, String>> bookingLapangan({required BookingLapanganEntity bookingLapanganEntity,DroppedFile? droppedFile}) {
    return serviceLocator<LapanganDetailRemoteDataSource>()
        .bookingLapangan(bookingLapanganEntity, droppedFile);
  }
}
