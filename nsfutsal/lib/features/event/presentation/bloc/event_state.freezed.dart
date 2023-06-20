// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Event> eventList) loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Event> eventList)? loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Event> eventList)? loadedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventInitialState value) initial,
    required TResult Function(EventLoadingState value) loading,
    required TResult Function(EventErrorState value) error,
    required TResult Function(EventLoadedState value) loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EventInitialState value)? initial,
    TResult? Function(EventLoadingState value)? loading,
    TResult? Function(EventErrorState value)? error,
    TResult? Function(EventLoadedState value)? loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventInitialState value)? initial,
    TResult Function(EventLoadingState value)? loading,
    TResult Function(EventErrorState value)? error,
    TResult Function(EventLoadedState value)? loadedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventStateCopyWith<$Res> {
  factory $EventStateCopyWith(
          EventState value, $Res Function(EventState) then) =
      _$EventStateCopyWithImpl<$Res, EventState>;
}

/// @nodoc
class _$EventStateCopyWithImpl<$Res, $Val extends EventState>
    implements $EventStateCopyWith<$Res> {
  _$EventStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EventInitialStateCopyWith<$Res> {
  factory _$$EventInitialStateCopyWith(
          _$EventInitialState value, $Res Function(_$EventInitialState) then) =
      __$$EventInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EventInitialStateCopyWithImpl<$Res>
    extends _$EventStateCopyWithImpl<$Res, _$EventInitialState>
    implements _$$EventInitialStateCopyWith<$Res> {
  __$$EventInitialStateCopyWithImpl(
      _$EventInitialState _value, $Res Function(_$EventInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EventInitialState implements EventInitialState {
  const _$EventInitialState();

  @override
  String toString() {
    return 'EventState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EventInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Event> eventList) loadedState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Event> eventList)? loadedState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Event> eventList)? loadedState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventInitialState value) initial,
    required TResult Function(EventLoadingState value) loading,
    required TResult Function(EventErrorState value) error,
    required TResult Function(EventLoadedState value) loadedState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EventInitialState value)? initial,
    TResult? Function(EventLoadingState value)? loading,
    TResult? Function(EventErrorState value)? error,
    TResult? Function(EventLoadedState value)? loadedState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventInitialState value)? initial,
    TResult Function(EventLoadingState value)? loading,
    TResult Function(EventErrorState value)? error,
    TResult Function(EventLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class EventInitialState implements EventState {
  const factory EventInitialState() = _$EventInitialState;
}

/// @nodoc
abstract class _$$EventLoadingStateCopyWith<$Res> {
  factory _$$EventLoadingStateCopyWith(
          _$EventLoadingState value, $Res Function(_$EventLoadingState) then) =
      __$$EventLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EventLoadingStateCopyWithImpl<$Res>
    extends _$EventStateCopyWithImpl<$Res, _$EventLoadingState>
    implements _$$EventLoadingStateCopyWith<$Res> {
  __$$EventLoadingStateCopyWithImpl(
      _$EventLoadingState _value, $Res Function(_$EventLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EventLoadingState implements EventLoadingState {
  const _$EventLoadingState();

  @override
  String toString() {
    return 'EventState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EventLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Event> eventList) loadedState,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Event> eventList)? loadedState,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Event> eventList)? loadedState,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventInitialState value) initial,
    required TResult Function(EventLoadingState value) loading,
    required TResult Function(EventErrorState value) error,
    required TResult Function(EventLoadedState value) loadedState,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EventInitialState value)? initial,
    TResult? Function(EventLoadingState value)? loading,
    TResult? Function(EventErrorState value)? error,
    TResult? Function(EventLoadedState value)? loadedState,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventInitialState value)? initial,
    TResult Function(EventLoadingState value)? loading,
    TResult Function(EventErrorState value)? error,
    TResult Function(EventLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class EventLoadingState implements EventState {
  const factory EventLoadingState() = _$EventLoadingState;
}

/// @nodoc
abstract class _$$EventErrorStateCopyWith<$Res> {
  factory _$$EventErrorStateCopyWith(
          _$EventErrorState value, $Res Function(_$EventErrorState) then) =
      __$$EventErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$EventErrorStateCopyWithImpl<$Res>
    extends _$EventStateCopyWithImpl<$Res, _$EventErrorState>
    implements _$$EventErrorStateCopyWith<$Res> {
  __$$EventErrorStateCopyWithImpl(
      _$EventErrorState _value, $Res Function(_$EventErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$EventErrorState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EventErrorState implements EventErrorState {
  const _$EventErrorState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'EventState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventErrorStateCopyWith<_$EventErrorState> get copyWith =>
      __$$EventErrorStateCopyWithImpl<_$EventErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Event> eventList) loadedState,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Event> eventList)? loadedState,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Event> eventList)? loadedState,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventInitialState value) initial,
    required TResult Function(EventLoadingState value) loading,
    required TResult Function(EventErrorState value) error,
    required TResult Function(EventLoadedState value) loadedState,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EventInitialState value)? initial,
    TResult? Function(EventLoadingState value)? loading,
    TResult? Function(EventErrorState value)? error,
    TResult? Function(EventLoadedState value)? loadedState,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventInitialState value)? initial,
    TResult Function(EventLoadingState value)? loading,
    TResult Function(EventErrorState value)? error,
    TResult Function(EventLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class EventErrorState implements EventState {
  const factory EventErrorState(final String message) = _$EventErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$$EventErrorStateCopyWith<_$EventErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EventLoadedStateCopyWith<$Res> {
  factory _$$EventLoadedStateCopyWith(
          _$EventLoadedState value, $Res Function(_$EventLoadedState) then) =
      __$$EventLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Event> eventList});
}

/// @nodoc
class __$$EventLoadedStateCopyWithImpl<$Res>
    extends _$EventStateCopyWithImpl<$Res, _$EventLoadedState>
    implements _$$EventLoadedStateCopyWith<$Res> {
  __$$EventLoadedStateCopyWithImpl(
      _$EventLoadedState _value, $Res Function(_$EventLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventList = null,
  }) {
    return _then(_$EventLoadedState(
      eventList: null == eventList
          ? _value._eventList
          : eventList // ignore: cast_nullable_to_non_nullable
              as List<Event>,
    ));
  }
}

/// @nodoc

class _$EventLoadedState implements EventLoadedState {
  const _$EventLoadedState({required final List<Event> eventList})
      : _eventList = eventList;

  final List<Event> _eventList;
  @override
  List<Event> get eventList {
    if (_eventList is EqualUnmodifiableListView) return _eventList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_eventList);
  }

  @override
  String toString() {
    return 'EventState.loadedState(eventList: $eventList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventLoadedState &&
            const DeepCollectionEquality()
                .equals(other._eventList, _eventList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_eventList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventLoadedStateCopyWith<_$EventLoadedState> get copyWith =>
      __$$EventLoadedStateCopyWithImpl<_$EventLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Event> eventList) loadedState,
  }) {
    return loadedState(eventList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Event> eventList)? loadedState,
  }) {
    return loadedState?.call(eventList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Event> eventList)? loadedState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(eventList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventInitialState value) initial,
    required TResult Function(EventLoadingState value) loading,
    required TResult Function(EventErrorState value) error,
    required TResult Function(EventLoadedState value) loadedState,
  }) {
    return loadedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EventInitialState value)? initial,
    TResult? Function(EventLoadingState value)? loading,
    TResult? Function(EventErrorState value)? error,
    TResult? Function(EventLoadedState value)? loadedState,
  }) {
    return loadedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventInitialState value)? initial,
    TResult Function(EventLoadingState value)? loading,
    TResult Function(EventErrorState value)? error,
    TResult Function(EventLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(this);
    }
    return orElse();
  }
}

abstract class EventLoadedState implements EventState {
  const factory EventLoadedState({required final List<Event> eventList}) =
      _$EventLoadedState;

  List<Event> get eventList;
  @JsonKey(ignore: true)
  _$$EventLoadedStateCopyWith<_$EventLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}
