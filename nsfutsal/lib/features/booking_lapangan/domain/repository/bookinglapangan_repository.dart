import 'package:dartz/dartz.dart';
import 'package:nsfutsal/core/failure.dart';
import 'package:nsfutsal/features/booking_lapangan/data/models/booking_lapangan/bookinglapangan_model.dart';

abstract class BookingLapanganRepository {
  Future<Either<Failure, BookingLapanganList>> getBookingLapangansFromServer(
      String status);
  Future<Either<Failure, String>> cancelBooking(BookingLapangan bookingLapangan);
}
