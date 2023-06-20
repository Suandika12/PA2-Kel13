import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../../../core/service_locator.dart';

import '../../data/models/event_model.dart';
import '../repository/event_repository.dart';


class GetEventsFromServer {
  Future<Either<Failure, EventList>> getEventsFromServer() {
    return serviceLocator<EventRepository>().getEventsFromServer();
  }
}