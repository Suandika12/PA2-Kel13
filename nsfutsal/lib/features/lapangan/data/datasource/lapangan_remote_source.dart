import 'package:dartz/dartz.dart';
import 'package:nsfutsal/core/request.dart';
import 'package:nsfutsal/core/service_locator.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/failure.dart';
import '../models/lapangan/lapangan_model.dart';

abstract class LapanganRemoteDataSource {
  Future<Either<Failure, LapanganList>> getLapangansFromServer();
}

class LapanganRemoteDataSourceImpl implements LapanganRemoteDataSource {
  final Request request = serviceLocator<Request>();
  @override
  Future<Either<Failure, LapanganList>> getLapangansFromServer() async {
    try {
      final response = await request.get('/rooms');
      if (response.statusCode == 200) {
        LapanganList lapanganList = [];
        final lapanganListMap = response.data['data'];
        for (var lapangan in lapanganListMap) {
          try {
            lapanganList.add(Lapangan.fromJson(Lapangan));
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
