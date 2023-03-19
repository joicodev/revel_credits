class LocalUserDataSourceImpl {
  //final SharedPreferences sharedPreferences;

  LocalUserDataSourceImpl();

  /*@override
  Future<UserEntity> getUser(String userId) async {
    final jsonString = sharedPreferences.getString(key);
    if (jsonString != null) {
      final userJson = json.decode(jsonString) as Map<String, dynamic>;
      return UserEntity.fromJson(userJson);
    } else {
      throw Exception('User not found');
    }
  }

  @override
  Future<void> saveUser(UserEntity user) async {
    final userJson = (user).toJson();
    final jsonString = json.encode(userJson);
    await sharedPreferences.setString(key, jsonString);
  }

  @override
  Future<void> updateUser(UserEntity user) async {
    await saveUser(user);
  }*/

  /* @override
  Future<UserCredential> signInFirebase() {
    // TODO: implement signInFirebase
    throw UnimplementedError();
  }*/
}
