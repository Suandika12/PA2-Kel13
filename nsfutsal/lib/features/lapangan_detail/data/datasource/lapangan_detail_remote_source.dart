import 'package:dartz/dartz.dart';
import 'package:nsfutsal/core/Request.dart';
import 'package:nsfutsal/core/service_locator.dart';
import 'package:nsfutsal/features/lapangan_detail/data/models/lapangan_model.dart';

import '../../../../core/failure.dart';
import '../../domain/entities/booking_lapangan_entity.dart';

abstract class LapanganDetailRemoteDataSource {
  Future<Either<Failure, Lapangan>> getLapanganDetailFromServer(
      {required int lapanganId});
  Future<Either<Failure, String>> bookingLapangan(
      BookingLapanganEntity bookingLapanganEntity);
}

class LapanganDetailRemoteDataSourceImpl
    implements LapanganDetailRemoteDataSource {
  final Request request = serviceLocator<Request>();
  @override
  Future<Either<Failure, Lapangan>> getLapanganDetailFromServer(
      {required int lapanganId}) async {
    try {
      final response = await request.get('/lapangan/$lapanganId');
      if (response.statusCode == 200) {
        return Right(Lapangan.fromJson(response.data['data']));
      }
      return Left(
        ConnectionFailure(response.data['message']),
      );
    } catch (e) {
      return const Left(
        ParsingFailure('Unable to parse the response'),
      );
    }
  }

  @override
  Future<Either<Failure, String>> bookingLapangan(
      BookingLapanganEntity bookingLapanganEntity) async {
    try {
      final response = await request.post(
        '/booking-lapangans/store',
        data: {
          'lapangan_id': bookingLapanganEntity.lapangan.id,
          'description': bookingLapanganEntity.description,
          'start_date': bookingLapanganEntity.startDate.toIso8601String(),
          'end_date': bookingLapanganEntity.endDate.toIso8601String(),
        },
      );
      if (response.statusCode == 200) {
        return Right(response.data['meta']['message']);
      }
      return Left(
        ConnectionFailure(response.data['message']),
      );
    } catch (e) {
      return const Left(
        ParsingFailure('Unable to parse the response'),
      );
    }
  }
}
