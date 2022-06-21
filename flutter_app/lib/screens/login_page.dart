import 'package:flutter/material.dart';
import 'package:flutter_app/screens/dashboard.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //for textstyle
  final style = const TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

  TextEditingController namecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              elevation: 15,
              child: Column(
                children: [
                  const Image(
                    image: AssetImage('assets/images/haan.png'),
                    height: 350,
                    // width: 200,
                    // fit: BoxFit.fill,
                  ),
                  Text("Login Page",
                      style: GoogleFonts.openSans(textStyle: style)),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (values) {
                      if (values!.isEmpty) {
                        return "Enter name";
                      } else {
                        return null;
                      }
                    },
                    controller: namecontroller,
                    decoration: const InputDecoration(
                      hintText: 'User name',
                      labelText: 'User name',
                      labelStyle: TextStyle(color: Colors.black, fontSize: 18),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.name,
                    // maxLength: 25,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (values) {
                      if (values!.isEmpty) {
                        return "Enter password";
                      } else {
                        return null;
                      }
                    },
                    controller: passwordcontroller,
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.black, fontSize: 18),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.name,
                    // maxLength: 25,
                  ),
                ],
              ),
            ),
            Card(
              child: ElevatedButton(
                child: const Text('Submit'),
                onPressed: () {
                  setState(() {
                    if (namecontroller.text == 'admin' &&
                        passwordcontroller.text == 'admin') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Dashboard(),
                        ),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    }
                  });
                },
              ),
            ),
            //   TextButton.icon(
            //       onPressed: () {},
            //       icon: const Icon(Icons.home),
            //       label: const Text('Home')),
          ],
        ),
      )),
    );
  }

  void username() {}
}
