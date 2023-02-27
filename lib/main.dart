import 'package:counter_rebuild/Button%20data.dart';
import 'package:counter_rebuild/Dollar.dart';
import 'package:counter_rebuild/Fill_form.dart';
import 'package:counter_rebuild/Geeks%20work.dart';
import 'package:counter_rebuild/Listview.dart';
import 'package:counter_rebuild/Listview_sample2.dart';
import 'package:counter_rebuild/LoginPage.dart';
import 'package:counter_rebuild/Money.dart';
import 'package:counter_rebuild/Three%20Boxer.dart';
import 'package:counter_rebuild/experiment.dart';
import 'package:counter_rebuild/latest_container.dart';
import 'package:counter_rebuild/listview_sample.dart';
import 'package:counter_rebuild/login%20page.dart';
import 'package:counter_rebuild/password.dart';
import 'package:counter_rebuild/signup.dart';

import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme:ThemeData(primarySwatch: Colors.pink),
        home:ryzen(), );
  }
}
//
// class Homepage extends StatefulWidget {
//    Homepage({Key? key}) : super(key: key);
//
//   @override
//   State<Homepage> createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//   int counter=0;
//   click(){
//     setState(() {
//       counter++;
//     });
//     print(counter);
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text('$counter'),
//       ),
//           floatingActionButton: FloatingActionButton(onPressed: click),
//     );
//   }
// }
//
