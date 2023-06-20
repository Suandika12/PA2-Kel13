import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/service_locator.dart';
import '../../domain/usercases/get_guest_products.dart';
import 'home_guest_event.dart';
import 'home_guest_state.dart';

class HomeGuestBloc extends Bloc<HomeGuestEvent, HomeGuestState> {
  HomeGuestBloc() : super(const HomeInitialState()) {
    on<GetDataEvent>(
      (event, emit) async {
        var result = await serviceLocator<GetProductsGuestFromServer>()
            .getProductsFromServer();
        result.fold(
          (failure) {
            emit(HomeGuestState.error(failure.message));
          },
          (data) {
            emit(
              HomeGuestState.loadedState(
                productGuestList: data,
              ),
            );
          },
        );
      },
    );
  }
}
