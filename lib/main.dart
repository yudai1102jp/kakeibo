import 'dart:js';

import 'package:flutter/material.dart';
import './ui/input/input.dart';
import './ui/history/history.dart';
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
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/h': (context) => HistoryPage(),
        'test': (context) => MyStatelessWidget(),
      },
    );
  }
}
