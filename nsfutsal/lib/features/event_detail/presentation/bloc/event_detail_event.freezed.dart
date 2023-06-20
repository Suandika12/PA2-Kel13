// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_detail_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventDetailEvent {
  Event get event => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Event event) getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Event event)? getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Event event)? getData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDataEventDetail value) getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDataEventDetail value)? getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDataEventDetail value)? getData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventDetailEventCopyWith<EventDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventDetailEventCopyWith<$Res> {
  factory $EventDetailEventCopyWith(
          EventDetailEvent value, $Res Function(EventDetailEvent) then) =
      _$EventDetailEventCopyWithImpl<$Res, EventDetailEvent>;
  @useResult
  $Res call({Event event});

  $EventCopyWith<$Res> get event;
}

/// @nodoc
class _$EventDetailEventCopyWithImpl<$Res, $Val extends EventDetailEvent>
    implements $EventDetailEventCopyWith<$Res> {
  _$EventDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_value.copyWith(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EventCopyWith<$Res> get event {
    return $EventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetDataEventDetailCopyWith<$Res>
    implements $EventDetailEventCopyWith<$Res> {
  factory _$$GetDataEventDetailCopyWith(_$GetDataEventDetail value,
          $Res Function(_$GetDataEventDetail) then) =
      __$$GetDataEventDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Event event});

  @override
  $EventCopyWith<$Res> get event;
}

/// @nodoc
class __$$GetDataEventDetailCopyWithImpl<$Res>
    extends _$EventDetailEventCopyWithImpl<$Res, _$GetDataEventDetail>
    implements _$$GetDataEventDetailCopyWith<$Res> {
  __$$GetDataEventDetailCopyWithImpl(
      _$GetDataEventDetail _value, $Res Function(_$GetDataEventDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$GetDataEventDetail(
      null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
    ));
  }
}

/// @nodoc

class _$GetDataEventDetail implements GetDataEventDetail {
  const _$GetDataEventDetail(this.event);

  @override
  final Event event;

  @override
  String toString() {
    return 'EventDetailEvent.getData(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDataEventDetail &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDataEventDetailCopyWith<_$GetDataEventDetail> get copyWith =>
      __$$GetDataEventDetailCopyWithImpl<_$GetDataEventDetail>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Event event) getData,
  }) {
    return getData(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Event event)? getData,
  }) {
    return getData?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Event event)? getData,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDataEventDetail value) getData,
  }) {
    return getData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDataEventDetail value)? getData,
  }) {
    return getData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDataEventDetail value)? getData,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class GetDataEventDetail implements EventDetailEvent {
  const factory GetDataEventDetail(final Event event) = _$GetDataEventDetail;

  @override
  Event get event;
  @override
  @JsonKey(ignore: true)
  _$$GetDataEventDetailCopyWith<_$GetDataEventDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
