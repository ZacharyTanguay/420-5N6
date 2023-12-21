import 'package:cloud_firestore/cloud_firestore.dart';

class Firestore {
  Firestore();

  String id = "";

  String firstName = "";
  String lastName = "";
  DateTime creationDate = DateTime.now();
  num expectedExamScore = 100;

  Map<String, dynamic> toFirestore() {
    return {
      "name": firstName,
      "lastName": lastName,
      "creationDate": creationDate,
      "expectedExamScore": expectedExamScore,
    };
  }

  factory Firestore.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options,
      ) {
    final data = snapshot.data();
    Firestore res = Firestore();

    res.id = snapshot.id;
    res.firstName = data!["firstName"];
    res.lastName = data["lastName"];
    res.creationDate = data["creationDate"].toDate();
    res.expectedExamScore = data["expectedExamScore"];
    return res;
  }
}