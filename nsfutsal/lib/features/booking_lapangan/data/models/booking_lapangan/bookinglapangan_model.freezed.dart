// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookinglapangan_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookingLapangan _$BookingLapanganFromJson(Map<String, dynamic> json) {
  return _BookingLapangan.fromJson(json);
}

/// @nodoc
mixin _$BookingLapangan {
  int get id => throw _privateConstructorUsedError;
  Lapangan get lapangan => throw _privateConstructorUsedError;
  String get opsiPembayaran => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get startTime => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingLapanganCopyWith<BookingLapangan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingLapanganCopyWith<$Res> {
  factory $BookingLapanganCopyWith(
          BookingLapangan value, $Res Function(BookingLapangan) then) =
      _$BookingLapanganCopyWithImpl<$Res, BookingLapangan>;
  @useResult
  $Res call(
      {int id,
      Lapangan lapangan,
      String opsiPembayaran,
      String status,
      String startTime,
      String endTime});

  $LapanganCopyWith<$Res> get lapangan;
}

/// @nodoc
class _$BookingLapanganCopyWithImpl<$Res, $Val extends BookingLapangan>
    implements $BookingLapanganCopyWith<$Res> {
  _$BookingLapanganCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lapangan = null,
    Object? opsiPembayaran = null,
    Object? status = null,
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      lapangan: null == lapangan
          ? _value.lapangan
          : lapangan // ignore: cast_nullable_to_non_nullable
              as Lapangan,
      opsiPembayaran: null == opsiPembayaran
          ? _value.opsiPembayaran
          : opsiPembayaran // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LapanganCopyWith<$Res> get lapangan {
    return $LapanganCopyWith<$Res>(_value.lapangan, (value) {
      return _then(_value.copyWith(lapangan: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BookingLapanganCopyWith<$Res>
    implements $BookingLapanganCopyWith<$Res> {
  factory _$$_BookingLapanganCopyWith(
          _$_BookingLapangan value, $Res Function(_$_BookingLapangan) then) =
      __$$_BookingLapanganCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      Lapangan lapangan,
      String opsiPembayaran,
      String status,
      String startTime,
      String endTime});

  @override
  $LapanganCopyWith<$Res> get lapangan;
}

/// @nodoc
class __$$_BookingLapanganCopyWithImpl<$Res>
    extends _$BookingLapanganCopyWithImpl<$Res, _$_BookingLapangan>
    implements _$$_BookingLapanganCopyWith<$Res> {
  __$$_BookingLapanganCopyWithImpl(
      _$_BookingLapangan _value, $Res Function(_$_BookingLapangan) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lapangan = null,
    Object? opsiPembayaran = null,
    Object? status = null,
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(_$_BookingLapangan(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      lapangan: null == lapangan
          ? _value.lapangan
          : lapangan // ignore: cast_nullable_to_non_nullable
              as Lapangan,
      opsiPembayaran: null == opsiPembayaran
          ? _value.opsiPembayaran
          : opsiPembayaran // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookingLapangan implements _BookingLapangan {
  const _$_BookingLapangan(
      {required this.id,
      required this.lapangan,
      required this.opsiPembayaran,
      required this.status,
      required this.startTime,
      required this.endTime});

  factory _$_BookingLapangan.fromJson(Map<String, dynamic> json) =>
      _$$_BookingLapanganFromJson(json);

  @override
  final int id;
  @override
  final Lapangan lapangan;
  @override
  final String opsiPembayaran;
  @override
  final String status;
  @override
  final String startTime;
  @override
  final String endTime;

  @override
  String toString() {
    return 'BookingLapangan(id: $id, lapangan: $lapangan, opsiPembayaran: $opsiPembayaran, status: $status, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookingLapangan &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lapangan, lapangan) ||
                other.lapangan == lapangan) &&
            (identical(other.opsiPembayaran, opsiPembayaran) ||
                other.opsiPembayaran == opsiPembayaran) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, lapangan, opsiPembayaran, status, startTime, endTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookingLapanganCopyWith<_$_BookingLapangan> get copyWith =>
      __$$_BookingLapanganCopyWithImpl<_$_BookingLapangan>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookingLapanganToJson(
      this,
    );
  }
}

abstract class _BookingLapangan implements BookingLapangan {
  const factory _BookingLapangan(
      {required final int id,
      required final Lapangan lapangan,
      required final String opsiPembayaran,
      required final String status,
      required final String startTime,
      required final String endTime}) = _$_BookingLapangan;

  factory _BookingLapangan.fromJson(Map<String, dynamic> json) =
      _$_BookingLapangan.fromJson;

  @override
  int get id;
  @override
  Lapangan get lapangan;
  @override
  String get opsiPembayaran;
  @override
  String get status;
  @override
  String get startTime;
  @override
  String get endTime;
  @override
  @JsonKey(ignore: true)
  _$$_BookingLapanganCopyWith<_$_BookingLapangan> get copyWith =>
      throw _privateConstructorUsedError;
}
