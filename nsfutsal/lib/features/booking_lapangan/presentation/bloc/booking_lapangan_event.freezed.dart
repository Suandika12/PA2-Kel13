// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_lapangan_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookingLapanganEvent {
  String get status => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status) getBookingLapangansFromServer,
    required TResult Function(String status, BookingLapangan bookingLapangan)
        cancelBooking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String status)? getBookingLapangansFromServer,
    TResult? Function(String status, BookingLapangan BookingLapangan)?
        cancelBooking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status)? getBookingLapangansFromServer,
    TResult Function(String status, BookingLapangan BookingLapangan)?
        cancelBooking,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBookingLapangansEvent value)
        getBookingLapangansFromServer,
    required TResult Function(CancelBookingEvent value) cancelBooking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBookingLapangansEvent value)?
        getBookingLapangansFromServer,
    TResult? Function(CancelBookingEvent value)? cancelBooking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBookingLapangansEvent value)?
        getBookingLapangansFromServer,
    TResult Function(CancelBookingEvent value)? cancelBooking,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookingLapanganEventCopyWith<BookingLapanganEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingLapanganEventCopyWith<$Res> {
  factory $BookingLapanganEventCopyWith(BookingLapanganEvent value,
          $Res Function(BookingLapanganEvent) then) =
      _$BookingLapanganEventCopyWithImpl<$Res, BookingLapanganEvent>;
  @useResult
  $Res call({String status});
}

/// @nodoc
class _$BookingLapanganEventCopyWithImpl<$Res,
        $Val extends BookingLapanganEvent>
    implements $BookingLapanganEventCopyWith<$Res> {
  _$BookingLapanganEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetBookingLapangansEventCopyWith<$Res>
    implements $BookingLapanganEventCopyWith<$Res> {
  factory _$$GetBookingLapangansEventCopyWith(_$GetBookingLapangansEvent value,
          $Res Function(_$GetBookingLapangansEvent) then) =
      __$$GetBookingLapangansEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status});
}

/// @nodoc
class __$$GetBookingLapangansEventCopyWithImpl<$Res>
    extends _$BookingLapanganEventCopyWithImpl<$Res, _$GetBookingLapangansEvent>
    implements _$$GetBookingLapangansEventCopyWith<$Res> {
  __$$GetBookingLapangansEventCopyWithImpl(_$GetBookingLapangansEvent _value,
      $Res Function(_$GetBookingLapangansEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$GetBookingLapangansEvent(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetBookingLapangansEvent implements GetBookingLapangansEvent {
  const _$GetBookingLapangansEvent(this.status);

  @override
  final String status;

  @override
  String toString() {
    return 'BookingLapanganEvent.getBookingLapangansFromServer(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBookingLapangansEvent &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBookingLapangansEventCopyWith<_$GetBookingLapangansEvent>
      get copyWith =>
          __$$GetBookingLapangansEventCopyWithImpl<_$GetBookingLapangansEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status) getBookingLapangansFromServer,
    required TResult Function(String status, BookingLapangan BookingLapangan)
        cancelBooking,
  }) {
    return getBookingLapangansFromServer(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String status)? getBookingLapangansFromServer,
    TResult? Function(String status, BookingLapangan BookingLapangan)?
        cancelBooking,
  }) {
    return getBookingLapangansFromServer?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status)? getBookingLapangansFromServer,
    TResult Function(String status, BookingLapangan BookingLapangan)?
        cancelBooking,
    required TResult orElse(),
  }) {
    if (getBookingLapangansFromServer != null) {
      return getBookingLapangansFromServer(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBookingLapangansEvent value)
        getBookingLapangansFromServer,
    required TResult Function(CancelBookingEvent value) cancelBooking,
  }) {
    return getBookingLapangansFromServer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBookingLapangansEvent value)?
        getBookingLapangansFromServer,
    TResult? Function(CancelBookingEvent value)? cancelBooking,
  }) {
    return getBookingLapangansFromServer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBookingLapangansEvent value)?
        getBookingLapangansFromServer,
    TResult Function(CancelBookingEvent value)? cancelBooking,
    required TResult orElse(),
  }) {
    if (getBookingLapangansFromServer != null) {
      return getBookingLapangansFromServer(this);
    }
    return orElse();
  }
}

