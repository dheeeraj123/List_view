import 'package:flutter/material.dart';

class Firstapp extends StatefulWidget {
  const Firstapp({Key? key}) : super(key: key);

  @override
  State<Firstapp> createState() => _FirstappState();
}

class _FirstappState extends State<Firstapp> {
  String data = '';
  String data1 = '';
  TextEditingController inrcontroller=TextEditingController();
TextEditingController usdcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Money Converter',textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic,),),
      ),
      body: Column(children: [
        TextFormField(controller: inrcontroller,
          decoration: InputDecoration(
            label: Text('USD'),
          ),
          onChanged: (a) {
          usdcontroller.text='${double.parse(a)*80}';

          },
          validator: (a) {
            if (a!.isEmpty) {
              return 'type';
            } else {

            }
          },
          keyboardType: TextInputType.number,
          autovalidateMode: AutovalidateMode.onUserInteraction,
        ),
        TextFormField(
          controller: usdcontroller,
          decoration: InputDecoration(
            label: Text('INR'),
          ),
          onChanged: (b) {
            inrcontroller.text='${double.parse(b)/80}';
          },
          validator: (b) {
            if (b!.isEmpty) {
              return 'type';
            } else {

            }
          },
          keyboardType: TextInputType.number,
          autovalidateMode:AutovalidateMode.onUserInteraction,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(80.0),
              child: ElevatedButton(onPressed: () {
                usdcontroller.text= '${double.parse(inrcontroller.text )*80}';
              }, child: Text('To INR')),
            ),
            ElevatedButton(onPressed: () {

              inrcontroller.text= '${int.parse(usdcontroller.text )/ 80}';

            }, child: Text('To USD')),
          ],
        )
      ]),
    );
  }
}
