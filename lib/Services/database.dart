import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;

  DatabaseService({required this.uid});

  // Collection reference
  final CollectionReference collection =
      FirebaseFirestore.instance.collection("smoothie");

  Future updateUserData(String flavour, String name, int strength) async {
    return await collection
        .doc(uid)
        .set({'flavour': flavour, 'name': name, 'strength': strength});
  }
}
