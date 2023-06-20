import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nsfutsal/features/event/domain/repository/event_repository.dart';

import '../../../../core/service_locator.dart';

import 'event_event.dart';
import 'event_state.dart';

class EventBloc extends Bloc<EventEvent, EventState> {
  EventBloc() : super(const EventInitialState()) {
    on<GetDataEvent>(
      (event, emit) async {
        var result =
            await serviceLocator<EventRepository>().getEventsFromServer();
        result.fold(
          (failure) {
            emit(EventState.error(failure.message));
          },
          (data) {
            emit(
              EventState.loadedState(
                eventList: data,
              ),
            );
          },
        );
      },
    );
  }
}
