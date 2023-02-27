import 'package:counter_rebuild/Geeks%20work.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Loginup extends StatefulWidget {
  const Loginup({Key? key}) : super(key: key);

  @override
  State<Loginup> createState() => _LoginState();
}

class _LoginState extends State<Loginup> {
  String data='';
  String data1='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text('LOGIN'), backgroundColor: Colors.lightBlueAccent),
      body: Column(
        children: [
          SizedBox(height: 80),
          TextFormField(onChanged: (a){
            data=a;
          },validator: (a){if(a!.isEmpty){
            return'is empty';
          }},autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
                fillColor: Colors.grey, label: Text('Username'), filled: true),
          ),
          TextFormField(onChanged: (b){
            data1=b;
          },validator: (b){if(b!.isEmpty){
          return'please type';
          }
          },autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
                label: Text('Password'), fillColor: Colors.pink, filled: true),
          ),
          ElevatedButton(
              onPressed: () async {
                var ab = await SharedPreferences.getInstance();
              var ac=  ab.getString('username');
             var ad=   ab.getString('password');
             if(data==ac&&data1==ad){
               Navigator.push(context,MaterialPageRoute(builder: (context){return Samsung();}));
             }
             else{
               Fluttertoast.showToast(msg: 'ByE DA');
             }
              },
              child: Text('Login')),
        //  ElevatedButton(onPressed: () {}, child: Text('Navigation')),
        ],
      ),
    );
  }
}
