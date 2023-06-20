import 'package:dartz/dartz.dart';
import 'package:nsfutsal/core/Request.dart';
import 'package:nsfutsal/core/service_locator.dart';

import '../../../../../core/failure.dart';
import '../models/lapangan/lapangan_guest_model.dart';

abstract class LapanganGuestRemoteDataSource {
  Future<Either<Failure, LapanganGuestList>> getLapangansFromServer();
}

class LapanganGuestRemoteDataSourceImpl
    implements LapanganGuestRemoteDataSource {
  final Request request = serviceLocator<Request>();
  @override
  Future<Either<Failure, LapanganGuestList>> getLapangansFromServer() async {
    try {
      final response = await request.get('/lapangan_guest');
      if (response.statusCode == 200) {
        LapanganGuestList lapanganList = [];
        final lapanganListMap = response.data['data'];
        for (var lapangan in lapanganListMap) {
          try {
            lapanganList.add(Lapangan.fromJson(lapangan));
          } catch (e) {
            return const Left(
              ParsingFailure('Unable to parse the response'),
            );
          }
        }
        return Right(lapanganList);
      }
      return Left(
        ConnectionFailure(response.data['message']),
      );
    } catch (e) {
      return const Left(
        ParsingFailure('Unable to parse the response'),
      );
    }
  }
}
