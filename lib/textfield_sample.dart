import 'package:flutter/material.dart';

class TextFieldSample extends StatelessWidget {
  const TextFieldSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(),
        ),
      ),
          )),
    );
  }
}
