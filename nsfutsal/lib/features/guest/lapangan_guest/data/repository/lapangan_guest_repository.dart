import 'package:dartz/dartz.dart';
import 'package:nsfutsal/core/service_locator.dart';
import 'package:nsfutsal/features/guest/lapangan_guest/domain/repository/lapangan_guest_repository.dart';


import '/../../../../core/failure.dart';
import '../datasource/lapangan_guest_remote_source.dart';
import '../models/lapangan/lapangan_guest_model.dart';

class LapanganGuestRepositoryImpl extends LapanganGuestRepository {
  @override
  Future<Either<Failure, LapanganGuestList>> getLapangansFromServer() {
    return serviceLocator<LapanganGuestRemoteDataSource>().getLapangansFromServer();
  }
}
