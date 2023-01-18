import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String dialog_text = "Teks yang tampil";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(dialog_text),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Confirm"),
                  content: Text("Item will delete permanently"),
                  icon: Icon(Icons.dangerous),
                  iconColor: Colors.redAccent,
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            dialog_text = "Kamu pincet Yes";
                          });
                          Navigator.of(context).pop(true);
                        },
                        child: Text("Yes")),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            dialog_text = "Kamu pincet No";
                          });
                          Navigator.of(context).pop(false);
                        },
                        child: Text("No")),
                  ],
                );
              }).then((value) => print(value));
        },
        child: Icon(Icons.delete),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
    );
  }
}
