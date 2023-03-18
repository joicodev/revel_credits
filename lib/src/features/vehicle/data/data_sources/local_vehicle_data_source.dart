import 'package:revel_credits/src/features/vehicle/domain/entities/vehicle_entity.dart';
import 'package:revel_credits/src/features/vehicle/domain/repositories/vehicle_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalVehicleDataSourceImpl implements IVehicleRepository {
  static const String key = 'user';

  final SharedPreferences sharedPreferences;

  LocalVehicleDataSourceImpl({required this.sharedPreferences});

  @override
  Future<bool> addVehicle(VehicleEntity vehicle) {
    // TODO: implement addVehicle
    throw UnimplementedError();
  }

  /*@override
  Future<UserEntity> getUser(String userId) async {
    final jsonString = sharedPreferences.getString(key);
    if (jsonString != null) {
      final userJson = json.decode(jsonString) as Map<String, dynamic>;
      return UserModel.fromJson(userJson);
    } else {
      throw Exception('User not found');
    }
  }

  @override
  Future<void> saveUser(UserEntity user) async {
    final userJson = (user as UserModel).toJson();
    final jsonString = json.encode(userJson);
    await sharedPreferences.setString(key, jsonString);
  }

  @override
  Future<void> updateUser(UserEntity user) async {
    await saveUser(user);
  }*/
}
