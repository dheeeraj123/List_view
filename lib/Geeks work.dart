import 'package:flutter/material.dart';

class Samsung extends StatefulWidget {
  const Samsung({Key? key}) : super(key: key);

  @override
  State<Samsung> createState() => _SamsungState();
}

class _SamsungState extends State<Samsung> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text('GeeeksForGeeks',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            )),
      )),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Card(
              elevation: 20,
              child: Container(
                height: 540,
                width: 340,
                color: Colors.greenAccent,
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(21.0),
                    child: CircleAvatar(backgroundColor:Color.fromRGBO(6,77,39, 1) ,radius: 99,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 90,
                        child: Text(
                          'GeeksForGeeks',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontStyle: FontStyle.italic),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'GEEKS FOR GEEKS',
                    style: TextStyle(color: Colors.green, fontSize: 25),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'GeeksforGeeks is a Computer science portal for geeks,at geeksforgeeks.org. it contains well written,well though and well explained computer science and programming articles quizzes,projects,interview experience and much more!!',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 12,
                          color: Colors.teal),
                    ),
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(onPressed: (){}, child: Text('visit'))
                ]),
              )),
        )
      ]),
    );
  }
}
