import 'package:nsfutsal/features/booking_lapangan/data/models/booking_lapangan/bookinglapangan_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'booking_lapangan_event.freezed.dart';

@freezed
abstract class BookingLapanganEvent with _$BookingLapanganEvent {
  const factory BookingLapanganEvent.getBookingLapangansFromServer(String status) =
      GetBookingLapangansEvent;
  const factory BookingLapanganEvent.cancelBooking(
      String status, BookingLapangan bookingLapangan) = CancelBookingEvent;
}
