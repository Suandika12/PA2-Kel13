import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/event_model.dart';

part 'event_detail_state.freezed.dart';

@freezed
class EventDetailState with _$EventDetailState {
  const factory EventDetailState.initial() = EventDetailInitialState;
  const factory EventDetailState.loading() = EventDetailLoadingState;
  const factory EventDetailState.error(String message) = EventDetailErrorState;
  const factory EventDetailState.loadedState({required Event event}) =
      EventDetailLoadedState;
}
