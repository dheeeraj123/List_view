import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyPage1 extends StatefulWidget {
  const MyPage1({Key? key}) : super(key: key);

  @override
  State<MyPage1> createState() => _MyPage1State();
}

class _MyPage1State extends State<MyPage1> {
  String data = '';
  String base = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Text('Login page'),
        ),
        body: Center(
            child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.deepPurple,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          'WELCOME',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 40,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40, top: 50),
                      child: TextField(
                        onChanged: (v) {
                          base = v;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            fillColor: Colors.blueGrey,
                            filled: true,
                            label: Text('username')),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40, bottom: 30),
                      child: TextField(
                        onChanged: (b) {
                          data = b;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            fillColor: Colors.brown,
                            filled: true,
                            label: Text('Password')),
                      ),
                    ),

                    ElevatedButton(
                        onPressed: () {
                          if (base == 'dheeraj' && data == 'asdfg') {
                            Fluttertoast.showToast(msg: 'HII DA');
                          } else {
                            Fluttertoast.showToast(
                                msg: 'Wrong',
                                backgroundColor: Colors.red,
                                textColor: Colors.redAccent);
                          }

                          print(base);
                          print(data);
                        },
                        child: Text('LOGIN'))
                    // Container(
                    //   color: CupertinoColors.systemGreen,
                    //   width: 100,
                    //   height: 50,
                    //   child: Text(
                    //     'LOGI IN',
                    //   ),
                    //   alignment: Alignment.center,
                    // )
                  ],
                ))));
  }
}
