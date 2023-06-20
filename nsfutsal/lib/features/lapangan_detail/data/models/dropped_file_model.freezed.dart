// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dropped_file_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DroppedFile _$DroppedFileFromJson(Map<String, dynamic> json) {
  return _DroppedFile.fromJson(json);
}

/// @nodoc
mixin _$DroppedFile {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get mine => throw _privateConstructorUsedError;
  int get bytes => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DroppedFileCopyWith<DroppedFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DroppedFileCopyWith<$Res> {
  factory $DroppedFileCopyWith(
          DroppedFile value, $Res Function(DroppedFile) then) =
      _$DroppedFileCopyWithImpl<$Res, DroppedFile>;
  @useResult
  $Res call({String name, String url, String mine, int bytes, String size});
}

/// @nodoc
class _$DroppedFileCopyWithImpl<$Res, $Val extends DroppedFile>
    implements $DroppedFileCopyWith<$Res> {
  _$DroppedFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
    Object? mine = null,
    Object? bytes = null,
    Object? size = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      mine: null == mine
          ? _value.mine
          : mine // ignore: cast_nullable_to_non_nullable
              as String,
      bytes: null == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DroppedFileCopyWith<$Res>
    implements $DroppedFileCopyWith<$Res> {
  factory _$$_DroppedFileCopyWith(
          _$_DroppedFile value, $Res Function(_$_DroppedFile) then) =
      __$$_DroppedFileCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url, String mine, int bytes, String size});
}

/// @nodoc
class __$$_DroppedFileCopyWithImpl<$Res>
    extends _$DroppedFileCopyWithImpl<$Res, _$_DroppedFile>
    implements _$$_DroppedFileCopyWith<$Res> {
  __$$_DroppedFileCopyWithImpl(
      _$_DroppedFile _value, $Res Function(_$_DroppedFile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
    Object? mine = null,
    Object? bytes = null,
    Object? size = null,
  }) {
    return _then(_$_DroppedFile(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      mine: null == mine
          ? _value.mine
          : mine // ignore: cast_nullable_to_non_nullable
              as String,
      bytes: null == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DroppedFile extends _DroppedFile {
  _$_DroppedFile(
      {required this.name,
      required this.url,
      required this.mine,
      required this.bytes,
      required this.size})
      : super._();

  factory _$_DroppedFile.fromJson(Map<String, dynamic> json) =>
      _$$_DroppedFileFromJson(json);

  @override
  final String name;
  @override
  final String url;
  @override
  final String mine;
  @override
  final int bytes;
  @override
  final String size;

  @override
  String toString() {
    return 'DroppedFile(name: $name, url: $url, mine: $mine, bytes: $bytes, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DroppedFile &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.mine, mine) || other.mine == mine) &&
            (identical(other.bytes, bytes) || other.bytes == bytes) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url, mine, bytes, size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DroppedFileCopyWith<_$_DroppedFile> get copyWith =>
      __$$_DroppedFileCopyWithImpl<_$_DroppedFile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DroppedFileToJson(
      this,
    );
  }
}

abstract class _DroppedFile extends DroppedFile {
  factory _DroppedFile(
      {required final String name,
      required final String url,
      required final String mine,
      required final int bytes,
      required final String size}) = _$_DroppedFile;
  _DroppedFile._() : super._();

  factory _DroppedFile.fromJson(Map<String, dynamic> json) =
      _$_DroppedFile.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  String get mine;
  @override
  int get bytes;
  @override
  String get size;
  @override
  @JsonKey(ignore: true)
  _$$_DroppedFileCopyWith<_$_DroppedFile> get copyWith =>
      throw _privateConstructorUsedError;
}