abstract class GetBookingLapangansEvent implements BookingLapanganEvent {
  const factory GetBookingLapangansEvent(final String status) =
      _$GetBookingLapangansEvent;

  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$GetBookingLapangansEventCopyWith<_$GetBookingLapangansEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelBookingEventCopyWith<$Res>
    implements $BookingLapanganEventCopyWith<$Res> {
  factory _$$CancelBookingEventCopyWith(_$CancelBookingEvent value,
          $Res Function(_$CancelBookingEvent) then) =
      __$$CancelBookingEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, BookingLapangan bookingLapangan});

  $BookingLapanganCopyWith<$Res> get bookingLapangan;
}

/// @nodoc
class __$$CancelBookingEventCopyWithImpl<$Res>
    extends _$BookingLapanganEventCopyWithImpl<$Res, _$CancelBookingEvent>
    implements _$$CancelBookingEventCopyWith<$Res> {
  __$$CancelBookingEventCopyWithImpl(
      _$CancelBookingEvent _value, $Res Function(_$CancelBookingEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? bookingLapangan = null,
  }) {
    return _then(_$CancelBookingEvent(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      null == bookingLapangan
          ? _value.bookingLapangan
          : bookingLapangan // ignore: cast_nullable_to_non_nullable
              as BookingLapangan,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BookingLapanganCopyWith<$Res> get bookingLapangan {
    return $BookingLapanganCopyWith<$Res>(_value.bookingLapangan, (value) {
      return _then(_value.copyWith(bookingLapangan: value));
    });
  }
}

/// @nodoc

class _$CancelBookingEvent implements CancelBookingEvent {
  const _$CancelBookingEvent(this.status, this.bookingLapangan);

  @override
  final String status;
  @override
  final BookingLapangan bookingLapangan;

  @override
  String toString() {
    return 'BookingLapanganEvent.cancelBooking(status: $status, BookingLapangan: $BookingLapangan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelBookingEvent &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.bookingLapangan, BookingLapangan) ||
                other.bookingLapangan == BookingLapangan));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, BookingLapangan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelBookingEventCopyWith<_$CancelBookingEvent> get copyWith =>
      __$$CancelBookingEventCopyWithImpl<_$CancelBookingEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status) getBookingLapangansFromServer,
    required TResult Function(String status, BookingLapangan bookingLapangan)
        cancelBooking,
  }) {
    return cancelBooking(status, bookingLapangan);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String status)? getBookingLapangansFromServer,
    TResult? Function(String status, BookingLapangan bookingLapangan)?
        cancelBooking,
  }) {
    return cancelBooking?.call(status, bookingLapangan);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status)? getBookingLapangansFromServer,
    TResult Function(String status, BookingLapangan bookingLapangan)?
        cancelBooking,
    required TResult orElse(),
  }) {
    if (cancelBooking != null) {
      return cancelBooking(status, bookingLapangan);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBookingLapangansEvent value)
        getBookingLapangansFromServer,
    required TResult Function(CancelBookingEvent value) cancelBooking,
  }) {
    return cancelBooking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBookingLapangansEvent value)?
        getBookingLapangansFromServer,
    TResult? Function(CancelBookingEvent value)? cancelBooking,
  }) {
    return cancelBooking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBookingLapangansEvent value)?
        getBookingLapangansFromServer,
    TResult Function(CancelBookingEvent value)? cancelBooking,
    required TResult orElse(),
  }) {
    if (cancelBooking != null) {
      return cancelBooking(this);
    }
    return orElse();
  }
}

abstract class CancelBookingEvent implements BookingLapanganEvent {
  const factory CancelBookingEvent(
          final String status, final BookingLapangan bookingLapangan) =
      _$CancelBookingEvent;

  @override
  String get status;
  BookingLapangan get bookingLapangan;
  @override
  @JsonKey(ignore: true)
  _$$CancelBookingEventCopyWith<_$CancelBookingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
