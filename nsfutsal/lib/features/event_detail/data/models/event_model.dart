import 'package:freezed_annotation/freezed_annotation.dart';
part 'event_model.freezed.dart';
part 'event_model.g.dart';

typedef EventList = List<Event>;

@freezed
class Event with _$Event {
  factory Event({
    required int id,
    required String title,
    required String start_date,
    required String end_date,
  }) = _Event;

  factory Event.fromJson(Map<String, Object?> json) => _$EventFromJson(json);
}
