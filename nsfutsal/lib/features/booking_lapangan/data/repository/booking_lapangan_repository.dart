import 'package:nsfutsal/core/service_locator.dart';
import 'package:nsfutsal/features/booking_lapangan/data/datasource/booking_lapangan_remote_source.dart';
import 'package:nsfutsal/features/booking_lapangan/data/models/booking_lapangan/bookinglapangan_model.dart';

import 'package:nsfutsal/core/failure.dart';

import 'package:dartz/dartz.dart';

import '../../domain/repository/bookinglapangan_repository.dart';

class BookingLapanganRepositoryImpl extends BookingLapanganRepository {
  @override
  Future<Either<Failure, BookingLapanganList>> getBookingLapangansFromServer(
      String status) {
    return serviceLocator<BookingLapanganRemoteDataSource>()
        .getBookingLapangansFromServer(status);
  }

  @override
  Future<Either<Failure, String>> cancelBooking(BookingLapangan bookingLapangan) {
    return serviceLocator<BookingLapanganRemoteDataSource>()
        .cancelBooking(bookingLapangan);
  }
}
