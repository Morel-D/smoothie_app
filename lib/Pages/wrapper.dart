import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:smoothie/Models/user.dart';
import 'package:smoothie/Pages/Authentication/authenticate.dart';
import 'package:smoothie/Pages/Home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel?>(context);
    print(user);

    return SafeArea(child: Authenticate());
  }
}
