import 'package:flutter/material.dart';

class Realme extends StatefulWidget {
  const Realme({Key? key}) : super(key: key);

  @override
  State<Realme> createState() => _RealmeState();
}

class _RealmeState extends State<Realme> {
  var akey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Password checker',
          style: TextStyle(color: Colors.red, fontSize: 35),
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Form(
          key: akey,
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "FILL UP",
                    style: TextStyle(fontSize: 30, color: Colors.pink,fontStyle: FontStyle.italic),textAlign:TextAlign.left,

                  ),
                ],
              ),SizedBox(height: 40,),
              TextFormField(style:TextStyle(fontSize: 25),
                keyboardType: TextInputType.number,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  errorStyle: TextStyle(color: Colors.blueAccent

                  ),
                    label: Text("password"), fillColor: Colors.grey),
                onChanged: (a) {
                  bool a = akey.currentState!.validate();
                },
                validator: (a) {
                  if (a!.length <=3) {
                    return 'too short';
                  } else if (a!.length <=6) {
                    return 'medium';
                  } else if (a!.length <=10) {
                    return 'strong';
                  }
                },
              ),
              FloatingActionButton.extended(onPressed: (){

              }, label: Text('open',))

            ],
          ),
        ),
      ),
    );
  }
}
