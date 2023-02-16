import 'package:flutter/material.dart';
import 'package:smoothie/Services/auth.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 207, 255, 230),
      appBar: AppBar(
        title: Text('Authentication'),
        backgroundColor: Color.fromARGB(255, 11, 124, 64),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 11),
        child: TextButton(
          onPressed: () async {
            dynamic result = await _authService.signInAnon();

            if (result == null) {
              print("No credentials has been added");
            } else {
              print("Credentials has been added");
            }
          },
          child: Text(
            'Sign In',
            style: TextStyle(color: Colors.white),
          ),
          style: TextButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 11, 124, 64)),
        ),
      ),
    );
  }
}
