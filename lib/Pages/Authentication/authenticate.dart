import 'package:flutter/material.dart';
import 'package:smoothie/Pages/Authentication/register.dart';
import 'package:smoothie/Pages/Authentication/signIn.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({Key? key}) : super(key: key);

  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignUp = true;

  void toogleForm() {
    setState(() => showSignUp = !showSignUp);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignUp) {
      return SignIn(toogleForm: toogleForm);
    } else {
      return Register(toogleForm: toogleForm);
    }
  }
}
