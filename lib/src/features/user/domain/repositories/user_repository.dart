import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

// The repository is who switches our data source.
abstract class IUserRepository {
  Future<UserCredential> signInFirebase();
/*  User? get currentUser;
  Future<bool> get userIsSigned;
  Stream<User?> get authStatus;
  Future<UserCredential> signInFirebase();
  Future<GoogleSignInAccount?> logOut();*/
}
