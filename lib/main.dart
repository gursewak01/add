import 'package:flutter/material.dart';

import 'add.dart';
import 'calculate.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: addNum(),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
