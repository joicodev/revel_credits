import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_model.freezed.dart';
part 'vehicle_model.g.dart';

@freezed
class VehicleModel with _$VehicleModel {
  const VehicleModel._();

  const factory VehicleModel({
    required int year,
    required String brand,
    required String model,
    required String description,
    required List<String> photos,
    @JsonKey(name: 'license_plate') required String licensePlate,
    @JsonKey(name: 'buy_price') required double buyPrice,
    @JsonKey(name: 'creation_date') required DateTime creationDate,
    @JsonKey(name: 'extra_expenses') required double extraExpenses,
  }) = _VehicleModel;

  // Build the VehicleModel from a RawJson
  factory VehicleModel.fromJson(Map<String, Object?> json) =>
      _$VehicleModelFromJson(json);

  // Define a method that returns the total cost between extra costs and the purchase price
  double get totalExpenses => buyPrice + extraExpenses;
}
