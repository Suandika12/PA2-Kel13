import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../../../core/service_locator.dart';
import '../../data/models/booking_lapangan/bookinglapangan_model.dart';
import '../repository/bookinglapangan_repository.dart';

class GetBookingLapangansFromServer {
  Future<Either<Failure, BookingLapanganList>> getBookingLapangansFromServer(
      String status) {
    return serviceLocator<BookingLapanganRepository>()
        .getBookingLapangansFromServer(status);
  }
}
