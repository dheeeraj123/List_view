import 'package:flutter/material.dart';

class TextCard extends StatelessWidget {
  const TextCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.greenAccent,
        appBar: AppBar(backgroundColor: Colors.yellowAccent,
          title: Text("Flutter"),
        ),
        body: Center(
          child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(),
              borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),

              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text("flutter", style: TextStyle()),
                  ),
                  Text("flutter is a google ui toolkit for building")
                ],

              )),
        ));
  }
}
