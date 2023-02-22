import 'package:flutter/material.dart';
import 'package:smoothie/Models/smoothie.dart';

class SmoothieTiles extends StatelessWidget {
  final Smoothie smoothie;

  SmoothieTiles({required this.smoothie});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.green[smoothie.strength],
          ),
          title: Text(smoothie.name),
          subtitle: Text('${smoothie.flavour} flavour'),
        ),
      ),
    );
  }
}
