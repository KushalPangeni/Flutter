import 'package:cloud_firestore/cloud_firestore.dart';

class Teacher {
  String id;
  final String firstname;
  String lastname;
  String? gender;
  DateTime birthday;
  String srn;
  String email;
  String username;
  //for photo

  Teacher(
      {this.id = '',
      required this.firstname,
      required this.lastname,
      required this.gender,
      required this.birthday,
      required this.srn,
      required this.email,
      required this.username});

  Map<String, dynamic> toJson() => {
        'id': id,
        'firstname': firstname,
        'lastname': lastname,
        'gender': gender,
        'birthday': birthday,
        'srn': srn,
        'email': email,
        'username': username
      };
}

Future createUser(
    {required String firstname,
    required String lastname,
    String? gender,
    required String srn,
    required String email,
    required DateTime birthday
    // required String username
    }) async {
  final docUser = FirebaseFirestore.instance.collection('Teachers').doc();
  final user = Teacher(
      id: docUser.id,
      firstname: firstname,
      lastname: lastname,
      gender: gender,
      birthday: birthday,
      srn: srn,
      email: email,
      username: firstname + " " + lastname);
  final json = user.toJson();
  // final json = {'name': name, 'age': 21, 'address': 'lamachaur'};
  await docUser.set(json);
}
