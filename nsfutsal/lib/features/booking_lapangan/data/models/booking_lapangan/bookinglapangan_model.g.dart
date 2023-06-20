// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookinglapangan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookingLapangan _$$_BookingLapanganFromJson(Map<String, dynamic> json) =>
    _$_BookingLapangan(
      id: json['id'] as int,
      lapangan: Lapangan.fromJson(json['lapangan'] as Map<String, dynamic>),
      opsiPembayaran: json['opsiPembayaran'] as String,
      status: json['status'] as String,
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
    );

Map<String, dynamic> _$$_BookingLapanganToJson(_$_BookingLapangan instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lapangan': instance.lapangan,
      'opsiPembayaran': instance.opsiPembayaran,
      'status': instance.status,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
    };
