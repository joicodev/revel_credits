import 'package:revel_credits/src/features/vehicle/data/data_sources/local_vehicle_data_source.dart';
import 'package:revel_credits/src/features/vehicle/data/data_sources/remote_vehicle_data_source.dart';
import 'package:revel_credits/src/features/vehicle/domain/entities/vehicle_entity.dart';
import 'package:revel_credits/src/features/vehicle/domain/repositories/vehicle_repository.dart';

class VehicleRepositoryImpl implements IVehicleRepository {
  final LocalVehicleDataSourceImpl localVehicleDataSourceImpl;
  final RemoteVehicleDataSourceImpl remoteVehicleDataSourceImpl;

  VehicleRepositoryImpl({
    required this.localVehicleDataSourceImpl,
    required this.remoteVehicleDataSourceImpl,
  });

  @override
  Future<bool> addVehicle(VehicleEntity vehicle) async {
    // Add the vehicle in the remote data source
    await remoteVehicleDataSourceImpl.addVehicle(vehicle);
    // Add the vehicle in the local data source
    await localVehicleDataSourceImpl.addVehicle(vehicle);
    return true;
  }
}
