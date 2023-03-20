import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthAPI {
  static FirebaseAuthAPI? _instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  FirebaseAuthAPI._() {
    print("[FirebaseAuthAPI] - initialized🔥🔥");
  }

  // Unique instance for FirebaseAuthAPI
  static FirebaseAuthAPI get instance => _instance ??= FirebaseAuthAPI._();

  // Getting current user
  //User? get currentUser => _auth.currentUser;

  // Getting auth status
  Stream<User?> get authStatus => _auth.authStateChanges();

  //
/*  Future<bool> userIsSigned() {
    return _googleSignIn.isSignedIn();
  }*/

  // Sign with googleSignIn
  Future<UserCredential> signIn() async {
    GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
    GoogleSignInAuthentication? gSA = await googleSignInAccount?.authentication;
    UserCredential user = await _auth.signInWithCredential(
      GoogleAuthProvider.credential(
        idToken: gSA?.idToken,
        accessToken: gSA?.accessToken,
      ),
    );

    return user;
  }

  // Logout method
  Future<GoogleSignInAccount?> logOut() async {
    await _auth.signOut().then((onValue) => print("Sesión cerrada"));
    return _googleSignIn.signOut();
  }
}
