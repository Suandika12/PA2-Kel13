import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../../../core/service_locator.dart';
import '../../data/models/lapangan_model.dart';
import '../repository/lapangan_detail_repository.dart';

class GetLapanganDetailFromServer {
  Future<Either<Failure, Lapangan>> getLapanganDetailFromServer(
      {required int LapanganId}) async {
    return serviceLocator<LapanganDetailRepository>()
        .getLapanganDetailFromServer(lapanganId: LapanganId);
  }
}
