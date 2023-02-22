import 'package:flutter/material.dart';
import 'package:smoothie/Pages/Home/smoothie_list.dart';
import 'package:smoothie/Services/auth.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:smoothie/Services/database.dart';
import 'package:smoothie/Models/smoothie.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthService _auth = AuthService();

    return StreamProvider<List<Smoothie>>.value(
      initialData: [],
      value: DatabaseService(uid: '').smoothie,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 207, 255, 230),
        appBar: AppBar(
          title: Text('CHRONOS Smoothie'),
          backgroundColor: Color.fromARGB(255, 11, 124, 64),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () async {
                    await _auth.logOut();
                  },
                  icon: Icon(Icons.person)),
            )
          ],
        ),
        body: SmoothieList(),
      ),
    );
  }
}
