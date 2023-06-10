// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookinglapangan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookingLapangan _$$_BookingLapanganFromJson(Map<String, dynamic> json) =>
    _$_BookingLapangan(
      id: json['id'] as int,
      lapangan: Lapangan.fromJson(json['lapangan'] as Map<String, dynamic>),
      description: json['description'] as String,
      status: json['status'] as String,
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$_BookingLapanganToJson(_$_BookingLapangan instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lapangan': instance.lapangan,
      'description': instance.description,
      'status': instance.status,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
