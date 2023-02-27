import 'package:counter_rebuild/Three%20Boxer.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Chakki extends StatefulWidget {
  const Chakki({Key? key}) : super(key: key);

  @override
  State<Chakki> createState() => _ChakkiState();
}

class _ChakkiState extends State<Chakki> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Geeks',
        style: TextStyle(fontSize: 30, color: Colors.red),
      )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Card(
                elevation: 20,
                child: Container(
                  height: 540,
                  width: 340,
                  color: Colors.greenAccent,
                  child: Column(children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 90,
                      child: Text(
                        'GeeksForGeeks',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                  ]),
                )),
          )
        ],
      ),
    );
  }
}
