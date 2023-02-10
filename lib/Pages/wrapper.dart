import 'package:flutter/material.dart';
import 'package:smoothie/Pages/Home/home.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Home());
  }
}
