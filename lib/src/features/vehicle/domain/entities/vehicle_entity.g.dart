// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VehicleEntity _$$_VehicleEntityFromJson(Map<String, dynamic> json) =>
    _$_VehicleEntity(
      year: json['year'] as int,
      brand: json['brand'] as String,
      model: json['model'] as String,
      description: json['description'] as String,
      photos:
          (json['photos'] as List<dynamic>).map((e) => e as String).toList(),
      licensePlate: json['license_plate'] as String,
      buyPrice: (json['buy_price'] as num).toDouble(),
      creationDate: DateTime.parse(json['creation_date'] as String),
      extraExpenses: (json['extra_expenses'] as num).toDouble(),
    );

Map<String, dynamic> _$$_VehicleEntityToJson(_$_VehicleEntity instance) =>
    <String, dynamic>{
      'year': instance.year,
      'brand': instance.brand,
      'model': instance.model,
      'description': instance.description,
      'photos': instance.photos,
      'license_plate': instance.licensePlate,
      'buy_price': instance.buyPrice,
      'creation_date': instance.creationDate.toIso8601String(),
      'extra_expenses': instance.extraExpenses,
    };
