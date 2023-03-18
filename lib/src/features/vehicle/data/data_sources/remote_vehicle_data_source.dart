import 'package:http/http.dart' as http;
import 'package:revel_credits/src/features/vehicle/domain/entities/vehicle_entity.dart';
import 'package:revel_credits/src/features/vehicle/domain/repositories/vehicle_repository.dart';

class RemoteVehicleDataSourceImpl implements IVehicleRepository {
  static const String _baseUrl = 'https://my-api.com';
  static const String _endpoint = '/users';

  final http.Client httpClient;

  RemoteVehicleDataSourceImpl({required this.httpClient});

  @override
  Future<bool> addVehicle(VehicleEntity vehicle) async {
    print('toJson ${vehicle.toJson()}');
    throw UnimplementedError();
    /*final response = await httpClient.get(Uri.parse('$baseUrl$endpoint/'));
    if (response.statusCode == 200) {
      final userJson = json.decode(response.body) as Map<String, dynamic>;
      return true;
    } else {
      throw Exception('Failed to load user');
    }*/
  }
}
