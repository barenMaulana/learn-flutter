import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Color> myColor = [Colors.red, Colors.blue, Colors.yellow];
  final List<Widget> numbers =
      List.generate(100, (index) => Text(index.toString()));
  final List<Widget> myList = [
    Container(
      height: 300,
      width: 300,
      color: Colors.red,
    ),
    Container(
      height: 300,
      width: 300,
      color: Colors.blue,
    ),
    Container(
      height: 300,
      width: 300,
      color: Colors.green,
    ),
    Container(
      height: 300,
      width: 300,
      color: Colors.yellow,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Sunny Day"),
          ),
          body: ListView.separated(
            separatorBuilder: (context, index) {
              return Container(
                height: 20,
              );
            },
            itemCount: numbers.length,
            itemBuilder: (context, index) {
              return Text(
                index.toString(),
                style: TextStyle(fontSize: 20 + index.toDouble()),
              );
            },
          ),
        ));
  }
}
