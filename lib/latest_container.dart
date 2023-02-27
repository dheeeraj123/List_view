import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  State<HomePage1> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage1> {
  int counter = 0;
  Color k = Colors.red;

  click() {
    if (k == Colors.blue) {
      k = Colors.red;
    } else {
      k = Colors.blue;
    }
    setState(() {
      counter++;
    });
    print(counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        color: k,
        width: 120,
        height: 120,
        foregroundDecoration:
            BoxDecoration(shape: BoxShape.circle, color: Colors.yellowAccent),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: click,
        child: const Icon(Icons.add),
        focusColor: Color.alphaBlend(Colors.yellowAccent, Colors.blueGrey),
      ),
    );
  }
}
