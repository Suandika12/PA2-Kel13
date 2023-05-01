import 'package:dartz/dartz.dart';
import 'package:nsfutsal/core/failure.dart';
import 'package:nsfutsal/core/service_locator.dart';
import 'package:nsfutsal/features/request_room/data/models/request_room/request_room_model.dart';

import '../repository/request_room_repository.dart';

class CancelRequestUseCase {
  Future<Either<Failure, String>> cancelRequest(RequestRoom requestRoom) {
    return serviceLocator<RequestRoomRepository>().cancelRequest(requestRoom);
  }
}
