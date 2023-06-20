import 'package:dartz/dartz.dart';
import '../../../../core/failure.dart';
import '../../../../core/Request.dart';
import '../../../../core/service_locator.dart';
import '../models/event_model.dart';

abstract class EventsRemoteDataSource {
  Future<Either<Failure, EventList>> getEventsFromServer();
}

class EventsRemoteDataSourceImpl extends EventsRemoteDataSource {
  @override
  Future<Either<Failure, EventList>> getEventsFromServer() async {
    try {
      final Request request = serviceLocator<Request>();
      final response = await request.get('/event');
      if (response.statusCode == 200) {
        EventList eventList = [];
        final eventListMap = response.data['data'];
        for (var event in eventListMap) {
          try {
            eventList.add(Event.fromJson(event));
          } catch (e) {
            return const Left(
              ParsingFailure('Unable to parse the response'),
            );
          }
        }
        return Right(eventList);
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
