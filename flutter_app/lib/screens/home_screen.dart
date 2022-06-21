// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_app/screens/navigation_drawer.dart';
import 'package:flutter_app/screens/teacher_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
//   bool _securePassword = false;
// //for dropdown of gender
//   final items = ['male', 'female'];
//   String? value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.amber[600],
        title: Text("widget.title"),
      ),
      body: TeacherSection(),
      // body: ListView(
      //   children: [
      //     Card(
      //       elevation: 10,
      //       child: Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Column(
      //           children: [
      //             Row(
      //               children: const [
      //                 Icon(Icons.person),
      //                 SizedBox(
      //                   width: 5,
      //                 ),
      //                 Text('ADD TEACHER')
      //               ],
      //             ),
      //             Divider(
      //               height: 3,
      //             ),
      //             SizedBox(
      //               height: 15,
      //             ),
      //             Row(
      //               children: [
      //                 Expanded(
      //                   child: TextField(
      //                     decoration: InputDecoration(
      //                       label: Row(
      //                         children: const [
      //                           Icon(Icons.person),
      //                           Text('  First Name')
      //                         ],
      //                       ),
      //                       // hintText: 'First Name',
      //                       // labelText: 'First Name',
      //                       labelStyle:
      //                           TextStyle(color: Colors.black, fontSize: 18),
      //                       border: OutlineInputBorder(),
      //                     ),
      //                     keyboardType: TextInputType.name,
      //                     // maxLength: 25,
      //                   ),
      //                 ),
      //                 SizedBox(
      //                   width: 5,
      //                 ),
      //                 Expanded(
      //                   child: TextField(
      //                     decoration: InputDecoration(
      //                       hintText: 'Last Name',
      //                       labelText: 'Last Name',
      //                       labelStyle:
      //                           TextStyle(color: Colors.black, fontSize: 18),
      //                       border: OutlineInputBorder(),
      //                     ),
      //                     keyboardType: TextInputType.name,
      //                     // maxLength: 25,
      //                   ),
      //                 ),
      //               ],
      //             ),
      //             SizedBox(
      //               height: 15,
      //             ),
      //             Row(
      //               children: const [
      //                 Expanded(
      //                   child: TextField(
      //                     decoration: InputDecoration(
      //                       hintText: 'Phone Number',
      //                       labelText: 'Phone',
      //                       labelStyle:
      //                           TextStyle(color: Colors.black, fontSize: 18),
      //                       border: OutlineInputBorder(),
      //                     ),
      //                     keyboardType: TextInputType.name,
      //                     // maxLength: 25,
      //                   ),
      //                 ),
      //                 SizedBox(
      //                   width: 5,
      //                 ),
      //                 Expanded(
      //                   child: TextField(
      //                     decoration: InputDecoration(
      //                       hintText: 'Address',
      //                       labelText: 'Address',
      //                       labelStyle:
      //                           TextStyle(color: Colors.black, fontSize: 18),
      //                       border: OutlineInputBorder(),
      //                     ),
      //                     keyboardType: TextInputType.name,
      //                     // maxLength: 25,
      //                   ),
      //                 ),
      //               ],
      //             ),
      //             SizedBox(height: 5),
      //             Row(
      //               children: [
      //                 Expanded(
      //                   child: Container(
      //                     decoration: BoxDecoration(
      //                       borderRadius: BorderRadius.circular(7),
      //                       border: Border.all(color: Colors.green, width: 0.8),
      //                     ),
      //                     child: DropdownButton<String>(
      //                       value: value,
      //                       isExpanded: true,
      //                       items: items.map(buildMenuItems).toList(),
      //                       onChanged: (value) => setState(() {
      //                         this.value = value;
      //                       }),
      //                     ),
      //                   ),
      //                 ),
      //                 SizedBox(
      //                   width: 5,
      //                 ),
      //                 Expanded(
      //                   child: TextField(
      //                     decoration: InputDecoration(
      //                       hintText: 'Last Name',
      //                       labelText: 'Last Name',
      //                       labelStyle:
      //                           TextStyle(color: Colors.black, fontSize: 18),
      //                       border: OutlineInputBorder(),
      //                     ),
      //                     keyboardType: TextInputType.name,
      //                     // maxLength: 25,
      //                   ),
      //                 ),
      //               ],
      //             ),
      //             SizedBox(
      //               height: 5,
      //             ),
      //             //For password hai
      //             TextField(
      //               decoration: InputDecoration(
      //                   hintText: 'Password',
      //                   labelText: 'Password',
      //                   //mathi bool securePassword pani xa hai
      //                   labelStyle:
      //                       TextStyle(color: Colors.black, fontSize: 18),
      //                   border: OutlineInputBorder(),
      //                   suffixIcon: IconButton(
      //                     icon: Icon(Icons.security),
      //                     onPressed: () => setState(() {
      //                       _securePassword = !_securePassword;
      //                     }),
      //                   )),

      //               obscureText: _securePassword,
      //               keyboardType: TextInputType.name,
      //               // maxLength: 25,
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.subdirectory_arrow_left),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

// //for dropdown of gender
// DropdownMenuItem<String> buildMenuItems(String item) {
//   return DropdownMenuItem(
//     value: item,
//     child: Text(item),
//   );
// }
