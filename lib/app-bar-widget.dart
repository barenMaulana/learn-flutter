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
          title: Text("App Bar Widget"),
          centerTitle: true,
          leading: Container(
            width: 50,
            color: Colors.amber,
          ),
          actions: [
            Container(
              width: 20,
              color: Colors.redAccent,
            ),
            Container(
              width: 30,
              color: Colors.greenAccent,
            )
          ],
          flexibleSpace: Container(
            color: Colors.purple[300],
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(10),
            child: Container(
              height: 20,
              color: Colors.lime,
            ),
          ),
        ),
        body: Text(""),
      ),
    );
  }
}
