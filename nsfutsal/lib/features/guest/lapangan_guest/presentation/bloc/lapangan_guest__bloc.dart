import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/service_locator.dart';
import '../../domain/repository/lapangan_guest_repository.dart';
import 'lapangan_guest_event.dart';
import 'lapangan_guest_state.dart';

class LapanganGuestBloc extends Bloc<LapanganGuestEvent, LapanganGuestState> {
  LapanganGuestBloc() : super(const LapanganInitialState()) {
    on<GetDataEvent>(
      (event, emit) async {
        var result =
            await serviceLocator<LapanganGuestRepository>().getLapangansFromServer();
        result.fold(
          (failure) {
            emit(LapanganGuestState.error(failure.message));
          },
          (data) {
            emit(
              LapanganGuestState.loadedState(
                lapanganList: data,
              ),
            );
          },
        );
      },
    );
  }
}
