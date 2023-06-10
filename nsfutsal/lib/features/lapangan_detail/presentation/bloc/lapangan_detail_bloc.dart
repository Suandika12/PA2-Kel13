import 'package:bloc/bloc.dart';

import '../../../../core/service_locator.dart';
import '../../domain/usecases/get_detail_lapangan.dart';
import '../../domain/usecases/booking_lapangan.dart';
import 'lapangan_detail_event.dart';
import 'lapangan_detail_state.dart';

class LapanganDetailBloc extends Bloc<LapanganDetailEvent, LapanganDetailState> {
  LapanganDetailBloc() : super(const LapanganDetailInitialState()) {
    on<GetLapanganDetailEvent>((event, emit) async {
      emit(const LapanganDetailLoadingState());
      var result = await serviceLocator<GetLapanganDetailFromServer>()
          .getLapanganDetailFromServer(LapanganId: event.lapanganId);
      result.fold(
        (failure) {
          emit(LapanganDetailErrorState(failure.message));
        },
        (data) {
          emit(LapanganDetailLoadedState(lapangan: data));
        },
      );
    });
    on<RequestLapanganEvent>((event, emit) async {
      emit(const LapanganDetailLoadingState());
      var result = await serviceLocator<BookingLapanganUseCase>()
          .bookingLapangan(bookingLapanganEntity: event.requestLapanganEntity);
      result.fold(
        (failure) {
          emit(LapanganDetailErrorState(failure.message));
        },
        (data) {
          emit(LapanganDetailRequestedState(message: data));
        },
      );
      // back to loaded state
      emit(LapanganDetailLoadedState(lapangan: event.requestLapanganEntity.lapangan));
    });
  }
}
