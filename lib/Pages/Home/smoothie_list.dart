import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

class SmoothieList extends StatefulWidget {
  const SmoothieList({Key? key}) : super(key: key);

  @override
  _SmoothieListState createState() => _SmoothieListState();
}

class _SmoothieListState extends State<SmoothieList> {
  @override
  Widget build(BuildContext context) {
    final smoothies = Provider.of<QuerySnapshot?>(context);
    // print(smoothies?.docs);

    smoothies?.docs.forEach((doc) => {print(doc.data())});

    return Container();
  }
}
