import 'package:flutter/material.dart';
import 'package:flutter_app/screens/navigation_drawer.dart';

class StudentScreen extends StatefulWidget {
  const StudentScreen({Key? key}) : super(key: key);

  @override
  State<StudentScreen> createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        title: const Text("Student"),
      ),
      body: const Center(
        child: Text("Student"),
      ),
    );
  }
}
