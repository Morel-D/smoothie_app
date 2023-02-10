import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // SignIn Anonymously

  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      // User users = result.users;
      return result;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // signIn with email & password

  // Register with email & password

  // logout
}
