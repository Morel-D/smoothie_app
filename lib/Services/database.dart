import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:smoothie/Models/smoothie.dart';

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

  // smoothie list from snapshot

  List<Smoothie> _smoothieListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return Smoothie(
          name: doc.get('name') ?? '',
          flavour: doc.get('flavour') ?? '',
          strength: doc.get('strength') ?? 0);
    }).toList();
  }

  Stream<List<Smoothie>> get smoothie {
    return collection.snapshots().map(_smoothieListFromSnapshot);
  }
}
