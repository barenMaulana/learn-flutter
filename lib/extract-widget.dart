import 'dart:ffi';

import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var faker = new Faker();
  final List<Widget> numbers =
      List.generate(30, (index) => Text(index.toString()));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Extract Widget"),
        ),
        body: ListView.separated(
          separatorBuilder: (context, index) {
            return Container(
              height: 20,
            );
          },
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return ChatItem(
              title: faker.person.name(),
              subtitle: faker.lorem.sentence(),
              image_url:
                  "https://picsum.photos/id/" + index.toString() + "/300",
            );
          },
        ),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image_url;

  const ChatItem({this.title = "", this.subtitle = "", this.image_url = ""});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(this.title),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(image_url),
      ),
      subtitle: Text(this.subtitle),
      trailing: Text("03.40 WIB"),
    );
  }
}
