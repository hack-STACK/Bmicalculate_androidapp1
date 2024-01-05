import 'package:flutter/material.dart';

class RowColumnWidget1 extends StatelessWidget {
  const  RowColumnWidget1 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Row column widget"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.purpleAccent,
              child: FlutterLogo(size: 90.0,),
            ),
            Container(
              color: Colors.greenAccent,
              child: FlutterLogo(size: 90.0,),
            ),
            Container(
              color: Colors.orangeAccent,
              child: FlutterLogo(size: 90.0,),
            ),
          Row(children: [
               Container(
              color: Colors.purpleAccent,
              child: FlutterLogo(size: 90.0,),
            ),
            Container(
              color: Colors.greenAccent,
              child: FlutterLogo(size: 90.0,),
            ),
            Container(
              color: Colors.orangeAccent,
              child: FlutterLogo(size: 90.0,),
            ),
          ],)
          ],
        )
      );
  }
}