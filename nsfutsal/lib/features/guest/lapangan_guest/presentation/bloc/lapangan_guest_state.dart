import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/lapangan/lapangan_guest_model.dart';

part 'lapangan_guest_state.freezed.dart';

@freezed
class LapanganGuestState with _$LapanganGuestState {
  const factory LapanganGuestState.initial() = LapanganInitialState;
  const factory LapanganGuestState.loading() = LapanganLoadingState;
  const factory LapanganGuestState.error(String message) = LapanganGuestErrorState;
  const factory LapanganGuestState.loadedState(
      {required LapanganGuestList lapanganList}) = LapanganGuestLoadedState;
}
