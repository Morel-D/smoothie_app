import 'package:flutter/material.dart';
import 'package:smoothie/Services/auth.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 207, 255, 230),
      appBar: AppBar(
        title: Text('Register to CHRONOS Smoothie'),
        backgroundColor: Color.fromARGB(255, 11, 124, 64),
      ),
      body: Padding(
          padding: const EdgeInsets.all(70),
          child: Form(
              child: Column(
            children: [
              TextFormField(
                onChanged: (val) {
                  email = val;
                },
              ),
              SizedBox(height: 12),
              TextFormField(
                obscureText: true,
                onChanged: (val) {
                  password = val;
                },
              ),
              SizedBox(height: 15),
              TextButton(
                onPressed: () {
                  print(email);
                  print(password);
                },
                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.white),
                ),
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 11, 124, 64)),
              )
            ],
          ))),
    );
  }
}
