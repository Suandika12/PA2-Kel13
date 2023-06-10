import 'package:nsfutsal/features/lapangan_detail/domain/entities/booking_lapangan_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'lapangan_detail_event.freezed.dart';

@freezed
class LapanganDetailEvent with _$LapanganDetailEvent {
  const factory LapanganDetailEvent.getLapanganDetail({required int lapanganId}) =
      GetLapanganDetailEvent;
  const factory LapanganDetailEvent.requestLapangan(
      BookingLapanganEntity requestRoomEntity) = RequestLapanganEvent;
}
