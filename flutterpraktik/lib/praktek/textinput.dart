import 'package:flutter/material.dart';

class inputwidget extends StatelessWidget {
  const inputwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("contoh Textfield"),
            ),
            body: TextField(
              obscureText: false,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Nama'),
            )));
  }
}
