import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Tab> myTab = [
    Tab(
      text: "tab 1",
      icon: Icon(Icons.add_a_photo),
    ),
    Tab(
      text: "tab 2",
      icon: Icon(Icons.work_history),
    ),
    Tab(
      text: "tab 3",
      icon: Icon(Icons.app_registration),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        initialIndex: 1,
        length: myTab.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Widget Tab Bar"),
            centerTitle: true,
            bottom: TabBar(
              indicatorColor: Colors.lightBlue[200],
              indicatorWeight: 7,
              tabs: myTab,
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text(
                  "Tab 1",
                  style: TextStyle(fontSize: 40),
                ),
              ),
              Center(
                child: Text(
                  "Tab 2",
                  style: TextStyle(fontSize: 40),
                ),
              ),
              Center(
                child: Text(
                  "Tab 3",
                  style: TextStyle(fontSize: 40),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
