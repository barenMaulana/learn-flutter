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
          title: Text("Penggunaan Stateful"),
        ),
        body: Column(
          children: [
            Text("1"),
            Row(
              children: [
                ElevatedButton(
                  onPressed: null,
                  child: Icon(Icons.add),
                ),
                ElevatedButton(
                  onPressed: null,
                  child: Icon(Icons.remove),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
