import 'package:freezed_annotation/freezed_annotation.dart';
part 'lapangan_guest_event.freezed.dart';

@freezed
class LapanganGuestEvent with _$LapanganGuestEvent {
  const factory LapanganGuestEvent.getData() = GetDataEvent;
}
