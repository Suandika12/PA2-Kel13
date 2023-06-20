import 'package:dartz/dartz.dart';
import '../../../../core/failure.dart';
import '../../../../core/Request.dart';
import '../../../../core/service_locator.dart';
import '../models/event_model.dart';

abstract class EventDetailRemoteDataSource {
  Future<Either<Failure, Event>> getEventFromServer(Event event);
}

class EventDetailRemoteDataSourceImpl extends EventDetailRemoteDataSource {
  @override
  Future<Either<Failure, Event>> getEventFromServer(Event event) async {
    try {
      final Request request = serviceLocator<Request>();
      final response = await request.get('/event');
      if (response.statusCode == 200) {
        return Right(Event.fromJson(response.data['data']));
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
