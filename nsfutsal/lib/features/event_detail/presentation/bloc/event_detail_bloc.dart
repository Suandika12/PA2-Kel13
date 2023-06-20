import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/service_locator.dart';

import '../../domain/repository/event_detail_repository.dart';
import 'event_detail_event.dart';
import 'event_detail_state.dart';

class EventDetailBloc extends Bloc<EventDetailEvent, EventDetailState> {
  EventDetailBloc() : super(const EventDetailInitialState()) {
    on<GetDataEventDetail>(
      (event, emit) async {
        var result = await serviceLocator<EventDetailRepository>()
            .getEventFromServer(event.event);
        result.fold(
          (failure) {
            emit(EventDetailState.error(failure.message));
          },
          (data) {
            emit(
              EventDetailState.loadedState(
                event: data,
              ),
            );
          },
        );
      },
    );
  }
}
