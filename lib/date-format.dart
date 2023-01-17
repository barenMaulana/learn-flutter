import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Date Format"),
          ),
          body: Center(
            child: Text(
              DateFormat.y().format(DateTime.now()) +
                  " - " +
                  DateFormat.d().format(DateTime.now()),
            ),
          )),
    );
  }
}
