import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/lapangan_model.dart';

part 'lapangan_detail_state.freezed.dart';

@freezed
class LapanganDetailState with _$LapanganDetailState {
  const factory LapanganDetailState.initial() = LapanganDetailInitialState;
  const factory LapanganDetailState.loading() = LapanganDetailLoadingState;
  const factory LapanganDetailState.error(String message) = LapanganDetailErrorState;
  const factory LapanganDetailState.loadedState({
    required Lapangan lapangan,
  }) = LapanganDetailLoadedState;
  const factory LapanganDetailState.requestedState({
    required String message,
  }) = LapanganDetailRequestedState;
}
