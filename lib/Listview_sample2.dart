import 'package:flutter/material.dart';

class Classmate extends StatelessWidget {
   Classmate({Key? key}) : super(key: key);
  List<Map> Contacts = [
    {'name': 'dheeraj', 'age': '24','color':Colors.blueAccent},
    {'name': 'sooraj', 'age': '23','color':Colors.amberAccent},
    {'name': 'deer', 'age': '32','color':Colors.red},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView.builder(
        itemCount: Contacts.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(35.0),
            child: Container(
              color: Contacts[index]['color'],
              height: 150,
              width: 140,
              child: Row(
                children: [Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CircleAvatar(radius: 35,backgroundColor: Colors.teal,),
                ),
                  Column( mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        Contacts[index]['name'],style: TextStyle(fontSize: 20),
                      ),
                      Text(Contacts[index]['age'],style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      )),
    );
  }
}
