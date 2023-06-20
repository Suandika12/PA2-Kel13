import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/event_model.dart';
part 'event_detail_event.freezed.dart';

@freezed
class EventDetailEvent with _$EventDetailEvent {
  const factory EventDetailEvent.getData(Event event) = GetDataEventDetail;
}
