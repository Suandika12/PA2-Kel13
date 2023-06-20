import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/service_locator.dart';
import '../../data/models/user/user_model.dart';
import '../../domain/repository/lapangan_repository.dart';
import '../../domain/usecases/get_local_user.dart';
import 'lapangan_event.dart';
import 'lapangan_state.dart';

class LapanganBloc extends Bloc<LapanganEvent, LapanganState> {
  LapanganBloc() : super(const LapanganInitialState()) {
    on<GetDataEvent>(
      (event, emit) async {
        var userResult = await serviceLocator<GetLocalUserUsecase>()
            .getUserFromLocalStorage();
        var result =
            await serviceLocator<LapanganRepository>().getLapangansFromServer();
        result.fold(
          (failure) {
            emit(LapanganState.error(failure.message));
          },
          (data) {
            emit(
              LapanganState.loadedState(
                lapanganList: data,
                user: userResult.getOrElse(
                  () => User(),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
