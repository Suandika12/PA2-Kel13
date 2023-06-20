import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../../../core/service_locator.dart';
import '../../domain/repository/event_detail_repository.dart';

import '../datasouce/event_detail_remote_source.dart';
import '../models/event_model.dart';

class EventDetailRepositoryImpl extends EventDetailRepository {
  @override
  Future<Either<Failure, Event>> getEventFromServer(Event event) {
    return serviceLocator<EventDetailRemoteDataSource>()
        .getEventFromServer(event);
  }
}
