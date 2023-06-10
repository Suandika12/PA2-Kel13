import 'package:nsfutsal/features/booking_lapangan/data/models/booking_lapangan/bookinglapangan_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'booking_lapangan_state.freezed.dart';

@freezed
class BookingLapanganState with _$BookingLapanganState {
  const factory BookingLapanganState.initial() = BookingLapanganInitialState;
  const factory BookingLapanganState.loading() = BookingLapanganLoadingState;
  const factory BookingLapanganState.error(String message) = BookingLapanganErrorState;
  const factory BookingLapanganState.loaded(
      {required BookingLapanganList bookingLapanganList}) = BookingLapanganLoadedState;
  const factory BookingLapanganState.cancelled(String message) =
      BookingLapanganCancelledState;
}
