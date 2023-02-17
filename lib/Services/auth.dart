import 'package:firebase_auth/firebase_auth.dart';
import 'package:smoothie/Models/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Create user object based on the firebase
  UserModel? _usersFromFirebaseUsers(User? user) {
    return user != null ? UserModel(uid: user.uid) : null;
  }

  // auth change user stream

  Stream<UserModel?> get onAuthStateChanged {
    return _auth.authStateChanges().map(_usersFromFirebaseUsers);
  }

  // SignIn Anonymously
  Future signInAnon() async {
    try {
      final UserCredential result =
          await FirebaseAuth.instance.signInAnonymously();
      return result.user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // signIn with email & password

  // Register with email & password

  // logout
  Future logOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
