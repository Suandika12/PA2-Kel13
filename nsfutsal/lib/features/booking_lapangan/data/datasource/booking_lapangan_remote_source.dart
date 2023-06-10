import 'package:dartz/dartz.dart';
import 'package:nsfutsal/core/Request.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/failure.dart';
import '../../../../core/service_locator.dart';
import '../models/booking_lapangan/bookinglapangan_model.dart';

abstract class BookingLapanganRemoteDataSource {
  Future<Either<Failure, BookingLapanganList>> getBookingLapangansFromServer(
      String status);
  Future<Either<Failure, String>> cancelBooking(BookingLapangan bookingLapangan);
}

class BookingLapanganRemoteDataSourceImpl implements BookingLapanganRemoteDataSource {
  final Request request = serviceLocator<Request>();

  @override
  Future<Either<Failure, BookingLapanganList>> getBookingLapangansFromServer(
      String status) async {
    try {
      var response = await request.get('/booking-lapangans?status=$status');
      if (response.statusCode == 200) {
        try {
          final BookingLapanganList bookingLapanganList = [];
          final bookingLapanganListMap = response.data['data'];
          try {
            for (var item in bookingLapanganListMap) {
              bookingLapanganList.add(BookingLapangan.fromJson(item));
            }
          } catch (e) {
            debugPrint(e.toString());
            return const Left(
              ParsingFailure('Unable to parse the response'),
            );
          }
          return Right(bookingLapanganList);
        } catch (e) {
          return const Left(
            ParsingFailure('Unable to parse the response'),
          );
        }
      } else {
        return Left(
          ConnectionFailure(response.data['message']),
        );
      }
    } catch (e) {
      return const Left(
        ParsingFailure('Unable to parse the response'),
      );
    }
  }

  @override
  Future<Either<Failure, String>> cancelBooking(BookingLapangan bookingLapangan) async {
    try {
      var response =
          await request.put('/booking-lapangans/cancel/${bookingLapangan.id}');
      if (response.statusCode == 200) {
        return Right(response.data['meta']['message']);
      } else {
        return Left(ConnectionFailure(response.data['meta']['message']));
      }
    } catch (e) {
      return const Left(
        ParsingFailure('Unable to parse the response'),
      );
    }
  }
}
