import 'package:dartz/dartz.dart';
import 'package:nsfutsal/core/failure.dart';
import 'package:nsfutsal/core/service_locator.dart';
import 'package:nsfutsal/features/booking_lapangan/data/models/booking_lapangan/bookinglapangan_model.dart';

import '../repository/bookinglapangan_repository.dart';

class CancelBookingUseCase {
  Future<Either<Failure, String>> cancelBooking(BookingLapangan bookingLapangan) {
    return serviceLocator<BookingLapanganRepository>().cancelBooking(bookingLapangan);
  }
}
