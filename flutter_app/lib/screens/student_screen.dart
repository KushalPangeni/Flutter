// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/models/studentmodel.dart';
import 'package:flutter_app/screens/navigation_drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:open_file/open_file.dart';

class StudentSection extends StatefulWidget {
  const StudentSection({Key? key}) : super(key: key);

  @override
  State<StudentSection> createState() => _StudentSectionState();
}

class _StudentSectionState extends State<StudentSection> {
  bool _securePassword = false;
//for dropdown of gender
  final items = ['male', 'female'];
  String? value = 'male';
  //for textstyle
  final style = TextStyle(fontSize: 14, fontWeight: FontWeight.bold);

  //for datetime hai
  DateTime date = DateTime(2022, 05, 06);

  final firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController birthday = TextEditingController();
  TextEditingController srn = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController username = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amber[300],
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text('Student'),
      ),
      body: ListView(
        children: [
          Container(
              padding: EdgeInsets.fromLTRB(5, 10, 5, 5),
              child: Column(
                children: [
                  Card(
                    // color: Color.fromARGB(255, 236, 231, 231),
                    elevation: 20,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.person),
                              SizedBox(
                                width: 5,
                              ),
                              Text('ADD STUDENT',
                                  style: GoogleFonts.openSans(textStyle: style))
                            ],
                          ),
                          Divider(
                            height: 3,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  controller: firstname,
                                  // debugPrint('$firstname'),
                                  decoration: InputDecoration(
                                    // label: Row(
                                    //   children: const [
                                    //     Icon(Icons.person),
                                    //     Text('  First Name')
                                    //   ],
                                    // ),
                                    hintText: 'First Name',
                                    labelText: 'First Name',
                                    labelStyle: TextStyle(
                                        color: Colors.black, fontSize: 18),
                                    border: OutlineInputBorder(),
                                  ),
                                  keyboardType: TextInputType.name,
                                  // maxLength: 25,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: TextField(
                                  controller: lastname,
                                  decoration: InputDecoration(
                                    hintText: 'Last Name',
                                    labelText: 'Last Name',
                                    labelStyle: TextStyle(
                                        color: Colors.black, fontSize: 18),
                                    border: OutlineInputBorder(),
                                  ),
                                  keyboardType: TextInputType.name,
                                  // maxLength: 25,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  controller: phone,
                                  decoration: InputDecoration(
                                    hintText: 'Phone Number',
                                    labelText: 'Phone',
                                    labelStyle: TextStyle(
                                        color: Colors.black, fontSize: 18),
                                    border: OutlineInputBorder(),
                                  ),
                                  keyboardType: TextInputType.name,
                                  // maxLength: 25,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: TextField(
                                  controller: address,
                                  decoration: InputDecoration(
                                    hintText: 'Address',
                                    labelText: 'Address',
                                    labelStyle: TextStyle(
                                        color: Colors.black, fontSize: 18),
                                    border: OutlineInputBorder(),
                                  ),
                                  keyboardType: TextInputType.name,
                                  // maxLength: 25,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      border: Border.all(
                                          color: Colors.green, width: 0.8),
                                    ),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        value: value,
                                        isExpanded: true,
                                        items:
                                            items.map(buildMenuItems).toList(),
                                        onChanged: (value) => setState(() {
                                          this.value = value;
                                        }),
                                      ),
                                    )),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                  child: Container(
                                height: 50,
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  border: Border.all(
                                      color: Colors.green, width: 0.8),
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Text(
                                            '${date.year}/${date.month}/${date.day}')),
                                    Expanded(
                                        child: IconButton(
                                            icon: Icon(
                                                Icons.edit_calendar_rounded),
                                            onPressed: () async {
                                              DateTime? newdate =
                                                  await showDatePicker(
                                                context: context,
                                                initialDate: date,
                                                firstDate: DateTime(1900),
                                                lastDate: DateTime(2030),
                                              );
                                              if (newdate == null) return;
                                              setState(() {
                                                date = newdate;
                                              });
                                            }))
                                  ],
                                ),
                              )),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          //For password hai
                          TextField(
                            controller: srn,
                            decoration: InputDecoration(
                                hintText: 'SRN number',
                                labelText: 'SRN',
                                //mathi bool securePassword pani xa hai
                                labelStyle: TextStyle(
                                    color: Colors.black, fontSize: 18),
                                border: OutlineInputBorder(),
                                suffixIcon: IconButton(
                                  icon: Icon(Icons.security),
                                  onPressed: () => setState(() {
                                    _securePassword = !_securePassword;
                                  }),
                                )),

                            obscureText: _securePassword,
                            keyboardType: TextInputType.name,
                            // maxLength: 25,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Card(
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(children: [
                            Icon(Icons.info),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "STUDENT LOGIN INFO",
                              style: GoogleFonts.openSans(textStyle: style),
                            )
                          ]),
                          Divider(
                            height: 3,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  controller: email,
                                  decoration: InputDecoration(
                                    hintText: 'Enter login email',
                                    labelText: 'Email',
                                    labelStyle: TextStyle(
                                        color: Colors.black, fontSize: 18),
                                    border: OutlineInputBorder(),
                                  ),
                                  keyboardType: TextInputType.name,
                                  // maxLength: 25,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Center(
                                  child: Text(
                                    '      Choose Photo',
                                    style:
                                        GoogleFonts.openSans(textStyle: style),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: ElevatedButton(
                                    onPressed: () {},
                                    // async {
                                    //   final result =
                                    //       await FilePicker.platform.pickFiles();
                                    //   if (result == null) return;

                                    //   //open single file
                                    //   final file = result.files.first;
                                    //   openfile(file);
                                    // },
                                    child: Text("Choose photo")),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                      height: 70,
                      width: 200,
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                          onPressed: () {
                            final fname = firstname.text;
                            final lname = lastname.text;
                            final gen = value;
                            final srnn = srn.text; // srn name same xa ni ta
                            final emaill = email
                                .text; //spelling same xa tei vayera ho babu
                            final bday = date;

                            createUser(
                              firstname: fname,
                              lastname: lname,
                              gender: gen,
                              srn: srnn,
                              email: emaill,
                              birthday: bday,
                            );
                            reset1();
                          },
                          child: Text('Submit')))
                ],
              )),
        ],
      ),
    );
  }

  void reset1() {
    firstname.text = '';
    lastname.text = '';
    phone.text = '';
    address.text = '';
    srn.text = '';
    email.text = '';
    birthday.text = '';
  }

  void openfile(PlatformFile file) {
    OpenFile.open(file.path!);
  }
}

//for dropdown of gender
DropdownMenuItem<String> buildMenuItems(String item) {
  return DropdownMenuItem(
    value: item,
    child: Text(item),
  );
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
  final docUser = FirebaseFirestore.instance.collection('Students').doc();
  final user = Student(
      id: docUser.id,
      firstname: firstname,
      lastname: lastname,
      gender: 'male',
      birthday: birthday,
      srn: srn,
      email: email,
      username: '$firstname$lastname');
  final json = user.toJson();
  await docUser.set(json);
}
