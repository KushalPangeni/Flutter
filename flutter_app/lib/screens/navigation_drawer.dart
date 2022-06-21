import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app/screens/dashboard.dart';
import 'package:flutter_app/screens/login_page.dart';
import 'package:flutter_app/screens/student_screen.dart';
import 'package:flutter_app/screens/subjects.dart';
// import 'package:flutter_app/screens/student.dart';
import 'package:flutter_app/screens/teacher_screen.dart';
import 'package:flutter_app/screens/timetables.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SafeArea(
      child: SingleChildScrollView(
        //SingleChildScrollView ko replace ma ListView use garda pani hunxa
        //tara ListView ma chahi children hunxa Column use garna pardaina
        child: Column(children: [
          UserAccountsDrawerHeader(
              accountName: const Text('Kushal Pangeni'),
              accountEmail: const Text('kushalreigns54@gmail.com'),
              currentAccountPicture: buildheader(context)
              // CircleAvatar(
              //   // backgroundColor: Colors.,
              //   child: FittedBox(child: Text('Circle Avatar')),
              // ),
              ),
          // buildheader(context),
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: BackdropFilter(
              child: Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: buildMenuList(context),
              ),
              filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
            ),
          ),
        ]),
      ),
    ));
  }
}

Widget buildheader(BuildContext context) {
  return const CircleAvatar(
      // backgroundImage: AssetImage('assets/haan.png'),
      // child: Image(image: AssetImage('assets/haan.png')),
      // backgroundColor: Colors.teal,
      // child: FittedBox(child: Image(image: AssetImage('../assets/haan.png'))
      // Text(
      //   "Circle Avatar",
      //   style: TextStyle(color: Colors.black),
      // ),
      // ),
      );
}

Widget buildMenuList(BuildContext context) {
  return Column(
    children: [
      ListTile(
          leading: const Icon(Icons.dashboard),
          title: const Text('Dashboard'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Dashboard()),
            );
          }),
      ListTile(
        leading: const Icon(Icons.person),
        title: const Text('Student'),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const StudentSection(),
            ),
          );
        },
      ),
      ListTile(
        leading: const Icon(Icons.person),
        title: const Text('Teacher'),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TeacherSection()),
          );
        },
      ),
      ListTile(
        leading: const Icon(Icons.room),
        title: const Text('Classes'),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.notifications),
        title: const Text('Notification'),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.book),
        title: const Text('Subjects'),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SubjectSection()),
          );
        },
      ),
      ListTile(
        leading: const Icon(Icons.date_range),
        title: const Text('Time tables'),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TimetableSection()),
          );
        },
      ),
      ListTile(
        leading: const Icon(Icons.file_copy),
        title: const Text('Attendences'),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.app_registration_rounded),
        title: const Text('Register Admin'),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.announcement),
        title: const Text('Announcements'),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.announcement),
        title: const Text('Logout'),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LoginPage()),
          );
        },
      )
    ],
  );
}
