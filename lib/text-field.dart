import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
            title: Text("Text Field"),
            centerTitle: true,
          ),
          body: ListView(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                      labelText: "Username"),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.amber)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue.shade200)),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.key),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye),
                        onPressed: null,
                      ),
                      labelText: "Password",
                      hintText: "minimal 8 karakter"),
                ),
              ),
            ],
          )),
    );
  }
}
