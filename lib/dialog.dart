import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("telah di klik");
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
                          Navigator.of(context).pop();
                        },
                        child: Text("Yes")),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("No")),
                  ],
                );
              });
        },
        child: Icon(Icons.delete),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
    );
  }
}
