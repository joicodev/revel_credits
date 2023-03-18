import 'package:revel_credits/src/features/vehicle/domain/model/vehicle_model.dart';

abstract class IVehicleRepository {
  Future<bool> addVehicle(VehicleModel vehicle);
}
