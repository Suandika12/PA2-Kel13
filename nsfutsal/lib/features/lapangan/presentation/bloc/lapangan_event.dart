import 'package:freezed_annotation/freezed_annotation.dart';
part 'lapangan_event.freezed.dart';

@freezed
class LapanganEvent with _$LapanganEvent {
  const factory LapanganEvent.getData() = GetDataEvent;
}
