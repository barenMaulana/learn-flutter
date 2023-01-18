import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Container> myList = List.generate(90, (index) {
    return Container(
      color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256),
          Random().nextInt(256)),
    );
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("Grid view"),
              centerTitle: true,
            ),
            body:
                // GridView(
                //   padding: EdgeInsets.all(10),
                //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //       crossAxisCount: 3,
                //       crossAxisSpacing: 10,
                //       mainAxisSpacing: 10,
                //       childAspectRatio: 3 / 4),
                //   children: myList,
                // ),
                GridView.count(
              padding: EdgeInsets.all(10),
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 3 / 4,
              children: myList,
            )));
  }
}
