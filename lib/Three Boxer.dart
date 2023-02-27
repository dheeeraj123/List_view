import 'package:flutter/material.dart';
import '';

class Boxer extends StatelessWidget {
  const Boxer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:Colors.black12,
      appBar: AppBar(backgroundColor: Colors.blueGrey,
        title: Text('flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Flutter Devoloping',
                    style: TextStyle(color: Colors.black87, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  height: 100,
                  width: 150,
                  color: Colors.red,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Kotlin coding style',
                    style: TextStyle(
                      color: Colors.yellowAccent,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  width: 150,
                  height: 100,
                  color: Colors.blue,
                ),
              ],
            ),
            Container(
              child: Text('Hp Pavilion', style: TextStyle(fontSize: 30)),
              alignment: Alignment.center,
              height: 200,
              width: 300,
              color: Colors.deepOrange,
            )
          ],
        ),
      ),
    );
  }
}
