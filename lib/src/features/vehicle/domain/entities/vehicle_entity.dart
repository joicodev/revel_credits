import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_entity.freezed.dart';
part 'vehicle_entity.g.dart';

@freezed
class VehicleEntity with _$VehicleEntity {
  const VehicleEntity._();

  const factory VehicleEntity({
    required int year,
    required String brand,
    required String model,
    required String description,
    required List<String> photos,
    @JsonKey(name: 'license_plate') required String licensePlate,
    @JsonKey(name: 'buy_price') required double buyPrice,
    @JsonKey(name: 'creation_date') required DateTime creationDate,
    @JsonKey(name: 'extra_expenses') required double extraExpenses,
  }) = _VehicleEntity;

  // Build the VehicleEntity from a RawJson
  factory VehicleEntity.fromJson(Map<String, Object?> json) =>
      _$VehicleEntityFromJson(json);

  // Define a method that returns the total cost between extra costs and the purchase price
  double get totalExpenses => buyPrice + extraExpenses;
}
