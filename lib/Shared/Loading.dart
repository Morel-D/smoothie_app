import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 207, 255, 230),
      child: Center(
          child: SpinKitRipple(
        color: Color.fromARGB(255, 11, 124, 64),
        size: 50.0,
      )),
    );
  }
}
