import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController formInputController = TextEditingController();

  String hasilInputan = "Selamat malam";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Text Field Control"),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextField(
                  controller: formInputController,
                  onChanged: (value) {
                    setState(() {
                      hasilInputan = value;
                    });
                  },
                  onSubmitted: (value) {
                    print(formInputController.text);
                  },
                ),
              ),
              Text(hasilInputan)
            ],
          ),
        ));
  }
}
