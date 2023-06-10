// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lapangan_detail_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LapanganDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int lapanganId) getLapanganDetail,
    required TResult Function(BookingLapanganEntity requestLapanganEntity) requestLapangan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int lapanganId)? getLapanganDetail,
    TResult? Function(BookingLapanganEntity requestLapanganEntity)? requestLapangan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int lapanganId)? getLapanganDetail,
    TResult Function(BookingLapanganEntity requestLapanganEntity)? requestLapangan,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetLapanganDetailEvent value) getLapanganDetail,
    required TResult Function(RequestLapanganEvent value) requestLapangan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetLapanganDetailEvent value)? getLapanganDetail,
    TResult? Function(RequestLapanganEvent value)? requestLapangan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetLapanganDetailEvent value)? getLapanganDetail,
    TResult Function(RequestLapanganEvent value)? requestLapangan,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LapanganDetailEventCopyWith<$Res> {
  factory $LapanganDetailEventCopyWith(
          LapanganDetailEvent value, $Res Function(LapanganDetailEvent) then) =
      _$LapanganDetailEventCopyWithImpl<$Res, LapanganDetailEvent>;
}

/// @nodoc
class _$LapanganDetailEventCopyWithImpl<$Res, $Val extends LapanganDetailEvent>
    implements $LapanganDetailEventCopyWith<$Res> {
  _$LapanganDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetLapanganDetailEventCopyWith<$Res> {
  factory _$$GetLapanganDetailEventCopyWith(_$GetLapanganDetailEvent value,
          $Res Function(_$GetLapanganDetailEvent) then) =
      __$$GetLapanganDetailEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int lapanganId});
}

/// @nodoc
class __$$GetLapanganDetailEventCopyWithImpl<$Res>
    extends _$LapanganDetailEventCopyWithImpl<$Res, _$GetLapanganDetailEvent>
    implements _$$GetLapanganDetailEventCopyWith<$Res> {
  __$$GetLapanganDetailEventCopyWithImpl(
      _$GetLapanganDetailEvent _value, $Res Function(_$GetLapanganDetailEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lapanganId = null,
  }) {
    return _then(_$GetLapanganDetailEvent(
      lapanganId: null == lapanganId
          ? _value.lapanganId
          : lapanganId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetLapanganDetailEvent implements GetLapanganDetailEvent {
  const _$GetLapanganDetailEvent({required this.lapanganId});

  @override
  final int lapanganId;

  @override
  String toString() {
    return 'LapanganDetailEvent.getLapanganDetail(lapanganId: $lapanganId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLapanganDetailEvent &&
            (identical(other.lapanganId, lapanganId) || other.lapanganId == lapanganId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lapanganId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLapanganDetailEventCopyWith<_$GetLapanganDetailEvent> get copyWith =>
      __$$GetLapanganDetailEventCopyWithImpl<_$GetLapanganDetailEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int lapanganId) getLapanganDetail,
    required TResult Function(BookingLapanganEntity requestLapanganEntity) requestLapangan,
  }) {
    return getLapanganDetail(lapanganId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int lapanganId)? getLapanganDetail,
    TResult? Function(BookingLapanganEntity requestLapanganEntity)? requestLapangan,
  }) {
    return getLapanganDetail?.call(lapanganId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int lapanganId)? getLapanganDetail,
    TResult Function(BookingLapanganEntity requestLapanganEntity)? requestLapangan,
    required TResult orElse(),
  }) {
    if (getLapanganDetail != null) {
      return getLapanganDetail(lapanganId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetLapanganDetailEvent value) getLapanganDetail,
    required TResult Function(RequestLapanganEvent value) requestLapangan,
  }) {
    return getLapanganDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetLapanganDetailEvent value)? getLapanganDetail,
    TResult? Function(RequestLapanganEvent value)? requestLapangan,
  }) {
    return getLapanganDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetLapanganDetailEvent value)? getLapanganDetail,
    TResult Function(RequestLapanganEvent value)? requestLapangan,
    required TResult orElse(),
  }) {
    if (getLapanganDetail != null) {
      return getLapanganDetail(this);
    }
    return orElse();
  }
}

