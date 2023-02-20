import 'package:flutter/material.dart';
import 'package:smoothie/Services/auth.dart';

class SignIn extends StatefulWidget {
  // const SignIn({Key? key}) : super(key: key);

  final Function toogleForm;
  SignIn({required this.toogleForm});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _authService = AuthService();
  final _fromKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 207, 255, 230),
      appBar: AppBar(
        title: Text('SignIn to CHRONOS Smoothie'),
        backgroundColor: Color.fromARGB(255, 11, 124, 64),
        actions: [
          TextButton.icon(
              onPressed: () {
                widget.toogleForm();
              },
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              label: Text(
                'Register',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.all(70),
          child: Form(
              key: _fromKey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (val) =>
                        val!.isEmpty ? "Please enter the email" : null,
                    onChanged: (val) {
                      email = val;
                    },
                  ),
                  SizedBox(height: 12),
                  TextFormField(
                    obscureText: true,
                    validator: (val) =>
                        val!.length < 6 ? "Password too weak" : null,
                    onChanged: (val) {
                      password = val;
                    },
                  ),
                  SizedBox(height: 15),
                  TextButton(
                    onPressed: () {
                      if (_fromKey.currentState!.validate()) {
                        dynamic results = _authService
                            .sigin_with_email_and_password(email, password);
                        if (results == null) {
                          setState(() {
                            error = "Could not validate the credentials";
                          });
                        }
                      }
                    },
                    child: Text(
                      'Sign In',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 11, 124, 64)),
                  ),
                  SizedBox(height: 12.0),
                  Text(
                    error,
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ))),
    );
  }
}
