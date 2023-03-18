// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VehicleModel _$$_VehicleModelFromJson(Map<String, dynamic> json) =>
    _$_VehicleModel(
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

Map<String, dynamic> _$$_VehicleModelToJson(_$_VehicleModel instance) =>
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
