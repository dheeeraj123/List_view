import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class School extends StatefulWidget {
  const School({Key? key}) : super(key: key);

  @override
  State<School> createState() => _SchoolState();
}

class _SchoolState extends State<School> {
  TextEditingController inrcontroller = TextEditingController();
  TextEditingController usdcontroller = TextEditingController();
  TextEditingController riyalcontroller = TextEditingController();
  TextEditingController eurocontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
          title: Text(
        'Conveter Premium',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 35,
            fontStyle: FontStyle.italic),
      )),
      body: Column(children: [
        Text(
          'MONEY CONVERTER',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.deepOrange,
              fontStyle: FontStyle.italic,
              fontSize: 25),
        ),
        TextFormField(
          onChanged: (a) {
            usdcontroller.text='${double.parse(a)/80}';
            riyalcontroller.text='${double.parse(a)*30}';
            eurocontroller.text='${double.parse(a)*10}';
          },
          controller: inrcontroller,
          decoration: InputDecoration(
            label: Text('INR'),
            fillColor: Colors.lightGreen,
            filled: true,
          ),
          keyboardType: TextInputType.number,
          autovalidateMode: AutovalidateMode.onUserInteraction,
        ),
        TextFormField(
          onChanged: (b) {
            inrcontroller.text='${double.parse(b)*80}';
            riyalcontroller.text='${double.parse(b)*80}';
            eurocontroller.text='${double.parse(b)*80}';
          },
          controller: usdcontroller,
          decoration: InputDecoration(
              label: Text('USd'), filled: true, fillColor: Colors.blueGrey),
          keyboardType: TextInputType.number,
          autovalidateMode: AutovalidateMode.onUserInteraction,
        ),
        TextFormField(
          onChanged: (c) {
            inrcontroller.text='${double.parse(c)*80}';
            usdcontroller.text='${double.parse(c)*80}';
            eurocontroller.text='${double.parse(c)*80}';
          },
          controller: riyalcontroller,
          decoration: InputDecoration(
              fillColor: Colors.orangeAccent,
              filled: true,
              label: Text('Riyal')),
          keyboardType: TextInputType.number,
          autovalidateMode: AutovalidateMode.onUserInteraction,
        ),
        TextFormField(
          controller: eurocontroller,
          decoration: InputDecoration(
              label: Text('Euro'), filled: true, fillColor: Colors.tealAccent),
          keyboardType: TextInputType.number,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: (d) {
            inrcontroller.text='${double.parse(d)*80}';
            usdcontroller.text='${double.parse(d)*80}';
            riyalcontroller.text='${double.parse(d)*80}';
          },
        ),
      ]),
    );
  }
}
