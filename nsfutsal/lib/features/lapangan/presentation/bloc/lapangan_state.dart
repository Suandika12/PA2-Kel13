import 'package:nsfutsal/features/lapangan/data/models/lapangan/lapangan_model.dart';
import 'package:nsfutsal/features/lapangan/data/models/user/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/lapangan/lapangan_model.dart';

part 'lapangan_state.freezed.dart';

@freezed
class LapanganState with _$LapanganState {
  const factory LapanganState.initial() = LapanganInitialState;
  const factory LapanganState.loading() = LapanganLoadingState;
  const factory LapanganState.error(String message) = LapanganErrorState;
  const factory LapanganState.loadedState(
      {required LapanganList lapanganList, required User user}) = LapanganLoadedState;
}
