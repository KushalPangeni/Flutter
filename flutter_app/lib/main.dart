// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_app/screens/dashboard.dart';
import 'package:flutter_app/screens/login_page.dart';
// import 'package:url_strategy/url_strategy.dart';
// import 'package:firebase_core/firebase_core.dart';

void main() async {
  // setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final Future<FirebaseApp> _initialization = Firebase.initializeApp(); //.....
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: FutureBuilder(
          future: _initialization,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              //ignore: avoid_print
              print("Error");
            }
            if (snapshot.connectionState == ConnectionState.done) {
              return LoginPage();
            }
            return CircularProgressIndicator();
          }),
    );
  }
}












//-------------------------------------------------------------------
//---------------------------------------------------------------------
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: Drawer(
//           child: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(children: [
//             UserAccountsDrawerHeader(
//               accountName: Text('Kushal Pangeni'),
//               accountEmail: Text('skaljfskaj@gmail.com'),
//               currentAccountPicture: CircleAvatar(
//                 backgroundColor: Colors.blue[700],
//                 child: FittedBox(child: Text('Circle Avatar')),
//               ),
//             ),
//             buildheader(context),
//             buildMenuList(context)
//           ]),
//         ),
//       )),
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

// Widget buildheader(BuildContext context) {
//   return CircleAvatar(
//     backgroundColor: Colors.white,
//     child: FittedBox(
//       child: Text(
//         "Circle Avatar",
//         style: TextStyle(color: Colors.black),
//       ),
//     ),
//   );
// }

// Widget buildMenuList(BuildContext context) {
//   return Column(
//     children: [
//       ListTile(
//         leading: Icon(Icons.home),
//         title: Text('Home'),
//         onTap: () {},
//       ),
//       ListTile(
//         leading: Icon(Icons.contact_phone),
//         title: Text('Phone'),
//         onTap: () {},
//       ),
//       ListTile(
//         leading: Icon(Icons.email),
//         title: Text('Email'),
//         onTap: () {},
//       ),
//       const Divider(
//         color: Colors.black,
//       ),
//       ListTile(
//         leading: Icon(Icons.update),
//         title: Text('Updates'),
//         onTap: () {},
//       ),
//       ListTile(
//         leading: Icon(Icons.notifications),
//         title: Text('Notification'),
//         onTap: () {},
//       )
//     ],
//   );
// }
