import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("belajar list tile"),
          ),
          body: ListView(
            children: [
              ListTile(
                title: Text("Nova"),
                subtitle: Text("Kenapa tuh?"),
                leading: CircleAvatar(),
                trailing: Text("17:20 WIB"),
              )
            ],
          )),
    );
  }
}
