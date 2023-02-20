import 'package:flutter/material.dart';
import 'package:smoothie/Services/auth.dart';
import 'package:smoothie/Shared/constant.dart';

class Register extends StatefulWidget {
  // const Register({Key? key}) : super(key: key);

  final Function toogleForm;
  Register({required this.toogleForm});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();
  final _fromKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 207, 255, 230),
      appBar: AppBar(
        title: Text('Register to CHRONOS Smoothie'),
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
                'Sign Up',
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
                  decoration: textDecoration.copyWith(hintText: "Enter Email"),
                  validator: (val) =>
                      val!.isEmpty ? 'Please Fill in the email' : null,
                  onChanged: (val) {
                    email = val;
                  },
                ),
                SizedBox(height: 12),
                TextFormField(
                  decoration:
                      textDecoration.copyWith(hintText: "Enter Password"),
                  obscureText: true,
                  validator: (val) => val!.length < 6
                      ? "Password too weak (alleast 6 characters)"
                      : null,
                  onChanged: (val) {
                    password = val;
                  },
                ),
                SizedBox(height: 15),
                TextButton(
                  onPressed: () async {
                    if (_fromKey.currentState!.validate()) {
                      dynamic result = _auth.register_with_email_and_password(
                          email, password);
                      if (result == null) {
                        setState(() => error = 'Please supply a valide email');
                      }
                    }
                  },
                  child: Text(
                    'Register',
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
            )),
      ),
    );
  }
}
