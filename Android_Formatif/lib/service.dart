import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_start/models/firestore.dart';

final firestoreCol = FirebaseFirestore.instance
    .collection("super-Tanguay-Zachary-infini")
    .withConverter(
  fromFirestore: Firestore.fromFirestore,
  toFirestore: (Firestore firestore, options) => firestore.toFirestore(),
);

Future<String> add(Firestore firestore) async {
  await firestoreCol.add(firestore);
  return firestore.toString();
}