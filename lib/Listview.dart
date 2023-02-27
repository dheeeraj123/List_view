import 'package:counter_rebuild/Listviewsample.dart';
import 'package:flutter/material.dart';
import 'Constants.dart';

class ryzen extends StatefulWidget {
  ryzen({Key? key}) : super(key: key);

  @override
  State<ryzen> createState() => _ryzenState();
}

class _ryzenState extends State<ryzen> {
  //List<Map> contacts = [
  //{'name': 'dheeraj', 'phno': 9898, Color: Colors.amberAccent},
  // {'name': 'heraj', 'phno': 9858, Color: Colors.lightBlueAccent},
  //{'name': 'dheer', 'phno': 9897, Color: Colors.red},
  //];
  TextEditingController namecontroller = TextEditingController();
  TextEditingController phnocontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Whatsapp',
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: Constants.contacts.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                        leading: Icon(
                          Icons.abc_sharp,
                          size: 60,
                        ),
                        title: Text(
                          Constants.contacts[index]['name'],
                          style: TextStyle(color: Colors.black87, fontSize: 25),
                        ),
                        subtitle: Text(
                          Constants.contacts[index]['phno'],
                          style: TextStyle(fontSize: 19, color: Colors.grey),
                        ),
                        trailing: Card(
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  Constants.contacts.removeAt(index);
                                });
                              },
                              child: Text('Clear')),
                        ));
                  }),
            ),
            // TextField(controller: namecontroller,
            // decoration:
            // InputDecoration(label:Text('hii') ,fillColor: Colors.greenAccent, filled: true),
            // keyboardType: TextInputType.name,
            // ),
            // TextField(controller: phnocontroller,
            // decoration:
            // InputDecoration(fillColor: Colors.brown, filled: true),
            // keyboardType: TextInputType.name,
            // ),
            // ElevatedButton(onPressed: () {
            //
            // setState(() {
            // Constants.contacts.add({'name':namecontroller,'phno':phnocontroller,Color:Colors.teal});
            //
            // });
            //
            // }, child: Text('press')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Newclass();
                  }));
                },
                child: Text('Navigate'))
          ],
        ),
      ),
    );
  }
}
