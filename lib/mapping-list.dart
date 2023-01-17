import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> list_of_mhs = [
    {
      "name": "baren",
      "age": 20,
      "fav_color": ["grey"]
    },
    {
      "name": "didi",
      "age": 19,
      "fav_color": [
        "black",
        "green",
        "cyan",
        "black",
        "green",
        "cyan",
        "black",
        "green",
        "cyan",
        "black",
        "green",
        "cyan",
        "black",
        "green",
        "cyan"
      ]
    },
    {
      "name": "hafid",
      "age": 20,
      "fav_color": ["gold", "yellow", "orange"]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mapping List"),
        ),
        body: ListView(
          children: list_of_mhs.map((data) {
            List fav_colors = data['fav_color'];
            return Card(
              margin: EdgeInsets.all(20),
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(),
                        Container(
                          margin: EdgeInsets.only(left: 7),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Name : ${data['name']}"),
                              Text("Age : ${data['age']}"),
                            ],
                          ),
                        )
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: fav_colors.map((color) {
                          return Container(
                            color: Colors.blue[200],
                            padding: EdgeInsets.symmetric(
                                vertical: 6, horizontal: 13),
                            margin: EdgeInsets.only(top: 7, left: 7, bottom: 7),
                            child: Text(
                              color,
                              style: TextStyle(color: Colors.white),
                            ),
                          );
                        }).toList(),
                      ),
                    )
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
