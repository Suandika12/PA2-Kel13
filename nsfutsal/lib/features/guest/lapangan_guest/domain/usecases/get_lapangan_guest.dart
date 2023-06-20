import 'package:dartz/dartz.dart';
import 'package:nsfutsal/core/service_locator.dart';

import '/../../../../core/failure.dart';

import '../../data/models/lapangan/lapangan_guest_model.dart';
import '../repository/lapangan_guest_repository.dart';

class GetLapangansGuestFromServer {
  Future<Either<Failure, LapanganGuestList>> getLapangansFromServer() {
    return serviceLocator<LapanganGuestRepository>().getLapangansFromServer();
  }
}
