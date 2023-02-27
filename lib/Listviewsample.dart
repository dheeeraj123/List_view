import 'package:counter_rebuild/Constants.dart';
import 'package:counter_rebuild/Listview.dart';

import 'package:flutter/material.dart';

class Newclass extends StatefulWidget {
  const Newclass({Key? key}) : super(key: key);

  @override
  State<Newclass> createState() => _NewclassState();
}

class _NewclassState extends State<Newclass> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController phnocontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Newpage')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: namecontroller,
              decoration: InputDecoration(
                  label: Text('hii'),
                  fillColor: Colors.greenAccent,
                  filled: true),
              keyboardType: TextInputType.name,
            ),
            TextField(
              controller: phnocontroller,
              decoration: InputDecoration(fillColor: Colors.lightGreen, filled: true),
              keyboardType: TextInputType.name,
            ),
            ElevatedButton(
                onPressed: () {
                  Constants.contacts.add({'name': namecontroller.text, 'phno': phnocontroller.text});
                },
                child: Text('add')),
            ElevatedButton(
                onPressed: () {
                  Constants.contacts.clear();
                },
                child: Text('Clear')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ryzen();
                  }));
                },
                child: Text('Move')),
          ],
        ),
      ),
    );
  }
}
