// // ignore_for_file: import_of_legacy_library_into_null_safe

// import 'package:cloud_firestore/cloud_firestore.dart';

// class DatabaseService {
//   final String uid;
//   DatabaseService({required this.uid});
//   final CollectionReference teacherCollection =
//       Firestore.instance.collection('Teacher');

//   Future updateUserData(String name) async {
//     return await teacherCollection.document(uid).setData({'name': name});
//   }
// }
