import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../../../core/service_locator.dart';

import '../../data/models/event_model.dart';
import '../repository/event_detail_repository.dart';

class GetEventFromServer {
  Future<Either<Failure, Event>> getEventFromServer(Event event) {
    return serviceLocator<EventDetailRepository>().getEventFromServer(event);
  }
}
