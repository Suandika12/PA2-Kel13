  import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../data/models/lapangan/lapangan_model.dart';
import '../../data/models/user/user_model.dart';

abstract class LapanganRepository {
  Future<Either<Failure, User>> getUserFromLocalStorage();
  Future<Either<Failure, LapanganList>> getLapangansFromServer();
}
