import 'package:counter_rebuild/LoginPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Ourpage extends StatefulWidget {
  const Ourpage({Key? key}) : super(key: key);

  @override
  State<Ourpage> createState() => _OurpageState();
}

class _OurpageState extends State<Ourpage> {
  String data = '';
  String data1 = '';
TextEditingController usernameController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.lime,
          title: Text('SIGNUP',
              style: TextStyle(fontSize: 30, color: Colors.pinkAccent),)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: TextFormField(
                controller:usernameController ,
                onChanged: (a) {
                  data = a;
                },
                validator: (a) {
                  if (a!.isEmpty) {
                    return 'fyhgj,.';
                  }
                },
                decoration: InputDecoration(
                    label: Text('Name'),
                    fillColor: Colors.blueGrey,
                    filled: true),
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: TextFormField(
                onChanged: (b) {
                  data1 = b;
                },
                validator: (b) {
                  if (b!.isEmpty) {
                    return 'empty';
                  }
                },
                decoration: InputDecoration(
                    label: Text('Password'),
                    fillColor: CupertinoColors.lightBackgroundGray,
                    filled: true),
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () async {
                  usernameController.text='jbhvgc';
                  // var ab = await SharedPreferences.getInstance();
                  // ab.setString('username', usernameController.text);
                  // ab.setString('password', data1);
                },
                child: Text('Save')),
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Loginup();
                  }));
                },
                child: Text('LOGIN')),
            SizedBox(
              height: 90,
            ),
          ],
        ),
      ),
    );
  }
}
