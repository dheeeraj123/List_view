import 'package:counter_rebuild/Three%20Boxer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Fillup extends StatefulWidget {
  const Fillup({Key? key}) : super(key: key);

  @override
  State<Fillup> createState() => _FillupState();
}

class _FillupState extends State<Fillup> {
  String data = '';
  String data1 = '';
  String data2 = '';
  String data3 = '';
  String data4 = '';

  @override
  Widget build(BuildContext context) {
    var fkey = GlobalKey<FormState>();
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Forum'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: fkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Register',
                    style:
                        TextStyle(fontSize: 40, color: CupertinoColors.black),
                  ),
                  Text('Name'),
                  Align(
                    alignment: Alignment.bottomLeft,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      onChanged: (a) {
                        data = a;
                      },
                      validator: (a) {
                        if (a!.isEmpty) {
                          return 'name is empty';
                        } else if (a.length < 5) {
                          return 'name is too short';
                        }
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          label: Text('Name'),
                          fillColor: Colors.brown,
                          filled: true),
                    ),
                  ),
                  Text('password'),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                        style: TextStyle(color: Colors.pink),
                        validator: (b) {
                          if (b!.length < 8) {
                            return 'password is short';
                          }
                        },
                        onChanged: (b) {
                          data1 = b;
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                            label: Text('PAssword'),
                            fillColor: Colors.yellowAccent,
                            filled: true)),
                  ),
                  Text('E_MAil'),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                        validator: (c) {
                          if (c!.isEmpty) {
                            return 'it is empty';
                          } else if (!c.contains('@')) {
                            return 'its not full';
                          }
                        },
                        onChanged: (c) {
                          data2 = c;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            label: Text('Email'),
                            fillColor: Colors.blueGrey,
                            filled: true)),
                  ),
                  Text('Ph_NO'),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                        validator: (d) {
                          if (d!.length < 9) {
                            return 'too short';
                          }
                        },
                        onChanged: (d) {
                          data3 = d;
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            label: Text('Phone number'),
                            fillColor: Colors.lightBlueAccent,
                            filled: true)),
                  ),
                  Text('Age'),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: SizedBox(
                      width: 100,
                      child: TextFormField(
                        validator: (e) {
                          if (e!.isEmpty) {
                            return 'not ready';
                          } else if (int.parse(e) > 100) {
                            return 'not ';
                          }
                        },
                        onChanged: (e) {
                          data4 = e;
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            label: Text('Age'),
                            fillColor: Colors.green,
                            filled: true),
                      ),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        bool a = fkey.currentState!.validate();
                        print(a);
                        if (a) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Boxer();
                          }));
                        } else {
                          Fluttertoast.showToast(msg: 'sorry');
                        }
                        print(data);
                        print(data1);
                        print(data2);
                        print(data3);
                        print(data4);
                      },
                      child: Text('Login'))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
