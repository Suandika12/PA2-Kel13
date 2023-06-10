import 'package:dartz/dartz.dart';
import 'package:nsfutsal/core/service_locator.dart';
import 'package:nsfutsal/features/lapangan/data/models/user/user_model.dart';
import 'package:nsfutsal/features/lapangan/domain/repository/lapangan_repository.dart';

import '../../../../core/failure.dart';
import '../datasource/lapangan_remote_source.dart';
import '../datasource/lapangan_user_local_data_source.dart';
import '../models/lapangan/lapangan_model.dart';

class LapanganRepositoryImpl extends LapanganRepository {
  @override
  Future<Either<Failure, User>> getUserFromLocalStorage() {
    return serviceLocator<LapanganLocalUserDataSource>().getUserFromLocalStorage();
  }

  @override
  Future<Either<Failure, LapanganList>> getLapangansFromServer() {
    return serviceLocator<LapanganRemoteDataSource>().getLapangansFromServer();
  }
}
