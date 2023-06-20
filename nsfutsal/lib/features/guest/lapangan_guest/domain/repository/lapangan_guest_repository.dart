  import 'package:dartz/dartz.dart';

import '/../../../../core/failure.dart';
import '../../data/models/lapangan/lapangan_guest_model.dart';

abstract class LapanganGuestRepository {
  Future<Either<Failure, LapanganGuestList>> getLapangansFromServer();
}