abstract class GetLapanganDetailEvent implements LapanganDetailEvent {
  const factory GetLapanganDetailEvent({required final int lapanganId}) =
      _$GetLapanganDetailEvent;

  int get lapanganId;
  @JsonKey(ignore: true)
  _$$GetLapanganDetailEventCopyWith<_$GetLapanganDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestLapanganEventCopyWith<$Res> {
  factory _$$RequestLapanganEventCopyWith(
          _$RequestLapanganEvent value, $Res Function(_$RequestLapanganEvent) then) =
      __$$RequestLapanganEventCopyWithImpl<$Res>;
  @useResult
  $Res call({BookingLapanganEntity requestLapanganEntity});
}

/// @nodoc
class __$$RequestLapanganEventCopyWithImpl<$Res>
    extends _$LapanganDetailEventCopyWithImpl<$Res, _$RequestLapanganEvent>
    implements _$$RequestLapanganEventCopyWith<$Res> {
  __$$RequestLapanganEventCopyWithImpl(
      _$RequestLapanganEvent _value, $Res Function(_$RequestLapanganEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestLapanganEntity = null,
  }) {
    return _then(_$RequestLapanganEvent(
      null == requestLapanganEntity
          ? _value.requestLapanganEntity
          : requestLapanganEntity // ignore: cast_nullable_to_non_nullable
              as BookingLapanganEntity,
    ));
  }
}

/// @nodoc

class _$RequestLapanganEvent implements RequestLapanganEvent {
  const _$RequestLapanganEvent(this.requestLapanganEntity);

  @override
  final BookingLapanganEntity requestLapanganEntity;

  @override
  String toString() {
    return 'LapanganDetailEvent.requestLapangan(requestLapanganEntity: $requestLapanganEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestLapanganEvent &&
            (identical(other.requestLapanganEntity, requestLapanganEntity) ||
                other.requestLapanganEntity == requestLapanganEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestLapanganEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestLapanganEventCopyWith<_$RequestLapanganEvent> get copyWith =>
      __$$RequestLapanganEventCopyWithImpl<_$RequestLapanganEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int lapanganId) getLapanganDetail,
    required TResult Function(BookingLapanganEntity requestLapanganEntity) requestLapangan,
  }) {
    return requestLapangan(requestLapanganEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int lapanganId)? getLapanganDetail,
    TResult? Function(BookingLapanganEntity requestLapanganEntity)? requestLapangan,
  }) {
    return requestLapangan?.call(requestLapanganEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int lapanganId)? getLapanganDetail,
    TResult Function(BookingLapanganEntity requestLapanganEntity)? requestLapangan,
    required TResult orElse(),
  }) {
    if (requestLapangan != null) {
      return requestLapangan(requestLapanganEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetLapanganDetailEvent value) getLapanganDetail,
    required TResult Function(RequestLapanganEvent value) requestLapangan,
  }) {
    return requestLapangan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetLapanganDetailEvent value)? getLapanganDetail,
    TResult? Function(RequestLapanganEvent value)? requestLapangan,
  }) {
    return requestLapangan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetLapanganDetailEvent value)? getLapanganDetail,
    TResult Function(RequestLapanganEvent value)? requestLapangan,
    required TResult orElse(),
  }) {
    if (requestLapangan != null) {
      return requestLapangan(this);
    }
    return orElse();
  }
}

abstract class RequestLapanganEvent implements LapanganDetailEvent {
  const factory RequestLapanganEvent(final BookingLapanganEntity requestLapanganEntity) =
      _$RequestLapanganEvent;

  BookingLapanganEntity get requestLapanganEntity;
  @JsonKey(ignore: true)
  _$$RequestLapanganEventCopyWith<_$RequestLapanganEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
