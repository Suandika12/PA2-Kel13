import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../../../core/service_locator.dart';
import '../../domain/repository/event_repository.dart';

import '../datasouce/event_remote_source.dart';
import '../models/event_model.dart';

class EventRepositoryImpl extends EventRepository {
  @override
  Future<Either<Failure, EventList>> getEventsFromServer() {
    return serviceLocator<EventsRemoteDataSource>() .getEventsFromServer();
  }
}
