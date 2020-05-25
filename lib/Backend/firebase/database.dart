import 'package:firebase_database/firebase_database.dart';

class registerUser {
  final databaseReference = FirebaseDatabase.instance.reference();

  createRecord(String id, Map stuff) {
    databaseReference.child(id).set(stuff);
  }

  getData(String id) {
    databaseReference.once().then((DataSnapshot snapshot) {
      print('Data : ${snapshot.value[id]}');
    });
  }

  updateData(String id, String body, String title) {
    databaseReference.child(id).update({title: body});
  }

  deleteData(String id) {
    databaseReference.child(id).remove();
  }
}