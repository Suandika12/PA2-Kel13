import 'package:dartz/dartz.dart';
import 'package:nsfutsal/core/service_locator.dart';

import '../../../../core/failure.dart';

import '../../data/models/lapangan/lapangan_model.dart';
import '../repository/lapangan_repository.dart';

class GetLapangansFromServer {
  Future<Either<Failure, LapanganList>> getLapangansFromServer() {
    return serviceLocator<LapanganRepository>().getLapangansFromServer();
  }
}
