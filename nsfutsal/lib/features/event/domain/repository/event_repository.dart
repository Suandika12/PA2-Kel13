import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../../event/data/models/event_model.dart';

abstract class EventRepository {
  Future<Either<Failure, EventList>> getEventsFromServer();
}
