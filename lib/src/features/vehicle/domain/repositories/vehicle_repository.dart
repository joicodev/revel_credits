import 'package:revel_credits/src/features/vehicle/domain/entities/vehicle_entity.dart';

abstract class IVehicleRepository {
  Future<bool> addVehicle(VehicleEntity vehicle);
}
