import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kakeibo/ui/login/login.dart';

import './ui/input/input.dart';
import './ui/history/history.dart';

import './ui/history/test.dart';
import './ui/history/test2.dart';
import './ui/login/login.dart';
import './widget/selectlist.dart';

// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/services.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext constext) {
    return MaterialApp(
      // title: 'Startup Name Generator',
      initialRoute: '/login',
      routes: {
        '/': (context) => InputPage(),
        '/h': (context) => History(),
        '/test': (context) => DropDownUserList(),
        '/login': (context) => Login(),
      },
    );
  }
}
