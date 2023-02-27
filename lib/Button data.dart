import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Redmi extends StatefulWidget {
  const Redmi({Key? key}) : super(key: key);

  @override
  State<Redmi> createState() => _RedmiState();
}

class _RedmiState extends State<Redmi> {
  int counter = 0;

  tappin() async {
    var sp = await SharedPreferences.getInstance();
    counter = sp.getInt('count') ?? 0;
  }

  // save()async{
  //   var sp=await SharedPreferences.getInstance();
  //   sp.setBool('name', false);
  //   var data=sp.getBool('name');
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tappin();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tappin',
            style: TextStyle(fontSize: 25, backgroundColor: Colors.blue)),
      ),
      body: Center(
          child: Text(
        '$counter',
        style: TextStyle(fontSize: 25),
      )),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () async {
              setState(() {
                counter++;
              });
              var sp = await SharedPreferences.getInstance();
              sp.setInt('count', counter);
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () async {
              var as = await SharedPreferences.getInstance();
              setState(() {
                counter = as.getInt('count')!;
              });
              print(counter);
            },
            child: (Icon(Icons.download)),
          ),
          FloatingActionButton(
            onPressed: () async {
              var sp = await SharedPreferences.getInstance();

              sp.clear();
              setState(() {
                counter = 0;
              });
            },
            child: Icon(Icons.clear),
          )
        ],
      ),
    );
  }
}
