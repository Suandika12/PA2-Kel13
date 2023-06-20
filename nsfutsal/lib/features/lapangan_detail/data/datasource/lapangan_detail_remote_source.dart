import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:nsfutsal/core/Request.dart';
import 'package:nsfutsal/core/service_locator.dart';
import 'package:nsfutsal/features/lapangan_detail/data/models/dropped_file_model.dart';
import 'package:nsfutsal/features/lapangan_detail/data/models/lapangan_model.dart';
import '../../../../core/failure.dart';
import '../../domain/entities/booking_lapangan_entity.dart';

abstract class LapanganDetailRemoteDataSource {
  Future<Either<Failure, Lapangan>> getLapanganDetailFromServer(
      {required int lapanganId});
  Future<Either<Failure, String>> bookingLapangan(
    BookingLapanganEntity bookingLapanganEntity,
    DroppedFile? droppedFile,
  );
}

class LapanganDetailRemoteDataSourceImpl
    implements LapanganDetailRemoteDataSource {
  @override
  Future<Either<Failure, Lapangan>> getLapanganDetailFromServer(
      {required int lapanganId}) async {
    try {
      final Request request = serviceLocator<Request>();
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
      BookingLapanganEntity bookingLapanganEntity,
      DroppedFile? droppedFile) async {
    try {
      final Request request = serviceLocator<Request>();
      request.updateContentType('multipart/form-data');
      FormData data = FormData.fromMap({
        'lapangan_id': bookingLapanganEntity.lapangan.id,
        'opsiPembayaran': bookingLapanganEntity.opsiPembayaran,
        'start_time': bookingLapanganEntity.startTime,
        'end_time': bookingLapanganEntity.endTime,
        'durasi': bookingLapanganEntity.durasi,
        'image': droppedFile?.name != null
            ? await MultipartFile.fromFile(
                droppedFile!.url,
                filename: droppedFile.name,
              )
            : null,
      });
      final response = await request.post(
        '/booking-lapangan/store',
        data: data,
      );
      if (response.statusCode == 200) {
        request.updateContentType('application/json');
        return Right(response.data['meta']['message']);
      } else {
        return Left(
          ConnectionFailure(response.data['meta']['message']),
        );
      }
    } catch (e) {
      return const Left(
        ParsingFailure('Please choose the file  '),
      );
    }
  }
}
