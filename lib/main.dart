import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_application/dismissible.dart';
import 'package:my_application/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: MyHomePage(),
      home: DismissibleApp(),
    );
  }
}
