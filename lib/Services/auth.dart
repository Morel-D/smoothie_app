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
  Future sigin_with_email_and_password(String email, String password) async {
    try {
      final UserCredential results = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return results.user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // Register with email & password
  Future register_with_email_and_password(String email, String password) async {
    try {
      final UserCredential results = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return results.user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

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
