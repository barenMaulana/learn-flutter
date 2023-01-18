import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DismissibleApp());
}

class DismissibleApp extends StatelessWidget {
  var faker = new Faker();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dismissible"),
        ),
        body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return Dismissible(
              onDismissed: (direction) {
                print(direction);
                if (direction == DismissDirection.endToStart) {
                  print("end to start");
                }
              },
              confirmDismiss: (direction) {
                return showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Confirm"),
                        content: Text("The data will deleted"),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop(true);
                              },
                              child: Text("Yes")),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop(false);
                              },
                              child: Text("No"))
                        ],
                      );
                    });
              },
              direction: DismissDirection.endToStart,
              background: Container(
                color: Colors.red.shade900,
                child: Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 20),
              ),
              key: Key(index.toString()),
              child: ListTile(
                leading: CircleAvatar(
                  child: Text(index.toString()),
                ),
                title: Text(faker.person.name()),
                subtitle: Text(
                  faker.lorem.sentence(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Text("2:20 WIB"),
              ),
            );
          },
        ),
      ),
    );
  }
}
