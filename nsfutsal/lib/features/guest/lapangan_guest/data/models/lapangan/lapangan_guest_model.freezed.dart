// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lapangan_guest_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Lapangan _$LapanganFromJson(Map<String, dynamic> json) {
  return _Lapangan.fromJson(json);
}

/// @nodoc
mixin _$Lapangan {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LapanganCopyWith<Lapangan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LapanganCopyWith<$Res> {
  factory $LapanganCopyWith(Lapangan value, $Res Function(Lapangan) then) =
      _$LapanganCopyWithImpl<$Res, Lapangan>;
  @useResult
  $Res call(
      {int id, String name, String description, String image, String status});
}

/// @nodoc
class _$LapanganCopyWithImpl<$Res, $Val extends Lapangan>
    implements $LapanganCopyWith<$Res> {
  _$LapanganCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? image = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LapanganCopyWith<$Res> implements $LapanganCopyWith<$Res> {
  factory _$$_LapanganCopyWith(
          _$_Lapangan value, $Res Function(_$_Lapangan) then) =
      __$$_LapanganCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String name, String description, String image, String status});
}

/// @nodoc
class __$$_LapanganCopyWithImpl<$Res>
    extends _$LapanganCopyWithImpl<$Res, _$_Lapangan>
    implements _$$_LapanganCopyWith<$Res> {
  __$$_LapanganCopyWithImpl(
      _$_Lapangan _value, $Res Function(_$_Lapangan) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? image = null,
    Object? status = null,
  }) {
    return _then(_$_Lapangan(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Lapangan implements _Lapangan {
  _$_Lapangan(
      {this.id = 0,
      this.name = '',
      this.description = '',
      this.image = '',
      this.status = ''});

  factory _$_Lapangan.fromJson(Map<String, dynamic> json) =>
      _$$_LapanganFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final String status;

  @override
  String toString() {
    return 'Lapangan(id: $id, name: $name, description: $description, image: $image, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Lapangan &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, image, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LapanganCopyWith<_$_Lapangan> get copyWith =>
      __$$_LapanganCopyWithImpl<_$_Lapangan>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LapanganToJson(
      this,
    );
  }
}

abstract class _Lapangan implements Lapangan {
  factory _Lapangan(
      {final int id,
      final String name,
      final String description,
      final String image,
      final String status}) = _$_Lapangan;

  factory _Lapangan.fromJson(Map<String, dynamic> json) = _$_Lapangan.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get image;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$_LapanganCopyWith<_$_Lapangan> get copyWith =>
      throw _privateConstructorUsedError;
}
