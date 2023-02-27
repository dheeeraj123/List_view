import 'package:flutter/material.dart';

class Listviewsample extends StatelessWidget {
  Listviewsample({Key? key}) : super(key: key);
  List<Map> Contacts = [
    {'name': 'hgdfgads', 'phone': '5474','color':Colors.blueAccent},
    {'name': 'hgdfgf', 'phone': '5484','color':Colors.red},
    {'name': 'hgdjhg', 'phone': '5424','color':Colors.amberAccent},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: Contacts.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(40),
              child: Container(
                color: Contacts[index]['color'],
                height: 45,
                width: 45,
                child: Column(children: [
                  Text(
                    Contacts[index]['name'],
                  ),
                  Text(Contacts[index]['phone'],)
                ]),
              ),
            );
          },
        ),
      ),
    );
  }
}
