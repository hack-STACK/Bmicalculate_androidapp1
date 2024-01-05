import 'package:flutter/material.dart';

class row_column extends StatelessWidget {
  const row_column ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Column"),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.purpleAccent,
              child: FlutterLogo(size: 90.0,),
            ),
            Container(
              color: Colors.redAccent,
              child: FlutterLogo(size: 90.0,),
            ),
            Container(
              color: Colors.orangeAccent,
              child: FlutterLogo(size: 90.0,),
            ),
          ],
        )
    );
  }
}