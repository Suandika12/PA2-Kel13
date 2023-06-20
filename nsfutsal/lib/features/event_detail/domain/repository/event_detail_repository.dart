import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../data/models/event_model.dart';

abstract class EventDetailRepository {
  Future<Either<Failure, Event>> getEventFromServer(Event event);
}
