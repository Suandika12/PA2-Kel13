// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lapangan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Lapangan _$$_LapanganFromJson(Map<String, dynamic> json) => _$_Lapangan(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      opsiPembayaran: json['opsiPembayaran'] as String? ?? '',
      image: json['image'] as String? ?? '',
      status: json['status'] as String? ?? '',
      price: json['price'] as int? ?? 0,
    );

Map<String, dynamic> _$$_LapanganToJson(_$_Lapangan instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'opsiPembayaran': instance.opsiPembayaran,
      'image': instance.image,
      'status': instance.status,
      'price': instance.price,
    };
