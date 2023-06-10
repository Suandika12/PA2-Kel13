import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/service_locator.dart';
import '../../domain/usecases/cancel_booking.dart';
import '../../domain/usecases/get_booking_lapangan.dart';
import 'booking_lapangan_event.dart';
import 'booking_lapangan_state.dart';

class BookingLapanganBloc extends Bloc<BookingLapanganEvent, BookingLapanganState> {
  BookingLapanganBloc() : super(const BookingLapanganInitialState()) {
    on<GetBookingLapangansEvent>(
      (event, emit) async {
        emit(const BookingLapanganState.loading());
        var result = await serviceLocator<GetBookingLapangansFromServer>()
            .getBookingLapangansFromServer(event.status);
        result.fold(
          (failure) {
            emit(BookingLapanganState.error(failure.message));
          },
          (data) {
            emit(BookingLapanganState.loaded(bookingLapanganList: data));
          },
        );
      },
    );
    on<CancelBookingEvent>(
      (event, emit) async {
        var result = await serviceLocator<CancelBookingUseCase>()
            .cancelBooking(event.bookingLapangan);
        result.fold(
          (failure) {
            emit(BookingLapanganState.error(failure.message));
          },
          (data) {
            emit(BookingLapanganState.cancelled(data));
          },
        );
        // back to previous state
        debugPrint(event.status);
        var bookingLapanganResult =
            await serviceLocator<GetBookingLapangansFromServer>()
                .getBookingLapangansFromServer(event.status);
        bookingLapanganResult.fold(
          (failure) {
            emit(BookingLapanganState.error(failure.message));
          },
          (data) {
            emit(BookingLapanganState.loaded(bookingLapanganList: data));
          },
        );
      },
    );
  }
}
