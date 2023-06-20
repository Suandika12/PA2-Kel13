import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/event_model.dart';

part 'event_state.freezed.dart';

@freezed
class EventState with _$EventState {
  const factory EventState.initial() = EventInitialState;
  const factory EventState.loading() = EventLoadingState;
  const factory EventState.error(String message) = EventErrorState;
  const factory EventState.loadedState({required EventList eventList}) =
      EventLoadedState;
}
