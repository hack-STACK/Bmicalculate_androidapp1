import 'package:flutter/material.dart';

class RowColumnWidget extends StatelessWidget {
  const  RowColumnWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Row column widget"),
        ),
        body: Column(
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
            Row(
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
              ],
            )
          ],
        )
      );
  }
}