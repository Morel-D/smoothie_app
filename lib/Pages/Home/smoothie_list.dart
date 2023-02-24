import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';
import 'package:smoothie/Models/smoothie.dart';
import 'package:smoothie/Pages/Home/smoothie_tiles.dart';

class SmoothieList extends StatefulWidget {
  const SmoothieList({Key? key}) : super(key: key);

  @override
  _SmoothieListState createState() => _SmoothieListState();
}

class _SmoothieListState extends State<SmoothieList> {
  @override
  Widget build(BuildContext context) {
    final smoothies = Provider.of<List<Smoothie>?>(context) ?? [];
    // print(smoothies?.docs);

    // smoothies.forEach((smoothie) {
    //   print(smoothie.name);
    //   print(smoothie.flavour);
    //   print(smoothie.strength);
    // });

    return ListView.builder(
        itemCount: smoothies.length,
        itemBuilder: (context, index) {
          return SmoothieTiles(smoothie: smoothies[index]);
        });
  }
}
