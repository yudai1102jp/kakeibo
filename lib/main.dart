import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import './ui/input/input.dart';
import './ui/history/history.dart';
import './ui/management/manage.dart';

// import './ui/history/test.dart';
// import './ui/history/test2.dart';
// import './ui/login/login.dart';

Future<void> main() async {
  // Firebase初期化
  WidgetsFlutterBinding.ensureInitialized(); // Add this
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext constext) {
    return MaterialApp(
      // title: 'Startup Name Generator',
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/h': (context) => History(),

        // '/test': (context) => DropDownUserList(),
        '/manage': (context) => ManagePage(),
      },
    );
  }
}


// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';

// Future<void> main() async {
//   // Firebase初期化
//   WidgetsFlutterBinding.ensureInitialized(); // Add this
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         // home: MyAuthPage(),
//         home: MyAuthPage());
//   }
// }
